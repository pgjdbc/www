---
todo
---

# Overview

Postgres 9.4 (released in December 2014) introduced a new feature logical replication. Logical replication allow
stream changes from database in real-time to external system.

Previous for reach real-time update external system application can use "dual-writes".
That is, every time your application code writes to the database,it also updates/invalidates the appropriate
cache entries, reindexes the data in your search engine, sends it to your analytics system, and so on.
Dual-writes approach is really problematic. It suffers from race conditions and reliability problems.
If slightly different data gets written to two different datastores (perhaps due to a bug or a race condition),
the contents of the datastores will gradually drift apart — they will become more and more inconsistent over time.
Recovering from such gradual data corruption is difficult.

Logical decoding takes the database’s write-ahead log (WAL), and gives us access to row-level change events:
every time a row in a table is inserted, updated or deleted, that’s an event. Those events are grouped by transaction,
and appear in the order in which they were committed to the database. Aborted/rolled-back transactions
do not appear in the stream. Thus, if you apply the change events in the same order, you end up with an exact,
transactionally consistent copy of the database. It's looks like Event Sourcing pattern that previously you implements
in your application, but now it's available out of the box in PostgreSQL database.

For access to real-time changes stream PostgreSQL provide replication protocol. Replication protocol can be physical or
logical. Physical replication protocol uses in case Master/Slave replication. Logical replication protocol can be use
for integrate changes stream with external system. Replication it's not a part of JDBC Specification, that why
before use physical or logical replication use should get access to `PGConnection`.

## Configure database

For able to use logical or physical replication database should be configured.

### postgresql.conf

* Property `max_wal_senders` should be at least equal to count replication consumers
* Property `wal_keep_segments` should contain count wal segments that can't be remove from database.
* Property `wal_level` for logical replication should be equal to `logical`.
* Property `max_replication_slots` should be great than zero for logical replication, because logical replication can't
 work without replication slot.

### pg_hba.conf

Enable connect user with replication privileges to replication stream.

```
local replication all trust
host replication all 127.0.0.1/32            md5
host replication all ::1/128                 md5
```

### Configuration for examples

*postgresql.conf*
```
max_wal_senders = 4             # max number of walsender processes
wal_keep_segments = 4           # in logfile segments, 16MB each; 0 disables
wal_level = logical             # minimal, replica, or logical
max_replication_slots = 4       # max number of replication slots
```

*pg_hba.conf*
```
# Allow replication connections from localhost, by a user with the
# replication privilege.
local replication all trust
host replication all 127.0.0.1/32            md5
host replication all ::1/128                 md5
```

## Logical replication

Logical replication use replication slot for reserve WAL logs on server and also define which decoding plugin use for
decode WAL logs to the required format, for example you can decode changes as json, protobuf, etc messages that sends
to client. For demonstrate how use pgjdbc replication API will be use `test_decoding` plugin that include to
`postgresql-contrib` package, but you can use own decoding plugin.

For use replication API, Connection should be create with replication mode, in this mode on connection not available
execute any kinds of sql, this connection can work only with replication API. It's restriction of PostgreSQL.

**Example 1. Create replication connection.**
```
    String url = "jdbc:postgresql://localhost:5432/postgres";
    Properties props = new Properties();
    PGProperty.USER.set(props, "postgres");
    PGProperty.PASSWORD.set(props, "postgres");
    PGProperty.ASSUME_MIN_SERVER_VERSION.set(props, "9.4");
    PGProperty.REPLICATION.set(props, "database");

    Connection con = DriverManager.getConnection(url, props);
    PGConnection replConnection = con.unwrap(PGConnection.class);
```

Whole API by work with replication grouped in `org.postgresql.replication.PGReplicationConnection` that available
via `org.postgresql.PGConnection#getReplicationAPI`.

Before start replication protocol, you should have replication slot, that can be also create via pgjdbc API.

**Example 2. Create replication slot via pgjdbc API**
```
    replConnection.getReplicationAPI()
        .createReplicationSlot()
        .logical()
        .withSlotName("demo_logical_slot")
        .withOutputPlugin("test_decoding")
        .make();
```

Once we got in the hands of the replication slot, we can create ReplicationStream.

**Example 3. Create logical replication stream.**

