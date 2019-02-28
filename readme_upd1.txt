
Delphi 7.1 Update 
Release Notes

=======================================================

This file contains important supplemental and late-breaking
information that may not appear in the main product
documentation, and supersedes information contained in other
documents, including previously installed release notes.
Borland recommends that you read this file in its entirety.

NOTE:  If you are updating a localized version of Delphi 7,
       visit the Borland Registered User web site to obtain a
       localized readme file that may contain important late-
       breaking information not included in this readme file.

IMPORTANT:  Delphi must be closed before installing this
            update.            
            
=====================================================

CONTENTS

 * INSTALLING THIS UPDATE
 * UPDATING LOCALIZED VERSIONS OF DELPHI 7
 * KNOWN ISSUES 
 * ISSUES ADDRESSED BY THIS UPDATE
   - IDE
   - CORE DATABASE
   - DATASNAP
   - DBGO (ADO COMPONENTS)
   - dbExpress
     - dbExpress COMPONENTS AND DB VCL
     - dbExpress CORE DRIVER AND METADATA
     - dbExpress VENDOR ISSUES
     - dbExpress CERTIFICATION
   - ACTIVEX
   - COMPILER
   - RTL
   - VCL
   - THIRD PARTY - BOLD FOR DELPHI
 * VERIFYING THAT THE UPDATE WAS SUCCESSFUL  
 * FILES INSTALLED BY THIS UPDATE
  
=======================================================

INSTALLING THIS UPDATE

* This update can not be applied to Delphi 7 Architect Trial
  version.
  
* This update can not be removed after it is installed.

* You will need the original Delphi 7 installation CD available
  to install this update.

* To install this update from the CD, insert the CD, and launch
  the d7_ent_upd1.exe file appropriate for your locale.

* To install this update from the Web, double-click the 
  self-executing installation file and follow the prompts.
  
* The Delphi 7 documentation PDF files are available on
  the update CD.

========================================================

UPDATING LOCALIZED VERSIONS OF DELPHI 7

* This update can be applied only to the English version of
  Delphi 7. There are separate updates for the German, French
  and Japanese versions of Delphi 7.
 
* This update provides new localized versions of the SqlConst
  files. After installing the update, backup and delete the
  following files from the Delphi 7 installation folder:
  
  Lib\Debug\SqlConst.dcu
  Lib\SqlConst.dcu
  Source\Vcl\SqlConst.pas
  
  and then remove the appropriate locale extension (.de, .fr, or
  .jp) from the new SqlConst files in the same folders. For
  example, for the French version of Delphi, rename
  SqlConst.dcu.fr to SqlConst.dcu.
  
========================================================

KNOWN ISSUES

dbExpress 

* After installing this update, the dbxdrivers.ini file will not
  contain an entry for MSSQL=1. If you require that entry, edit
  the ini file manually after installing the update. By default,
  dbxdrivers.ini is located at C:\Program Files\Common
  Files\Borland Shared\DBExpress.
  
* When installing this update, the existing registry values for
  the dbExpress connection and driver registry files
  (dbxconnections.ini and dbxdrivers.ini) are overwritten with
  the default location (C:\Program Files\Common Files\Borland
  Shared\DBExpress) if the "Common Files" directory is installed
  on a different, non-default drive. This causes a
  "Driver/Connection Registry File 'C:\Program Files\Common
  Files\Borland Shared\DBExpress\dbx....' not found" error at
  design time when Delphi attempts to locate one of these files.
 
  To resolve this issue, perform the following steps after
  installing this update:
   
  1. Shutdown Delphi 7. 
  
  2. Modify the registry key value
     'HKEY_LOCAL_MACHINE\Software\Borland\DBExpress\Connection
     Registry File' to reflect the actual location of your
     dbxconnections.ini file (see the warning below).  
  
  3. Modify the registry key value
     'HKEY_LOCAL_MACHINE\Software\Borland\DBExpress\Driver
     Registry File'  to reflect the actual location of your
     dbxdrivers.ini file.
     
  WARNING ABOUT EDITING THE REGISTRY
 
  Perform Windows registry edits at your own risk.  The registry
  is a critical component of your operating system, and any
  mistakes made while editing it can cause your machine to stop
  functioning. This document and  other product documentation
  describes how to edit your registry. In most cases, Borland
  recommends using the Microsoft Regedit tool to perform
  editing. Whatever tool you use, however, you should, before
  making any edits, make backups of your registry and thoroughly
  familiarize yourself with the editing tool and the registry
  editing process.
   
