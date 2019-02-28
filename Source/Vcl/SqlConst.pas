{ *************************************************************************** }
{                                                                             }
{ Kylix and Delphi Cross-Platform Visual Component Library                    }
{                                                                             }
{ Copyright (c) 1997, 2001 Borland Software Corporation                       }
{                                                                             }
{ *************************************************************************** }


unit SqlConst;

interface

const
  DRIVERS_KEY = 'Installed Drivers';            { Do not localize }
  CONNECTIONS_KEY = 'Installed Connections';    { Do not localize }
  DRIVERNAME_KEY = 'DriverName';                { Do not localize }
  HOSTNAME_KEY = 'HostName';                    { Do not localize }
  ROLENAME_KEY = 'RoleName';                    { Do not localize }
  DATABASENAME_KEY = 'Database';                { Do not localize }
  MAXBLOBSIZE_KEY = 'BlobSize';                 { Do not localize }          
  VENDORLIB_KEY = 'VendorLib';                  { Do not localize }
  DLLLIB_KEY = 'LibraryName';                   { Do not localize }
  GETDRIVERFUNC_KEY = 'GetDriverFunc';          { Do not localize }
  AUTOCOMMIT_KEY = 'AutoCommit';                { Do not localize }
  BLOCKINGMODE_KEY = 'BlockingMode';            { Do not localize }
  WAITONLOCKS_KEY= 'WaitOnLocks';               { Do not localize }
  COMMITRETAIN_KEY = 'CommitRetain';            { Do not localize }
  TRANSISOLATION_KEY = '%s TransIsolation';     { Do not localize }
  SQLDIALECT_KEY = 'SqlDialect';                { Do not localize }
  SQLLOCALE_CODE_KEY = 'LocaleCode';            { Do not localize }
  ERROR_RESOURCE_KEY = 'ErrorResourceFile';     { Do not localize }
  SQLSERVER_CHARSET_KEY = 'ServerCharSet';      { Do not localize }
  SREADCOMMITTED = 'readcommited';              { Do not localize }
  SREPEATREAD = 'repeatableread';               { Do not localize }
  SDIRTYREAD = 'dirtyread';                     { Do not localize }
  SDRIVERREG_SETTING = 'Driver Registry File';           { Do not localize }
  SCONNECTIONREG_SETTING = 'Connection Registry File';   { Do not localize }
  szUSERNAME         = 'USER_NAME';             { Do not localize }
  szPASSWORD         = 'PASSWORD';              { Do not localize }
  SLocaleCode        = 'LCID';                  { Do not localize }
  ROWSETSIZE_KEY     = 'RowsetSize';            { Do not localize }
  OSAUTHENTICATION   = 'OS Authentication';     { Do not localize }
  SERVERPORT         = 'Server Port';           { Do not localize }
  MULTITRANSENABLED  = 'Multiple Transaction';  { Do not localize }
  TRIMCHAR           = 'Trim Char';             { Do not localize }
  CUSTOM_INFO        = 'Custom String';         { Do not localize }
  CONN_TIMEOUT       = 'Connection Timeout';    { Do not localize }
{$IFDEF MSWINDOWS}
  SDriverConfigFile = 'dbxdrivers.ini';            { Do not localize }
  SConnectionConfigFile = 'dbxconnections.ini';    { Do not localize }
  SDBEXPRESSREG_SETTING = '\Software\Borland\DBExpress'; { Do not localize }
{$ENDIF}
{$IFDEF LINUX}
  SDBEXPRESSREG_USERPATH = '/.borland/';          { Do not localize }
  SDBEXPRESSREG_GLOBALPATH = '/usr/local/etc/';   { Do not localize }
  SDriverConfigFile = 'dbxdrivers';                  { Do not localize }
  SConnectionConfigFile = 'dbxconnections';          { Do not localize }
  SConfExtension = '.conf';                       { Do not localize }
{$ENDIF}

