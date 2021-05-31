---
title: DiagnosticLog CSP
description: Learn about the feature areas of the DiagnosticLog configuration service provider (CSP), including the DiagnosticLog area and Policy area.
ms.assetid: F76E0056-3ACD-48B2-BEA1-1048C96571C3
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 11/19/2019
---

# DiagnosticLog CSP

The DiagnosticLog configuration service provider (CSP) provides the following feature areas:
- [DiagnosticArchive area](#diagnosticarchive-area). Capture and upload event logs, log files, and registry values for troubleshooting.
- [Policy area](#policy-area). Configure Windows event log policies, such as maximum log size.
- [EtwLog area](#etwlog-area). Control ETW trace sessions.
- [DeviceStateData area](#devicestatedata-area). Provide additional device information.
- [FileDownload area](#filedownload-area). Pull trace and state data directly from the device.

The following are the links to different versions of the DiagnosticLog CSP DDF files:
-   [DiagnosticLog CSP version 1.4](diagnosticlog-ddf.md#version-1-4)
-   [DiagnosticLog CSP version 1.3](diagnosticlog-ddf.md#version-1-3)
-   [DiagnosticLog CSP version 1.2](diagnosticlog-ddf.md#version-1-2)


The following shows the DiagnosticLog CSP in tree format.

```
./Vendor/MSFT/DiagnosticLog
----EtwLog
--------Collectors
------------CollectorName
----------------TraceStatus
----------------TraceLogFileMode
----------------TraceControl
----------------LogFileSizeLimitMB
----------------Providers
--------------------ProviderGuid
------------------------Keywords
------------------------TraceLevel
------------------------State
--------Channels
------------ChannelName
----------------Export
----------------State
----------------Filter
----DeviceStateData
--------MdmConfiguration
----FileDownload
--------DMChannel
------------FileContext
----------------BlockSizeKB
----------------BlockCount
----------------BlockIndexToRead
----------------BlockData
----------------DataBlocks
--------------------BlockNumber
```

<a href="" id="--vendor-msft-diagnosticlog"></a>**./Vendor/MSFT/DiagnosticLog**
The root node for the DiagnosticLog CSP.

Rest of the nodes in the DiagnosticLog CSP are described within their respective feature area sections.

## DiagnosticArchive area

The DiagnosticArchive functionality within the DiagnosticLog CSP is used to trigger devices to gather troubleshooting data into a zip archive file and upload that archive to cloud storage. DiagnosticArchive is designed for ad-hoc troubleshooting scenarios, such as an IT admin investigating an app installation failure using a collection of event log events, registry values, and app or OS log files.

> [!NOTE]
> DiagnosticArchive is a "break glass" backstop option for device troubleshooting. Diagnostic data such as log files can grow to many gigabytes. Gathering, transferring, and storing large amounts of data may burden the user's device, the network and cloud storage. Management servers invoking DiagnosticArchive must take care to minimize data gathering frequency and scope.

The following section describes the nodes for the DiagnosticArchive functionality.

<a href="" id="diagnosticarchive"></a>**DiagnosticArchive**
Added in version 1.4 of the CSP in Windows 10, version 1903. Root node for the DiagnosticArchive functionality.

The supported operation is Get.

<a href="" id="diagnosticarchive-archivedefinition"></a>**DiagnosticArchive/ArchiveDefinition**
Added in version 1.4 of the CSP in Windows 10, version 1903.

The supported operations are Add and Execute.

The data type is string.

Expected value:
Set and Execute are functionality equivalent, and each accepts a `Collection` XML snippet (as a string) describing what data to gather and where to upload it. The results are zipped and uploaded to the specified SasUrl. The zipped filename format is "DiagLogs-{ComputerName}-YYYYMMDDTHHMMSSZ.zip".

The following is an example of a `Collection` XML.

``` xml
<Collection>
   <!--NOTE: The value shown here is an example only, for more information see the ID documentation which follows the example -->
   <ID>f1e20cb4-9789-4f6b-8f6a-766989764c6d</ID>
   <!--NOTE: The value shown here is an example only, for more information see the SasUrl documentation which follows the example -->
   <SasUrl><![CDATA[https://myaccount.blob.core.windows.net/mycontainer?sp=aw&st=2020-07-01T23:02:07Z&se=2020-07-02T23:02:07Z&sv=2019-10-10&sr=c&sig=wx9%2FhwrczAI0nZL7zl%2BhfZVfOBvboTAnrGYfjlO%2FRFA%3D]]></SasUrl>
   <RegistryKey>HKLM\Software\Policies</RegistryKey>
   <FoldersFiles>%ProgramData%\Microsoft\DiagnosticLogCSP\Collectors\*.etl</FoldersFiles>
   <Command>%windir%\system32\ipconfig.exe /all</Command>
   <Command>%windir%\system32\mdmdiagnosticstool.exe -out %ProgramData%\temp\</Command>
   <FoldersFiles>%ProgramData%\temp\*.*</FoldersFiles>
   <Events>Application</Events>
</Collection>

```
The XML should include the following elements within the `Collection` element:

**ID**
The ID value uniquely identifies this data-gathering request. To avoid accidental repetition of data gathering, the CSP ignores subsequent Set or Execute invocations with the same ID value. The CSP expects the value to be populated when the request is received, so it must be generated by the IT admin or the management server.

**SasUrl**
The SasUrl value is the target URI to which the CSP uploads the zip file containing the gathered data. It is the responsibility of the management server to provision storage in such a way that the storage server accepts the device's HTTP PUT to this URL. For example, the device management service could:
- Provision cloud storage reachable by the target device, such as a Microsoft Azure blob storage container
- Generate a Shared Access Signature URL granting the possessor (the target device) time-limited write access to the storage container
- Pass this value to the CSP on the target device through the `Collection` XML as the `SasUrl` value.

**One or more data gathering directives, which may include any of the following:**

- **RegistryKey**
  - Exports all of the key names and values under a given path (recursive).
  - Expected input value: Registry path such as "HKLM\Software\Policies".
  - Output format: Creates a .reg file, similar to the output of reg.exe EXPORT command.
  - Privacy guardrails: To enable diagnostic log capture while reducing the risk of an IT admin inadvertently capturing user-generated documents, registry paths are restricted to those under HKLM and HKCR.

- **Events**
  - Exports all events from the named Windows event log.
  - Expected input value: A named event log channel such as "Application" or "Microsoft-Windows-DeviceGuard/Operational".
  - Output format: Creates a .evtx file.

- **Commands**
  - This directive type allows the execution of specific commands such as ipconfig.exe. Note that DiagnosticArchive and the Commands directives are not a general-purpose scripting platform. These commands are allowed in the DiagnosticArchive context to handle cases where critical device information may not be available through existing log files.
  - Expected input value: The full command line including path and any arguments, such as `%windir%\\system32\\ipconfig.exe /all`.
  - Output format: Console text output from the command is captured in a text file and included in the overall output archive. For commands which may generate file output rather than console output, a subsequent FolderFiles directive would be used to capture that output. The example XML above demonstrates this pattern with mdmdiagnosticstool.exe's -out parameter.
  - Privacy guardrails: To enable diagnostic data capture while reducing the risk of an IT admin inadvertently capturing user-generated documents, only the following commands are allowed:
    - %windir%\\system32\\certutil.exe
    - %windir%\\system32\\dxdiag.exe
    - %windir%\\system32\\gpresult.exe
    - %windir%\\system32\\msinfo32.exe
    - %windir%\\system32\\netsh.exe
    - %windir%\\system32\\nltest.exe
    - %windir%\\system32\\ping.exe
    - %windir%\\system32\\powercfg.exe
    - %windir%\\system32\\w32tm.exe
    - %windir%\\system32\\wpr.exe
    - %windir%\\system32\\dsregcmd.exe
    - %windir%\\system32\\dispdiag.exe
    - %windir%\\system32\\ipconfig.exe
    - %windir%\\system32\\logman.exe
    - %windir%\\system32\\tracelog.exe
    - %programfiles%\\windows defender\\mpcmdrun.exe
    - %windir%\\system32\\MdmDiagnosticsTool.exe
    - %windir%\\system32\\pnputil.exe

- **FoldersFiles**
  - Captures log files from a given path (without recursion).
  - Expected input value: File path with or without wildcards, such as "%windir%\\System32", or "%programfiles%\\*.log".
  - Privacy guardrails: To enable diagnostic log capture while reducing the risk of an IT admin inadvertently capturing user-generated documents, only paths under the following roots are allowed:
    - %PROGRAMFILES%
    - %PROGRAMDATA%
    - %PUBLIC%
    - %WINDIR%
    - %TEMP%
    - %TMP%
  - Additionally, only files with the following extensions are captured:
    - .log
    - .txt
    - .dmp
    - .cab
    - .zip
    - .xml
    - .html
    - .evtx
    - .etl

<a href="" id="diagnosticarchive-archiveresults"></a>**DiagnosticArchive/ArchiveResults**
Added in version 1.4 of the CSP in Windows 10, version 1903. This policy setting displays the results of the last archive run.

The supported operation is Get.

The data type is string.

A Get to the above URI will return the results of the data gathering for the last diagnostics request. For the example above it returns:

``` xml
<SyncML>
    <SyncHdr/>
      <SyncBody>
          <Status>
            <CmdID>1</CmdID>
            <MsgRef>1</MsgRef>
            <CmdRef>0</CmdRef>
            <Cmd>SyncHdr</Cmd>
            <Data>200</Data>
          </Status>
          <Status>
            <CmdID>2</CmdID>
            <MsgRef>1</MsgRef>
            <CmdRef>1</CmdRef>
            <Cmd>Get</Cmd>
            <Data>200</Data>
          </Status>
          <Results>
            <CmdID>3</CmdID>
            <MsgRef>1</MsgRef>
            <CmdRef>1</CmdRef>
          <Item>
            <Source>
            <LocURI>./Vendor/MSFT/DiagnosticLog/DiagnosticArchive/ArchiveResults</LocURI>
            </Source>
          <Data>
            <Collection HRESULT="0">
                <ID>f1e20cb4-9789-4f6b-8f6a-766989764c6d</ID>
                <RegistryKey HRESULT="0">HKLM\Software\Policies</RegistryKey>
                <FoldersFiles HRESULT="0">C:\ProgramData\Microsoft\DiagnosticLogCSP\Collectors\*.etl</FoldersFiles>
                <Command HRESULT="0">%windir%\system32\ipconfig.exe /all</Command>
                <Command HRESULT="-2147024637">%windir%\system32\mdmdiagnosticstool.exe -out c:\ProgramData\temp\</Command>
                <FoldersFiles HRESULT="0">c:\ProgramData\temp\*.*</FoldersFiles>
                <Events HRESULT="0">Application</Events>
              </Collection>
          </Data>
          </Item>
          </Results>
          <Final/>
      </SyncBody>
</SyncML>
```

Each data gathering node is annotated with the HRESULT of the action and the collection is also annotated with an overall HRESULT. In this example, note that the mdmdiagnosticstool.exe command failed.

### Making use of the uploaded data

The zip archive which is created and uploaded by the CSP contains a folder structure like the following:

```powershell
PS C:\> dir C:\DiagArchiveExamples\DiagLogs-MYDEVICE-20201202T182748Z

    Directory: C:\DiagArchiveExamples\DiagLogs-MYDEVICE-20201202T182748Z

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
la---            1/4/2021  2:45 PM                1
la---            1/4/2021  2:45 PM                2
la---           12/2/2020  6:27 PM           2701 results.xml
```
Each data gathering directive from the original `Collection` XML corresponds to a folder in the output. For example, if the first directive was <RegistryKey HRESULT="0">HKLM\Software\Policies</RegistryKey> then folder `1` will contain the corresponding `export.reg` file.

The `results.xml` file is the authoritative map to the output. It includes a status code for each directive. The order of the directives in the file corresponds to the order of the output folders. Using `results.xml` the administrator can see what data was gathered, what failures may have occurred, and which folders contain which output. For example, the following `results.xml` content indicates that registry export of HKLM\Software\Policies was successful and the data can be found in folder `1`. It also indicates that `netsh.exe wlan show profiles` command failed.

```xml
<Collection HRESULT="0">
    <ID>268b3056-8c15-47c6-a1bd-4bc257aef7b2</ID>
    <RegistryKey HRESULT="0">HKLM\Software\Policies</RegistryKey>
    <Command HRESULT="-2147024895">%windir%\system32\netsh.exe wlan show profiles</Command>
</Collection>
```

Administrators can apply automation to 'results.xml' to create their own preferred views of the data. For example, the following PowerShell one-liner extracts from the XML an ordered list of the directives with status code and details.
```powershell
Select-XML -Path results.xml -XPath '//RegistryKey | //Command | //Events | //FoldersFiles' | Foreach-Object -Begin {$i=1} -Process { [pscustomobject]@{DirectiveNumber=$i; DirectiveHRESULT=$_.Node.HRESULT; DirectiveInput=$_.Node.('#text')} ; $i++}
```
This example produces output similar to the following:
```
DirectiveNumber DirectiveHRESULT DirectiveInput
--------------- ---------------- --------------
              1 0                HKLM\Software\Policies
              2 0                HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall
              3 0                HKLM\Software\Microsoft\IntuneManagementExtension
              4 0                HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall
              5 0                %windir%\system32\ipconfig.exe /all
              6 0                %windir%\system32\netsh.exe advfirewall show allprofiles
              7 0                %windir%\system32\netsh.exe advfirewall show global
              8 -2147024895      %windir%\system32\netsh.exe wlan show profiles
```

The next example extracts the zip archive into a customized flattened file structure. Each file name includes the directive number, HRESULT, and so on. This example could be customized to make different choices about what information to include in the file names and what formatting choices to make for special characters.

```powershell
param( $DiagnosticArchiveZipPath = "C:\DiagArchiveExamples\DiagLogs-MYDEVICE-20201202T182748Z.zip" )

#region Formatting Choices
$flatFileNameTemplate = '({0:D2}) ({3}) (0x{2:X8})'
$maxLengthForInputTextPassedToOutput = 80
#endregion

#region Create Output Folders and Expand Zip
$diagnosticArchiveTempUnzippedPath = $DiagnosticArchiveZipPath + "_expanded"
if(-not (Test-Path $diagnosticArchiveTempUnzippedPath)){mkdir $diagnosticArchiveTempUnzippedPath}
$reformattedArchivePath = $DiagnosticArchiveZipPath + "_formatted"
if(-not (Test-Path $reformattedArchivePath)){mkdir $reformattedArchivePath}
Expand-Archive -Path $DiagnosticArchiveZipPath -DestinationPath $diagnosticArchiveTempUnzippedPath
#endregion

#region Discover and Move/rename Files
$resultElements = ([xml](Get-Content -Path (Join-Path -Path $diagnosticArchiveTempUnzippedPath -ChildPath "results.xml"))).Collection.ChildNodes | Foreach-Object{ $_ }
$n = 0
foreach( $element in $resultElements )
{
    $directiveNumber = $n
    $n++
    if($element.Name -eq 'ID'){ continue }
    $directiveType = $element.Name
    $directiveStatus = [int]$element.Attributes.ItemOf('HRESULT').psbase.Value
    $directiveUserInputRaw = $element.InnerText
    $directiveUserInputFileNameCompatible = $directiveUserInputRaw -replace '[\\|/\[\]<>\:"\?\*%\.\s]','_'
    $directiveUserInputTrimmed = $directiveUserInputFileNameCompatible.substring(0, [System.Math]::Min($maxLengthForInputTextPassedToOutput, $directiveUserInputFileNameCompatible.Length))
    $directiveSummaryString = $flatFileNameTemplate -f $directiveNumber,$directiveType,$directiveStatus,$directiveUserInputTrimmed
    $directiveOutputFolder = Join-Path -Path $diagnosticArchiveTempUnzippedPath -ChildPath $directiveNumber
    $directiveOutputFiles = Get-ChildItem -Path $directiveOutputFolder -File
    foreach( $file in $directiveOutputFiles)
    {
        $leafSummaryString = $directiveSummaryString,$file.Name -join ' '
        Copy-Item $file.FullName -Destination (Join-Path -Path $reformattedArchivePath -ChildPath $leafSummaryString)
    }
}
#endregion
Remove-Item -Path $diagnosticArchiveTempUnzippedPath -Force -Recurse
```
That example script produces a set of files similar to the following, which can be a useful view for an administrator interactively browsing the results without needing to navigate any sub-folders or refer to `results.xml` repeatedly:

```powershell
PS C:\> dir C:\DiagArchiveExamples\DiagLogs-MYDEVICE-20201202T182748Z.zip_formatted | format-table Length,Name

  Length Name
  ------ ----
   46640 (01) (HKLM_Software_Policies) (0x00000000) export.reg
  203792 (02) (HKLM_Software_Microsoft_Windows_CurrentVersion_Uninstall) (0x00000000) export.reg
  214902 (03) (HKLM_Software_Microsoft_IntuneManagementExtension) (0x00000000) export.reg
  212278 (04) (HKLM_SOFTWARE_WOW6432Node_Microsoft_Windows_CurrentVersion_Uninstall) (0x00000000) export.reg
    2400 (05) (_windir__system32_ipconfig_exe__all) (0x00000000) output.log
    2147 (06) (_windir__system32_netsh_exe_advfirewall_show_allprofiles) (0x00000000) output.log
    1043 (07) (_windir__system32_netsh_exe_advfirewall_show_global) (0x00000000) output.log
      59 (08) (_windir__system32_netsh_exe_wlan_show_profiles) (0x80070001) output.log
    1591 (09) (_windir__system32_ping_exe_-n_50_localhost) (0x00000000) output.log
    5192 (10) (_windir__system32_Dsregcmd_exe__status) (0x00000000) output.log
```

## Policy area

The Policy functionality within the DiagnosticLog CSP configures Windows event log policies, such as maximum log size.

The following section describes the nodes for the Policy functionality.

<a href="" id="policy"></a>**Policy**
Added in version 1.4 of the CSP in Windows 10, version 1903. Root node to control settings for channels in Event Log.

The supported operation is Get.

<a href="" id="policy-channels"></a>**Policy/Channels**
Added in version 1.4 of the CSP in Windows 10, version 1903. Node that contains Event Log channel settings.

The supported operation is Get.

<a href="" id="policy-channels-channelname"></a>**Policy/Channels/_ChannelName_**
Added in version 1.4 of the CSP in Windows 10, version 1903. Dynamic node to represent a registered channel. The node name must be a valid Windows event log channel name, such as ``Microsoft-Client-Licensing-Platform%2FAdmin``. When specifying the name in the LocURI, it must be URL encoded, otherwise it may unexpectedly translate into a different URI.

Supported operations are Add, Delete, and Get.

Add **Channel**
``` xml
 <SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Add>​
      <CmdID>2</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName​
          </LocURI>​
        </Target>​
        <Meta>​
          <Format xmlns="syncml:metinf">node</Format>​
          <Type></Type>​
        </Meta>​
      </Item>​
    </Add>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```
Delete **Channel**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Delete>​
      <CmdID>3</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName​
          </LocURI>​
        </Target>​
      </Item>​
    </Delete>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```
Get **Channel**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Get>​
      <CmdID>4</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName​
          </LocURI>​
        </Target>​
      </Item>​
    </Get>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```
<a href="" id="policy-channels-channelname-maximumfilesize"></a>**Policy/Channels/_ChannelName_/MaximumFileSize**
Added in version 1.4 of the CSP in Windows 10, version 1903. This policy setting specifies the maximum size of the log file in megabytes.

If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte and 2 terabytes in megabyte increments.

If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog, and it defaults to 1 megabyte.

Supported operations are Add, Delete, Get, and Replace.

The data type is integer.

Add **MaximumFileSize**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Add>​
      <CmdID>6</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/MaximumFileSize​
          </LocURI>​
        </Target>​
        <Meta>​
          <Format xmlns="syncml:metinf">int</Format>​
          <Type>text/plain</Type>​
        </Meta>​
        <Data>3</Data>​
      </Item>​
    </Add>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```

Delete **MaximumFileSize**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Delete>​
      <CmdID>7</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/MaximumFileSize​
          </LocURI>​
        </Target>​
      </Item>​
    </Delete>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```
Get **MaximumFileSize**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Get>​
      <CmdID>5</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/MaximumFileSize​
          </LocURI>​
        </Target>​
      </Item>​
    </Get>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```

Replace **MaximumFileSize**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Replace>​
      <CmdID>8</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/MaximumFileSize​
          </LocURI>​
        </Target>​
        <Meta>​
          <Format xmlns="syncml:metinf">int</Format>​
          <Type>text/plain</Type>​
        </Meta>​
        <Data>5</Data>​
      </Item>​
    </Replace>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```

<a href="" id="policy-channels-channelname-sddl"></a>**Policy/Channels/_ChannelName_/SDDL**
Added in version 1.4 of the CSP in Windows 10, version 1903. This policy setting represents SDDL string controlling access to the channel.

Supported operations are Add, Delete, Get, and Replace.

The data type is string.

Default string is as follows:

https://docs.microsoft.com/windows/desktop/WES/eventmanifestschema-channeltype-complextype.

Add **SDDL**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Add>​
      <CmdID>10</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/SDDL​
          </LocURI>​
        </Target>​
        <Meta>​
          <Format xmlns="syncml:metinf">chr</Format>​
          <Type>text/plain</Type>​
        </Meta>​
        <Data>YourSDDL</Data>​
      </Item>​
    </Add>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```

Delete **SDDL**
``` xml

<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Delete>​
      <CmdID>11</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/SDDL​
          </LocURI>​
        </Target>​
      </Item>​
    </Delete>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```

Get **SDDL**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Get>​
      <CmdID>9</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/SDDL​
          </LocURI>​
        </Target>​
      </Item>​
    </Get>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```

Replace **SDDL**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Replace>​
      <CmdID>12</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/SDDL​
          </LocURI>​
        </Target>​
        <Meta>​
          <Format xmlns="syncml:metinf">chr</Format>​
          <Type>text/plain</Type>​
        </Meta>​
        <Data>YourNewSDDL</Data>​
      </Item>​
    </Replace>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```

<a href="" id="policy-channels-channelname-actionwhenfull"></a>**Policy/Channels/_ChannelName_/ActionWhenFull**
Added in version 1.4 of the CSP in Windows 10, version 1903. This policy setting controls Event Log behavior when the log file reaches its maximum size.

Supported operations are Add, Delete, Get, and Replace.

The data type is string.

The following are the possible values:
- Truncate — When the log file reaches its maximum file size, new events are not written to the log and are lost.
- Overwrite — When the log file reaches its maximum file size, new events overwrite old events.
- Archive — When the log file reaches its maximum size, the log file is saved to the location specified by the "Archive Location" policy setting. If archive location value is not set, the new file is saved in the same directory as current log file.

If you disable or do not configure this policy setting, the locally configured value will be used as default. Every channel that is installed, whether inbox or by ISVs, is responsible for defining its own local configuration, and that configuration can be changed by any administrator. Values set via this policy override but do not replace local configuration.


Add **ActionWhenFull**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Add>​
      <CmdID>14</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/ActionWhenFull​
          </LocURI>​
        </Target>​
        <Meta>​
          <Format xmlns="syncml:metinf">chr</Format>​
          <Type>text/plain</Type>​
        </Meta>​
        <Data>Archive</Data>​
      </Item>​
    </Add>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```

Delete **ActionWhenFull**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Delete>​
      <CmdID>15</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/ActionWhenFull​
          </LocURI>​
        </Target>​
      </Item>​
    </Delete>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```

Get **ActionWhenFull**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Get>​
      <CmdID>13</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/ActionWhenFull​
          </LocURI>​
        </Target>​
      </Item>​
    </Get>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```

Replace **ActionWhenFull**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Replace>​
      <CmdID>16</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/ActionWhenFull​
          </LocURI>​
        </Target>​
        <Meta>​
          <Format xmlns="syncml:metinf">chr</Format>​
          <Type>text/plain</Type>​
        </Meta>​
        <Data>Truncate</Data>​
      </Item>​
    </Replace>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```

<a href="" id="policy-channels-channelname-enabled"></a>**Policy/Channels/_ChannelName_/Enabled**
Added in version 1.4 of the CSP in Windows 10, version 1903. This policy setting specifies whether the channel should be enabled or disabled.

Supported operations are Add, Delete, Get, and Replace.

The data type is boolean.

The following are the possible values:
- TRUE — Enables the channel.
- FALSE — Disables the channel.

If you disable or do not configure this policy setting, the locally configured value is used as default.

Get **Enabled**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Get>​
      <CmdID>17</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/Enabled​
          </LocURI>​
        </Target>​
      </Item>​
    </Get>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```

Add **Enabled**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Add>​
      <CmdID>18</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/Enabled​
          </LocURI>​
        </Target>​
        <Meta>​
          <Format xmlns="syncml:metinf">bool</Format>​
          <Type>text/plain</Type>​
        </Meta>​
        <Data>TRUE</Data>​
      </Item>​
    </Add>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```

Delete **Enabled**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Delete>​
      <CmdID>19</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/Enabled​
          </LocURI>​
        </Target>​
      </Item>​
    </Delete>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```

Replace **Enabled**
``` xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>​
    <Replace>​
      <CmdID>20</CmdID>​
      <Item>​
        <Target>​
          <LocURI>​
            ./Vendor/MSFT/DiagnosticLog/Policy/Channels/ChannelName/Enabled​
          </LocURI>​
        </Target>​
        <Meta>​
          <Format xmlns="syncml:metinf">bool</Format>​
          <Type>text/plain</Type>​
        </Meta>​
        <Data>FALSE</Data>​
      </Item>​
    </Replace>​
    <Final/> ​
  </SyncBody>​
</SyncML>
```

## EtwLog area

The Event Tracing for Windows (ETW) log feature of the DiagnosticLog CSP is used to control the following types of event tracing:
- [Collector-based tracing](#collector-based-tracing)
- [Channel-based tracing](#channel-based-tracing)

The ETW log feature is designed for advanced usage, and assumes developers' familiarity with ETW. For more information, see [About Event Tracing](/windows/win32/etw/about-event-tracing).

### Collector-based tracing

This type of event tracing collects event data from a collection of registered ETW providers.

An event collector is a container of registered ETW providers. Users can add or delete a collector node and register or unregister multiple providers in this collector.

The ***CollectorName*** must be unique within the CSP and must not be a valid event channel name or a provider GUID.

The DiagnosticLog CSP maintains a log file for each collector node and the log file is overwritten if a start command is triggered again on the same collector node.

For each collector node, the user can:

- Start or stop the session with all registered and enabled providers
- Query session status
- Change trace log file mode
- Change trace log file size limit

The configurations log file mode and log file size limit does not take effect while trace session is in progress. These are applied when user stops the current session and then starts it again for this collector.

For each registered provider in this collector, the user can:

- Specify keywords to filter events from this provider
- Change trace level to filter events from this provider
- Enable or disable the provider in the trace session

The changes on **State**, **Keywords**, and **TraceLevel** takes effect immediately while trace session is in progress.

> [!NOTE]
> Microsoft-WindowsPhone-Enterprise-Diagnostics-Provider (GUID - 3da494e4-0fe2-415C-b895-fb5265c5c83b) has the required debug resource files built into Windows OS, which will allow the logs files to be decoded on the remote machine. Any other logs may not have the debug resources required to decode.

 ### Channel-based tracing

The type of event tracing exports event data from a specific channel. This is only supported on the desktop.

Users can add or delete a channel node using the full name, such as Microsoft-Windows-AppModel-Runtime/Admin.

The DiagnosticLog CSP maintains a log file for each channel node and the log file is overwritten if a start command is triggered again on the same channel node.

For each channel node, the user can:

-   Export channel event data into a log file (.evtx)
-   Enable or disable the channel from Event Log service to allow or disallow event data being written into the channel
-   Specify an XPath query to filter events while exporting the channel event data

For more information about using DiagnosticLog to collect logs remotely from a PC or mobile device, see [Diagnose MDM failures in Windows 10](diagnose-mdm-failures-in-windows-10.md).

To gather diagnostics using this CSP:

1. Specify a *CollectorName* for the container of the target ETW providers.
2. (Optional) Set logging and log file parameters using the following options:

    - <a href="#etwlog-collectors-collectorname-tracelogfilemode">TraceLogFileMode</a>
    - <a href="#etwlog-collectors-collectorname-logfilesizelimitmb">LogFileSizeLimitMB</a>

3. Indicate one or more target ETW providers by supplying its *ProviderGUID* to the Add operation of EtwLog/Collectors/*CollectorName*/Providers/*ProviderGUID*.
4. (Optional) Set logging and log file parameters using the following options:
    - <a href="#etwlog-collectors-collectorname-providers-providerguid-tracelevel">TraceLevel</a>
    - <a href="#etwlog-collectors-collectorname-providers-providerguid-keywords">Keywords</a>
5. Start logging using **TraceControl** EXECUTE command “START”.
6. Perform actions on the target device that will generate activity in the log files.
7. Stop logging using **TraceControl** EXECUTE command “STOP”.
8. Collect the log file located in the `%temp%` folder using the method described in [Reading a log file](#reading-a-log-file).

The following section describes the nodes for EtwLog functionality.

<a href="" id="etwlog"></a>**EtwLog**
Node to contain the Error Tracing for Windows log.

The supported operation is Get.

<a href="" id="etwlog-collectors"></a>**EtwLog/Collectors**
Interior node to contain dynamic child interior nodes for active providers.

The supported operation is Get.

<a href="" id="etwlog-collectors-collectorname"></a>**EtwLog/Collectors/_CollectorName_**
Dynamic nodes to represent active collector configuration.

Supported operations are Add, Delete, and Get.

Add a collector

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Add>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/DeviceManagement</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">node</Format>
                </Meta>
            </Item>
        </Add>
        <Final/>
    </SyncBody>
</SyncML>
```

Delete a collector

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Delete>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/DeviceManagement</LocURI>
                </Target>
            </Item>
        </Delete>
        <Final/>
    </SyncBody>
</SyncML>
```

<a href="" id="etwlog-collectors-collectorname-tracestatus"></a>**EtwLog/Collectors/*CollectorName*/TraceStatus**
Specifies whether the current logging status is running.

The data type is an integer.

The supported operation is Get.

The following table represents the possible values:

| Value | Description |
| ----- | ----------- |
| 0     | Stopped     |
| 1     | Started     |

<a href="" id="etwlog-collectors-collectorname-tracelogfilemode"></a>**EtwLog/Collectors/*CollectorName*/TraceLogFileMode**
Specifies the log file logging mode.

The data type is an integer.

Supported operations are Get and Replace.

The following table lists the possible values:

| Value | Description        |
| ----- | ------------------ |
| EVENT_TRACE_FILE_MODE_SEQUENTIAL (0x00000001) | Writes events to a log file sequentially; stops when the file reaches its maximum size. |
| EVENT_TRACE_FILE_MODE_CIRCULAR (0x00000002) | Writes events to a log file. After the file reaches the maximum size, the oldest events are replaced with incoming events. |

<a href="" id="etwlog-collectors-collectorname-tracecontrol"></a>**EtwLog/Collectors/*CollectorName*/TraceControl**
Specifies the logging and report action state.

The data type is a string.

The following table lists the possible values:

| Value | Description        |
| ----- | ------------------ |
| START | Start log tracing. |
| STOP  | Stop log tracing.  |

The supported operation is Execute.

After you have added a logging task, you can start a trace by running an Execute command on this node with the value START.

To stop the trace, running an execute command on this node with the value STOP.

Start collector trace logging

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Exec>
            <CmdID>2</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/DeviceManagement/TraceControl</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>START</Data>
            </Item>
        </Exec>
        <Final/>
    </SyncBody>
</SyncML>
```

Stop collector trace logging

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Exec>
            <CmdID>2</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/DeviceManagement/TraceControl</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>STOP</Data>
            </Item>
        </Exec>
        <Final/>
    </SyncBody>
</SyncML>
```

<a href="" id="etwlog-collectors-collectorname-logfilesizelimitmb"></a>**EtwLog/Collectors/*CollectorName*/LogFileSizeLimitMB**
Sets the log file size limit, in MB.

The data type is an integer.

Valid values are 1-2048. The default value is 4.

Supported operations are Get and Replace.

<a href="" id="etwlog-collectors-collectorname-providers"></a>**EtwLog/Collectors/*CollectorName*/Providers**
Interior node to contain dynamic child interior nodes for active providers.

The supported operation is Get.

<a href="" id="etwlog-collectors-collectorname-providers-providerguid"></a>**EtwLog/Collectors/*CollectorName*/Providers/_ProviderGUID_**
Dynamic nodes to represent active provider configuration per provider GUID.

> [!NOTE]
> Microsoft-WindowsPhone-Enterprise-Diagnostics-Provider (GUID - 3da494e4-0fe2-415C-b895-fb5265c5c83b) has the required debug resource files built into Windows OS, which will allow the logs files to be decoded on the remote machine. Any other logs may not have the debug resources required to decode.

Supported operations are Add, Delete, and Get.

Add a provider

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Add>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/DeviceManagement/Providers/3da494e4-0fe2-415C-b895-fb5265c5c83b</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">node</Format>
                </Meta>
            </Item>
        </Add>
        <Final/>
    </SyncBody>
</SyncML>
```

Delete a provider

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Delete>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/DeviceManagement/Providers/3da494e4-0fe2-415C-b895-fb5265c5c83b</LocURI>
                </Target>
            </Item>
        </Delete>
        <Final/>
    </SyncBody>
</SyncML>
```

<a href="" id="etwlog-collectors-collectorname-providers-providerguid-tracelevel"></a>**EtwLog/Collectors/*CollectorName*/Providers/*ProviderGUID*/TraceLevel**
Specifies the level of detail included in the trace log.

The data type is an integer.

Supported operations are Get and Replace.

The following table lists the possible values:

| Value | Description        |
| ----- | ------------------ |
| 1 – TRACE_LEVEL_CRITICAL | Abnormal exit or termination events |
| 2 – TRACE_LEVEL_ERROR | Severe error events |
| 3 – TRACE_LEVEL_WARNING | Warning events such as allocation failures |
| 4 – TRACE_LEVEL_INFORMATION | Non-error events, such as entry or exit events |
| 5 – TRACE_LEVEL_VERBOSE | Detailed information |

Set provider **TraceLevel**

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Replace>
            <CmdID>2</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/DeviceManagement/Providers/3da494e4-0fe2-415C-b895-fb5265c5c83b/TraceLevel</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>1</Data>
            </Item>
        </Replace>
        <Final/>
    </SyncBody>
</SyncML>
```

<a href="" id="etwlog-collectors-collectorname-providers-providerguid-keywords"></a>**EtwLog/Collectors/*CollectorName*/Providers/*ProviderGUID*/Keywords**
Specifies the provider keywords to be used as MatchAnyKeyword for this provider.

The data type is a string.

Supported operations are Get and Replace.

Default value is 0 meaning no keyword.

Get provider **Keywords**

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Get>
      <CmdID>1</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/DeviceManagement/Providers/3da494e4-0fe2-415C-b895-fb5265c5c83b/Keywords
          </LocURI>
        </Target>
      </Item>
    </Get>
    <Final/>
  </SyncBody>
</SyncML>
```

Set provider **Keywords**

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Replace>
      <CmdID>4</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/DeviceManagement/Providers/3da494e4-0fe2-415C-b895-fb5265c5c83b/Keywords
          </LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>12345678FFFFFFFF</Data>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
```

<a href="" id="etwlog-collectors-collectorname-providers-providerguid-state"></a>**EtwLog/Collectors/*CollectorName*/Providers/*ProviderGUID*/State**
Specifies if this provider is enabled in the trace session.

The data type is a boolean.

Supported operations are Get and Replace. This change will be effective during active trace session.

The following table lists the possible values:

| Value | Description        |
| ----- | ------------------ |
| TRUE  | Provider is enabled in the trace session. This is the default. |
| FALSE | Provider is disabled in the trace session. |

Set provider **State**

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Replace>
            <CmdID>2</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/DeviceManagement/Providers/3da494e4-0fe2-415C-b895-fb5265c5c83b/State</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">bool</Format>
                </Meta>
                <Data>false</Data>
            </Item>
        </Replace>
        <Final/>
    </SyncBody>
</SyncML>
```

<a href="" id="etwlog-channels"></a>**EtwLog/Channels**
Interior node to contain dynamic child interior nodes for registered channels.

The supported operation is Get.

<a href="" id="etwlog-channels-channelname"></a>**EtwLog/Channels/_ChannelName_**
Dynamic nodes to represent a registered channel. The node name must be a valid Windows event log channel name, such as "Microsoft-Client-Licensing-Platform%2FAdmin"

Supported operations are Add, Delete, and Get.

Add a channel

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Add>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/EtwLog/Channels/Microsoft-Client-Licensing-Platform%2FAdmin</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">node</Format>
                </Meta>
            </Item>
        </Add>
        <Final/>
    </SyncBody>
</SyncML>
```

Delete a channel

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Delete>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/EtwLog/Channels/Microsoft-Client-Licensing-Platform%2FAdmin</LocURI>
                </Target>
            </Item>
        </Delete>
        <Final/>
    </SyncBody>
</SyncML>
```

<a href="" id="etwlog-channels-channelname-export"></a>**EtwLog/Channels/*ChannelName*/Export**
Node to trigger the command to export channel event data into the log file.

The supported operation is Execute.

Export channel event data

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Exec>
            <CmdID>2</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/EtwLog/Channels/Microsoft-Client-Licensing-Platform%2FAdmin/Export</LocURI>
                </Target>
            </Item>
        </Exec>
        <Final/>
    </SyncBody>
</SyncML>
```

<a href="" id="etwlog-channels-channelname-filter"></a>**EtwLog/Channels/*ChannelName*/Filter**
Specifies the XPath query string to filter the events while exporting.

The data type is a string.

Supported operations are Get and Replace.

Default value is empty string.

Get channel **Filter**

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Get>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/EtwLog/Channels/Microsoft-Client-Licensing-Platform%2FAdmin/Filter</LocURI>
                </Target>
            </Item>
        </Get>
        <Final/>
    </SyncBody>
</SyncML>
```

<a href="" id="etwlog-channels-channelname-state"></a>**EtwLog/Channels/*ChannelName*/State**
Specifies if the Channel is enabled or disabled.

The data type is a boolean.

Supported operations are Get and Replace.

The following table lists the possible values:

| Value | Description          |
| ----- | -------------------- |
| TRUE  | Channel is enabled.  |
| FALSE | Channel is disabled. |

Get channel **State**

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Get>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/EtwLog/Channels/Microsoft-Client-Licensing-Platform%2FAdmin/State</LocURI>
                </Target>
            </Item>
        </Get>
        <Final/>
    </SyncBody>
</SyncML>
```

Set channel **State**

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Replace>
            <CmdID>2</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/EtwLog/Channels/Microsoft-Client-Licensing-Platform%2FAdmin/State</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">bool</Format>
                </Meta>
                <Data>false</Data>
            </Item>
        </Replace>
        <Final/>
    </SyncBody>
</SyncML>
```

## DeviceStateData area

The DeviceStateData functionality within the DiagnosticLog CSP provides additional device information.

The following section describes the nodes for the DeviceStateData functionality.

<a href="" id="devicestatedata"></a>**DeviceStateData**
Added in version 1.3 of the CSP in Windows 10, version 1607. Node for all types of device state data that are exposed.

<a href="" id="devicestatedata-mdmconfiguration"></a>**DeviceStateData/MdmConfiguration**
Added in version 1.3 of the CSP in Windows 10, version 1607. Triggers the snapping of device management state data with SNAP.

The supported value is Execute.

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Exec>
      <CmdID>2</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/DiagnosticLog/DeviceStateData/MdmConfiguration</LocURI>
        </Target>
        <Meta>
           <Format xmlns="syncml:metinf">chr</Format>
        </Meta>
        <Data>SNAP</Data>
      </Item>
    </Exec>
    <Final/>
  </SyncBody>
</SyncML>
```

## FileDownload area

The FileDownload feature of the DiagnosticLog CSP enables a management server to pull data directly from the device. In the FileDownload context the client and server roles are conceptually reversed, with the management server acting as a client to download the data from the managed device.

### Comparing FileDownload and DiagnosticArchive

Both the FileDownload and DiagnosticArchive features can be used to get data from the device to the management server, but they are optimized for different workflows.

- FileDownload enables the management server to directly pull byte-level trace data from the managed device. The data transfer takes place through the existing OMA-DM/SyncML context. It is typically used together with the EtwLogs feature as part of an advanced monitoring or diagnostic flow. FileDownlod requires granular orchestration by the management server, but avoids the need for dedicated cloud storage.
- DiagnosticArchive allows the management server to give the CSP a full set of instructions as single command. Based on those instructions the CSP orchestrates the work client-side to package the requested diagnostic files into a zip archive and upload that archive to cloud storage. The data transfer happens outside of the OMA-DM session, via an HTTP PUT.

The following section describes the nodes for the FileDownload functionality.

<a href="" id="filedownload"></a>**FileDownload**
Node to contain child nodes for log file transportation protocols and corresponding actions.

<a href="" id="filedownload-dmchannel"></a>**FileDownload/DMChannel**
Node to contain child nodes using DM channel for transport protocol.

<a href="" id="filedownload-dmchannel-filecontext"></a>**FileDownload/DMChannel/_FileContext_**
Dynamic interior nodes that represent per log file context.

<a href="" id="filedownload-dmchannel-filecontext-blocksizekb"></a>**FileDownload/DMChannel/*FileContext*/BlockSizeKB**
Sets the log read buffer, in KB.

The data type is an integer.

Valid values are 1-16. The default value is 4.

Supported operations are Get and Replace.

Set **BlockSizeKB**

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Replace>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel/DeviceManagement/BlockSizeKB</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>1</Data>
            </Item>
        </Replace>
        <Final/>
    </SyncBody>
</SyncML>
```

Get **BlockSizeKB**

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Get>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel/DeviceManagement/BlockSizeKB</LocURI>
                </Target>
            </Item>
        </Get>
        <Final/>
    </SyncBody>
</SyncML>
```

<a href="" id="filedownload-dmchannel-filecontext-blockcount"></a>**FileDownload/DMChannel/*FileContext*/BlockCount**
Represents the total read block count for the log file.

The data type is an integer.

The only supported operation is Get.

Get **BlockCount**

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Get>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel/DeviceManagement/BlockCount</LocURI>
                </Target>
            </Item>
        </Get>
        <Final/>
    </SyncBody>
</SyncML>
```

<a href="" id="filedownload-dmchannel-filecontext-blockindextoread"></a>**FileDownload/DMChannel/*FileContext*/BlockIndexToRead**
Represents the read block start location.

The data type is an integer.

Supported operations are Get and Replace.

Set **BlockIndexToRead** at 0

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Replace>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel/DeviceManagement/BlockIndexToRead</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>0</Data>
            </Item>
        </Replace>
        <Final/>
    </SyncBody>
</SyncML>
```

Set **BlockIndexToRead** at 1

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Replace>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel/DeviceManagement/BlockIndexToRead</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>1</Data>
            </Item>
        </Replace>
        <Final/>
    </SyncBody>
</SyncML>
```

<a href="" id="filedownload-dmchannel-filecontext-blockdata"></a>**FileDownload/DMChannel/*FileContext*/BlockData**
The data type is Base64.

The only supported operation is Get.

Get **BlockData**

```xml
<?xml version="1.0"?>
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Get>
            <CmdID>1</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel/DeviceManagement/BlockData</LocURI>
                </Target>
            </Item>
        </Get>
        <Final/>
    </SyncBody>
</SyncML>
```

<a href="" id="filedownload-dmchannel-filecontext-datablocks"></a>**FileDownload/DMChannel/*FileContext*/DataBlocks**
Node to transfer the selected log file block to the DM server.

<a href="" id="filedownload-dmchannel-filecontext-datablocks-blocknumber"></a>**FileDownload/DMChannel/*FileContext*/DataBlocks/_BlockNumber_**
The data type is Base64.

The supported operation is Get.

### Reading a log file

To read a log file:
1. Enumerate log file under **./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel**.
2. Select a log file in the Enumeration result.
3. Set **BlockSizeKB** per DM server payload limitation.
4. Get **BlockCount** to determine total read request.
5. Set **BlockIndexToRead** to initialize read start point.
6. Get **BlockData** for upload log block.
7. Increase **BlockIndexToRead**.
8. Repeat steps 5 to 7 until **BlockIndexToRead == (BlockIndexToRead – 1)**.

## Related topics

[Configuration service provider reference](configuration-service-provider-reference.md)