Unofficial Patches 

* If you have updated any Borland packages in the system32
  directory with unofficial patches or updates from CodeCentral,
  MSI might revert (auto-repair) those packages to their
  previous version during installation of this update.
  Therefore, after installing this update, you may need to 
  re-install unofficial patches or updates.
  
Empty Help Index Tab

* Due to a Windows Help engine limitation on Windows 98 and
  Millennium, the Help system Index tab will be empty if the
  index exceeds 32,767 keywords. 
  
  If you encounter an empty Help Index tab after installing this
  update, open the d7.ohi file in the Delphi7\Help folder and
  comment out one or more of the index entries by changing the
  colon in column one to a semi-colon, as shown here:
  
  ;Index Open Tools API (IOTA)=d7iota.hlp

  Save the d7.ohi file and delete any hidden *.GID files in your
  Delphi7/Help folder before restarting the Help.  
  
  This modification reduces the number of index keywords, but
  does not affect other Help system functionality, such as
  cross-file linking or F1 accessibility.
  
========================================================

ISSUES ADDRESSED BY THIS UPDATE

This readme lists the maintenance for all editions of Delphi 7;
not all of the features mentioned in this file are available in
all editions of the product.

This update resolves the following issues:

IDE

* Using the up/down arrow keys to navigate and select items from
  the Code Completion window sometimes skips items (Quality
  Central 2875).
  
* In the Project Manager, units are incorrectly displayed in the
  order that they are listed in the USES clause, rather than
  alphabetically.
  
* Using collections containing component references and form
  inheritance can result in incorrect references being stored in
  the dfm file.

=======================================================
  
CORE DATABASE

* TFMTBCDField initializes to size 8 instead of size 4, allowing 
  the system to initialize precision to 7 and size to 8 
  (Quality Central 5938).
  
* Using a TDBLookupComboBox to display a list of data given
  by a detail TQuery results in the error "Field '' not found"
  (Quality Central 5384 and 4823).
  
* TDBRadioGroup maintains its focus on the most recently
  selected item, even after an edit has been canceled
  (Quality Central 2109).
  
* When using persistent TStringField objects, if the Size
  property is set to a value larger than the database column it
  references, data in neighboring fields may be overwritten
  (Quality Central 3974).  To prevent this, the Size property is
  now automatically reset to match the underlying database
  column size when the dataset is opened. This reset will occur
  at either design time or runtime, but it does not affect 
  read-only fields.

=======================================================

DATASNAP

* After deleting a row from a TClientDataset, sometimes the
  delta dataset still contains a record.  This happens if you
  populate the Nested Dataset field before populating another
  field that precedes it in the field order.
  
* The TClientDataSet.ApplyUpdates method fails if the dataset 
  contains only changes to fields that have the 
  ProviderFlags.pfnUpdate property set to False 
  (Quality Central 2338).
  
* TClientDataSet does not order correctly on a TLargeIntField 
  when used in an index or in the IndexFieldNames property 
  (Quality Central 1050 & 2626)
  
* TAggregateField returns an incorrect value after a 
  filter was used and then cleared (Quality Central 1712).
 
* A "Key violation" exception may incorrectly be generated
  when using poFetchDetailsOnDemand with a nested dataset that
  also has an InternalCalc field (Quality Central 2011).
  
* TClientDataSet may contain invalid Delta entries when using 
  poPropogateChanges. (Quality Central 2019 & 2333).
  
