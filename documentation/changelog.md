---
layout: changes
title: PostgreSQL JDBC Changelog
resource: ../media
nav: ../
---

# History of Changes
* [Introduction and explanation of symbols](#introduction)
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
