---
layout: faqs
title: PostgreSQL JDBC FAQ
resource: ../media
nav: ../
---

# Frequently Asked Questions
***
* [1. XA](#xa)
 * [1.1. Does the driver have XA support?](#xa-support)
 * [1.2. What is "transaction interleaving"?](#transaction-interleaving)
* [2. Problems](#problems)
 * [2.1. I upgraded from 7.x to 8.x.  Why did my application break?](#upgradeTo80)

***					
<a name="xa"></a>
## 1. XA

<a name="xa-support"></a>
### 1.1. Does the driver have XA support?
						
Yes, starting with the 8.1dev-403 driver. However, transaction interleaving is
not supported.
						
<a name="transaction-interleaving"></a>
### 1.2. What is "transaction interleaving"?
						
Transaction interleaving means that one database connection can be
used for multiple transactions at the same time, switching between
the transactions.
						
Transaction interleaving is mostly useless, but it's a required part
of the JTA specification. Some application servers use it to allow a
bit more concurrency without allocating a bigger jdbc connection 
pool.
						
Few JDBC drivers support transaction interleaving properly. Some 
fake it by issuing early prepare commands, risking transaction
integrity, some give strange error messages, some fail in other,
subtle ways. The PostgreSQL JDBC driver does it's best to detect
interleaving and throws a proper error message when it can't do
what's requested.
						
Because of the lack of driver support, all of the popular application
servers provide options to work around it, or don't use it at all.
Therefore, lack of transaction interleaving shouldn't affect your
application or data integrity.
						
See the JTA specification, section 3.4.4, or search the pgsql-jdbc
mailing list archives for more information.

***
<a name="problems"></a>
## 2. Problems

<a name="upgradeTo80"></a>
### 2.1. I upgraded from 7.x to 8.x.  Why did my application break?
						
By default, 8.x versions of the driver use protocol version 3 when
communicating with servers 7.4 or higher.  This protocol allows for
more efficient query execution and enables true server-side
prepared statements, but also places some additional restrictions on
queries.  Problems with upgrading the driver generally fall into one
of two categories:
						
__Parameter Typing.__ Previous versions of the driver
sent all PreparedStatement parameters to the server as untyped 
strings, and allowed the server to infer their types as appropriate.
When running protocol version 3 however, the driver specifies the
type of each parameter as it is being sent.  The upshot of this is 
that code which was previously able to call (for example): 
<span style="font-family: Courier New,Courier,monospace;">PreparedStatement.setObject(1, "5")</span>
to set an integer parameter now breaks, because setting a String value
for an integer parameter is not allowed.

__Parameter Position.__ Previous versions of the driver
emulated PreparedStatements by performing string replacements
each time the query was executed.  Newer drivers using protocol 3
however actually use server-side prepared statements with
placeholders for the positional parameters. The upshot of this is
that '?' positional parameters are now only allowed where the 
PostgreSQL back-end allows parameters.
						
In situations where it is difficult to modify the Java code and/or
queries to work with the newer protocol version, it is possible to
force the driver to use an older protocol version to restore the old
behavior.  Look in the documentation for the 
<span style="font-family: Courier New,Courier,monospace;">protocolVersion</span>
connection parameter.