* Editing the value of an InternalCalc field on a nested 
  TClientDataset causes the ChangeCount property of the 
  parent dataset to increase (Quality Central 2027).
  
* A TLargeIntField cannot be used as a linking field in a 
  master/detail relationship.  Doing so results in the 
  error "Cannot access field <fieldname> as type variant."
  
* TClientDataSet doesn't save data to file when FileName is 
  set and there is no existing file on disk 
  (Quality Central 2307).
  
* Using the Delphi 7 version of midas.dll to open an XML file
  that was saved with the Delphi 6 version of midas.dll results
  in an illegal operation.
  
* Incorrect filter expression parsing occurs when parsing a
  value that contains a quote in TClientDataSet. The expression
  parser incorrectly treats the rest of the expression as a
  formula (Quality Central 1266). 
  
* TClientDataSet.ChangeCount will return an incorrect value 
  when editing the value of a TStringField or a 
  TWideStringField and then reverting it to the original value 
  (Quality Central 2717 & 4508).
  
* Canceling an update to an individual field by assigning the
  "unassigned" (varEmpty) value to TField.NewValue in the
  TDataSetProvider.BeforeUpdateRecord event handler does not
  work (Quality Central 3660).
  
* TClientDataset InternalCalc fields are reset to null after 
  calling the ApplyUpdates method when using 
  poPropogateChanges (Quality Central  3777).
  
* When using incremental fetching on a TClientDataset with 
  parameters, the associated TDatasetProvider will repeatedly 
  return the same set of records (Quality Central 3515).
  
* TClientDataset.FindKey will fail with an list index error
  when used on a cloned nested dataset (Quality Central 3786).
  
* When the size of a Persistent field in TClientDataSet is set
  too large, it overwrites neighboring fields upon Post 
  (Quality Central 3974).
  
* TDataSetProvider generates incorrect SQL in response to a 
  RefreshRecord request in some cases and fails to update 
  all fields properly (Quality Central 4014).
  
* When TDataSetProvider obtains the DB 'current' values 
  after an update conflict, it does so against the wrong
  fields (Quality Central 4006).
  
* TClientDataSet.Delete fails with the error "Cannot
  delete master record with details" even when all of the
  details are deleted if the detail table was previously
  cloned (Quality Central 5646).
 
* In some cases, records may disappear from a nested 
  TClientDataset after performing edits, applying updates 
  and calling refresh (Quality Central 7287).
  
* When multiple indexes are included with the data from a 
  provider, the IndexDef entries in the TClientDataset 
  will show duplicate 'Fields' and 'DescFields' values 
  (Quality Central 7543).
  
* When updating blob fields in a TClientDataset with the 
  LogChanges property set to False, blob data is lost 
  from other unrelated records (Quality Central 6591).
  
* Using a Filter or Locate with a TLargeIntField on a 
  TClientDataSet will always fail with the error 
  "Constant is not correct type". 
  (Quality Central 6142 & 3496).
  
* Calling the CancelRange method on nested TClientDataset 
  will cause all records for every master record to be 
  displayed (Quality Central 4301).
  
* When using RefreshRecord on a Memo or Blobfield and the field
  has been modified by another user, the blobsize of that field
  does not change if it is less than before (Quality Central 4676).

* Calling the TClientDataset.Locate method on a TWordField 
  always returns false (Quality Central 5319).

* Using the TDataSetProvider poFetchDetailsOnDemand option 
  with a server-side master/detail definition (nested dataset 
  on the client side) raises an exception when the master
  TClientDataset is opened (Quality Central 5707).

* TClientDataset may create an incorrect delta when inserting
  new master and detail records and then editing the same 
  master record a second time (Quality Central 6849).
  
* The assignment of a LargeInt field to another LargeInt field
  fails when the destination and source are both TLargeIntFields
  (Quality Central 6393).

* When Params are passed from a TClientDataSet to a 
  TDatasetProvider, the Size,Precision, and NumericScale property 
  settings are lost (Quality Central 6308).
  
* TClientDataSet allocates values against nested dataset 
  AutoInc fields but it should not (Quality Central 5509).