```
    PGReplicationStream stream =
        replConnection.getReplicationAPI()
            .replicationStream()
            .logical()
            .withSlotName("demo_logical_slot")
            .withSlotOption("include-xids", false)
            .withSlotOption("skip-empty-xacts", true)
            .start();
```

Via replication stream we will gets all changes since the creation of the replication slot or from replication slot
restart LSN if slot already was use for replication. You can also start streaming changes from particular LSN position,
in that case LNS position should be specify during create replication stream.

**Example 4. Create logical replication stream from particular position.**

```
    LogSequenceNumber waitLSN = LogSequenceNumber.valueOf("6F/E3C53568");

    PGReplicationStream stream =
        replConnection.getReplicationAPI()
            .replicationStream()
            .logical()
            .withSlotName("demo_logical_slot")
            .withSlotOption("include-xids", false)
            .withSlotOption("skip-empty-xacts", true)
            .withStartPosition(waitLSN)
            .start();
```

Via `withSlotOption` we also can specify options that will be send to our output plugin, that allow customize decoding.
For example I have own out plugin that by property `sensitive=true` include changes by sensitive columns to change
event.

**Example 5. Example output with include-xids=true**
```
BEGIN 105779
table public.test_logic_table: INSERT: pk[integer]:1 name[character varying]:'previous value'
COMMIT 105779
```

**Example 6. Example output with include-xids=false**
```
BEGIN
table public.test_logic_table: INSERT: pk[integer]:1 name[character varying]:'previous value'
COMMIT
```

During replication database and consumer periodically changes with ping package. When database or client not receive
ping message in configured timeout, replication stopped with exception and database free resources.
In PostgreSQL ping timeout configures via property `wal_sender_timeout` that by default equal to 60 seconds.
Replication stream in pgjdc can send to database feedback(ping) by requirement or by configured time interval.
Recommended send feedback(ping) to database more often than configured `wal_sender_timeout`. In production I use value
equal to `wal_sender_timeout / 3`. It's exclude potential problems with networks and allow stream changes without
disconnects by timeout. For specify feedback interval can be use `withStatusInterval` method.

**Example 7. Replication stream with configured feedback interval equal to 20 sec**
```
    PGReplicationStream stream =
        replConnection.getReplicationAPI()
            .replicationStream()
            .logical()
            .withSlotName("demo_logical_slot")
            .withSlotOption("include-xids", false)
            .withSlotOption("skip-empty-xacts", true)
            .withStatusInterval(20, TimeUnit.SECONDS)
            .start();
```

After create `PGReplicationStream`, it's time to start receive changes in real-time. Changes can be receive from
stream as blocking(`org.postgresql.replication.PGReplicationStream#read`)
and as non-blocking(`org.postgresql.replication.PGReplicationStream#readPending`).
Both of method to receive changes returns `java.nio.ByteBuffer` with payload that send output plugin. We can't receive
part of message, only full message that was send by output plugin. ByteBuffer contains message in format that define
decoding output plugin, it can be simple String, json, or anything. That why pgjdbc return raw ByteBuffer
instead of String or anything.

**Example 7. Example send message from output plugin.**
```
OutputPluginPrepareWrite(ctx, true);
appendStringInfo(ctx->out, "BEGIN %u", txn->xid);
OutputPluginWrite(ctx, true);
```

**Example 8. Receive changes via replication stream.**
```
    while (true) {
      //non blocking receive message
      ByteBuffer msg = stream.readPending();

      if (msg == null) {
        TimeUnit.MILLISECONDS.sleep(10L);
        continue;
      }

      int offset = msg.arrayOffset();
      byte[] source = msg.array();
      int length = source.length - offset;
      System.out.println(new String(source, offset, length));
    }
```

As mentioned previously, replication stream should periodically send feedback to database to prevent disconnect by
timeout. Feedback sends during call `read` or `readPending` if it's time to send feedback. We can also force send
feedback via `org.postgresql.replication.PGReplicationStream#forceUpdateStatus()`. Another important duty of feedback
it's say database which LSN successfully received and applied to consumer, it necessary for monitoring and
truncate/archive WAL's that that are no longer needed. In case restart replication, it's will started from last success
processed LSN that was send via feedback to database.