resourcestring
  SLoginError = 'Cannot connect to database ''%s''';
  SMonitorActive = 'Cannot change connection on Active Monitor';
  SMissingConnection = 'Missing SQLConnection property';
  SDatabaseOpen = 'Cannot perform this operation on an open connection';
  SDatabaseClosed = 'Cannot perform this operation on a closed connection';
  SMissingSQLConnection = 'SQLConnection property required for this operation';
  SConnectionNameMissing = 'Connection name missing';
  SEmptySQLStatement = 'No SQL statement available';
  SNoParameterValue = 'No value for parameter ''%s''';
  SNoParameterType = 'No parameter type for parameter ''%s''';
  SParameterTypes = ';Input;Output;Input/Output;Result';
  SDataTypes = ';String;SmallInt;Integer;Word;Boolean;Float;Currency;BCD;Date;Time;DateTime;;;;Blob;Memo;Graphic;;;;;Cursor;';
  SResultName = 'Result';
  SNoTableName = 'Missing TableName property';
  SNoSqlStatement = 'Missing query, table name or procedure name';
  SNoDataSetField = 'Missing DataSetField property';
  SNoCachedUpdates = 'Not in cached update mode';
  SMissingDataBaseName = 'Missing Database property';
  SMissingDataSet = 'Missing DataSet property';
  SMissingDriverName = 'Missing DriverName property';
  SPrepareError = 'Unable to execute Query';
  SObjectNameError = 'Table/Procedure not found';
  SSQLDataSetOpen = 'Unable to determine field names for %s';
  SNoActiveTrans = 'There is no active transaction';
  SActiveTrans = 'A transaction is already active';
  SDllLoadError = 'Unable to Load %s';
  SDllProcLoadError = 'Unable to Find Procedure %s';
  SConnectionEditor = '&Edit Connection Properties';
  SCommandTextEditor = '&Edit CommandText';
  SMissingDLLName = 'DLL/Shared Library Name not Set';
  SMissingDriverRegFile = 'Driver/Connection Registry File ''%s'' not found';
  STableNameNotFound = 'Cannot find TableName in CommandText';
  SNoCursor = 'Cursor not returned from Query';
  SMetaDataOpenError = 'Unable to Open Metadata';
  SErrorMappingError = 'SQL Error: Error mapping failed';
  SStoredProcsNotSupported = 'Stored Procedures not supported by ''%s'' Server';
  SPackagesNotSupported = 'Packages are not supported by ''%s'' Server';
  SDBXUNKNOWNERROR = 'dbExpress Error: Unknown Error Code ''%s''';
  SDBXNOCONNECTION = 'dbExpress Error: Connection not found, error message cannot be retrieved';
  SDBXNOMETAOBJECT = 'dbExpress Error: MetadataObject not found, error message cannot be retrieved';
  SDBXNOCOMMAND = 'dbExpress Error: Command not found, error message cannot be retrieved';
  SDBXNOCURSOR = 'dbExpress Error: Cursor not found, error message cannot be retrieved';

//  #define DBXERR_NONE                    0x0000
  SNOERROR = '';
//  #define DBXERR_WARNING                 0x0001
  SWARNING = '[0x0001]: Warning';
//#define DBXERR_NOMEMORY                0x0002
  SNOMEMORY = '[0x0002]: Insufficient Memory for Operation';
//#define DBXERR_INVALIDFLDTYPE          0x0003
  SINVALIDFLDTYPE = '[0x0003]: Invalid Field Type';
//#define DBXERR_INVALIDHNDL             0x0004
  SINVALIDHNDL = '[0x0004]: Invalid Handle';
//#define DBXERR_NOTSUPPORTED            0x0005
  SNOTSUPPORTED = '[0x0005]: Operation Not Supported';
//#define DBXERR_INVALIDTIME             0x0006
  SINVALIDTIME = '[0x0006]: Invalid Time';
//#define DBXERR_INVALIDXLATION          0x0007
  SINVALIDXLATION = '[0x0007]: Invalid Data Translation';
//#define DBXERR_OUTOFRANGE              0x0008
  SOUTOFRANGE = '[0x0008]: Parameter/Column out of Range';
//#define DBXERR_INVALIDPARAM            0x0009
  SINVALIDPARAM = '[0x0009]: Invalid Parameter';