* When using a TimeStamp type parameter with a TClientDataSet an
  error occurs when the parameter is passed to the server
  (Quality Central 6372). 
  
* Setting MTSDataModule.AutoComplete to False in the IDE is
  overridden and set back to True at run time (Quality Central
  4716).

* Calls to ApplyUpdates(-1) on a TMTSDataModule do not work
  properly (Quality Central 6906).
  
=======================================================

DBGO (ADO Components)

* Using TParameter.Assign(TParam) or TParam.Assign(TParameter)
  causes incorrect settings of the Size, NumericScale, and
  Precision properties (Quality Central 6366).
  
* When values in persistent TMemoFields are returned after
  reading a row of a TADOTable, the values are truncated at the
  first occurrence of #0 (Quality Central 2771).
  
* When using TADOQuery to get a result set from a SQL query, the
  SQL statement gets prepared but never gets unprepared
  Quality Central 3635).
  
* With a query, when using cursorType set to ctOpenForwardOnly
  and cursorLocation set to clUseServer, the "First" method will
  move the cursor position to the second record (Quality Central
  4769).
    
* Setting the value of a TLargeInt field to a negative value in
  an ADODataSet and calling Post results in the error "Multiple-
  step operation generated errors. Check each status value"
  (Quality Central 2106).
  
* When using a SQL Server 2000 table with a BigInt or decimal 
  columns, negative values are incorrectly returned as positive 
  values by ADO components (Quality Central 2379 & 998).

=======================================================

dbExpress COMPONENTS

* When including the line delimiter ";" at the end of a select
  statement in TSQLQuery, then using the query and a
  TDataProvider to give data to a CDS, you cannot apply updates
  without encountering a the syntax error "Token unknown."

* Updating on a TSQLQuery with  either a WHERE clause or when
  adding a delimiter ";" results in the error "Unable to find
  record, no key specified."
  
* When using TSQLConnection and TSimpleDataSet to access a MySQL
  database, it is impossible to add new records to a table that
  has an auto-increment primary key (Quality Central 5465).
  
* When using the MySql driver, erroneous state information about
  the number of active statements with respect to a
  TSQLConnection might result in a transaction starting on one
  connection and a commit or rollback happening on another
  connection (Quality Central 1074).
  
* Updating on TSQLQuery with either a WHERE clause or when adding a
  delimiter ";" results in the error "Unable to find record, no
  key specified" (Quality Central 5550).
  
* When using TSQLQuery to add calculated fields, OnCalcFields
  fails on the first record, because all of the fields in the
  first record are empty after OnCalcFields is called (Quality
  Central 1328).
  
* Calling TSQLConnection.getTableNames() to retrieve system
  tables takes too long.

* Using TSQLConnection.CloneConnection may result in the loss of
  the TableScope status for a new connection (Quality Central
  5867).

=======================================================

dbExpress CORE DRIVER AND METADATA

* DB2 V8 Support - Index Metadata retrieval:  (Quality Central
  4150) Querying for a table with a unique index fails with
  "Cannot convert a variant of type (Null) to type (String)"

* DB2 V8 Support - Fetching a stored procedure parameter fails.

* MySQL 4.0.x support (Quality Central 3731).

* MySQL driver supports only the default Port (Quality Central 3736).

* MySQL SQLCommand.GetRowsAffected returns 0 on successful
  updates (Quality Central 4504).

* MySQL TimeStamp comes back as NOT NULL always (Quality
  Central 4689).

* MySQL metadata causing data truncation (Quality Central
  4160).

* AV on SQLCommand.Close() in MySQL driver (Quality Central
  5819).

* MySQL metadata is retrieved from wrong database (Quality
  Central 4130).

* An MSSQL stored procedure with long names causes memory
  corruption (Quality Central 3225).

* The MSSQL driver leaks resources on repeated SQL execution 
  (Quality Central 4059).

* MSSQL TimeStamp fraction part rounding error while fetching
  data.