For say database which LSN successfully applied on current consumer and can be truncated/archive you should set it to
`org.postgresql.replication.PGReplicationStream#setFlushedLSN` and
`org.postgresql.replication.PGReplicationStream#setAppliedLSN`. You always can get last receive LSN via
`org.postgresql.replication.PGReplicationStream#getLastReceiveLSN`.

**Example 9. Add feedback about successfully process LSN**
```
    while (true) {
      //Receive last successfully send to queue message. LSN ordered.
      LogSequenceNumber successfullySendToQueue = getQueueFeedback();
      if (successfullySendToQueue != null) {
        stream.setAppliedLSN(successfullySendToQueue);
        stream.setFlushedLSN(successfullySendToQueue);
      }

      //non blocking receive message
      ByteBuffer msg = stream.readPending();

      if (msg == null) {
        TimeUnit.MILLISECONDS.sleep(10L);
        continue;
      }

      asyncSendToQueue(msg, stream.getLastReceiveLSN());
    }
```

**Example 10. Full example use logical replication**
```
    String url = "jdbc:postgresql://localhost:5432/test";
    Properties props = new Properties();
    PGProperty.USER.set(props, "postgres");
    PGProperty.PASSWORD.set(props, "postgres");
    PGProperty.ASSUME_MIN_SERVER_VERSION.set(props, "9.4");
    PGProperty.REPLICATION.set(props, "database");
    PGProperty.PREFER_QUERY_MODE.set(props, "simple");

    Connection con = DriverManager.getConnection(url, props);
    PGConnection replConnection = con.unwrap(PGConnection.class);

    replConnection.getReplicationAPI()
        .createReplicationSlot()
        .logical()
        .withSlotName("demo_logical_slot")
        .withOutputPlugin("test_decoding")
        .make();

    //some changes after create replication slot to demonstrate receive it
    sqlConnection.setAutoCommit(true);
    Statement st = sqlConnection.createStatement();
    st.execute("insert into test_logic_table(name) values('first tx changes')");
    st.close();

    st = sqlConnection.createStatement();
    st.execute("update test_logic_table set name = 'second tx change' where pk = 1");
    st.close();

    st = sqlConnection.createStatement();
    st.execute("delete from test_logic_table where pk = 1");
    st.close();

    PGReplicationStream stream =
        replConnection.getReplicationAPI()
            .replicationStream()
            .logical()
            .withSlotName("demo_logical_slot")
            .withSlotOption("include-xids", false)
            .withSlotOption("skip-empty-xacts", true)
            .withStatusInterval(20, TimeUnit.SECONDS)
            .start();

    while (true) {
      //non blocking receive message
      ByteBuffer msg = stream.readPending();

      if (msg == null) {
        TimeUnit.MILLISECONDS.sleep(10L);
        continue;
      }

      int offset = msg.arrayOffset();
      byte[] source = msg.array();
      int length = source.length - offset;
      System.out.println(new String(source, offset, length));

      //feedback
      stream.setAppliedLSN(stream.getLastReceiveLSN());
      stream.setFlushedLSN(stream.getLastReceiveLSN());
    }
```
Where output looks like this, where each line and separate message.
```
BEGIN
table public.test_logic_table: INSERT: pk[integer]:1 name[character varying]:'first tx changes'
COMMIT
BEGIN
table public.test_logic_table: UPDATE: pk[integer]:1 name[character varying]:'second tx change'
COMMIT
BEGIN
table public.test_logic_table: DELETE: pk[integer]:1
COMMIT
```

## Physical replication

API for physical replication looks like API for logical replication. Physical replication also not required replication
slot. And ByteBuffer will contains binary form of WAL logs. Binary WAL format very low level API, and can changes from
version to version. That why replication between different PostgreSQL version not working. But physical replication
can contains many important data, that not available via logical replication. That why pgjdc contain implementation for
both.

**Example 11. Use physical replication**

```
    LogSequenceNumber lsn = getCurrentLSN();

    Statement st = sqlConnection.createStatement();
    st.execute("insert into test_physic_table(name) values('previous value')");
    st.close();

    PGReplicationStream stream =
        pgConnection
            .getReplicationAPI()
            .replicationStream()
            .physical()
            .withStartPosition(lsn)
            .start();

    ByteBuffer read = stream.read();
```
