---
title: Log Files (Windows 10)
description: Log Files
ms.assetid: 28185ebd-630a-4bbd-94f4-8c48aad05649
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Log Files


You can use User State Migration Tool (USMT) 10.0 logs to monitor your migration and to troubleshoot errors and failed migrations. This topic describes the available command-line options to enable USMT logs, and new XML elements that configure which types of errors are fatal and should halt the migration, which types are non-fatal and should be skipped so that the migration can continue.

[Log Command-Line Options](#bkmk-commandlineoptions)

[ScanState and LoadState Logs](#bkmk-scanloadstatelogs)

[Progress Log](#bkmk-progresslog)

[List Files Log](#bkmk-listfileslog)

[Diagnostic Log](#bkmk-diagnosticlog)

## <a href="" id="bkmk-commandlineoptions"></a>Log Command-Line Options


The following table describes each command-line option related to logs, and it provides the log name and a description of what type of information each log contains.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command line Option</th>
<th align="left">File Name</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/l</strong><em>[Path]FileName</em></p></td>
<td align="left"><p>Scanstate.log or LoadState.log</p></td>
<td align="left"><p>Specifies the path and file name of the ScanState.log or LoadState log.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/progress</strong><em>[Path]FileName</em></p></td>
<td align="left"><p>Specifies the path and file name of the Progress log.</p></td>
<td align="left"><p>Provides information about the status of the migration, by percentage complete.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/v</strong><em>[VerbosityLevel]</em></p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>See the &quot;Monitoring Options&quot; section in <a href="usmt-scanstate-syntax.md" data-raw-source="[ScanState Syntax](usmt-scanstate-syntax.md)">ScanState Syntax</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/listfiles</strong><em>[Path]FileName</em></p></td>
<td align="left"><p>Specifies the path and file name of the Listfiles log.</p></td>
<td align="left"><p>Provides a list of the files that were migrated.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Set the environment variable MIG_ENABLE_DIAG to a path to an XML file.</p></td>
<td align="left"><p>USMTDiag.xml</p></td>
<td align="left"><p>The diagnostic log contains detailed system environment information, user environment information, and information about the migration units (migunits) being gathered and their contents.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
You cannot store any of the log files in *StorePath*. If you do, the log will be overwritten when USMT is run.

 

## <a href="" id="bkmk-scanloadstatelogs"></a>ScanState and LoadState Logs


ScanState and LoadState logs are text files that are create when you run the ScanState and LoadState tools. You can use these logs to help monitor your migration. The content of the log depends on the command-line options that you use and the verbosity level that you specify. For more information about verbosity levels, see Monitoring Options in [ScanState Syntax](usmt-scanstate-syntax.md).

## <a href="" id="bkmk-progresslog"></a>Progress Log


You can create a progress log using the **/progress** option. External tools, such as Microsoft System Center Operations Manager 2007, can parse the progress log to update your monitoring systems. The first three fields in each line are fixed as follows:

-   **Date:** Date, in the format of *day* *shortNameOfTheMonth* *year*. For example: 08 Jun 2006.

-   **Local time:** Time, in the format of *hrs*:*minutes*:*seconds* (using a 24-hour clock). For example: 13:49:13.

-   **Migration time:** Duration of time that USMT was run, in the format of *hrs:minutes:seconds*. For example: 00:00:10.

The remaining fields are key/value pairs as indicated in the following table.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Key</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>program</p></td>
<td align="left"><p>ScanState.exe or LoadState.exe.</p></td>
</tr>
<tr class="even">
<td align="left"><p>productVersion</p></td>
<td align="left"><p>The full product version number of USMT.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>computerName</p></td>
<td align="left"><p>The name of the source or destination computer on which USMT was run.</p></td>
</tr>
<tr class="even">
<td align="left"><p>commandLine</p></td>
<td align="left"><p>The full command used to run USMT.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>PHASE</p></td>
<td align="left"><p>Reports that a new phase in the migration is starting. This can be one of the following:</p>
<ul>
<li><p>Initializing</p></li>
<li><p>Scanning</p></li>
<li><p>Collecting</p></li>
<li><p>Saving</p></li>
<li><p>Estimating</p></li>
<li><p>Applying</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>detectedUser</p></td>
<td align="left"><ul>
<li><p>For the ScanState tool, these are the users USMT detected on the source computer that can be migrated.</p></li>
<li><p>For the LoadState tool, these are the users USMT detected in the store that can be migrated.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>includedInMigration</p></td>
<td align="left"><p>Defines whether the user profile/component is included for migration. Valid values are Yes or No.</p></td>
</tr>
<tr class="even">
<td align="left"><p>forUser</p></td>
<td align="left"><p>Specifies either of the following:</p>
<ul>
<li><p>The user state being migrated.</p></li>
<li><p><em>This Computer</em>, meaning files and settings that are not associated with a user.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>detectedComponent</p></td>
<td align="left"><p>Specifies a component detected by USMT.</p>
<ul>
<li><p>For ScanState, this is a component or application that is installed on the source computer.</p></li>
<li><p>For LoadState, this is a component or application that was detected in the store.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>totalSizeInMBToTransfer</p></td>
<td align="left"><p>Total size of the files and settings to migrate in megabytes (MB).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>totalPercentageCompleted</p></td>
<td align="left"><p>Total percentage of the migration that has been completed by either ScanState or LoadState.</p></td>
</tr>
<tr class="even">
<td align="left"><p>collectingUser</p></td>
<td align="left"><p>Specifies which user ScanState is collecting files and settings for.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>totalMinutesRemaining</p></td>
<td align="left"><p>Time estimate, in minutes, for the migration to complete.</p></td>
</tr>
<tr class="even">
<td align="left"><p>error</p></td>
<td align="left"><p>Type of non-fatal error that occurred. This can be one of the following:</p>
<ul>
<li><p><strong>UnableToCopy</strong>: Unable to copy to store because the disk on which the store is located is full.</p></li>
<li><p><strong>UnableToOpen</strong>: Unable to open the file for migration because the file is opened in non-shared mode by another application or service.</p></li>
<li><p><strong>UnableToCopyCatalog</strong>: Unable to copy because the store is corrupted.</p></li>
<li><p><strong>UnableToAccessDevice</strong>: Unable to access the device.</p></li>
<li><p><strong>UnableToApply</strong>: Unable to apply the setting to the destination computer.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>objectName</p></td>
<td align="left"><p>The name of the file or setting that caused the non-fatal error.</p></td>
</tr>
<tr class="even">
<td align="left"><p>action</p></td>
<td align="left"><p>Action taken by USMT for the non-fatal error. The values are:</p>
<ul>
<li><p><strong>Ignore</strong>: Non-fatal error ignored and the migration continued because the <strong>/c</strong> option was specified on the command line.</p></li>
<li><p><strong>Abort</strong>: Stopped the migration because the <strong>/c</strong> option was not specified.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>errorCode</p></td>
<td align="left"><p>The errorCode or return value.</p></td>
</tr>
<tr class="even">
<td align="left"><p>numberOfIgnoredErrors</p></td>
<td align="left"><p>The total number of non-fatal errors that USMT ignored.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>message</p></td>
<td align="left"><p>The message corresponding to the errorCode.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-listfileslog"></a>List Files Log


The List files log (Listfiles.txt) provides a list of the files that were migrated. This list can be used to troubleshoot XML issues or can be retained as a record of the files that were gathered into the migration store. The List Files log is only available for ScanState.exe.

## <a href="" id="bkmk-diagnosticlog"></a>Diagnostic Log


You can obtain the diagnostic log by setting the environment variable MIG\_ENABLE\_DIAG to a path to an XML file.

The diagnostic log contains:

-   Detailed system environment information

-   Detailed user environment information

-   Information about the migration units (migunits) being gathered and their contents

## Using the Diagnostic Log


The diagnostic log is essentially a report of all the migration units (migunits) included in the migration. A migunit is a collection of data that is identified by the component it is associated with in the XML files. The migration store is made up of all the migunits in the migration. The diagnostic log can be used to verify which migunits were included in the migration and can be used for troubleshooting while authoring migration XML files.

The following examples describe common scenarios in which you can use the diagnostic log.

**Why is this file not migrating when I authored an "include" rule for it?**

Let’s imagine that we have the following directory structure and that we want the “data” directory to be included in the migration along with the “New Text Document.txt” file in the “New Folder.” The directory of **C:\\data** contains:

``` syntax
01/21/2009  10:08 PM    <DIR>          .
01/21/2009  10:08 PM    <DIR>          ..
01/21/2009  10:08 PM    <DIR>          New Folder
01/21/2009  09:19 PM                13 test (1).txt
01/21/2009  09:19 PM                13 test.txt
               2 File(s)             26 bytes
```

The directory of **C:\\data\\New Folder** contains:

``` syntax
01/21/2009  10:08 PM    <DIR>          .
01/21/2009  10:08 PM    <DIR>          ..
01/21/2009  10:08 PM                 0 New Text Document.txt
               1 File(s)              0 bytes
```

To migrate these files you author the following migration XML:

``` syntax
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

However, upon testing the migration you notice that the “New Text Document.txt” file isn’t included in the migration. To troubleshoot this failure, the migration can be repeated with the environment variable MIG\_ENABLE\_DIAG set such that the diagnostic log is generated. Upon searching the diagnostic log for the component “DATA1”, the following XML section is discovered:

``` syntax
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

Analysis of this XML section reveals the migunit that was created when the migration rule was processed. The &lt;Perform&gt; section details the actual files that were scheduled for gathering and the result of the gathering operation. The “New Text Document.txt” file doesn’t appear in this section, which confirms that the migration rule was not correctly authored.

An analysis of the XML elements reference topic reveals that the &lt;pattern&gt; tag needs to be modified as follows:

``` syntax
<pattern type="File">c:\data\* [*]</pattern>
```

When the migration is preformed again with the modified tag, the diagnostic log reveals the following:

``` syntax
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

This diagnostic log confirms that the modified &lt;pattern&gt; value enables the migration of the file.

**Why is this file migrating when I authored an exclude rule excluding it?**

In this scenario, you have the following directory structure and you want all files in the “data” directory to migrate, except for text files. The **C:\\Data** folder contains:

``` syntax
Directory of C:\Data

01/21/2009  10:08 PM    <DIR>          .
01/21/2009  10:08 PM    <DIR>          ..
01/21/2009  10:08 PM    <DIR>          New Folder
01/21/2009  09:19 PM                13 test (1).txt
01/21/2009  09:19 PM                13 test.txt
               2 File(s)             26 bytes
```

The **C:\\Data\\New Folder\\** contains:

``` syntax
01/21/2009  10:08 PM    <DIR>          .
01/21/2009  10:08 PM    <DIR>          ..
01/21/2009  10:08 PM                 0 New Text Document.txt
               1 File(s)              0 bytes
```

You author the following migration XML:

``` syntax
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

However, upon testing the migration you notice that all the text files are still included in the migration. In order to troubleshoot this issue, the migration can be performed with the environment variable MIG\_ENABLE\_DIAG set so that the diagnostic log is generated. Upon searching the diagnostic log for the component “DATA1”, the following XML section is discovered:

``` syntax
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

Upon reviewing the diagnostic log, you confirm that the files are still migrating, and that it is a problem with the authored migration XML rule. You author an update to the migration XML script as follows:

``` syntax
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

``` syntax
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

## Related topics


[XML Elements Library](usmt-xml-elements-library.md)

[ScanState Syntax](usmt-scanstate-syntax.md)

[LoadState Syntax](usmt-loadstate-syntax.md)

 

 