* MSSQL - ExecDirect() does not return the RowsAffected.

* MSSQL return parameter is not available from a stored
  procedure returning cursor/cursors (Quality Central 3763).

* An MSSQL stored procedure with no parameters causes memory
  corruption.

* An MSSQL stored procedure does not return @@IDENTITY after a
  SP execution. The identity value is returned only on the third
  execution.

* ORACLE Functions are now supported (Quality Central 4051).

* ORACLE SQLCommand.getParameter() always returns the NULL
  indicator as True (Quality Central 4018).

* InterBase - Support for BOOLEAN data type has been added.

=======================================================

dbExpress VENDOR ISSUES

* MySQL -  Data truncation resulted as the cursor level metadata
  is incorrect. MySQLField.length is 1024 for the second columns
  after describing the SQL "Show create table tablename".  -
  (Quality Central - 1810)

* MSSQL - SubQuery parameter binding causes an AV in MSVCRT7.DLL
  (Quality Central 2767) - MS bug. Case # SRX030728604937.

* MSSQL Null parameter binding on a NOT NULL INTEGER columns
  fails with a SQL Error "SQL State:HY000, SQLError Code:0
  Invalid input parameter values" - MS bug Case
  #SRX030728605044. dbExpress MSSQL driver calls
  IDBCommand.Prepare() and that seems to cause this bug in
  SQLOLEDB.DLL.

=======================================================

dbExpress CERTIFICATION

dbExpress has been certified with the following database
versions:

InterBase 7.1  (*Driver should also work with InterBase 6.5, 7.0)
Oracle 9.1.0   (*Driver should also work with ORACLE 9.2.0)
DB2 UDB 8.x    (*Driver should also work with DB2 V7)
MSSQL 2000
Informix 9.x
MySQL 4.0.18

 * The driver should work with these database versions, however,
   it has not been fully certified with these versions.
  
=======================================================

ACTIVEX

* On Windows 98 SE, registering an OLE-server on a a shared
  mapped drive and then starting the program from a non-UNC path
  drive results in an endless loop (Quality Central 3151).
  
* ShortToLongFileName fails on some UNC paths, which makes TComServer
  fail when the executable is located on a remote computer
  (Quality Central 3049).
  
* Additional methods begin with GhostMethod_ are added to
  interface declarations which would not appear in Delphi 6
  (Quality Central 3426).
  
* SetOlePicture distorts the target TPicture size (Quality
  Central 4137).

=======================================================
 
COMPILER

* Assigning a partially empty multi-dimensional dynamic array to
  a variant causes an access violation.
  
* Converting an empty dynamic array to a variant array results
  in a non-empty variant array with the wrong bounds.
  
* Assert fails to break and leaves an FPU invalid op exception set
  (Quality Central 5248).
  
* Under some circumstances, optimization causes an access
  violation on a call to a dynamic + safecall method (Quality
  Central 5071). 
   
=======================================================

RTL

* In System.pas, function LoadResString(ResStringRec:
  PResStringRec): string; has a hard-coded buffer of 1024
  characters, which causes resource string table entries in
  excess of 1023 characters to be truncated (Quality Central
  7581).
  
* On Windows Server 2003, calls to SysUtils.GetEnvironmentVariable
  fail with an access violation wHen the requested
  environment variable does not exist (Quality Central 4319).
  
