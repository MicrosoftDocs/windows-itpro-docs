---
title: Log Files (Windows 10)
description: Learn how to use User State Migration Tool (USMT) 10.0 logs to monitor your migration and to troubleshoot errors and failed migrations.
ms.reviewer: 
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/01/2022
ms.topic: article
ms.technology: itpro-deploy
---

# USMT log files

You can use User State Migration Tool (USMT) 10.0 logs to monitor your migration and to troubleshoot errors and failed migrations. This article describes the available command-line options to enable USMT logs, and new XML elements that configure which types of errors are fatal and should halt the migration, which types are non-fatal and should be skipped so that the migration can continue.

[Log command-line options](#log-command-line-options)

[ScanState and LoadState logs](#scanstate-and-loadstate-logs)

[Progress log](#progress-log)

[List files log](#list-files-log)

[Diagnostic log](#diagnostic-log)

## Log command-line options

The following table describes each command-line option related to logs, and it provides the log name and a description of what type of information each log contains.

|Command line Option|File Name|Description|
|--- |--- |--- |
|**/l**"*[Path]FileName*|`ScanState.exe.log` or `LoadState.log`|Specifies the path and file name of the **ScanState** log or **LoadState** log.|
|**/progress**:*[Path]FileName*|Specifies the path and file name of the Progress log.|Provides information about the status of the migration, by percentage complete.|
|**/v**:*[VerbosityLevel]*|Not applicable|See [Monitoring options](usmt-scanstate-syntax.md#monitoring-options) in [ScanState syntax](usmt-scanstate-syntax.md).|
|**/listfiles**:*[Path]FileName*|Specifies the path and file name of the Listfiles log.|Provides a list of the files that were migrated.|
|Set the environment variable **MIG_ENABLE_DIAG** to a path to an XML file.|`USMTDiag.xml`|The diagnostic log contains detailed system environment information, user environment information, and information about the migration units (migunits) being gathered and their contents.|

> [!NOTE]
> You cannot store any of the log files in *StorePath*. If you do, the log will be overwritten when USMT is run.

## ScanState and LoadState logs

 **ScanState** and **LoadState** logs are text files that are create when you run the **ScanState** and **LoadState** tools. You can use these logs to help monitor your migration. The content of the log depends on the command-line options that you use and the verbosity level that you specify. For more information about verbosity levels, see [Monitoring options](usmt-scanstate-syntax.md#monitoring-options) in [ScanState syntax](usmt-scanstate-syntax.md).

## Progress log

You can create a progress log using the `/progress` option. External tools, such as Microsoft System Center Operations Manager, can parse the progress log to update your monitoring systems. The first three fields in each line are fixed as follows:

- **Date:** Date, in the format of *day* *shortNameOfTheMonth* *year*. For example: 08 Jun 2006.

- **Local time:** Time, in the format of *hrs*:*minutes*:*seconds* (using a 24-hour clock). For example: 13:49:13.

- **Migration time:** Duration of time that USMT was run, in the format of *hrs:minutes:seconds*. For example: 00:00:10.

The remaining fields are key/value pairs as indicated in the following table.

| Key | Value |
|-----|-------|
| *program* | `ScanState.exe` or `LoadState.exe`. |
| *productVersion* | The full product version number of USMT. |
| *computerName* | The name of the source or destination computer on which USMT was run. |
| *commandLine* | The full command used to run USMT. |
| *PHASE* | Reports that a new phase in the migration is starting. This key can be one of the following values:<ul><li>Initializing</li><li>Scanning</li><li>Collecting</li><li>Saving</li><li>Estimating</li><li>Applying</li></ul> |
| *detectedUser* | <ul><li>For the **ScanState** tool, this key are the users USMT detected on the source computer that can be migrated.</li><li>For the **LoadState** tool, this key are the users USMT detected in the store that can be migrated.</li></ul> |
| *includedInMigration* | Defines whether the user profile/component is included for migration. Valid values are **Yes** or **No**. |
| *forUser* | Specifies either of the following values:<ul><li>The user state being migrated.</li><li>*This Computer*, meaning files and settings that aren't associated with a user.</li></ul> |
| *detectedComponent* | Specifies a component detected by USMT.<ul><li>For *ScanState*, this key is a component or application that is installed on the source computer.</li><li>For **LoadState**, this key is a component or application that was detected in the store.</li></ul> |
| *totalSizeInMBToTransfer* | Total size of the files and settings to migrate in megabytes (MB). |
| *totalPercentageCompleted* | Total percentage of the migration that has been completed by either **ScanState** or **LoadState**. |
| *collectingUser* | Specifies which user **ScanState** is collecting files and settings for. |
| *totalMinutesRemaining* | Time estimate, in minutes, for the migration to complete. |
| *error* | Type of non-fatal error that occurred. This key can be one of the following values:<ul><li>**UnableToCopy**: Unable to copy to store because the disk on which the store is located is full.</li><li>**UnableToOpen**: Unable to open the file for migration because the file is opened in non-shared mode by another application or service.</li><li>**UnableToCopyCatalog**: Unable to copy because the store is corrupted.</li><li>**UnableToAccessDevice**: Unable to access the device.</li><li>**UnableToApply**: Unable to apply the setting to the destination computer.</li></ul> |
| *objectName* | The name of the file or setting that caused the non-fatal error. |
| *action* | Action taken by USMT for the non-fatal error. The values are:<ul><li>**Ignore**: Non-fatal error ignored and the migration continued because the **/c** option was specified on the command line.</li><li>**Abort**: Stopped the migration because the **/c** option wasn't specified.</li></ul> |
| *errorCode* | The errorCode or return value. |
| *numberOfIgnoredErrors* | The total number of non-fatal errors that USMT ignored. |
| *message** | The message corresponding to the errorCode. |

## List files log

The List files log (`Listfiles.txt`) provides a list of the files that were migrated. This list can be used to troubleshoot XML issues or can be retained as a record of the files that were gathered into the migration store. The List Files log is only available for `ScanState.exe`.

## Diagnostic log

You can obtain the diagnostic log by setting the environment variable **MIG_ENABLE_DIAG** to a path to an XML file.

The diagnostic log contains:

- Detailed system environment information

- Detailed user environment information

- Information about the migration units (migunits) being gathered and their contents

## Using the Diagnostic Log

The diagnostic log is essentially a report of all the migration units (migunits) included in the migration. A migunit is a collection of data that is identified by the component it's associated with in the XML files. The migration store is made up of all the migunits in the migration. The diagnostic log can be used to verify which migunits were included in the migration and can be used for troubleshooting while authoring migration XML files.

The following examples describe common scenarios in which you can use the diagnostic log.

**Why is this file not migrating when I authored an "include" rule for it?**

Let's imagine that we have the following directory structure and that we want the **data** directory to be included in the migration along with the **New Text Document.txt** file in the **New Folder**. The directory of `C:\data` contains:

``` console
01/21/2009  10:08 PM    <DIR>          .
01/21/2009  10:08 PM    <DIR>          ..
01/21/2009  10:08 PM    <DIR>          New Folder
01/21/2009  09:19 PM                13 test (1).txt
01/21/2009  09:19 PM                13 test.txt
               2 File(s)             26 bytes
```

The directory of `C:\data\New Folder` contains:

``` console
01/21/2009  10:08 PM    <DIR>          .
01/21/2009  10:08 PM    <DIR>          ..
01/21/2009  10:08 PM                 0 New Text Document.txt
               1 File(s)              0 bytes
```

To migrate these files you author the following migration XML:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<migration urlid="http://www.microsoft.com/migration/1.0/TestSuite_BUGFIX">

<component context="System"  type="Application">
  <displayName>DATA1</displayName>
  <role role="Data">
    <rules>
      <include>
        <objectSet>
          <pattern type="File">c:\data\ [*]</pattern>
        </objectSet>
      </include>

    </rules>
  </role>
</component>
</migration>
```

However, upon testing the migration you notice that the **New Text Document.txt** file isn't included in the migration. To troubleshoot this failure, the migration can be repeated with the environment variable **MIG_ENABLE_DIAG** set such that the diagnostic log is generated. Upon searching the diagnostic log for the component **DATA1**, the following XML section is discovered:

```xml
<MigUnitList>
	<MigUnit Name="&lt;System&gt;\DATA1 (CMXEAgent)" Context="System" ConfidenceLevel="100" Group="Applications" Role="UserData" Agent="CMXEAgent" Selected="true" Supported="true">
		<Patterns Type="Include">
			<Pattern Type="File" Path="C:\data [*]"/>
		</Patterns>
	</MigUnit>
</MigUnitList>
<Perform Name="Gather" User="System">
	<MigUnit Name="&lt;System&gt;\DATA1 (CMXEAgent)">
		<Operation Name="Store" Type="File" Path="C:\data" SimObj="false" Success="true"/>
		<Operation Name="Store" Type="File" Path="C:\data [test (1).txt]" SimObj="false" Success="true"/>
		<Operation Name="Store" Type="File" Path="C:\data [test.txt]" SimObj="false" Success="true"/>
	</MigUnit>
</Perform>
```

Analysis of this XML section reveals the migunit that was created when the migration rule was processed. The **&lt;Perform&gt;** section details the actual files that were scheduled for gathering and the result of the gathering operation. The **New Text Document.txt** file doesn't appear in this section, which confirms that the migration rule wasn't correctly authored.

An analysis of the [XML elements library](usmt-xml-elements-library.md) reference article reveals that the [**&lt;pattern&gt;**](usmt-xml-elements-library.md#pattern) tag needs to be modified as follows:

```xml
<pattern type="File">c:\data\* [*]</pattern>
```

When the migration is performed again with the modified tag, the diagnostic log reveals the following information:

```xml
<MigUnitList>
  <MigUnit Name="&lt;System&gt;\DATA1 (CMXEAgent)" Context="System" ConfidenceLevel="100" Group="Applications" Role="UserData" Agent="CMXEAgent" Selected="true" Supported="true">
    <Patterns Type="Include">
      <Pattern Type="File" Path="C:\data\* [*]"/>
    </Patterns>
  </MigUnit>
</MigUnitList>
<Perform Name="Gather" User="System">
  <MigUnit Name="&lt;System&gt;\DATA1 (CMXEAgent)">
    <Operation Name="Store" Type="File" Path="C:\data" SimObj="false" Success="true"/>
    <Operation Name="Store" Type="File" Path="C:\data [test (1).txt]" SimObj="false" Success="true"/>
    <Operation Name="Store" Type="File" Path="C:\data [test.txt]" SimObj="false" Success="true"/>
    <Operation Name="Store" Type="File" Path="C:\data\New Folder" SimObj="false" Success="true"/>
    <Operation Name="Store" Type="File" Path="C:\data\New Folder [New Text Document.txt]" SimObj="false" Success="true"/>
  </MigUnit>
</Perform>
```

This diagnostic log confirms that the modified **&lt;pattern&gt;** value enables the migration of the file.

**Why is this file migrating when I authored an exclude rule excluding it?**

In this scenario, you have the following directory structure and you want all files in the **Data** directory to migrate, except for text files. The `C:\Data` folder contains:

``` console
Directory of C:\Data

01/21/2009  10:08 PM    <DIR>          .
01/21/2009  10:08 PM    <DIR>          ..
01/21/2009  10:08 PM    <DIR>          New Folder
01/21/2009  09:19 PM                13 test (1).txt
01/21/2009  09:19 PM                13 test.txt
               2 File(s)             26 bytes
```

The `C:\Data\New Folder\` contains:

``` console
01/21/2009  10:08 PM    <DIR>          .
01/21/2009  10:08 PM    <DIR>          ..
01/21/2009  10:08 PM                 0 New Text Document.txt
               1 File(s)              0 bytes
```

You author the following migration XML:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<migration urlid="http://www.microsoft.com/migration/1.0/TestSuite_BUGFIX">

<component context="System"  type="Application">
  <displayName>DATA1</displayName>
  <role role="Data">
    <rules>
      <include>
        <objectSet>
          <pattern type="File">c:\data\* [*]</pattern>
        </objectSet>
      </include>
    </rules>
    <rules>
      <exclude>
        <objectSet>
          <pattern type="File">c:\* [*.txt]</pattern>
        </objectSet>
      </exclude>

    </rules>
  </role>
</component>
```

However, upon testing the migration you notice that all the text files are still included in the migration. In order to troubleshoot this issue, the migration can be performed with the environment variable **MIG_ENABLE_DIAG** set so that the diagnostic log is generated. Upon searching the diagnostic log for the component **DATA1**, the following XML section is discovered:

```xml
<MigUnitList>
  <MigUnit Name="&lt;System&gt;\DATA1 (CMXEAgent)" Context="System" ConfidenceLevel="100" Group="Applications" Role="UserData" Agent="CMXEAgent" Selected="true" Supported="true">
    <Patterns Type="Include">
      <Pattern Type="File" Path="C:\data\* [*]"/>
    </Patterns>
    <Patterns Type="Exclude">
      <Pattern Type="File" Path="C:\* [*.txt]"/>
    </Patterns>
  </MigUnit>
</MigUnitList>
<Perform Name="Gather" User="System">
  <MigUnit Name="&lt;System&gt;\DATA1 (CMXEAgent)">
    <Operation Name="Store" Type="File" Path="C:\data" SimObj="false" Success="true"/>
    <Operation Name="Store" Type="File" Path="C:\data [test (1).txt]" SimObj="false" Success="true"/>
    <Operation Name="Store" Type="File" Path="C:\data [test.docx]" SimObj="false" Success="true"/>
    <Operation Name="Store" Type="File" Path="C:\data [test.txt]" SimObj="false" Success="true"/>
    <Operation Name="Store" Type="File" Path="C:\data\New Folder" SimObj="false" Success="true"/>
    <Operation Name="Store" Type="File" Path="C:\data\New Folder [New Text Document.txt]" SimObj="false" Success="true"/>
    <Operation Name="Store" Type="File" Path="C:\data\New Folder [test.docx]" SimObj="false" Success="true"/>
  </MigUnit>
</Perform>
```

Upon reviewing the diagnostic log, you confirm that the files are still migrating, and that it's a problem with the authored migration XML rule. You author an update to the migration XML script as follows:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<migration urlid="http://www.microsoft.com/migration/1.0/TestSuite_BUGFIX">

<component context="System"  type="Application">
  <displayName>DATA1</displayName>
  <role role="Data">
    <rules>
      <include>
        <objectSet>
          <pattern type="File">c:\data\* [*]</pattern>
        </objectSet>
      </include>
    </rules>
    <rules>
      <exclude>
        <objectSet>
          <pattern type="File">c:\data\* [*.txt]</pattern>
        </objectSet>
      </exclude>

    </rules>
  </role>
</component>


</migration>
```

Your revised migration XML script excludes the files from migrating, as confirmed in the diagnostic log:

```xml
<MigUnitList>
  <MigUnit Name="&lt;System&gt;\DATA1 (CMXEAgent)" Context="System" ConfidenceLevel="100" Group="Applications" Role="UserData" Agent="CMXEAgent" Selected="true" Supported="true">
    <Patterns Type="Include">
      <Pattern Type="File" Path="C:\data\* [*]"/>
    </Patterns>
    <Patterns Type="Exclude">
      <Pattern Type="File" Path="C:\data\* [*.txt]"/>
    </Patterns>
  </MigUnit>
</MigUnitList>
<Perform Name="Gather" User="System">
  <MigUnit Name="&lt;System&gt;\DATA1 (CMXEAgent)">
    <Operation Name="Store" Type="File" Path="C:\data" SimObj="false" Success="true"/>
    <Operation Name="Store" Type="File" Path="C:\data [test.docx]" SimObj="false" Success="true"/>
    <Operation Name="Store" Type="File" Path="C:\data\New Folder" SimObj="false" Success="true"/>
    <Operation Name="Store" Type="File" Path="C:\data\New Folder [test.docx]" SimObj="false" Success="true"/>
  </MigUnit>
</Perform>
```

## Related articles

[XML elements library](usmt-xml-elements-library.md)

[ScanState syntax](usmt-scanstate-syntax.md)

[LoadState syntax](usmt-loadstate-syntax.md)

