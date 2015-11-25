---
layout: changes
title: PostgreSQL JDBC Changelog
resource: ../media
nav: ../
---

# History of Changes
* [Introduction and explanation of symbols](#introductio)
* [Version 9.4-1206 (2015-11-25)](#version_9.4-1206)
	* [Contributors to this release](#contributors_9.4-1206)
* [Version 9.4-1205 (2015-11-03)](#version_9.4-1205)
	* [Contributors to this release](#contributors_9.4-1205)
* [Version 9.4-1204 (2015-10-09)](#version_9.4-1204)
	* [Contributors to this release](#contributors_9.4-1204)
* [Version 9.4-1203 (2015-09-17)](#version_9.4-1203)
	* [Contributors to this release](#contributors_9.4-1203)
* [Version 9.4-1202 (2015-08-27)](#version_9.4-1202)
	* [Contributors to this release](#contributors_9.4-1202)
* [Version 9.4-1201 (2015-02-25)](#version_9.4-1201)
	* [Contributors to this release](#contributors_9.4-1201)
* [Version 9.4-1200 (2015-01-02)](#version_9.4-1200)
	* [Contributors to this release](#contributors_9.4-1200)
* [Version 9.3-1103 (2015-19-09)](#version_9.3-1104)
* [Version 9.3-1103 (2015-01-02)](#version_9.3-1103)
* [Version 9.3-1102 (2014-07-10)](#version_9.3-1102)
* [Version 9.3-1101 (2014-02-19)](#version_9.3-1101)
* [Version 9.3-1100 (2013-11-01)](#version_9.3-1100)
* [Version 9.2-1004 (2013-10-31)](#version_9.2-1004)
* [Version 9.2-1003 (2013-07-08)](#version_9.2-1003)
    * [Contributors to this release](#contributors_9.2-1003)
* [Version 9.2-1002 (2012-11-14)](#version_9.2-1002)
    * [Contributors to this release](#contributors_9.2-1002)
* [Version 9.2-1001 (2012-10-31)](#version_9.2-1001)
    * [Contributors to this release](#contributors_9.2-1001)
* [Version 9.2-1000 (2012-09-27)](#version_9.2-1000)
    * [Contributors to this release](#contributors_9.2-1000)
* [Version 9.1-902 (2011-04-18)](#version_9.1-902)
    * [Contributors to this release](#contributors_9.1-902)
* [Version 9.1-901 (2011-04-18)](#version_9.1-901)
    * [Contributors to this release](#contributors_9.1-901)
* [Version 9.1dev-900 (2011-04-18)](#version_9.1dev-900)
    * [Contributors to this release](#contributors_9.1dev-900)
* [Version 9.0-801 (2010-09-20)](#version_9.0-801)
    * [Contributors to this release](#contributors_9.0-801)
* [Version 9.0-dev800 (2010-05-11)](#version_9.0-dev800)
    * [Contributors to this release](#contributors_9.0-dev800)
* [Archived Versions 8.0-8.4](pgjdbc_changelog-8.0-8.4.tar.gz)
* [All Committers](#all-committers)

[![](../media/img/rss.png)](../changes.rss)

<a name="introduction"></a>
## Introduction and explanation of symbols

Changes are sorted by "type" and then chronologically with the most recent at the top. These symbols
denote the various action types:![add](../media/img/add.jpg)=add,
<img alt="fix" src="../media/img/fix.jpg" />=fix,
<img alt="remove" src="../media/img/remove.jpg" />=remove,
<img alt="update" src="../media/img/update.jpg" />=update
***
<a name="version_9.4-1206"></a>
## Version 9.4-1206 (2015-11-25)

Andrea Catalucci (1):
* Fixed typo in Driver.java.in [PR#428](https://github.com/pgjdbc/pgjdbc/pull/428) [2589020](https://github.com/pgjdbc/pgjdbc/commit/2589020ad85edace6f43474c2e8fc86ea23bb5e6)

Dave Cramer (3):

* make sure logs actually get written [PR#422](https://github.com/pgjdbc/pgjdbc/pull/422) [2ad367e](https://github.com/pgjdbc/pgjdbc/commit/2ad367e0c46c69079b36140f95ec7b794b5aa8a5)  
* fix: Binary handling of empty arrays. The type of the empty array was not properly read as a result getting the type of the array caused an NPE fixes Issue #421 reported by Juha Komulainen [PR#422](https://github.com/pgjdbc/pgjdbc/pull/422) [38d8488](https://github.com/pgjdbc/pgjdbc/commit/38d8488559b4bbc5dcb7f87f542cd23d457b761d)  
* fix:building on java 1.6 [PR#422](https://github.com/pgjdbc/pgjdbc/pull/422) [9133012](https://github.com/pgjdbc/pgjdbc/commit/9133012e1e679c587b81ee43927ec1b688ba8bb8)  
* fix test case to actually check the value don't mask the exception in the event that it is thrown [PR#422](https://github.com/pgjdbc/pgjdbc/pull/422) [e975c07](https://github.com/pgjdbc/pgjdbc/commit/e975c07ceecea4d2aee457e56a6964bc4203fdba)  
* add an explicit message for the test case [PR#422](https://github.com/pgjdbc/pgjdbc/pull/422) [270b1a3](https://github.com/pgjdbc/pgjdbc/commit/270b1a386a75227c8e947f989ddd73765f0dfa30)  

Laurenz Albe (3):

* Replace question marks only in PreparedStatements [PR#427](https://github.com/pgjdbc/pgjdbc/pull/427) [3d30a4c](https://github.com/pgjdbc/pgjdbc/commit/3d30a4c76b44ed43a5e5f9460dae16d9efdfc527)
* Allow both single and double question marks in simple statements [PR#427](https://github.com/pgjdbc/pgjdbc/pull/427) [39d510c](https://github.com/pgjdbc/pgjdbc/commit/39d510c096cf435ff0f47bb510ae893a0c2b96d2)
* Prettify code and add another regression test [PR#427](https://github.com/pgjdbc/pgjdbc/pull/427) [2f8a67f](https://github.com/pgjdbc/pgjdbc/commit/2f8a67f7b9ee00cd57fd1d89612995dd339f4192)

Vladimir Sitnikov (3):

* chore: fix dos end-of-lines [PR#418](https://github.com/pgjdbc/pgjdbc/pull/418) [63d1dd3](https://github.com/pgjdbc/pgjdbc/commit/63d1dd3ae62ee914a5416002e4795a9bedcc984e)
* test: add tests for getBigDecimal of int4 field in both text and binary modes [PR#426](https://github.com/pgjdbc/pgjdbc/pull/426) [faac288](https://github.com/pgjdbc/pgjdbc/commit/faac28818c222f5f873074d18935c10810c7e470)
* fix: fix invalid values when receiving int2, int4, int8 via getBigDecimal() [PR#424](https://github.com/pgjdbc/pgjdbc/pull/424) [e6f1beb](https://github.com/pgjdbc/pgjdbc/commit/e6f1beb19c1581b003ac85ab29454ac58b157d96)

John K. Harvey(1)

* fix: update translations to handle Russian characters [PR#430](https://github.com/pgjdbc/pgjdbc/pull/430) this hasn't been committed yet but the message class files were updated

<a name="contributors_9.4-1206"></a>
### Contributors to this release

We thank the following people for their contributions to this release.

[John K Harvey] (https://github.com/crunchyjohn)  
[Andrea Catalucci](https://github.com/AndreaCatalucci)  
[Laurenz Albe](https://github.com/laurenz)  
[Vladimir Sitnikov](https://github.com/vlsi)  

<a name="version_9.4-1205"></a>
## Version 9.4-1205 (2015-11-03)

Chapman Flack (2):

* fix: recover cs, de, fr, it translations [PR#409](https://github.com/pgjdbc/pgjdbc/pull/409) [1793454](https://github.com/pgjdbc/pgjdbc/commit/17934540232d4d538d3b312b8d50026afeb5282e)
* fix: redo spelling changes in unclobbered .po [PR#409](https://github.com/pgjdbc/pgjdbc/pull/409) [5bfb26d](https://github.com/pgjdbc/pgjdbc/commit/5bfb26d2a0330d36d124c05d566db7c25f0fca8f)

Dave Cramer (10):

* use UTF-8 instead of US-ASCII for initial encoding [PR#398](https://github.com/pgjdbc/pgjdbc/pull/398) [8dae0ae](https://github.com/pgjdbc/pgjdbc/commit/8dae0ae5df6ffaa484d0d6ff69aaa33f5d1d713b)
* fix: coerce array type names to lower case [PR#402](https://github.com/pgjdbc/pgjdbc/pull/402) [f1a5cc4](https://github.com/pgjdbc/pgjdbc/commit/f1a5cc4a1dcc1ff52a607b31d2d6da65b6a9d530)
* fix:getColumns should return columns for anything that looks like a table [PR#405](https://github.com/pgjdbc/pgjdbc/pull/405) [f9f55d6](https://github.com/pgjdbc/pgjdbc/commit/f9f55d6b15d185ae4ad387a578fec7e73389418f)
* revert: undo changes to getTypeInfo which removed core types [PR#406](https://github.com/pgjdbc/pgjdbc/pull/406) [779ce18](https://github.com/pgjdbc/pgjdbc/commit/779ce1859bead6ff1f80a2c2e9bbc7c4347206d6)
* fix: tests [PR#406](https://github.com/pgjdbc/pgjdbc/pull/406) [7736b8d](https://github.com/pgjdbc/pgjdbc/commit/7736b8dd4079aa72c39e20d7d0b3f6a6968d2e5e)
* reformat: tests [PR#406](https://github.com/pgjdbc/pgjdbc/pull/406) [4acf7ae](https://github.com/pgjdbc/pgjdbc/commit/4acf7aef9e476aa829e300a1b580ed30b89532dd)
* fix:Do not set the loglevel when instantiating a connection it is set when the Driver starts [PR#407](https://github.com/pgjdbc/pgjdbc/pull/407) [84b28eb](https://github.com/pgjdbc/pgjdbc/commit/84b28eb9f450f844d375a427816ef1758ff66b18)
* fix: japanese translation [8aa478b](https://github.com/pgjdbc/pgjdbc/commit/8aa478b6c2770f125587f20a65cb60cd90ed8ccc)
* updated translation class files [2fa59d1](https://github.com/pgjdbc/pgjdbc/commit/2fa59d1f6660a8a91d910aabff50c8277b724ca5)
* build:incremented for 1205 [PR#410](https://github.com/pgjdbc/pgjdbc/pull/410) [fa0d7d5](https://github.com/pgjdbc/pgjdbc/commit/fa0d7d5d1caa3e7fbbfb7572beb9167cab38a6b4)

Michael Paquier (2):

* Remove non-ASCII character in code [PR#400](https://github.com/pgjdbc/pgjdbc/pull/400) [9f08e46](https://github.com/pgjdbc/pgjdbc/commit/9f08e46a75deb2f63bd73355b935b5f63799aad6)
* Add missing entry in lib/.gitignore [PR#401](https://github.com/pgjdbc/pgjdbc/pull/401) [358aef1](https://github.com/pgjdbc/pgjdbc/commit/358aef16bdb30668788cebf19662977f75d2b522)

Rikard Pavelic (1):

 * fix: Improve type detection with casing issues. [PR#404](https://github.com/pgjdbc/pgjdbc/pull/404) [0de91a5](https://github.com/pgjdbc/pgjdbc/commit/0de91a570c27f78f4648c75dfd00c1b2d66aceaf)

Vladimir Sitnikov (9):

* fix: avoid memory leak when redeploying pgjdbc [PR#394](https://github.com/pgjdbc/pgjdbc/pull/394) [d7cab7b](https://github.com/pgjdbc/pgjdbc/commit/d7cab7bd86e4adde0aa0a2fb4a6dfed59cf05cd8)
* test: add {?= call mysum(?, ?)} kind of test for CallableStatement [PR#410](https://github.com/pgjdbc/pgjdbc/pull/410) [45c8368](https://github.com/pgjdbc/pgjdbc/commit/45c83689d455493df38e711344635353b7e17cfe)
* perf: add BigDecimal test performance test to ProcessResultSet [PR#411](https://github.com/pgjdbc/pgjdbc/pull/411) [6dc4183](https://github.com/pgjdbc/pgjdbc/commit/6dc41835603089405201606c45661428fb90a90e)
* perf: optimize ResultSet.getObject [PR#411](https://github.com/pgjdbc/pgjdbc/pull/411) [567e268](https://github.com/pgjdbc/pgjdbc/commit/567e26842095be327ff03b60bb55884be2ecf960)
* perf: optimize getBigDecimal [PR#411](https://github.com/pgjdbc/pgjdbc/pull/411) [33904ef](https://github.com/pgjdbc/pgjdbc/commit/33904ef00aa545b8a8997e62d0e5da58ea9348de)
* test: add statement.getQueryTimeoutMs, so millisecond-scale timeouts can be tested [PR#413](https://github.com/pgjdbc/pgjdbc/pull/413) [892d7af](https://github.com/pgjdbc/pgjdbc/commit/892d7af82c4e077613a077ac950e63a8a5d069cc)
* fix: statement.cancel and statement.setQueryTimeout should be thread-safe [PR#412](https://github.com/pgjdbc/pgjdbc/pull/412) [bc3d848](https://github.com/pgjdbc/pgjdbc/commit/bc3d8488a0a4fa16e712be83d8debaf4b9130dfa)
* chore: print markdown links in release notes script [PR#416](https://github.com/pgjdbc/pgjdbc/pull/416) [a5b8ea7](https://github.com/pgjdbc/pgjdbc/commit/a5b8ea7460392b6e1fd0bc9f79ca5975b6cf8625)
* chore: add .gitattributes to ensure automatic end-of-line storage of text files is used [PR#417](https://github.com/pgjdbc/pgjdbc/pull/417) [254b739](https://github.com/pgjdbc/pgjdbc/commit/254b739250c670f5113e94ab30656ff59abbd0a2)

<a name="contributors_9.4-1205"></a>
### Contributors to this release

We thank the following people for their contributions to this release.

[Chapman Flack](https://github.com/jcflack)  
[Michael Paquier](https://github.com/michaelpq)  
[Rikard Pavelic](https://github.com/zapov)  
[Vladimir Sitnikov](https://github.com/vlsi)  

<a name="version_9.4-1204"></a>
## Version 9.4-1204 (2015-10-09)

[Alexey Mozhenin](https://github.com/amozhenin)

* fix: Make sure copy manager completesPR #378 (7c420ed)
* test: update for CopyLargeFileTest test to fit into 10 minutes limit PR #378 (39cd851)

[Dave Cramer](http://postgresintl.com)

 * fix: implemented getFunctions in jdbc4 (03483e1)
 * fix: error in getFunctionColumns PR #376 (5fafb86)
 * fix: filter DatabaseMetaData.getColumns by tables PR #386 (0c95126)
 * fix: abort connections after IOException instead of close PR #392 (3e68a70)

[Vladimir Sitnikov](https://github.com/vlsi)

 * pref: improve executeBatch by avoiding statement-by-statement execution PR #380 (92a9f30)
 * perf: improve setTimestamp, setTime, setDate performance PR #379 (5a03a6e)
 * chore: update jmh, drop irrelevant benchmark Parser#unmarkDoubleQuestion PR #384 (0d1237c)
 * chore: add more benchmarks, add missing FlightRecorderProfiler PR #385 (613a641)
 * feat: ignore empty sub-queries in composite queries PR #386 (3fb8046)
 * fix: binary processing of Date/Time/Timestamps PR #387 (5ec0ac3)
 * test: add tests for parsing of empty queries separated by semicolons PR #388 (d9310ce)
 * fix: ConcurrentModificationException when calling PreparedStatement.close from a concurrent thread PR #392 (40bcc01)

<a name="contributors_9.4-1204"></a>
### Contributors to this release

We thank the following people for their contributions to this release.

[Alexey Mozhenin](https://github.com/amozhenin)  
[Vladimir Sitnikov](https://github.com/vlsi)  

<a name="version_9.4-1203"></a>
## Version 9.4-1203 (2015-09-17)

Author: [Dave Cramer](<davec@postgresintl.com>)

* fix: Implemented getFunctions
* fix: changed getProcedureColumns to getFunctionColumns
* fix: CopyManager fails to copy a file, reading just part of the data #366

Author: [Lonny Jacobson](https://github.com/lonnyj)

* add: Added PGTime/PGTimestamp

Author: [Patric Bechtel](https://github.com/patric42)
      
* fix: setObject(int parameterIndex, Object x, int targetSqlType) as it will set scale of BigDecimal 'x' to 0 as default, resulting in rounded whole values (!). PR #353 (24312c6)
* fix: round to correct amount test: add test for BigDecimal rounding behaviour in setObject(index,Object,targetSqlType) and setObject(index,Object,targetSqlType,scale) PR #353 (ff14f62)

<a name="contributors_9.4-1203"></a>
### Contributors to this release

We thank the following people for their contributions to this release.

[Lonny Jacobson](https://github.com/lonnyj)  
[Patric Bechtel](https://github.com/patric42)  
[Alexey Mozhenin](https://github.com/amozhenin)  


<a name="version_9.4-1202"></a>
## Version 9.4-1202 (2015-08-27)

Author: [Alexis Meneses](https://github.com/alexismeneses)

* ResultSet positioning methods in some particular cases PR #296 (282536b)

Author: [Craig Ringer](https://github.com/ringerc)

* Disable binary xfer on batches returning generated keys PR #273 (763ae84)
* Add a new test case demonstrating a bug in returning support PR #273 (4d2b046)
* Always Describe a query in a batch that returns generated keys PR #273 (a6bd36f)

Author: [Dave Cramer](<davec@postgresintl.com>)
 
* chore: fix build.xml to allow releasing to maven PR #262 (34f9361)
* fix: BlobInputStream ignores constructor parameters #263 PR #273 (c1c6edc)
* don't reset forceBinary transfer if we setPreparedThreshold (937a11c)
* Revert "perf: Remove expensive finalize methods from Statement and Connection" PR #293 (a0d3997)
* updated copyright PR #312 (263375c)
* Revert "Issue 250 -- Adding setURL/getURL to BaseDataSource.java" PR #312 (a1ac380)
* fixed mailing list href PR #326 (c3e86a6)
* increment driver version PR #346 (b8ee75d)

Author: [David R. Bild](https://github.com/drbild)

* feat: add equality support to PSQLState PR #277 (7698cd9)

Author: [David Schlosnagle](https://github.com/schlosna)

* Improve version checking PR #355 (f7a84db)

Author: [Eugene Koontz](https://github.com/ekoontz)

* Add support within "private Object buildArray (PgArrayList input, int index, int count)" for array elements whose type is jsonb PR #349 (d313138)

Author: [Jeremy Whiting](<jwhiting@redhat.com>)

* Added setter method for logging level. The method exactly matches property name in documentation. PR #282 (d9595d1)
* Added getter method. PR #282 (65759f0)
* Adding XML catalog to help unit tests not remote entity resolution. PR #284 (cb87067)
* Added support to locally resolve dtd or entity files. PR #284 (017970d)
* Disable verbose logging of the catalog resolver. PR #284 (fcc34f5)

Author: [Kris Jurka](<jurka@ejurka.com>)

* Improve error message for failure to update multicolumn primary key RSs. PR #284 (05ff811)
* Remove all JDBC3 code as JDK 1.4/1.5 are no longer supported. PR #284 (f9a956b)
* Add preliminary support for JDBC4.2. PR #284 (bd05fd2)

Author: [Lonny Jacobson](https://github.com/lonnyj)

* Added setURL/getURL methods. (fcc8f75)
* Added a unit test for setURL PR #309 (5fa405b)

Author: [Markus KARG](https://github.com/quipsy-karg)

* perf: use shared PGBoolean instances PR #321 (159fed6)
* docs: parameter "database" is optional PR #332 (9a9d03f)
* refactor: binary transfer for setObject(int, Object, int) PR #351 (3ff2129)

Author: [Michael Paquier](https://github.com/michaelpq)

*  Update entries in lib/.gitignore PR #262 (8cd15a9)

Author: [Phillip Ross](https://github.com/phillipross)

* Fix for issue https://github.com/pgjdbc/pgjdbc/issues/342 - Modifications to PGline to store coefficients and constant value for linear equation representations used by postgresql for native line datatype. PR #343 (0565416)
* Fix for issue https://github.com/pgjdbc/pgjdbc/issues/342 - Removed extra copyright comments. PR #343 (5f21a18)
* Fix for issue https://github.com/pgjdbc/pgjdbc/issues/342 - Handle vertical lines. PR #343 (3918b24)
* Fix for issue https://github.com/pgjdbc/pgjdbc/issues/342 - Added test method for testing PGline PR #343 (1a50585)
* Fix for issue https://github.com/pgjdbc/pgjdbc/issues/342 - Modifications to PGline test method to only attempt database access if the postgresql version supports it (v9.4+). PR #343 (15eedb5)

Author: [Rikard Pavelic](<rikard@ngs.hr>)

* feat: Improved composite/array type support and type naming changes. PR #333 (cddcd18)

Author: [Robert J. Macomber](https://github.com/rjmac)

* Deadlock after IO exception during copy cancel PR #363 (d535c13)

Author: [Sehrope Sarkuni](https://github.com/sehrope)

* style: clean up newline whitespace PR #273 (1b77b4c)
* style: clean up whitespace in .travis.yml PR #274 (3ee5bbf)
* fix: correct incorrect PG database version in .travis.yml matrix PR #274 (74b88c6)
* style: reorder jdk versions in .travis.yml PR #274 (21289e7)
* feat: add PostgreSQL 9.4 to .travis.yml matrix PR #274 (9e94f35)
* feat: add escapeLiteral(...) and escapeIdentifier(...) to PGConnection PR #275 (096241f)

Author: [Stephen Nelson](https://github.com/lordnelson)

* Replace for loops with Java 5-style for loops. Replace String.indexOf with String.contains. Replace StringBuffer with StringBuilder. Remove boxing/unboxing of primitives. PR #245 (206a542)

Author: [Vladimir Gordiychuk](https://github.com/Gordiychuk)

* feat: Customize default fetchSize for statements PR #287 (093a4bc)
* feat: Customize default fetchSize for statements PR #287 (519bfe1)
* perf: Read test only property "org.postgresql.forceBinary" spend many time when creating statements PR #291 (e185a48)

Author: [Vladimir Sitnikov](https://github.com/vlsi)

* perf: Remove expensive finalize method from Statement Finalize method on Statement is moved to a separate class that is lazily created if user sets "autoCloseUnclosedConnections"="true". This dramatically improves performance of statement instantiation and reduces garbage collection overhead on several wildly used JMVs. PR #290 (eb83210)
* docs: fix misleading statement on "can't use jdk5 features" in README.md PR #298 (5b91aed)
* feat: implement micro-benchmark module for performance testing PR #297 (48b79a3)
* feat: add benchmark for Parser.unmarkDoubleQuestion PR #297 (e5a7e4e)
* feat: improve sql parsing performance PR #301 (fdd9249)
* perf: Remove AbstractJdbc2Statement.finalize() PR #299 (b3a2f80)
* test: add test for prepare-fetch-execute performance PR #303 (d23306c)
* perf: improve performance of preparing statements PR #303 (7c0655b)
* test: add test for utf8-encoder performance PR #307 (6345ab1)
* perf: improve performance of UTF-8 encoding PR #307 (f2c175f)
* perf: skip instantiation of testReturn and functionReturnType for non-callable statements PR #323 (8eacd06)
* perf: parse SQL to a single string, not a array of fragments PR #319 (4797114)
* perf: cache parsed statement across .prepareStatement calls PR #319 (5642abc)
* refactor: cleanup constructors of JDBC4 and JDBC42 connections/statements PR #318 (a4789c0)
* refactor: use Dequeue<...> instead of raw ArrayList in v3.QueryExecutorImpl PR #314 (787d775)
* perf: SimpleParameterList.flags int[] -> byte[] PR #325 (f5bceda)
* perf: cut new byte[1] from QueryExecutorImpl.receiveCommandStatus PR #326 (0ae1968)
* perf: avoid useBinary(field) check for each sendBind PR #324 (45269b8)
* refactor: cleanup Parser and NativeQuery after #311 PR #346 (a1029df)
* refactor: cleanup Parser and CallableQueryKey after #319 PR #346 (5ec7dea)
* perf: skip caching of very large queries to prevent statement cache pollution PR #346 (126b60c)
* use current_schema() for Connection#getSchema PR #356 (ffda429)
* chore: simple script to compose release notes PR #357 (341ff8e)
* chore: teach release_notes.sh to identify PR ids out of merge commits PR #358 (f3214b1)

<a name="contributors_9.4-1202"></a>
### Contributors to this release

We thank the following people for their contributions to this release.  
 
[Alexis Meneses](https://github.com/alexismeneses)  
[Craig Ringer](https://github.com/ringerc)  
[Jeremy Whiting](<jwhiting@redhat.com>)  
[Sehrope Sarkuni](https://github.com/sehrope)   
[Mikko Tiihonen](https://github/com/gmokki)  
[Dave Cramer](<davec@postgresintl.com>)  
[Stephen Nelson](https://github.com/lordnelson)  
[Vladimir Gordiychuk](https://github.com/Gordiychuk)  
[Vladimir Sitnikov](https://github.com/vlsi)  
[David Schlosnagle](https://github.com/schlosna)  
[Eugene Koontz](https://github.com/ekoontz)  
[Markus KARG](https://github.com/quipsy-karg)  
[Phillip Ross](https://github.com/phillipross)  
[Rikard Pavelic](<rikard@ngs.hr>)  
[Robert J. Macomber](https://github.com/rjmac)  
[Michael Paquier](https://github.com/michaelpq)  
[Lonny Jacobson](https://github.com/lonnyj)  
[Kris Jurka](<jurka@ejurka.com>)  
[David R. Bild](https://github.com/drbild)  

[Other committers](https://github.com/pgjdbc/pgjdbc/graphs/contributors?from=2013-10-31&to=2015-01-20&type=c)
	  
<a name="version_9.4-1201"></a>
## Version 9.4-1201 (2015-02-25)
Author: [Alexis Meneses](https://github.com/alexismeneses)

* ![fix](../media/img/fix.jpg)Do not pull a concrete implementation of slf4j in maven pom. Fixes #251 [PR    #252](https://github.com/pgjdbc/pgjdbc/pull/252) (6c2848c)
* ![fix](../media/img/fix.jpg)Declare all maven dependencies as optional in the pom [PR #252](https://github.com/pgjdbc/pgjdbc/pull/252) (1d02876)
* ![fix](../media/img/fix.jpg)Automatically load maven-ant-tasks to remove the need of "-lib lib" when building the project using ant PR #253 (7e80fca)
* ![fix](../media/img/fix.jpg)ant clean target delete maven dependencies added into "lib" directory [PR #253](https://github.com/pgjdbc/pgjdbc/pull/253) (cb7964e)
* ![chore](../media/img/chore.jpg) travis uses build process simplification [PR #253](https://github.com/pgjdbc/pgjdbc/pull/253) (e09032c)
* ![fix](../media/img/fix.jpg) regression of `ssl` parameter processing when used in additional Properties [PR #260](https://github.com/pgjdbc/pgjdbc/pull/260) (33d55af)

Author: Dave Cramer <davec@postgresintl.com>

* ![fix](../media/img/fix.jpg) Make junit optional in the pom [PR #254](https://github.com/pgjdbc/pgjdbc/pull/254) (9530047)
* ![fix](../media/img/fix.jpg) Added commit message readme [PR #255](https://github.com/pgjdbc/pgjdbc/pull/255) (c6312eb)
* ![fix](../media/img/fix.jpg) setUrl method of BaseDataSource. fixes issue #258 [PR #358](https://github.com/pgjdbc/pgjdbc/pull/358) (52a8d91)

Mikko Tiihonen (1):

* ![fix](../media/img/fix.jpg) setUrl method of BaseDataSource. Add test to make sure it does not break again PR #257 (477c7c8)

<a name="contributors_9.4-1201"></a>
### Contributors to this release

We thank the following people for their contributions to this release.  
 
[Alexis Meneses](https://github.com/alexismeneses)  
[Sehrope Sarkuni](https://github.com/sehrope)  
[Mikko Tiihonen](https://github/com/gmokki)  
[Dave Cramer](<davec@postgresintl.com>)

[Other committers](https://github.com/pgjdbc/pgjdbc/graphs/contributors?from=2013-10-31&to=2015-01-20&type=c)

<a name="version_9.4-1200"></a>
## Version 9.4-1200 (2015-01-02)
Author: [Alexis Meneses](https://github.com/alexismeneses)
	
* ![fix](../media/img/fix.jpg)	Support for setBinaryStream with unknown length [PR #220](https://github.com/pgjdbc/pgjdbc/pull/220)		
* ![add](../media/img/add.jpg) Improved support for BLOBS [PR #219](https://github.com/pgjdbc/pgjdbc/pull/219)
* 	  Added the support for very large objects (4TB) when backend is at least 9.3 using lo_xxx64 functions (see release 9.3 notes).
* 	  Added support for various JDBC4 methods related to Blobs:  
* setBlob with input stream in PreparedStatement  
* getBinaryStream with position and offset in Blob (also helps a lot handling very large objects)
* ![fix](../media/img/fix.jpg)	Fix for setStringType in DataSource [PR #221](https://github.com/pgjdbc/pgjdbc/pull/221)
* ![fix](../media/img/fix.jpg)	Set search path in startup packet [PR #216](https://github.com/pgjdbc/pgjdbc/pull/216)
* ![fix](../media/img/fix.jpg)	Connection.isValid() should have no impact on transaction state [PR #218](https://github.com/pgjdbc/pgjdbc/pull/218) fixes issue [#214](https://github.com/pgjdbc/pgjdbc/issues/214) 
* ![fix](../media/img/fix.jpg)	Replace StringBuffer with StringBuilder for performance [PR #243](https://github.com/pgjdbc/pgjdbc/pull/243)
* ![fix](../media/img/fix.jpg)	Make Pgjdbc an OSGi bundle [PR #241](https://github.com/pgjdbc/pgjdbc/pull/241)
* ![fix](../media/img/fix.jpg)	Fixing the Travis-CI integration
		
Author: [Sehrope Sarkuni](https://github.com/sehrope)

* ![fix](../media/img/fix.jpg) Fix Timer thread classloader leak [PR #197](https://github.com/pgjdbc/pgjdbc/pull/197)
* ![fix](../media/img/fix.jpg) Escape search_path in Connection.setSchema [PR #207](https://github.com/pgjdbc/pgjdbc/pull/207)
* ![add](../media/img/add.jpg) Add SSL factory SingleCertValidatingFactory [PR #88](https://github.com/pgjdbc/pgjdbc/pull/88)
* ![add](../media/img/add.jpg) Speed up connection creation on 9.0+ [PR #144](https://github.com/pgjdbc/pgjdbc/pull/144)
	
Author: [Mikko Tiihonen](https://github/com/gmokki)

* ![add](../media/img/add.jpg) Enhance connection fail-over with master/slave restriction and loadbalancing [PR #209](https://github.com/pgjdbc/pgjdbc/pull/209) Based on work by chenhj@cn.fujitsu.com
	
Author: [Minglei Tu](https://github.com/tminglei)
	
* ![add](../media/img/add.jpg) add ?-contained operator support [PR#227](https://github.com/pgjdbc/pgjdbc/pull/227)
	
Author: [Martin Simka](https://github.com/simkam)

* ![fix](../media/img/fix.jpg) GSS: fall back to old authentication when Subject doesn't contain instance of GssCredentials [PR#228](https://github.com/pgjdbc/pgjdbc/pull/228)
* ![fix](../media/img/fix.jpg) gssapi: Re-use existing Subject and GssCredentials [PR#201](https://github.com/pgjdbc/pgjdbc/pull/201)

Author: [bryonv](https://github.com/byronvf)

* ![fix](../media/img/fix.jpg) Honor stringtype=unspecified when also saving null values  
*  Currently, saving a string with setString applies oid.UNSPECIFIED, but saving null with setNull(index, java.sql.Types.VARCHAR) saves with oid.VARCHAR.
* For consistency, if the user requested that we treat string types as unspecified, we should do so in all cases.

Author: [Craig Ringer](https://github.com/ringerc)

* ![add](../media/img/add.jpg) Add native SSPI authentication support on Windows using JNA via Waffle [PR #212](https://github.com/pgjdbc/pgjdbc/pull/212)
* ![fix](../media/img/fix.jpg)	Add limited support for returning generated columns in batches [PR #204](https://github.com/pgjdbc/pgjdbc/pull/204). Fixes issues [#194](https://github.com/pgjdbc/pgjdbc/issues/194) and [#195](https://github.com/pgjdbc/pgjdbc/issues/195) 


<a name="contributors_9.4-1200"></a>
### Contributors to this release

We thank the following people for their contributions to this release.  
 
[Alexis Meneses](https://github.com/alexismeneses)  
[Sehrope Sarkuni](https://github.com/sehrope)  
[Minglei Tu](https://github.com/tminglei)  
[Martin Simka](https://github.com/simkam)  
[Mikko Tiihonen](https://github/com/gmokki)  
[bryonv](https://github.com/byronvf)  
Craig Ringer <craig@2ndquadrant.com>  
Dave Cramer	<davec@postgresintl.com>

[Other committers](https://github.com/pgjdbc/pgjdbc/graphs/contributors?from=2013-10-31&to=2015-01-20&type=c)

***	
<a name="version_9.3-1103"></a>
## Version 9.3-1103 (2015-01-02)
Author: Ancoron <ancoron.luciferis@gmail.com>

    Backport PGXAConnection.equals() fix from master

Author: Ancoron <ancoron.luciferis@gmail.com>

    Fix connection URL generation for 'stringtype' parameter in BaseDataSource
	
Author: Heikki Linnakangas <heikki.linnakangas@iki.fi>

    Fix equals-method of the wrapper returned by PGXAConnection.getConnection()
    Patch by Florent Guillaume

Author: Alexis Meneses <alexismeneses@users.noreply.github.com>

    Fixes on get/set/current-schema (9.3 branch)

Author: Alexis Meneses <alexismeneses@users.noreply.github.com>

    Add a TestSuite for JDBC 4.1
    
Author: Alexis Meneses <alexismeneses@users.noreply.github.com>

    Unescape/unquote result of getSchema
    
Author: Alexis Meneses <alexismeneses@users.noreply.github.com>

    Setting the search_path from currentSchema property is done in startup packet (v3 protocol only)

Author: Alexis Meneses <alexismeneses@users.noreply.github.com>

    Add tests for schema name containing special characters

Author: Alexis Meneses <alexismeneses@users.noreply.github.com>

    Escape schema name when setting search_path

Author: Damiano Albani <damiano.albani@gmail.com>

    Add support for "currentSchema" connection property.

Author: Dave Cramer <davec@postgresintl.com>

    Fixed timezone test as per Tom Lane's suggestion. …
    Now using Europe/Helsinki as the exemplar.

Author: Dave Cramer <davec@postgresintl.com>

    Clob will now use the connection encoding
    pull #121 from brekka/clob_encoding

Author: Dave Cramer <davec@postgresintl.com>

    backpatched Statement.isClosed() implementation of PGPoolingDataSource with some performance improvements. #180

Author: nicolas-f <github@nettrader.fr>

	Implement hashcode in PGObject 9.3
    Handle null value
    
Author: Dave Cramer <davec@postgresintl.com>
Date:   Mon Aug 18 12:30:48 2014 +0000

    NPE fix in org.postgresql.Driver.getPropertyInfo #176 \
    from Sergey Ignatov

<a name="version_9.3-1102"></a>
## Version 9.3-1102 (2014-07-10)

Author:epgrubmair bug #161

    fix copyOut close hanging bug #161 from epgrubmair

Author:romank0

    backpatch exception during close of fully read stream from romank0

Author:Christophe Canovas

    Added caching for ResultSetMetaData  complete commit

Author:Elizabeth Chatman

    NullPointerException in AbstractJdbc2DatabaseMetaData.getUDTs


    setNull, setString, setObject may fail if a specified type cannot be transferred in a binary mode #151

    backpatch fix for changing datestyle before copy

Author:TomonariKatsumata

    binary transfer fixes new feature -1 for forceBinaryTransfer
	
Author:Sergey Chernov

    connectTimeout property support backpatch
    
Author:Naoya Anzai

    fix prepared statement ERROR due to EMPTY_QUERY defined as static.


<a name="version_9.3-1101"></a>
## Version 9.3-1101 (2014-02-14)

Author:Jeremy Whiting <jwhiting@redhat.com>

    Added feature to disable column name sanitiser with a new property. 
	disableColumnSanitiser= boolean
	remove toLower calls for performance

Author:Craig Ringer <craig@2ndquadrant.com>

    Add a MainClass that tells the user they can't just run the JDBC driver    
    After one too many reports of
        "Failed to load Main-Class manifest attribute from postgresql-xxx.jar"
    I'm submitting a dummy main-class that tells the user what they should
    do instead.
    
    The message looks like:
    
    ------------
    PostgreSQL x.y JDBC4.1 (build bbbb)
    Found in: jar:file:/path/to/postgresql-x.y-bbbb.jdbc41.jar!/org/postgresql/Driver.class
    
    The PgJDBC driver is not an executable Java program.
    
    You must install it according to the JDBC driver installation instructions for your application / container / appserver, then use it by specifying a JDBC URL of the form
        jdbc:postgresql://
    or using an application specific method.
    
    See the PgJDBC documentation: http://jdbc.postgresql.org/documentation/head/index.html
    
    This command has had no effect.
    ------------


    fixed bug PreparedStatement.getMetaData failed if result set was closed
    reported by Emmanuel Guiton

Author: cchantep <chantepie@altern.org>
Date:   Thu Dec 12 15:54:55 2013 +0100

    Base table more usefull than "" as basic table name


    fixed driver fails to find foreign tables fix from plalg@hotmail.com

Author: Heikki Linnakangas <heikki.linnakangas@iki.fi>

    Fix various setQueryTimeout bugs.
    
    1. If you call setQueryTimeout(5), wait 10 seconds, and call execute(), the
    cancel timer has already expired, and the statement will be allowed to run
    forever. Likewise, if you call setQueryTimeout(5), wait 4 seconds, and call
    execute(), the statement will be canceled after only 1 second.
    
    2. If you call setQueryTimeout on a PreparedStatement, and execute the same
    statement several times, the timeout only takes affect on the first
    statement.
    
    3. If you call setQueryTimeout on one Statement, but don't execute it, the
    timer will still fire, possible on an unrelated victim Statement.
    
    The root cause of all of these bugs was that the timer was started at the
    setQueryTimeout() call, not on the execute() call.
    
    Also, remove the finally-block from the cancellation task's run-method,
    because that might erroneously cancel the timer for the next query, if a
    new query is started using the same statement fast enough.

Author: Heikki Linnakangas <heikki.linnakangas@iki.fi>

    Use StringBuffer to construct a string.
    
    This piece of code isn't performance-critical at all, but silences a
    Coverity complaint.

Author: Heikki Linnakangas <heikki.linnakangas@iki.fi>

    Avoid integer overflow.
    
    The function returns long, but does the calculation first in int. If someone
    sets the timeout to 600 hours in the URL, it will overflow, even though the
    return value of the function is long and hence could return a larger value.
    
    To silence a Coverity complaint.

Author: Heikki Linnakangas <heikki.linnakangas@iki.fi>

    Plug some Statement leaks in metadata queries.
    
    These are fairly harmless, nobody calls these metadata methods frequently
    enough for the leaks to matter, and a regular Statement doesn't hold onto
    any server resources anyway. But let's appease Coverity.

Author: Heikki Linnakangas <heikki.linnakangas@iki.fi>

    Make sure file is closed on exception.
    
    The system will eventually close the file anyway, and this read is highly
    unlikely to throw an IOException in practice.
    
    Also, use RandomAccessFile.readFully(byte[]) to slurp the file into byte
    array, rather than FileInputStream.read(byte[]). The latter would need to
    be called in a loop to protect from short reads.
    
    Both issues were complained of by Coverity.


Author: Stephen Nelson <stephen@eccostudio.com>

    Generate a non-Maven JAR filename using build-time version and JDBC API level.

Author: Stephen Nelson <stephen@eccostudio.com>

    Build script changes to allow packaging and deployment to Maven central using maven-ant-tasks
    
    Updated build.properties to contain the sonatype urls. Updated build.xml so that gpg signing works for each accompanying artifact type. Updated pom.xml to allow templated group and artifact ids.

Author: Craig Ringer <craig@2ndquadrant.com>

    NonValidatingFactory should be included in both JDBC3 and JDBC4

Author: Michael McCaskill <michael@team.shoeboxed.com>

    Use proper System property
    
    Using 'path.separator' results in malformed paths such as:
    /default/dir:./postgresql/root.crt
    This corrects the problem.

Author: Dave Cramer <davecramer@gmail.com>

    reset interrupted bit and throw unchecked exception if we get interrupted while trying to connect

Author: Dave Cramer <davecramer@gmail.com>

    add functions to allow LargeObjectMaager to commit on close from Marc Cousin

Author: tminglei <tmlneu@gmail.com>

    add uuid array support (rename ArrayElementBuilder to ArrayAssistant)

Author: Nick White <nwhite@palantir.com>

    allow the first query to be binary

Author: Dave Cramer <davec@postgresintl.com>

    Merge pull request #107 from cchantep/rs-basic-tblname
    
    Basic table name for resultset metadata

Author: Dave Cramer <davecramer@gmail.com>

    fixed bug PreparedStatement.getMetaData failed if result set was closed
    reported by Emmanuel Guiton #bugfix#



<a name="version_9.3-1100"></a>
## Version 9.3-1100 (2013-11-01)

Author: Dave Cramer <davecramer@gmail.com>
Date:   Thu Oct 17 08:29:07 2013 -0400

    reset interrupted bit and throw unchecked exception if we get interrupted while trying to connect

Author: Dave Cramer <davecramer@gmail.com>
Date:   Tue Oct 15 06:51:45 2013 -0400

    add functions to allow LargeObjectMaager to commit on close from Marc Cousin

Author: halset <halset@ecc.no>
Date:   Mon Sep 9 12:12:26 2013 +0200

    fix for setBlob with large blob

Author: Dave Cramer <davecramer@gmail.com>
Date:   Tue Sep 10 09:00:37 2013 -0400

    fixed DatabaseMetaDataTest as per Sylvain Cuaz

Author: Dave Cramer <davecramer@gmail.com>
Date:   Mon Jul 29 09:43:20 2013 -0400

    fixed sort order for DatabaseMetaData

Author: Dave Cramer <davec@postgresintl.com>
Date:   Sun Jul 21 13:18:26 2013 +0000

    backpatched canceltimer bug reported by Andri-Redko

Author: Dave Cramer <davec@postgresintl.com>
Date:   Wed May 22 04:03:58 2013 -0700

    Merge pull request #60 from davecramer/REL9_2_STABLE
    
    backpatch BaseDataSource

Author: Dave Cramer <davec@postgresintl.com>
Date:   Tue May 21 21:03:21 2013 -0400

    check for null before appending to url

Author: Dave Cramer <davecramer@gmail.com>
Date:   Tue May 21 20:23:00 2013 -0400

    initialize binaryTranferEnable to null

Author: Dave Cramer <davecramer@gmail.com>
Date:   Tue May 21 20:08:27 2013 -0400

    fixed tcpkeepalive as per Rui Zhu
    pass stringtype on to url through properties from Mike O'Toole

Author: Dave Cramer <davecramer@gmail.com>

Date:   Wed Feb 20 06:58:59 2013 -0500

    avoid NullPointerException from Derrik Hudson on User Defined Types

Author: Kris Jurka <jurka@ejurka.com>
Date:   Tue Mar 26 05:33:45 2013 -0700

    Lookup correct array delimiter in Connection.createArrayOf.
    
    The old code had hardcoded a comma, but that's not true for all
    datatypes.
    
    Identification and fix by sumo in pull request #49, testcase by me.

Author: Dave Cramer <davecramer@gmail.com>
Date:   Thu Nov 1 11:24:34 2012 -0400

    fix toString to handle binary integer and float types

Author: Dave Cramer <davecramer@gmail.com>
Date:   Wed Oct 31 10:23:23 2012 -0400

    Fix performance regression introduced by using InetSocketAddress.getHostName()
    Patch provided by Scott Harrington, improved upon by Kris Jurka

Author: Dave Cramer <davec@postgresintl.com>
Date:   Thu Oct 18 07:44:06 2012 -0400

    removed testSetObjectFromJavaArray out of jdbc2 tests

Author: Dave Cramer <davec@postgresintl.com>
Date:   Wed Oct 17 14:22:03 2012 -0400

    added BR translation class file

Author: Dave Cramer <davecramer@gmail.com>
Date:   Thu Sep 27 09:38:25 2012 -0400

    fixed missing isValid function

Author: Dave Cramer <davecramer@gmail.com>
Date:   Fri Sep 21 14:58:00 2012 -0400

    fixed attacl for servers below 8.3

Author: Craig Ringer <ringerc@ringerc.id.au>
Date:   Thu Sep 20 17:51:39 2012 +0800

    Add some info to the README with contributor info
    
    Discuss:
    - Bug reporting
    - Submitting patches
    - Test matrix
    - GitHub

Author: Craig Ringer <ringerc@ringerc.id.au>
Date:   Thu Sep 20 13:47:26 2012 +0800

    Update URLs in README to refer to the Oracle page locations
    
    Oracle has been doing a very poor job of maintaining old SUN URLs,
    and it's likely that these will break at some point, so best update
    them to reflect Oracle's control of Java now.
    
    Added a link to the JDBC tutorial in the process.

Author: Craig Ringer <ringerc@ringerc.id.au>
Date:   Thu Sep 20 14:02:18 2012 +0800

    Allow testing to continue when local host name doesn't resolve
    
    It seems to be a common and default configuration on some Linux systems
    for the local hostname not to resolve to the loopback IP address. This
    causes testTimeoutOccurs(org.postgresql.test.jdbc2.LoginTimeoutTest)
    to fail. I'm seeing this on Fedora 17 among others.
    
    While it's best to fix such systems, not causing an easily avoided
    and spurious failure in PgJDBC's test suite is probably worthwhile.
    Spit out a warning and continue.

Author: Dave Cramer <davecramer@gmail.com>
Date:   Fri Aug 24 14:24:31 2012 -0400

    Fixed build to not delete pgjdbc.html, which breaks the website build

Author: Dave Cramer <davec@postgresintl.com>
Date:   Thu Sep 13 07:48:52 2012 -0400

    updated translations

Author: Dave Cramer <davec@postgresintl.com>
Date:   Thu Sep 13 07:43:40 2012 -0400

    Added explicit test case for array handling from Craig Ringer

Author: Dave Cramer <davec@postgresintl.com>
Date:   Thu Sep 13 07:46:55 2012 -0400

    added docs for send/recv buffer size

Author: Dave Cramer <davec@postgresintl.com>
Date:   Wed Sep 12 05:11:02 2012 -0400

    added test case for send/recv buffers sizes

Author: Dave Cramer <davec@postgresintl.com>
Date:   Tue Sep 11 20:55:41 2012 -0400

    patch from Bernd Helme for send recev buffer sizes

Author: Dave Cramer <davec@postgresintl.com>
Date:   Tue Sep 11 20:12:13 2012 -0400

    new translation from Euler Taveira

Author: Craig Ringer <ringerc@ringerc.id.au>
Date:   Thu Sep 20 16:07:43 2012 +0800

    Fix breakage of JDBC3 builds with JDK5 by bddc05f939
    
    Fixes:
      commit bddc05f939ac9227b682e85d1ba0a9b902da814c
      simple connection failover from Mikko Tiihonen
    
    See:
      https://github.com/pgjdbc/pgjdbc/issues/6
    
    These fixes only affect builds of the JDBC3 driver. The JDBC4 driver
    appears fine.

Author: Dave Cramer <davec@postgresintl.com>
Date:   Thu Sep 13 07:43:40 2012 -0400

    added explicit test case for array handling from Craig Ringer

Author: Dave Cramer <davecramer@gmail.com>
Date:   Mon Jun 4 08:56:38 2012 -0400

    simple connection failover from Mikko Tiihonen

Author: Dave Cramer <davecramer@gmail.com>
Date:   Sun Jun 3 07:49:37 2012 -0400

    implemented setBinaryStream by Johann Oskarsson

Author: Dave Cramer <davecramer@gmail.com>
Date:   Fri Jun 1 17:57:31 2012 -0400

    fixed docs from Mikko Tiihonen

Author: Dave Cramer <davecramer@gmail.com>
Date:   Fri Jun 1 17:18:05 2012 -0400

    fixed urls in docs  from Mikko Tiihonen

Author: Dave Cramer <davecramer@gmail.com>
Date:   Fri Jun 1 17:16:49 2012 -0400

    fixed docs for loading in java 6.0 from Mikko Tiihonen

Author: Dave Cramer <davecramer@gmail.com>
Date:   Tue May 15 20:35:51 2012 -0400

    rest of Add hstore patch

Author: Dave Cramer <davecramer@gmail.com>
Date:   Tue May 15 06:47:09 2012 -0400

    Add support for hstore from Mikko Tiihonen

Author: Dave Cramer <davecramer@gmail.com>
Date:   Tue May 15 06:24:34 2012 -0400

    change Hashtable with Map from Mikko Tiihonen

Author: Dave Cramer <davecramer@gmail.com>
Date:   Tue May 15 06:23:24 2012 -0400

    change vector to list from Mikko Tiihonen

Author: Dave Cramer <davec@postgresintl.com>
Date:   Wed May 2 14:12:17 2012 -0400

    setProtocolVersion argument mis-spelled from Mikko Tiihonen

Author: Dave Cramer <davec@postgresintl.com>
Date:   Wed May 2 14:09:28 2012 -0400

    fix to build for java 1.8 from Mikko Tiihonen

Author: Dave Cramer <davecramer@gmail.com>
Date:   Fri Apr 27 09:54:47 2012 -0400

    check for array bounds before accessing the array

Author: Kris Jurka <jurka@ejurka.com>
Date:   Mon Mar 12 17:57:55 2012 -0700

    Fix setQueryTimeout test.
    
    When setQueryTimeout was fixed to use the correct units, I
    neglected to adjust the test at the same time.

Author: Kris Jurka <jurka@ejurka.com>
Date:   Mon Mar 12 17:43:58 2012 -0700

    Use a Set instead of a BitSet for tracking which types support
    binary transfer.
    
    A BitSet is a compact representation if we're only considering
    builtin types that will have low oids, but if any user defined
    types are enabled, all bets are off.  Once the oid counter exceeds
    INT_MAX, database connections were failing outright even if no
    high oid types used binary transfer because we represent these
    oids with negative values that a BitSet cannot handle.

Author: Kris Jurka <jurka@ejurka.com>
Date:   Mon Mar 12 17:33:40 2012 -0700

    Fix ResultSetMetaData retrieval when the oid counter exceeds INT_MAX.
    
    Since Java doesn't have unsigned ints we retrieve the values as long
    and then truncate to int, so it may have a negative value.
    
    As reported by Owen Tran.

Author: Kris Jurka <jurka@ejurka.com>
Date:   Mon Mar 12 17:33:27 2012 -0700

    Fix ResultSetMetaData retrieval when the oid counter exceeds INT_MAX.
    
    Since Java doesn't have unsigned ints we retrieve the values as long
    and then truncate to int, so it may have a negative value.
    
    As reported by Owen Tran.

Author: Dave Cramer <davecramer@gmail.com>
Date:   Mon Feb 13 16:43:57 2012 -0500

    resolve ACL getTablePriveledges for later servers

Author: Kris Jurka <jurka@ejurka.com>
Date:   Fri Feb 10 01:13:48 2012 -0800

    Fix bugs in setQueryTimeout.
    
    Setting a timeout of zero seconds should disable the timeout.
    The timeout should be in seconds, but was implemented as milliseconds.

Author: Kris Jurka <jurka@ejurka.com>
Date:   Fri Feb 10 00:34:59 2012 -0800

    Move logic out of concrete JDBC version classes.
    
    The concrete JDBC implementation classes should do as little work
    as possible.  They exist solely to connect the right set of concrete
    implemention classes, leaving all the real work to the Abstract
    versions.  Some logic had started to creep out into these concrete
    classes which is bad because it duplicates code in paths that aren't
    likely to be tested by a developer who is working primarily with a
    single JDK version.

Author: Kris Jurka <jurka@ejurka.com>
Date:   Thu Feb 9 23:59:41 2012 -0800

    Cache a copy of ResultSetMetaData in the ResultSet.
    
    This solves a major performance problem for ResultSetMetaData users
    which did not cache the ResultSetMetaData object.  One of the users
    is the driver's own implementation of updatable ResultSets, so this
    can't be worked around solely in end user code.
    
    In the 9.0 and earlier releases, the Field objects were used to hold
    database lookup results and these were longer lived than the
    ResultSetMetaData object.  Now that ResultSetMetaData is holding
    these database lookups we must hold onto the object to avoid
    repeating the database queries.
    
    Reported as bug #6293, fix by Steven Schlansker.

Author: Kris Jurka <books@ejurka.com>
Date:   Mon Feb 6 13:09:48 2012 -0800

    Convert .cvsignore files to .gitignore files.

Author: Kris Jurka <books@ejurka.com>
Date:   Mon Feb 6 13:01:36 2012 -0800

    Remove PostgreSQL CVS keyword expansion tags.

commit a57743f980a9de37877aa42a29e9c57514d5550e
Author: Kris Jurka <books@ejurka.com>
Date:   Mon Feb 6 13:01:28 2012 -0800

    Remove PostgreSQL CVS keyword expansion tags.

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Thu Jan 19 20:00:51 2012 +0000

    added isValid implementation from Luis Flores

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Thu Jan 19 12:06:44 2012 +0000

    SSPI authentication support from Christian Ullrich

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Mon Jan 16 21:00:51 2012 +0000

    removed ssl tests for buildfarm

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Thu Jan 5 01:12:44 2012 +0000

    removed quotes around language specifier server no longer supports this

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Tue Jan 3 15:27:55 2012 +0000

    remove MakeSSL.java this is now generated

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Mon Nov 28 11:24:19 2011 +0000

    removed Override to compile with java 1.4 added extra docs for ssl from Mikko Tiihonen

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Thu Nov 17 11:45:21 2011 +0000

    docs for ssl from Andras Bodor

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Thu Nov 17 11:27:51 2011 +0000

    SSL implementation from Andras Bodor more closely follow libpq

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Tue Oct 4 08:33:43 2011 +0000

    stack overflow fix from Mike Fowler

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Fri Sep 30 10:08:17 2011 +0000

    small fixes to binary transfer code and unit tests from Mikko Tiihonen

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Tue Sep 27 11:15:23 2011 +0000

    more jdk 1.4 compatability issues fixed from Mike Fowler

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Mon Sep 26 15:16:05 2011 +0000

    patch from Mike Fowler to fix broken builds

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Mon Sep 26 12:52:31 2011 +0000

    Mikko Tiihonen patches for binary types

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Thu Sep 22 12:53:26 2011 +0000

    binary protocol implementation from Mikko Tiihonen

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Tue Sep 20 15:58:49 2011 +0000

    forgot driver.java.in for cancel query implementation

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Tue Sep 20 14:57:13 2011 +0000

    implemented query timeout

Author: Dave Cramer <davec@fastcrypt.com>
Date:   Tue Sep 20 14:43:44 2011 +0000

    changed name of table from testmetadata to metadatatest, test was failing due to confusion with test_statement tables

Author: Kris Jurka <books@ejurka.com>
Date:   Sun Sep 11 01:39:32 2011 +0000

    Open HEAD for 9.2 development.

<a name="version_9.2-1004"></a>
## Version 9.2-1004 (2013-10-31)

Author: Dave Cramer <davec@postgresintl.com>
Date:   Tue Oct 29 14:32:44 2013 +0000

    move default port back to 5432


Author: Dave Cramer <davec@postgresintl.com>
Date:   Tue Oct 29 12:41:09 2013 +0000

    resolved conflict

Author: Dave Cramer <davec@postgresintl.com>
Date:   Tue Oct 29 05:38:39 2013 -0700

    Merge pull request #96 from lordnelson/maven-to-9.2-branch
    
    Build script changes to allow packaging and deployment to Maven central ...

Author: Stephen Nelson <stephen@eccostudio.com>
Date:   Sat Apr 13 00:20:36 2013 +0100

    Build script changes to allow packaging and deployment to Maven central using maven-ant-tasks.
    
    Updated build.properties to contain the sonatype urls. Updated build.xml so that gpg signing works for each accompanying artifact type. Updated pom.xml to allow templated group and artifact ids.
    
    Use 1.4 version of gpg plugin for signing Maven upload.

Author: Craig Ringer <craig@2ndquadrant.com>
Date:   Fri Oct 25 01:27:23 2013 -0700

    Merge pull request #93 from ringerc/REL9_2_STABLE
    
    Fix #92, missing NonValidatingFactory in JDBC3 driver

Author: Craig Ringer <craig@2ndquadrant.com>
Date:   Fri Oct 25 16:18:10 2013 +0800

    Fix #92, missing NonValidatingFactory in JDBC3 driver
    
    See https://github.com/pgjdbc/pgjdbc/issues/92
    
    You need this patch if attempts to use a URL like
    
        jdbc:postgresql://ipaddress:port/dbname?ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory
    
    fails with:
    
        java.lang.ClassNotFoundException: org.postgresql.ssl.NonValidatingFactory
    
    in the stack trace.

Author: Dave Cramer <davecramer@gmail.com>
Date:   Thu Oct 17 08:29:07 2013 -0400

    reset interrupted bit and throw unchecked exception if we get interrupted while trying to connect

Author: Dave Cramer <davecramer@gmail.com>
Date:   Tue Oct 15 06:51:45 2013 -0400

    add functions to allow LargeObjectMaager to commit on close from Marc Cousin

Author: Dave Cramer <davec@postgresintl.com>
Date:   Tue Sep 10 07:25:06 2013 -0700

    Merge pull request #87 from davecramer/REL9_2_STABLE
    
    Fixed setBlob with large blob from Tore Halset

Author: halset <halset@ecc.no>
Date:   Mon Sep 9 12:12:26 2013 +0200

    fix for setBlob with large blob

Author: Dave Cramer <davec@postgresintl.com>
Date:   Tue Sep 10 06:20:52 2013 -0700

    Merge pull request #84 from davecramer/REL9_2_STABLE
    
    Fixed sort order for DatabaseMetaData from Sylvain Cuaz

Author: Dave Cramer <davecramer@gmail.com>
Date:   Tue Sep 10 09:00:37 2013 -0400

    fixed DatabaseMetaDataTest as per Sylvain Cuaz

Author: Dave Cramer <davecramer@gmail.com>
Date:   Mon Jul 29 09:43:20 2013 -0400

    fixed sort order for DatabaseMetaData

Author: Dave Cramer <davec@postgresintl.com>
Date:   Sun Jul 21 13:18:26 2013 +0000

    backpatched canceltimer bug reported by Andri-Redko

Author: Dave Cramer <davec@postgresintl.com>
Date:   Sun Jun 23 06:22:09 2013 -0700

    Merge pull request #66 from davecramer/REL9_2_STABLE
    
    fixed compile mistake

Author: Dave Cramer <davec@postgresintl.com>
Date:   Sun Jun 23 09:17:27 2013 -0400

    fixed compile mistake

Author: Dave Cramer <davec@postgresintl.com>
Date:   Mon May 27 15:23:14 2013 -0700

    Merge pull request #62 from davecramer/REL9_2_STABLE
    
    incremented version to fix pushing a 1.7 build for maven
<a name="version_9.2-1003"></a>
## Version 9.2-1003 (2013-07-08)

Author: Dave Cramer
Date:   Mon Jul 8 03:23:25 2013 -0700

    Merge pull request #68 from tomdcc/setobject-varchar-stringtype
    
    Make PreparedStatement.setObject(pos, value, Types.VARCHAR) respect stringtype=unspecified

Author: Tom Dunstan 
Date:   Sun Jul 7 16:20:41 2013 +0930

    Make PreparedStatement.getObject() for an enum type return a string rather than a PGObject

Author: Tom Dunstan 
Date:   Sun Jul 7 12:53:43 2013 +0930

    Make PreparedStatement.setObject(pos, value, Types.VARCHAR) respect stringtype=unspecified

Author: Dave Cramer 
Date:   Wed Jul 3 03:42:36 2013 -0700

    Merge pull request #67 from njwhite/hstore
    
    the driver will always return Maps for hstore columns

Author: Dave Cramer 
Date:   Wed Jul 3 03:42:11 2013 -0700

    Merge pull request #35 from fionatay/translations
    
    Correct spelling in error messages and translations


Author: Nick White 
Date:   Fri Jun 28 21:44:53 2013 -0400

    the driver will always return Maps for hstore columns


Author: Dave Cramer 
Date:   Tue Jun 25 08:31:34 2013 -0700

    Merge pull request #64 from polarislabs/respect_ant_srcdir
    
    Respect ant srcdir


Author: Bryan Varner 
Date:   Fri Jun 21 11:39:35 2013 -0400

    Respect the ${srcdir} property for all source file references in ant script.
    
    This makes it possible to restructure the build (in the future?) so that source and artifact files (.java and .class) are not intermingled in the same directories on disk.

Author: Bryan Varner 
Date:   Fri Jun 21 11:31:11 2013 -0400

    Ignore netbeans and IDEA projects files.

Author: Dave Cramer 
Date:   Mon Jun 10 09:19:51 2013 -0700

    Merge pull request #52 from valgog/master
    
    Consider search_path when looking up type OIDs in TypeInfoCache

Author: Dave Cramer 
Date:   Wed May 22 08:05:11 2013 -0700

    Merge pull request #61 from davecramer/master
    
    expose URL in BaseDataSource

Author: Dave Cramer 
Date:   Wed May 22 10:56:55 2013 -0400

    expose URL property in BaseDataSource
    make sure stringtype gets into url from properties

Author: Dave Cramer 
Date:   Mon May 20 16:57:37 2013 -0700

    Merge pull request #59 from davecramer/master
    
    support for materialized views from Thomas Kellerer

Author: Dave Cramer 
Date:   Mon May 20 19:56:30 2013 -0400

    support for materialized views from Thomas Kelllerer

Author: Dave Cramer 
Date:   Mon May 20 11:46:52 2013 -0700

    Merge pull request #58 from davecramer/master
    
    pgbouncer transaction patch

Author: Valentine Gogichashvili 
Date:   Mon Apr 15 11:16:23 2013 +0200

    Added another test case for searching objects using search_path

Author: Valentine Gogichashvili 
Date:   Fri Apr 12 17:05:00 2013 +0200

    search_path support should be working correctly even for complex cases

Author: Valentine Gogichashvili 
Date:   Fri Apr 12 03:31:40 2013 +0200

    Test is checking search_path usage dirctly on TypeInfo methods

Author: Valentine Gogichashvili 
Date:   Fri Apr 12 02:35:27 2013 +0200

    Consider search_path when resolving type names to OIDs
    
    In case when types with the same name existed in several schemas,
    TypeInfoCache did not consider the current search_path and was choosing
    an OID of a type not deterministically. These change will make
    the type from the current schema to be chosen. Also this change remains
    backwards compatible with the previous implementation, still being anble
    to find a type, that is not included into the current search_path.
    
    Provided test fails now, as it does not TypeInfoCache
    directly. So more work is to be done to make this test work.

Author: Kris Jurka 
Date:   Tue Mar 26 05:33:45 2013 -0700

    Lookup correct array delimiter in Connection.createArrayOf.
    
    The old code had hardcoded a comma, but that's not true for all
    datatypes.
    
    Identification and fix by sumo in pull request #49, testcase by me.

Author: Kris Jurka 
Date:   Tue Mar 26 05:27:06 2013 -0700

    Remove plaintext README in favor of Markdown version.
    
    Having two copies is just going to invite drift.

Author: Dave Cramer 
Date:   Wed Mar 20 02:30:46 2013 -0700

    Merge pull request #48 from ChenHuajun/master
    
    Fix a simple mistake in Driver.getPropertyInfo()

Author: chj 
Date:   Wed Mar 20 14:52:49 2013 +0800

    fix a simple miss in getPropertyInfo()

Author: Dave Cramer 
Date:   Wed Feb 27 04:27:55 2013 -0800

    Merge pull request #45 from fathomdb/fix_default_password
    
    Change default password to 'test'

Author: Dave Cramer 
Date:   Wed Feb 27 04:27:26 2013 -0800

    Merge pull request #44 from fathomdb/support_wrappers
    
    Support for JDBC4 isWrapperFor & unwrap methods

Author: Justin Santa Barbara 
Date:   Mon Feb 25 08:12:46 2013 -0800

    Change default password to 'test'
    
    ./org/postgresql/test/README says the default password for unit tests is 'test',
    but the default was actually 'password'

Author: Justin Santa Barbara 
Date:   Mon Feb 25 07:57:24 2013 -0800

    Added unit test for wrapper functions

Author: Justin Santa Barbara 
Date:   Sat Feb 23 11:19:49 2013 -0800

    Support for JDBC4 isWrapperFor & unwrap methods

Author: Dave Cramer 
Date:   Wed Feb 20 09:32:12 2013 -0500

    removed compile error with double ,

Author: Dave Cramer 
Date:   Wed Feb 20 04:00:46 2013 -0800

    Merge pull request #42 from davecramer/master
    
    Avoid NPE on user defined types which have a value of null provided by Derrick Hudson

Author: Dave Cramer 
Date:   Wed Feb 20 06:58:59 2013 -0500

    avoid NullPointerException from Derrik Hudson on User Defined Types

Author: Dave Cramer 
Date:   Wed Feb 20 03:42:10 2013 -0800

    Merge pull request #41 from davecramer/master
    
    Added constant for turning logging OFF

Author: Dave Cramer 
Date:   Wed Feb 20 06:40:54 2013 -0500

    added Loglevel.OFF to complete the settings

Author: lordnelson 
Date:   Tue Feb 19 14:13:16 2013 +0000

    Markdown version of the README

Author: Dave Cramer 
Date:   Thu Feb 7 06:00:11 2013 -0800

    Merge pull request #38 from davecramer/master
    
    logging did not work properly when using a datasource, also many properties were not copied to the datasource

Author: Dave Cramer 
Date:   Thu Feb 7 08:55:06 2013 -0500

    log can not be output when using DataSource
    property settings were not being copied to the datasource
    these included logLevel, binaryTranfer, sslfactory, applicationName
    patch provided by Chen Huajun

Author: Kris Jurka 
Date:   Thu Jan 31 16:40:41 2013 -0800

    Expose enhanced error message fields from constraint violations.
    
    The server now provides the schema, table, column, datatype, and
    constraint names for certain errors.  So expose that to users so
    they don't have to go rummaging through the error text trying
    to find it.
    
    The server doesn't always provide all the fields and doesn't cover
    all the error messages, but it's a good start.  In the future it
    would be good to expose this information in a PGXXX class instead
    of the supposedly private ServerErrorMessage.

Author: Dave Cramer 
Date:   Tue Jan 29 02:36:13 2013 -0800

    Merge pull request #37 from davecramer/master
    
    fix loading of driver so that it checks for beginning of postgresql url before parsing anything

Author: Dave Cramer
Date:   Mon Jan 28 16:52:56 2013 -0500

    make sure driver doesn't parse anything if the url isn't for us, also catch other possible errors, reported by Nathaniel Waisbrot

Author: Fiona Tay
Date:   Sun Jan 20 23:46:31 2013 -0800

    Fix spelling of occured in error message
    - An error occurred while setting up the SSL connection

Author: Fiona Tay
Date:   Sun Jan 20 23:45:26 2013 -0800

    Fix spelling of occured in error message
    - Something unusual has occurred to cause the driver to fail

Author: Fiona Tay
Date:   Sun Jan 20 23:44:02 2013 -0800

    Fix spelling of occured in error message
     - An I/O error occured while sending to the backend.

Author: Dave Cramer
Date:   Fri Jan 11 11:38:17 2013 -0800

    Merge pull request #33 from davecramer/master
    
    fix bug where update_count not updated correctly

Author: Dave Cramer
Date:   Fri Jan 11 14:36:48 2013 -0500

    fixed mistake where update_count not updated properly

Author: Dave Cramer
Date:   Fri Jan 11 10:25:55 2013 -0800

    Merge pull request #32 from davecramer/master
    
    Allow ParseException to be thrown

Author: Dave Cramer 
Date:   Fri Jan 11 13:21:56 2013 -0500

    Fixed my patch to deal with update counts over 2^32
    Check to see if the update count is greater than Integer.MAX_VALUE before
    setting the update_count to Statement.SUCCESS_NO_INFO
    NumberFormatException will still be thrown if there is a problem
    parsing it.

Author: Dave Cramer 
Date:   Fri Jan 11 08:57:05 2013 -0800

    Merge pull request #31 from davecramer/master
    
    Bug reference 7766 reported by Zelaine Fong

Author: Dave Cramer 
Date:   Fri Jan 11 11:54:20 2013 -0500

    Bug reference 7766 reported by Zelaine Fong
    if an insert or update or delete statement affects more than 2^32 rows
    we now return Statement.SUCCESS_NO_INFO

Author: Dave Cramer 
Date:   Fri Jan 11 08:38:06 2013 -0800

    Merge pull request #30 from davecramer/master
    
    Fix cancel timer bug reported by Andriy Redko

Author: Dave Cramer 
Date:   Fri Jan 11 11:34:44 2013 -0500

    fix cancelTimer bug reported by Andri Redko.
    now cancel timer when connection is closed
    make sure timer is cancelled if there is an exception in execute

Author: Dave Cramer 
Date:   Fri Jan 11 06:11:41 2013 -0800

    Merge pull request #29 from davecramer/master
    
    DbKeyStoreSocketFactory was in wrong package

Author: Dave Cramer 
Date:   Fri Jan 11 09:09:59 2013 -0500

    changed package to org.postgresql.ssl

Author: Dave Cramer 
Date:   Fri Jan 11 05:57:43 2013 -0800

    Merge pull request #28 from davecramer/master
    
    Japanese Translation spelling fixed by Tomonari Katsumata

Author: Dave Cramer 
Date:   Fri Jan 11 08:56:22 2013 -0500

    Japanese translation spelling corrected provided by Tomonari Katsumata

Author: Dave Cramer 
Date:   Fri Jan 11 05:43:41 2013 -0800

    Merge pull request #26 from stevenschlansker/read-only
    
    Allow driver to set read-only based on a connection parameter.

Author: Dave Cramer 
Date:   Fri Jan 11 05:43:24 2013 -0800

    Merge pull request #25 from rkrzewski/backend_pid
    
    Expose PID of the backend process serving a paricular JDBC connection

Author: Dave Cramer
Date:   Fri Jan 11 05:41:51 2013 -0800

    Merge pull request #27 from davecramer/master
    
    DbKeyStoreFactory

Author: Dave Cramer 
Date:   Fri Jan 11 08:37:06 2013 -0500

    SSL client certificate via Keystore from a Resource file provided by Brendan Jurd
    
    It seems that the most common way to deal with this situation is to
    specify the keystore file and the password via system properties
    (javax.net.ssl.keyStore et. al.), but that wasn't suitable in my case.
     I needed to be able to load the keystore from a Resource file
    embedded in the compiled JAR.
    
    The class I came up with is attached.  It builds on the WrappedFactory
    provided in jdbc-postgres.  All the implementer needs to do is
    override the two abstract methods to provide an InputStream of the key
    store, and the password to access it.  The InputStream could be a
    FileInputStream, or an InputStream returned by getResource(), or
    whatever.
    
    This class uses the same keystore for KeyManager (selecting the
    key/cert to send as the client) and for TrustManager (verifying the
    server's certificate against trusted CAs).  It could easily be
    extended to allow for two separate keystores by adding another couple
    of methods.

Author: Steven Schlansker
Date:   Sun Dec 30 11:06:43 2012 -0800

    Allow driver to set read-only based on a connection parameter.

<a name="contributors_9.2-1003"></a>
### Contributors to this release

We thank the following people for their contributions to this release.

This is a list of all people who participated as committers:

Dave Cramer (davec), Kris Jurka.
***

<a name="version_9.2-1002"></a>
## Version 9.2-1002 (2012-11-14)

* ![fix](../media/img/fix.jpg) Fix Statement.toString to handle binary integer and Float types
	Committed by davec.

<a name="contributors_9.2-1002"></a>
### Contributors to this release

We thank the following people for their contributions to this release.

This is a list of all people who participated as committers:

Dave Cramer (davec).
***
	
<a name="version_9.2-1001"></a>
## Version 9.2-1001 (2012-10-31)

* ![fix](../media/img/fix.jpg) Fix performance regression introduced by using InetSocketAddress.getHostName
	Committed by davec. Thanks to Scott Harrington, Kris Jurka.

<a name="contributors_9.2-1001"></a>
### Contributors to this release

We thank the following people for their contributions to this release.

This is a list of all people who participated as committers:<br />Dave Cramer (davec).

This is a list of other contributors:<br />Scott Harrington, Kris Jurka.
***
	
<a name="version_9.2-1000"></a>
## Version 9.2-1000 (2012-09-27)

* ![add](../media/img/add.jpg) Implemented query timeout Committed by davec. Thanks to davec.
* ![add](../media/img/add.jpg) First pass implementation of binary protocol Committed by davec.
	Thanks to Mikko Tiihonen.
* ![add](../media/img/add.jpg) SSPI authentication support Committed by davec. Thanks to
	Christian Ullrich.
* ![add](../media/img/add.jpg) isValid implementation Committed by davec. Thanks to Louis
	Flores.
* ![add](../media/img/add.jpg) Add support for hstore Committed by davec. Thanks to
	Mikko Tiihonen.
* ![add](../media/img/add.jpg) Implemented JDBC4 setBinaryStream Committed by davec. Thanks to Johann Oskarsson.
* ![add](../media/img/add.jpg) Implementation of simple connection failover Committed by davec.
	Thanks to Mikko Tiihonen.
* ![add](../media/img/add.jpg) Allow changing of send recv buffer sizes Committed by davec.
	Thanks to Bernd Helme.
* ![fix](../media/img/fix.jpg) Fixed broken jdk 1.4 builds Committed by davec. Thanks to
	Mike Fowler.
* ![fix](../media/img/fix.jpg) Stack overflow fix Committed by davec. Thanks to Mike Fowler.
* ![fix](../media/img/fix.jpg) A BitSet is a compact representation if we're only considering
	builtin types that will have low oids, but if any user defined
	types are enabled, all bets are off.  Once the oid counter exceeds
	INT_MAX, database connections were failing outright even if no
	high oid types used binary transfer because we represent these
	oids with negative values that a BitSet cannot handle.
	Committed by jurka.
* ![fix](../media/img/fix.jpg) Fix attacl for servers below 8.3 Committed by davec.
* ![update](../media/img/update.jpg) SSL implementation to mimic libpq more closely
	Committed by davec. Thanks to Andras Bodor.
* ![update](../media/img/update.jpg) fix to build for java 1.8 Committed by davec.
	Thanks to Mikko Tiihonen.
* ![update](../media/img/update.jpg) Updated Brazilian Portuguese translation.
	Committed by davec. Thanks to Euler Taveira de Oliveira.
* ![update](../media/img/update.jpg) Documentation updates Committed by ringerc.

<a name="contributors_9.2-1000"></a>
### Contributors to this release

We thank the following people for their contributions to this release.

This is a list of all people who participated as committers:

Dave Cramer (davec), Kris Jurka (jurka), Craig Ringer (ringerc).

This is a list of other contributors:

Andras Bodor, Bernd Helme, Christian Ullrich, davec, Euler Taveira de Oliveira, Johann Oskarsson,
Louis Flores, Mike Fowler, Mikko Tiihonen.
***
	
<a name="version_9.1-902"></a>
## Version 9.1-902 (2011-04-18)

* ![fix](../media/img/fix.jpg) Fix ResultSetMetaData retrieval when the oid counter
	exceeds INT_MAX. Since Java doesn't have unsigned ints we retrieve the values
	as long and then truncate to int, so it may have a negative value. Committed by
	jurka. Thanks to Owen Tran .
* ![fix](../media/img/fix.jpg) Cache a copy of ResultSetMetaData in the ResultSet.
	This solves a major performance problem for ResultSetMetaData users
	which did not cache the ResultSetMetaData object.  One of the users
	is the driver's own implementation of updatable ResultSets, so this
	can't be worked around solely in end user code.
	In the 9.0 and earlier releases, the Field objects were used to hold
	database lookup results and these were longer lived than the
	ResultSetMetaData object.  Now that ResultSetMetaData is holding
	these database lookups we must hold onto the object to avoid
	repeating the database queries. 
	Committed by jurka. Thanks to Steven Schlansker.

<a name="contributors_9.1-902"></a>
### Contributors to this release

We thank the following people for their contributions to this release.

This is a list of all people who participated as committers:<br />Kris Jurka (jurka).

This is a list of other contributors:<br />Owen Tran Steven Schlansker.
***	
	
<a name="version_9.1-901"></a>
## Version 9.1-901 (2011-04-18)

* ![update](../media/img/update.jpg) Set version to 901 for release Committed by jurka.
	Thanks to jurka.

<a name="contributors_9.1-901"></a>
### Contributors to this release

We thank the following people for their contributions to this release.

This is a list of all people who participated as committers:<br />Kris Jurka (jurka).

This is a list of other contributors:

jurka.
***

<a name="version_9.1dev-900"></a>
## Version 9.1dev-900 (2011-04-18)

* ![add](../media/img/add.jpg) Add support for setting application_name on both connection
	startup and later through Connection.setClientInfo.
	Committed by jurka.
* ![add](../media/img/add.jpg) Fetch all metadata for the ResultSet in one query instead of
	making a trip for each attribute of each column. Committed by jurka.
* ![add](../media/img/add.jpg) Bring getSchemas up to JDBC 4 compliance.  Return the additional
	TABLE_CATALOG column that was added in JDBC 3.  Additionally support the getSchemas
	method added in JDBC 4 which filters the returned schemas. Committed by jurka.
* ![add](../media/img/add.jpg) Bring getProcedures/getProcedureColumns up to JDBC 4 compliance.
	Both methods have added a SPECIFIC_NAME column that can be used to differentiate
	between overloaded functions. getProcedureColumns has added some other additional
	columns to describe the datatype being returned. Committed by jurka. Thanks to Thor
	Michael Store.
* ![add](../media/img/add.jpg) Allow the driver to support setObject with Types.DISTINCT.
	We report metadata indicating that values are of this type, so we'd better accept
	it coming back in. Committed by jurka. Thanks to Vitalii Tymchyshyn.
* ![add](../media/img/add.jpg) Support building with the 1.7 JDK. Committed by jurka.
* ![add](../media/img/add.jpg) Support returning generated keys from batch statement
	execution. Unfortunately we need to disable the actual batching that the driver
	does behind the scenes because now that it is returning potentially large result
	values we must avoid a deadlock. Committed by jurka.
* ![fix](../media/img/fix.jpg) Report permission metadata for a table with no permissions
	correctly. Committed by jurka. Thanks to danap.
* ![fix](../media/img/fix.jpg) Ensure that an XAConnection throws SQLExceptions appropriately
	even though it's a proxy class.  Before this change it was throwing an
	InvocationTargetException instead of the actual cause. Committed by jurka. Thanks
	to Yaocl.
* ![fix](../media/img/fix.jpg) Make updatable ResultSets work with SQLXML data. Committed by
	jurka. Thanks to Michael Musset.
* ![fix](../media/img/fix.jpg) If a domain has a not null constraint, report that
	information in the metadata for both DatabaseMetaData.getColumns and
	ResultSetMetaData.isNullable. Committed by jurka. Thanks to Thomas Kellerer.
* ![fix](../media/img/fix.jpg) In DatabaseMetaData.getSchemas, return the user's own
	temp schemas, but no others.  Previously it wasn't returning the users own temp
        schema, but was showing all toast temp schemas. Committed by jurka. Thanks to
	Thomas Kellerer.
* ![fix](../media/img/fix.jpg) Change ResultSetMetaData to return information on serial
	datatypes in getColumnTypeName to match up with the behaviour of DatabaseMetaData.getColumns.
	Committed by jurka.
* ![fix](../media/img/fix.jpg) Fix literals that are injected into a SQL query to contain
	the PG specific E'' marker if they are using the non-standard-conforming-strings
	backslash escaping.  This will get rid of the warnings from escape_string_warning.
	Committed by jurka.
* ![fix](../media/img/fix.jpg) Clear the generated keys associated with a Statement at
	the next execution.  If the next execution doesn't want generated keys, we don't
	want to leave the old keys around. Committed by jurka.
* ![fix](../media/img/fix.jpg) The 9.1 server canonicalizes the client_encoding setting,
	so if we ask for unicode we get utf8.  This confused the driver because previous
	versions just echo back what we asked for.  Ask for the canonical name now.
	Committed by jurka. Thanks to Mike Fowler.
* ![fix](../media/img/fix.jpg) When running tests, don't assume that we know the server's
	default transaction isolation level. Committed by jurka. Thanks to Kevin Grittner.
* ![update](../media/img/update.jpg) Update default permissions to account for changes in
	different server versions.  8.2 removed the rule permission while 8.4 added a
	trunctate permission. Committed by jurka.
* ![update](../media/img/update.jpg) Newer server versions (9.0+) allow extra_float_digits
	to be set to 3 instead of the old limit of 2 to get the maximum precision of
	floating point values out of the server. Committed by jurka.
* ![update](../media/img/update.jpg) Update the date tests for changes in the 1.6 JVM.
	Older versions allowed five digit years and single digit days and months. The
	latest code only allows a strict yyyy-mm-dd.  This changed somewhere between
	1.6.0_11 and 1.6.0_21. Committed by jurka. Thanks to Mike Fowler.
* ![update](../media/img/update.jpg) Use slightly different SQL State error codes for
	the different types of connection setup failures to indicate which can be
	retried and which cannot. Committed by jurka. Thanks to Donald Fraser and
	Kevin Grittner.

<a name="contributors_9.1dev-900"></a>
### Contributors to this release

We thank the following people for their contributions to this release.

This is a list of all people who participated as committers:

Kris Jurka (jurka).

This is a list of other contributors:

danap, Donald Fraser and Kevin Grittner, Kevin Grittner, Michael Musset, Mike Fowler,
Thomas Kellerer, Thor Michael Store, Vitalii Tymchyshyn, Yaocl.
***

<a name="version_9.0-801"></a>
## Version 9.0-801 (2010-09-20)

* ![add](../media/img/add.jpg) Implement returning ASC/DESC order information in
	getIndexInfo. Committed by jurka.
* ![add](../media/img/add.jpg) Support PreparedStatement.setObject(int, Character).
	Committed by jurka. Thanks to Vitalii Tymchyshyn.
* ![fix](../media/img/fix.jpg) Work around a bug in the server's implementation of
	the binary copy protocol. Committed by jurka. Thanks to Matthew Wakeling.
* ![fix](../media/img/fix.jpg) Make ResultSetMetaData.getColumnType match the
	results of DatabaseMetaData.getColumns.DATA_TYPE for domain and composite
	types. Committed by jurka. Thanks to Thomas Kellerer.
* ![fix](../media/img/fix.jpg) Fix DatabaseMetaData.getColumns for 7.2 servers.
	This was accidentally broken in the previous release. Committed by jurka.
* ![fix](../media/img/fix.jpg) Fix a minor concurrency issue during the setup for
	processing escape functions. Committed by jurka. Thanks to Pierre Queinnec.
* ![fix](../media/img/fix.jpg) Fix DatabaseMetaData routines that return index
	information for a change in the 9.0 server that no longer renames the
	pg_attribute entries for the index, but only adjust the table's attributes
	on a column rename. Committed by jurka. Thanks to Adam Rauch.
* ![fix](../media/img/fix.jpg) Track the tail of the SQLWarning chain so we can
	quickly add a new element to it instead of having to walk the entire chain
	from the head.  This is important for the performance of handling plpgsql
	functions which do a ton of RAISE NOTICES which get translated into warnings.
	Committed by jurka. Thanks to Altaf Malik.

<a name="contributors_9.0-801"></a>
### Contributors to this release

We thank the following people for their contributions to this release.

This is a list of all people who participated as committers:

Kris Jurka (jurka).

This is a list of other contributors:

Adam Rauch, Altaf Malik, Matthew Wakeling, Pierre Queinnec, Thomas Kellerer,
Vitalii Tymchyshyn.
***

<a name="version_9.0-dev800"></a>
## Version 9.0-dev800 (2010-05-11)

* ![add](../media/img/add.jpg) Support reading the new hex escaped bytea
	format. Committed by jurka.
* ![add](../media/img/add.jpg) Add support for returning the new TRUNCATE
	privilege, that was added in 8.4, to the list of known table privileges.
	Committed by jurka. Thanks to Thomas Kellerer.
* ![add](../media/img/add.jpg) Add the partial index constraint to the FILTER_CONDITION
	column returned by DatabaseMetaData.getIndexInfo. Committed by jurka.
	Thanks to Mark Kirkwood.
* ![add](../media/img/add.jpg) Japanese translation of error messages. Committed
	by jurka. Thanks to Hiroshi Saito.
* ![add](../media/img/add.jpg) Bulgarian translation of error messages. Committed
	by jurka. Thanks to Viktor Usunov.
* ![add](../media/img/add.jpg) Add some more specific types to the return value
	for DatabaseMetaData.getTables.  Return composite types, temporary views,
	and temporary sequences with TABLE_TYPE values specifically for them.
	Committed by jurka. Thanks to Thomas Kellerer.
* ![add](../media/img/add.jpg) Add loglevel and protocolversion options to
	DataSources. Committed by jurka.
* ![fix](../media/img/fix.jpg) Remove an unused Sun specific import that prevented
	compilation on non-Sun JDKs. Committed by jurka. Thanks to Tom Lane.
* ![fix](../media/img/fix.jpg) Change the processing of Statement.executeUpdate
	to complain if any of the results of a multi-statement query string return
	a ResultSet.  Previously we were only checking the first result which
	resulted in silent partial execution of later SELECT statements. Committed
	by jurka. Thanks to Joseph Shraibman.
* ![fix](../media/img/fix.jpg) Check that a Connection hasn't been closed before
	allowing any operations on it. Committed by jurka. Thanks to Kevin
	Grittner.
* ![fix](../media/img/fix.jpg) Don't allow rollback or commit when a Connection
	is in autocommit mode. Committed by jurka. Thanks to Kevin Grittner.
* ![fix](../media/img/fix.jpg) Change the SQLStates reported for using a closed
	Connection and closed ResultSet to be more consistent. Report connection_does_not_exist
	(08003) for a closed Connection and object_not_in_state (55000) for a
	ResultSet. Committed by jurka.
* ![fix](../media/img/fix.jpg) When a COPY operation is the first statement
	issued in a transaction, it was not sending the BEGIN necessary to
	start the transaction. Committed by jurka. Thanks to Maciek Sakrejda.
* ![fix](../media/img/fix.jpg) The 8.4 release added some code to avoid re-describing
	a statement if we already had the type information available by copying
	the resolved type information from the query to the parameters. Its
	goal was just to overwrite parameters without a type (unknown), but it
	was actually overwriting all types which could change the query's desired
	behaviour. Committed by jurka. Thanks to Hiroshi Saito.
* ![fix](../media/img/fix.jpg) Fix the ORDINAL_POSITION in the DatabaseMetaData.getColumns.
	Previously we were returning simply pg_attribute.attnum, but that doesn't
	work in the presence of dropped columns because later columns don't get
	their attnum decremented if a preceding column is dropped.  Instead use
	the row_number window function for 8.4 and later servers to figure out the
	live column position. Committed by jurka.
* ![fix](../media/img/fix.jpg) Always specify an XA error code when creating an
	XAException. Otherwise a transaction manager won't know what to do with
	the error and may have to assume the worst. Committed by jurka. Thanks to
	Heikki Linnakangas, Justin Bertram.
* ![fix](../media/img/fix.jpg) LOB truncation didn't allow truncating to zero
	length because it was improperly using the positioning length checks
	which don't allow a zero length. Committed by jurka. Thanks to Simon Kissane.
* ![fix](../media/img/fix.jpg) Protocol sync was lost when a batch statement parameter
	had an embedded null byte. Committed by jurka. Thanks to Pierre Queinnec.
* ![fix](../media/img/fix.jpg) Fix a problem using the Copy API to copy data to the
	server from a Reader.  After reading data out of the Reader and into a buffer,
	we were sending the entire buffer on to the server, not just the subset of
	it that was filled by the read operation. Committed by jurka. Thanks to Leonardo F.
* ![fix](../media/img/fix.jpg) A XA transaction should not change the autocommit
	setting of a Connection.  Ensure that we restore this property correctly
	after the XA transaction completes. Committed by jurka. Thanks to Heikki
	Linnakangas, Achilleas Mantzios.
* ![fix](../media/img/fix.jpg) PoolingDataSources were not picking up all of the
	properties that were set for them.  Notably it would not give you a SSL
	connection when asked. Committed by jurka. Thanks to Eric Jain.
* ![fix](../media/img/fix.jpg) When setNull is called with a TIME or TIMESTAMP
	type we cannot pass that type information on to the backend because we
	really don't know whether it is with or without a time zone. For a NULL
	value it doesn't matter, but we can't establish a type because a later
	call with a non-null value using the same PreparedStatement can potentially
	end up using a specific type that is incorrect. Committed by jurka. Thanks
	to Martti Jeenicke.

<a name="contributors_9.0-dev800"></a>
### Contributors to this release

We thank the following people for their contributions to this release.

This is a list of all people who participated as committers:

Kris Jurka (jurka).

This is a list of other contributors:

Eric Jain, Heikki Linnakangas, Achilleas Mantzios, Heikki Linnakangas, Justin Bertram,
Hiroshi Saito, Joseph Shraibman, Kevin Grittner, Leonardo F, Maciek Sakrejda, Mark
Kirkwood, Martti Jeenicke, Pierre Queinnec, Simon Kissane, Thomas Kellerer, Tom Lane,
Viktor Usunov.
***

<a name="all-committers"></a>
## All Committers

This is a list of all people who have ever participated as committers on this project.

* Kris Jurka (jurka)
* Oliver Jowett (oliver)
* Dave Cramer (davec)
* Barry Lind (blind)
* Craig Ringer (ringerc)