* When a variant array item is a string with embedded null
  characters (#0), Delphi treats those items as null-terminated
  strings when the string is assigned to an item of variant
  array (Quality Central 6078).
  
=======================================================

VCL

* Context and keyword help does not fire for the OnHelp events.

* Selecting a zero length (empty) item in drop-down combo box
  results in an access violation in ntdll.dll.
  
* Attempting to delete a single item from the TComboBoxEx ItemEx
  list, that item and the next item are deleted (Quality Central
  3991).
  
* Calling TBitmap.Assign(nil) may result in a GDI resource leak
  (Quality Central 2511).
  
* TRegistry class leaks a register key handle if LazyWrite is set to
  False.
  
* THashedStringList ignores the NameValueSeparator property
  (Quality Central 5632).
  
* In a DBCS environment, an exe filename that includes DBCS
  characters often garbles Application.Title (Quality Central
  5089).
  
* Menu items and images are sometimes drawn partially in black
  on Windows XP systems that have themes disabled (Quality Central
  2341).
  
* When the ValueListEditor Visible property is set to False, making
  it visible and adding a string at runtime may cause an access
  violation (Quality Central 4953).
  
* When connected to a network printer and the system hosting the
  network printer is offline, Printer.PageWidth may cause an
  access violation in GDI32.DLL (Quality Central 757).

* The OldCreateOrder property for a form that inherits from
  another form is automatically set to True when the form is
  saved (Quality Central 1675).
  
* When ending a Windows session (either by using Log Off or Shut
  Down) while a VCL-based Delphi application is running, no
  OnDestroy events on the application's forms are called, nor
  are any finalization sections executed. This may result in
  lost data and user settings (Quality Central 5332).
  
=======================================================
  
THIRD PARTY - BOLD FOR DELPHI

* SQLDatabaseConfig now contains settings for database evolution
  scripts (separator, terminator and commands for transaction
  start/commit). Logs can be saved from the evolution dialog
  (Quality Central 4679).
  
* BoldSelectChangeAction in BoldComboBox is now triggered more
  appropriately on incremental searches (Quality Central 2827).

* A potential infinite recursion problem in
  TBoldUnOrderedIndexableList.KnowsSupportsNil has been fixed.

* An assert with side-effects in TBoldObjectList.GetBoldObject
  has been changed. This affects debug dcus only.

* TBoldUMLModelValidator.ValidateClass no longer has a bad format
  string for one error. 

* TBoldDbDataValidator.Validate no longer validates without
  running any tests when not connected to a database.

* DBDataValidation no longer fails on parent or child mapped
  classes. 

* Performance of XMI Import has been improved (Quality Central 2827) .

* XMI Export now correctly exports multiplicity 0..n.
 
* Transaction grouping in optimistic locking has been improved
  by performing checks in the same transaction as the update
  (Quality Central 3123).

* A memory leak in the Object Lending Library has been fixed
  (Quality Central 3648).

* Several issues with BoldGrid and goTabs have been resolved
  (Quality Central 3903 and 3904).

* Saving modified multilinks no longer yields an index out of
  bounds condition under certain conditions (Quality Central
  4870).

* BoldSystemDebuggerForm no longer yields an access violation on
  the second invocation from a Bold Action (Quality Central
  6482).

* Certain combinations of tableMapping=Child and abstract
  classes have been improved (Quality Central 7110).

* The OCL operation includesAll no longer returns false when it
  should return true (Quality Central 3146).

* An Import problem with "Error: Class is already a relation class for
  another association" has been fixed (Quality Central 3093).

* TBoldEnvironmentConfiguration.DeactivateQueue no longer yields
  an access violation during finalization (Quality Central
  3227).

* An access violation in BoldMemoryManager during finalization
  of multi-threaded applications has been fixed.

* Model validation no longer incorrectly warns against parent
  mapped classes with derived attributes not allowing null.

* Relating objects belonging to different Bold systems is no
  longer allowed.

* Instructions for compiling IDL files have been improved.
  
=======================================================

VERIFYING THAT THE UPDATE WAS SUCCESSFUL

The final dialog of the update installer indicates whether the
update was successful. You can also:

* Open Delphi 7 and use "Help | About" to display the About Box.
  The product version should be:
  
  Version 7.0 (Build 8.1)
  
  (Before applying the update, the version is 7.0 (Build 4.453).) 

* Use the file list in "FILES INSTALLED BY THIS UPDATE" below to
  verify that the correct file versions are installed on your
  machine.
  
=======================================================

FILES INSTALLED BY THIS UPDATE

This update adds or updates the following Delphi files. The
following list includes files for all editions of Delphi.
By default, <InstallDir> is C:\Program Files\Delphi7.

Version          Path and File Name
-------          ------------------
7.0.8.1          <InstallDir>\bin\coreide70.bpl
7.1.1523.17956   <InstallDir>\bin\dbexpdb2.dll
7.1.1523.17956   <InstallDir>\bin\dbexpInf.dll
7.1.1523.17956   <InstallDir>\bin\dbexpInt.dll
7.1.1523.17956   <InstallDir>\bin\dbexpmss.dll
7.1.1523.17956   <InstallDir>\bin\dbexpmysql.dll
7.1.1692.666     <InstallDir>\bin\dbexpora.dll
7.0.8.1          <InstallDir>\bin\dcc32.exe
7.0.8.1          <InstallDir>\bin\dcc70.dll
7.0.8.1          <InstallDir>\bin\dclclxdb70.bpl
7.0.8.1          <InstallDir>\bin\dcldb70.bpl
7.0.8.1          <InstallDir>\bin\dcldbx70.bpl
7.0.8.1          <InstallDir>\bin\delphi32.exe
7.0.8.1          <InstallDir>\bin\designide70.bpl
7.0.8.1          <InstallDir>\bin\dfm70.bpl
7.0.8.2          <InstallDir>\bin\orbpas45.dll
7.0.8.1          <InstallDir>\bin\tlib70.bpl
                 
                 <InstallDir>\lib\idl45\corba.dcu
                 <InstallDir>\lib\ADODB.dcu
                 <InstallDir>\lib\adortl.dcp
                 <InstallDir>\lib\axctrls.dcu
                 <InstallDir>\lib\comctrls.dcu
                 <InstallDir>\lib\ComServ.dcu 
                 <InstallDir>\lib\DB.dcu
                 <InstallDir>\lib\DBClient.dcu
                 <InstallDir>\lib\DBCommon.dcu
                 <InstallDir>\lib\DBCtrls.dcu
                 <InstallDir>\lib\dbExpDB2.dcu
                 <InstallDir>\lib\dbExpINT.dcu
                 <InstallDir>\lib\dbExpMySQL.dcu
                 <InstallDir>\lib\dbExpORA.dcu
                 <InstallDir>\lib\dbexpress.dcp
                 <InstallDir>\lib\dbrtl.dcp
                 <InstallDir>\lib\DBXpress.dcu
                 <InstallDir>\lib\dsnap.dcp
                 <InstallDir>\lib\dsnapcon.dcp
                 <InstallDir>\lib\Forms.dcu
                 <InstallDir>\lib\graphics.dcu
                 <InstallDir>\lib\IniFiles.dcu
                 <InstallDir>\lib\menus.dcu
                 <InstallDir>\lib\MidasLib.dcu
                 <InstallDir>\lib\MtsRdm.dcu
                 <InstallDir>\lib\Printers.dcu 
                 <InstallDir>\lib\Provider.dcu
                 <InstallDir>\lib\registry.dcu
                 <InstallDir>\lib\rtl.dcp
                 <InstallDir>\lib\SqlConst.dcu
                 <InstallDir>\lib\SqlConst.dcu.de
                 <InstallDir>\lib\SqlConst.dcu.fr
                 <InstallDir>\lib\SqlConst.dcu.jp
                 <InstallDir>\lib\SqlExpr.dcu
                 <InstallDir>\lib\StdCtrls.dcu
                 <InstallDir>\lib\system.dcu
                 <InstallDir>\lib\sysutils.dcu
                 <InstallDir>\lib\ValEdit.dcu
                 <InstallDir>\lib\Variants.dcu 
                 <InstallDir>\lib\vcl.dcp
                 <InstallDir>\lib\vcldb.dcp
 
                 <InstallDir>\lib\debug\ADODB.dcu
                 <InstallDir>\lib\debug\axctrls.dcu
                 <InstallDir>\lib\debug\comctrls.dcu
                 <InstallDir>\lib\debug\comserv.dcu
                 <InstallDir>\lib\debug\DB.dcu
                 <InstallDir>\lib\debug\DBClient.dcu
                 <InstallDir>\lib\debug\DBCommon.dcu
                 <InstallDir>\lib\debug\DBCtrls.dcu
                 <InstallDir>\lib\debug\DBXpress.dcu
                 <InstallDir>\lib\debug\Forms.dcu
                 <InstallDir>\lib\debug\graphics.dcu
                 <InstallDir>\lib\debug\inifiles.dcu
                 <InstallDir>\lib\debug\menus.dcu
                 <InstallDir>\lib\debug\MtsRdm.dcu
                 <InstallDir>\lib\debug\printers.dcu
                 <InstallDir>\lib\debug\Provider.dcu
                 <InstallDir>\lib\debug\registry.dcu
                 <InstallDir>\lib\debug\SqlConst.dcu
                 <InstallDir>\lib\debug\SqlConst.dcu.de
                 <InstallDir>\lib\debug\SqlConst.dcu.fr
                 <InstallDir>\lib\debug\SqlConst.dcu.jp
                 <InstallDir>\lib\debug\SqlExpr.dcu
                 <InstallDir>\lib\debug\stdctrls.dcu
                 <InstallDir>\lib\debug\system.dcu
                 <InstallDir>\lib\debug\sysutils.dcu
                 <InstallDir>\lib\debug\ValEdit.dcu
                 <InstallDir>\lib\debug\variants.dcu
                 <InstallDir>\lib\debug\idl45\Corba.dcu
 
                 <InstallDir>\source\rtl\common\ComServ.pas 
                 <InstallDir>\source\rtl\common\IniFiles.pas
                 <InstallDir>\source\rtl\common\registry.pas
                 <InstallDir>\Source\rtl\Corba45\corba.pas
                 <InstallDir>\source\rtl\sys\System.pas
                 <InstallDir>\source\rtl\sys\sysutils.pas
                 <InstallDir>\source\rtl\sys\Variants.pas
                 
                 <InstallDir>\source\vcl\ADODB.pas
                 <InstallDir>\source\vcl\axctrls.pas
                 <InstallDir>\source\vcl\comctrls.pas
                 <InstallDir>\source\vcl\DB.pas
                 <InstallDir>\source\vcl\DBClient.pas
                 <InstallDir>\source\vcl\DBCommon.pas
                 <InstallDir>\source\vcl\DBCtrls.pas
                 <InstallDir>\source\vcl\DBXpress.pas
                 <InstallDir>\source\vcl\Forms.pas
                 <InstallDir>\source\vcl\graphics.pas
                 <InstallDir>\source\vcl\menus.pas
                 <InstallDir>\source\vcl\MtsRdm.pas
                 <InstallDir>\source\vcl\Printers.pas 
                 <InstallDir>\source\vcl\Provider.pas
                 <InstallDir>\source\vcl\SqlConst.pas
                 <InstallDir>\source\vcl\SqlConst.pas.de
                 <InstallDir>\source\vcl\SqlConst.pas.fr
                 <InstallDir>\source\vcl\SqlConst.pas.jp
                 <InstallDir>\source\vcl\SqlExpr.pas
                 <InstallDir>\source\vcl\StdCtrls.pas
                 <InstallDir>\source\vcl\ValEdit.pas
                                  
7.0.8.1          Windows\system32\adortl70.bpl
7.0.8.1          Windows\system32\dbexpress70.bpl 
7.0.8.2          Windows\system32\dbrtl70.bpl
7.0.8.1          Windows\system32\dsnap70.bpl
7.0.8.1          Windows\system32\dsnapcon70.bpl
7.0.8.1          Windows\system32\rtl70.bpl
7.0.8.1          Windows\system32\vcl70.bpl
7.0.8.1          Windows\system32\vcldb70.bpl
7.1.1692.666     Windows\system32\midas.dll
                
7.0.8.1          Common Files\Borland Shared\Debugger\dcc70.dll

======================================================
Copyright (c) 2004 Borland Software Corporation.
All rights reserved.