//#define DBXERR_EOF                     0x000A
  SEOF = '[0x000A]: Result set at EOF';
//#define DBXERR_SQLPARAMNOTSET          0x000B
  SSQLPARAMNOTSET = 'dbExpress Error [0x000B]: Parameter Not Set';
//#define DBXERR_INVALIDUSRPASS          0x000C
  SINVALIDUSRPASS = '[0x000C] Invalid Username/Password';
//#define DBXERR_INVALIDPRECISION        0x000D
  SINVALIDPRECISION = '[0x000D]: Invalid Precision';
//#define DBXERR_INVALIDLEN              0x000E
  SINVALIDLEN = '[0x000E]: Invalid Length';
//#define DBXERR_INVALIDTXNISOLEVEL      0x000F
  SINVALIDXISOLEVEL = '[0x000F]: Invalid Transaction Isolation Level';
//#define DBXERR_INVALIDTXNID            0x0010
  SINVALIDTXNID = '[0x0010]: Invalid Transaction ID';
//#define DBXERR_DUPLICATETXNID          0x0011
  SDUPLICATETXNID = '[0x0011]: Duplicate Transaction ID';
//#define DBXERR_DRIVERRESTRICTED        0x0012
  SDRIVERRESTRICTED = '[0x0012]: Application is not licensed to use this feature';
//#define DBXERR_LOCALTRANSACTIVE        0x0013
  SLOCALTRANSACTIVE = '[0x0013]: Local Transaction already active';
//#define DBXERR_MULTIPLETRANSNOTENABLED 0x0014
  SMULTIPLETRANSNOTENABLED = '[0x0014]: Multiple Transactions not Enabled';
//#define DBXERR_CONNECTIONFAILED        0x0015
  SCONNECTIONFAILED = '[0x0015]: Connection failed';
//#define DBXERR_DRIVERINITFAILED        0x0016
  SDRIVERINITFAILED ='[0x0016]: Driver initialization failed';
//#define DBXERR_OPTLOCKFAILED           0x0017
  SOPTLOCKFAILED = '[0x0017]: Optimistic Locking failed';
//#define DBXERR_INVALIDREF              0x0018
  SINVALIDREF = '[0x0018]: Invalid REF';
//#define DBXERR_NOTABLE                 0x0019
  SNOTABLE = '[0x0019]: No table found';
//#define DBXERR_NODATA                  0x0064
  SNODATA = '[0x0064]: No more data';
//#define DBXERR_SQLERROR                0x0065
  SSQLERROR = '[0x0065]: SQL Error';

  SDBXError = 'dbExpress Error: %s';
  SSQLServerError = 'SQL Server Error: %s';

  SConfFileMoveError = 'Unable to move %s to %s';
  SMissingConfFile = 'Configuration file %s not found';
  SObjectViewNotTrue = 'ObjectView must be True for Table with Object fields';
  SDriverNotInConfigFile = 'Driver (%s) not found in Cfg file (%s)';
  SObjectTypenameRequired = 'Object type name required as parameter value';
  SCannotCreateFile = 'Cannot create file %s';
// used in SqlReg.pas
  SDlgOpenCaption = 'Open trace log file';
  SDlgFilterTxt = 'Text files (*.txt)|*.txt|All files (*.*)|*.*';
  SLogFileFilter = 'Log files (*.log)';
  SCircularProvider = 'Circular provider references not allowed.';

// Removed in D8
SMultiConnNotSupported = 'Multiple Connections not supported by %s driver';
const

  DbxError : array[0..19] of String = ( '', SNOMEMORY, SINVALIDFLDTYPE,
                SINVALIDHNDL, SINVALIDTIME,
                SNOTSUPPORTED, SINVALIDXLATION, SINVALIDPARAM, SOUTOFRANGE,
                SSQLPARAMNOTSET, SEOF, SINVALIDUSRPASS, SINVALIDPRECISION,
                SINVALIDLEN, SINVALIDXISOLEVEL, SINVALIDTXNID, SDUPLICATETXNID,
                SDRIVERRESTRICTED, SLOCALTRANSACTIVE, SMULTIPLETRANSNOTENABLED );

implementation

end.
