---
title: DiagnosticLog CSP
description: Learn more about the DiagnosticLog CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 11/06/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- DiagnosticLog-Begin -->
# DiagnosticLog CSP

<!-- DiagnosticLog-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DiagnosticLog-Editable-End -->

<!-- DiagnosticLog-Tree-Begin -->
The following list shows the DiagnosticLog configuration service provider nodes:

- ./Vendor/MSFT/DiagnosticLog
  - [DeviceStateData](#devicestatedata)
    - [MdmConfiguration](#devicestatedatamdmconfiguration)
  - [DiagnosticArchive](#diagnosticarchive)
    - [ArchiveDefinition](#diagnosticarchivearchivedefinition)
    - [ArchiveResults](#diagnosticarchivearchiveresults)
  - [EtwLog](#etwlog)
    - [Channels](#etwlogchannels)
      - [{ChannelName}](#etwlogchannelschannelname)
        - [Export](#etwlogchannelschannelnameexport)
        - [Filter](#etwlogchannelschannelnamefilter)
        - [State](#etwlogchannelschannelnamestate)
    - [Collectors](#etwlogcollectors)
      - [{CollectorName}](#etwlogcollectorscollectorname)
        - [LogFileSizeLimitMB](#etwlogcollectorscollectornamelogfilesizelimitmb)
        - [Providers](#etwlogcollectorscollectornameproviders)
          - [{ProviderGuid}](#etwlogcollectorscollectornameprovidersproviderguid)
            - [Keywords](#etwlogcollectorscollectornameprovidersproviderguidkeywords)
            - [State](#etwlogcollectorscollectornameprovidersproviderguidstate)
            - [TraceLevel](#etwlogcollectorscollectornameprovidersproviderguidtracelevel)
        - [TraceControl](#etwlogcollectorscollectornametracecontrol)
        - [TraceLogFileMode](#etwlogcollectorscollectornametracelogfilemode)
        - [TraceStatus](#etwlogcollectorscollectornametracestatus)
  - [FileDownload](#filedownload)
    - [DMChannel](#filedownloaddmchannel)
      - [{FileContext}](#filedownloaddmchannelfilecontext)
        - [BlockCount](#filedownloaddmchannelfilecontextblockcount)
        - [BlockData](#filedownloaddmchannelfilecontextblockdata)
        - [BlockIndexToRead](#filedownloaddmchannelfilecontextblockindextoread)
        - [BlockSizeKB](#filedownloaddmchannelfilecontextblocksizekb)
        - [DataBlocks](#filedownloaddmchannelfilecontextdatablocks)
          - [{BlockNumber}](#filedownloaddmchannelfilecontextdatablocksblocknumber)
  - [Policy](#policy)
    - [Channels](#policychannels)
      - [{ChannelName}](#policychannelschannelname)
        - [ActionWhenFull](#policychannelschannelnameactionwhenfull)
        - [Enabled](#policychannelschannelnameenabled)
        - [MaximumFileSize](#policychannelschannelnamemaximumfilesize)
        - [SDDL](#policychannelschannelnamesddl)
<!-- DiagnosticLog-Tree-End -->

<!-- Device-DeviceStateData-Begin -->
## DeviceStateData

<!-- Device-DeviceStateData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DeviceStateData-Applicability-End -->

<!-- Device-DeviceStateData-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/DeviceStateData
```
<!-- Device-DeviceStateData-OmaUri-End -->

<!-- Device-DeviceStateData-Description-Begin -->
<!-- Description-Source-DDF -->
Root node of all types of device state data that CSP exposes.
<!-- Device-DeviceStateData-Description-End -->

<!-- Device-DeviceStateData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The DeviceStateData functionality within the DiagnosticLog CSP provides extra device information.
<!-- Device-DeviceStateData-Editable-End -->

<!-- Device-DeviceStateData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-DeviceStateData-DFProperties-End -->

<!-- Device-DeviceStateData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceStateData-Examples-End -->

<!-- Device-DeviceStateData-End -->

<!-- Device-DeviceStateData-MdmConfiguration-Begin -->
### DeviceStateData/MdmConfiguration

<!-- Device-DeviceStateData-MdmConfiguration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-DeviceStateData-MdmConfiguration-Applicability-End -->

<!-- Device-DeviceStateData-MdmConfiguration-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/DeviceStateData/MdmConfiguration
```
<!-- Device-DeviceStateData-MdmConfiguration-OmaUri-End -->

<!-- Device-DeviceStateData-MdmConfiguration-Description-Begin -->
<!-- Description-Source-DDF -->
This node is to trigger snapping of the Device Management state data with "SNAP".
<!-- Device-DeviceStateData-MdmConfiguration-Description-End -->

<!-- Device-DeviceStateData-MdmConfiguration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceStateData-MdmConfiguration-Editable-End -->

<!-- Device-DeviceStateData-MdmConfiguration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec, Get |
<!-- Device-DeviceStateData-MdmConfiguration-DFProperties-End -->

<!-- Device-DeviceStateData-MdmConfiguration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

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
<!-- Device-DeviceStateData-MdmConfiguration-Examples-End -->

<!-- Device-DeviceStateData-MdmConfiguration-End -->

<!-- Device-DiagnosticArchive-Begin -->
## DiagnosticArchive

<!-- Device-DiagnosticArchive-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-DiagnosticArchive-Applicability-End -->

<!-- Device-DiagnosticArchive-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/DiagnosticArchive
```
<!-- Device-DiagnosticArchive-OmaUri-End -->

<!-- Device-DiagnosticArchive-Description-Begin -->
<!-- Description-Source-DDF -->
Root node for archive definition and collection.
<!-- Device-DiagnosticArchive-Description-End -->

<!-- Device-DiagnosticArchive-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The DiagnosticArchive functionality within the DiagnosticLog CSP is used to trigger devices to gather troubleshooting data into a zip archive file and upload that archive to cloud storage.

DiagnosticArchive is designed for ad-hoc troubleshooting scenarios, such as an IT admin investigating an app installation failure using a collection of event log events, registry values, and app or OS log files.

> [!NOTE]
> DiagnosticArchive is a "break glass" backstop option for device troubleshooting. Diagnostic data such as log files can grow to many gigabytes. Gathering, transferring, and storing large amounts of data may burden the user's device, the network and cloud storage. Management servers invoking DiagnosticArchive must take care to minimize data gathering frequency and scope.
<!-- Device-DiagnosticArchive-Editable-End -->

<!-- Device-DiagnosticArchive-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-DiagnosticArchive-DFProperties-End -->

<!-- Device-DiagnosticArchive-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DiagnosticArchive-Examples-End -->

<!-- Device-DiagnosticArchive-End -->

<!-- Device-DiagnosticArchive-ArchiveDefinition-Begin -->
### DiagnosticArchive/ArchiveDefinition

<!-- Device-DiagnosticArchive-ArchiveDefinition-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-DiagnosticArchive-ArchiveDefinition-Applicability-End -->

<!-- Device-DiagnosticArchive-ArchiveDefinition-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/DiagnosticArchive/ArchiveDefinition
```
<!-- Device-DiagnosticArchive-ArchiveDefinition-OmaUri-End -->

<!-- Device-DiagnosticArchive-ArchiveDefinition-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-DiagnosticArchive-ArchiveDefinition-Description-End -->

<!-- Device-DiagnosticArchive-ArchiveDefinition-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Execute action for this node accepts a `Collection` XML snippet (as a string) describing what data to gather and where to upload it. The results are zipped and uploaded to the specified **SasUrl**. The zipped filename format is `DiagLogs-{ComputerName}-YYYYMMDDTHHMMSSZ.zip`.

With Windows 10 KB5011543 and Windows 11 KB5011563, there is additional support for an extra element that will determine whether the output file generated by the CSP is a flattened folder structure, instead of having individual folders for each directive in the XML. The following example shows a `Collection` XML:

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
   <OutputFileFormat>Flattened</OutputFileFormat>
</Collection>

```

The XML should include the following elements within the `Collection` element:

- **ID**: The ID value uniquely identifies this data-gathering request. To avoid accidental repetition of data gathering, the CSP ignores subsequent Set or Execute invocations with the same ID value. The CSP expects the value to be populated when the request is received, so it must be generated by the IT admin or the management server.
- **SasUrl**: The SasUrl value is the target URI to which the CSP uploads the zip file containing the gathered data. It's the responsibility of the management server to provision storage in such a way that the storage server accepts the device's HTTP PUT to this URL. For example, the device management service could:
  - Provision cloud storage reachable by the target device, such as a Microsoft Azure blob storage container
  - Generate a Shared Access Signature URL granting the possessor (the target device) time-limited write access to the storage container
  - Pass this value to the CSP on the target device through the `Collection` XML as the `SasUrl` value.

Additionally, the XML may include **One or more data gathering directives, which may include any of the following:**

- **RegistryKey**: Exports all of the key names and values under a given path (recursive).
  - Expected input value: Registry path such as "HKLM\Software\Policies".
  - Output format: Creates a .reg file, similar to the output of reg.exe EXPORT command.
  - Privacy guardrails: To enable diagnostic log capture while reducing the risk of an IT admin inadvertently capturing user-generated documents, registry paths are restricted to those paths that're under HKLM and HKCR.

- **Events**: Exports all events from the named Windows event log.
  - Expected input value: A named event log channel such as "Application" or "Microsoft-Windows-DeviceGuard/Operational".
  - Output format: Creates an .evtx file.

- **Commands**: This directive type allows the execution of specific commands such as ipconfig.exe. Note that DiagnosticArchive and the Commands directives aren't a general-purpose scripting platform. These commands are allowed in the DiagnosticArchive context to handle cases where critical device information may not be available through existing log files.
  - Expected input value: The full command line including path and any arguments, such as `%windir%\\system32\\ipconfig.exe /all`.
  - Output format: Console text output from the command is captured in a text file and included in the overall output archive. For commands that may generate file output rather than console output, a subsequent FolderFiles directive would be used to capture that output. The example XML above demonstrates this pattern with mdmdiagnosticstool.exe's -out parameter.
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

- **FoldersFiles**: Captures log files from a given path (without recursion).
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

- **OutputFileFormat**: Flattens folder structure, instead of having individual folders for each directive in the XML.
  - The value "Flattened" is the only supported value for the OutputFileFormat. If the OutputFileFormat is absent in the XML, or if explicitly set to something other than Flattened, it will leave the file structure in old structure.
<!-- Device-DiagnosticArchive-ArchiveDefinition-Editable-End -->

<!-- Device-DiagnosticArchive-ArchiveDefinition-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec, Get, Replace |
<!-- Device-DiagnosticArchive-ArchiveDefinition-DFProperties-End -->

<!-- Device-DiagnosticArchive-ArchiveDefinition-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DiagnosticArchive-ArchiveDefinition-Examples-End -->

<!-- Device-DiagnosticArchive-ArchiveDefinition-End -->

<!-- Device-DiagnosticArchive-ArchiveResults-Begin -->
### DiagnosticArchive/ArchiveResults

<!-- Device-DiagnosticArchive-ArchiveResults-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-DiagnosticArchive-ArchiveResults-Applicability-End -->

<!-- Device-DiagnosticArchive-ArchiveResults-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/DiagnosticArchive/ArchiveResults
```
<!-- Device-DiagnosticArchive-ArchiveResults-OmaUri-End -->

<!-- Device-DiagnosticArchive-ArchiveResults-Description-Begin -->
<!-- Description-Source-DDF -->
Pull up the results of the last archive run.
<!-- Device-DiagnosticArchive-ArchiveResults-Description-End -->

<!-- Device-DiagnosticArchive-ArchiveResults-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DiagnosticArchive-ArchiveResults-Editable-End -->

<!-- Device-DiagnosticArchive-ArchiveResults-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-DiagnosticArchive-ArchiveResults-DFProperties-End -->

<!-- Device-DiagnosticArchive-ArchiveResults-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

A Get to the above URI will return the results of the data gathering for the last diagnostics request. For example:

```xml
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

To learn how to read the resulting data, see [How to review ArchiveResults](#how-to-review-archiveresults).
<!-- Device-DiagnosticArchive-ArchiveResults-Examples-End -->

<!-- Device-DiagnosticArchive-ArchiveResults-End -->

<!-- Device-EtwLog-Begin -->
## EtwLog

<!-- Device-EtwLog-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Applicability-End -->

<!-- Device-EtwLog-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog
```
<!-- Device-EtwLog-OmaUri-End -->

<!-- Device-EtwLog-Description-Begin -->
<!-- Description-Source-DDF -->
Root node of all types of event logging nodes that CSP manages.
<!-- Device-EtwLog-Description-End -->

<!-- Device-EtwLog-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The Event Tracing for Windows (ETW) log feature of the DiagnosticLog CSP is used to control the following types of event tracing:

- [Collector-based tracing](#etwlogcollectors)
- [Channel-based tracing](#etwlogchannels)

The ETW log feature is designed for advanced usage, and assumes developers' familiarity with ETW. For more information, see [About Event Tracing](/windows/win32/etw/about-event-tracing).
<!-- Device-EtwLog-Editable-End -->

<!-- Device-EtwLog-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-EtwLog-DFProperties-End -->

<!-- Device-EtwLog-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-EtwLog-Examples-End -->

<!-- Device-EtwLog-End -->

<!-- Device-EtwLog-Channels-Begin -->
### EtwLog/Channels

<!-- Device-EtwLog-Channels-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Channels-Applicability-End -->

<!-- Device-EtwLog-Channels-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Channels
```
<!-- Device-EtwLog-Channels-OmaUri-End -->

<!-- Device-EtwLog-Channels-Description-Begin -->
<!-- Description-Source-DDF -->
Root node of registered "Channel" nodes.
<!-- Device-EtwLog-Channels-Description-End -->

<!-- Device-EtwLog-Channels-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The type of event tracing exports event data from a specific channel. Users can add or delete a channel node using the full name, such as Microsoft-Windows-AppModel-Runtime/Admin.

The DiagnosticLog CSP maintains a log file for each channel node and the log file is overwritten if a start command is triggered again on the same channel node.

For each channel node, the user can:

- Export channel event data into a log file (.evtx).
- Enable or disable the channel from Event Log service to allow or disallow event data being written into the channel.
- Specify an XPath query to filter events while exporting the channel event data.

For more information about using DiagnosticLog to collect logs remotely from a PC or mobile device, see [Collect MDM logs](../mdm-collect-logs.md).
<!-- Device-EtwLog-Channels-Editable-End -->

<!-- Device-EtwLog-Channels-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-EtwLog-Channels-DFProperties-End -->

<!-- Device-EtwLog-Channels-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-EtwLog-Channels-Examples-End -->

<!-- Device-EtwLog-Channels-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Begin -->
#### EtwLog/Channels/{ChannelName}

<!-- Device-EtwLog-Channels-{ChannelName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Channels-{ChannelName}-Applicability-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Channels/{ChannelName}
```
<!-- Device-EtwLog-Channels-{ChannelName}-OmaUri-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Description-Begin -->
<!-- Description-Source-DDF -->
Each dynamic node represents a registered 'Channel' node. The node name must be a valid Windows event log channel name, e.g. "Microsoft-Client-Licensing-Platform%2FAdmin". When specifying the name in the LocURI, it must be url encoded or it'll be translated into a different URI unexpectedly.
<!-- Device-EtwLog-Channels-{ChannelName}-Description-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EtwLog-Channels-{ChannelName}-Editable-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: The node name must be a valid Windows event log channel name, such as "Microsoft-Client-Licensing-Platform%2FAdmin" |
<!-- Device-EtwLog-Channels-{ChannelName}-DFProperties-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Add a channel

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

- Delete a channel

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
<!-- Device-EtwLog-Channels-{ChannelName}-Examples-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Export-Begin -->
##### EtwLog/Channels/{ChannelName}/Export

<!-- Device-EtwLog-Channels-{ChannelName}-Export-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Channels-{ChannelName}-Export-Applicability-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Export-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Channels/{ChannelName}/Export
```
<!-- Device-EtwLog-Channels-{ChannelName}-Export-OmaUri-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Export-Description-Begin -->
<!-- Description-Source-DDF -->
This node is to trigger exporting events into a log file from this node's associated Windows event channel. The log file's extension is .evtx, which is the standard extension of windows event channel log. The "Get" command returns the name of this node.
<!-- Device-EtwLog-Channels-{ChannelName}-Export-Description-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Export-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EtwLog-Channels-{ChannelName}-Export-Editable-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Export-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec, Get |
<!-- Device-EtwLog-Channels-{ChannelName}-Export-DFProperties-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Export-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

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
<!-- Device-EtwLog-Channels-{ChannelName}-Export-Examples-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Export-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Filter-Begin -->
##### EtwLog/Channels/{ChannelName}/Filter

<!-- Device-EtwLog-Channels-{ChannelName}-Filter-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Channels-{ChannelName}-Filter-Applicability-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Filter-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Channels/{ChannelName}/Filter
```
<!-- Device-EtwLog-Channels-{ChannelName}-Filter-OmaUri-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Filter-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used for setting or getting the xpath query string to filter the events when exporting the log file from the channel. Default value is empty string.
<!-- Device-EtwLog-Channels-{ChannelName}-Filter-Description-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Filter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EtwLog-Channels-{ChannelName}-Filter-Editable-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Filter-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
| Default Value  | "" |
<!-- Device-EtwLog-Channels-{ChannelName}-Filter-DFProperties-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Filter-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

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
<!-- Device-EtwLog-Channels-{ChannelName}-Filter-Examples-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-Filter-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-State-Begin -->
##### EtwLog/Channels/{ChannelName}/State

<!-- Device-EtwLog-Channels-{ChannelName}-State-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Channels-{ChannelName}-State-Applicability-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-State-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Channels/{ChannelName}/State
```
<!-- Device-EtwLog-Channels-{ChannelName}-State-OmaUri-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-State-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used for setting or getting the 'Enabled' state of this node's associated windows event channel in the system. Setting it to "TRUE" enables the channel; setting it to "FALSE" disables the channel.
<!-- Device-EtwLog-Channels-{ChannelName}-State-Description-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-State-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EtwLog-Channels-{ChannelName}-State-Editable-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-State-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
<!-- Device-EtwLog-Channels-{ChannelName}-State-DFProperties-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-State-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| true | Channel is enabled. |
| false | Channel is disabled. |
<!-- Device-EtwLog-Channels-{ChannelName}-State-AllowedValues-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-State-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Get channel State:

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

- Set channel State:

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
<!-- Device-EtwLog-Channels-{ChannelName}-State-Examples-End -->

<!-- Device-EtwLog-Channels-{ChannelName}-State-End -->

<!-- Device-EtwLog-Collectors-Begin -->
### EtwLog/Collectors

<!-- Device-EtwLog-Collectors-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Collectors-Applicability-End -->

<!-- Device-EtwLog-Collectors-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors
```
<!-- Device-EtwLog-Collectors-OmaUri-End -->

<!-- Device-EtwLog-Collectors-Description-Begin -->
<!-- Description-Source-DDF -->
Root node of registered "Collector" nodes.
<!-- Device-EtwLog-Collectors-Description-End -->

<!-- Device-EtwLog-Collectors-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This type of event tracing collects event data from a collection of registered ETW providers. An event collector is a container of registered ETW providers. Users can add or delete a collector node and register or unregister multiple providers in this collector.

The `{CollectorName}` must be unique within the CSP and must not be a valid event channel name or a provider GUID.

The DiagnosticLog CSP maintains a log file for each collector node and the log file is overwritten if a start command is triggered again on the same collector node.

For each collector node, the user can:

- Start or stop the session with all registered and enabled providers.
- Query session status.
- Change trace log file mode.
- Change trace log file size limit.

The configurations log file mode and log file size limit don't take effect while trace session is in progress. These attributes are applied when user stops the current session and then starts it again for this collector.

For each registered provider in this collector, the user can:

- Specify keywords to filter events from this provider.
- Change trace level to filter events from this provider.
- Enable or disable the provider in the trace session.

The changes on **State**, **Keywords**, and **TraceLevel** takes effect immediately while trace session is in progress.

> [!NOTE]
> Microsoft-WindowsPhone-Enterprise-Diagnostics-Provider (GUID - 3da494e4-0fe2-415C-b895-fb5265c5c83b) has the required debug resource files built into Windows, which will allow the logs files to be decoded on the remote machine. Any other logs may not have the debug resources required to decode.
<!-- Device-EtwLog-Collectors-Editable-End -->

<!-- Device-EtwLog-Collectors-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-EtwLog-Collectors-DFProperties-End -->

<!-- Device-EtwLog-Collectors-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To gather diagnostics using this CSP:

1. Specify a *CollectorName* for the container of the target ETW providers.
2. (Optional) Set logging and log file parameters using the following options:
    - [TraceLogFileMode](#etwlogcollectorscollectornametracelogfilemode)
    - [LogFileSizeLimitMB](#etwlogcollectorscollectornamelogfilesizelimitmb)
3. Indicate one or more target ETW providers by supplying its **ProviderGUID** to the Add operation of EtwLog/Collectors/*CollectorName*/Providers/*ProviderGUID*.
4. (Optional) Set logging and log file parameters using the following options:
    - [TraceLevel](#etwlogcollectorscollectornameprovidersproviderguidtracelevel)
    - [Keywords](#etwlogcollectorscollectornameprovidersproviderguidkeywords)
5. Start logging using **TraceControl** EXECUTE command "START".
6. Perform actions on the target device that will generate activity in the log files.
7. Stop logging using **TraceControl** EXECUTE command "STOP".
8. Collect the log file located in the `%temp%` folder using the **Reading a log file** method described in [FileDownload](#filedownload).
<!-- Device-EtwLog-Collectors-Examples-End -->

<!-- Device-EtwLog-Collectors-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Begin -->
#### EtwLog/Collectors/{CollectorName}

<!-- Device-EtwLog-Collectors-{CollectorName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Collectors-{CollectorName}-Applicability-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/{CollectorName}
```
<!-- Device-EtwLog-Collectors-{CollectorName}-OmaUri-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Description-Begin -->
<!-- Description-Source-DDF -->
Each dynamic node represents a registered 'Collector' node. CSP will maintain an ETW trace session for this collector with its name used as a unique identifier. In a collector, a valid ETW provider can be registered and unregistered. The collector's associated trace session will enable the registered providers in it if the provider's state is 'Enabled'. Each provider's state, trace level and keywords can be controlled separately. The name of this node mustn't be a valid Windows event channel name. It can be a etw provider guid as long as it isn't equal to an already registered 'Provider' node name.
<!-- Device-EtwLog-Collectors-{CollectorName}-Description-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EtwLog-Collectors-{CollectorName}-Editable-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
<!-- Device-EtwLog-Collectors-{CollectorName}-DFProperties-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Add a collector

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

- Delete a collector

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
<!-- Device-EtwLog-Collectors-{CollectorName}-Examples-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-LogFileSizeLimitMB-Begin -->
##### EtwLog/Collectors/{CollectorName}/LogFileSizeLimitMB

<!-- Device-EtwLog-Collectors-{CollectorName}-LogFileSizeLimitMB-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Collectors-{CollectorName}-LogFileSizeLimitMB-Applicability-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-LogFileSizeLimitMB-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/{CollectorName}/LogFileSizeLimitMB
```
<!-- Device-EtwLog-Collectors-{CollectorName}-LogFileSizeLimitMB-OmaUri-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-LogFileSizeLimitMB-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used for setting or getting the trace log file size limit(in Megabytes) of this collector node's associated trace session. The value range is 1~2048. Default value is 4.
<!-- Device-EtwLog-Collectors-{CollectorName}-LogFileSizeLimitMB-Description-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-LogFileSizeLimitMB-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EtwLog-Collectors-{CollectorName}-LogFileSizeLimitMB-Editable-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-LogFileSizeLimitMB-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Allowed Values | Range: `[1-2048]` |
| Default Value  | 4 |
<!-- Device-EtwLog-Collectors-{CollectorName}-LogFileSizeLimitMB-DFProperties-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-LogFileSizeLimitMB-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-EtwLog-Collectors-{CollectorName}-LogFileSizeLimitMB-Examples-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-LogFileSizeLimitMB-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-Begin -->
##### EtwLog/Collectors/{CollectorName}/Providers

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-Applicability-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/{CollectorName}/Providers
```
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-OmaUri-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-Description-Begin -->
<!-- Description-Source-DDF -->
Root node of all providers registered in this collector node.
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-Description-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-Editable-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-DFProperties-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-Examples-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Begin -->
###### EtwLog/Collectors/{CollectorName}/Providers/{ProviderGuid}

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Applicability-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/{CollectorName}/Providers/{ProviderGuid}
```
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-OmaUri-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Description-Begin -->
<!-- Description-Source-DDF -->
Each dynamic node represents an ETW provider registered in this collector node. The node name must be a valid provider GUID.
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Description-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Editable-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: The node name must be a valid provider GUID. |
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-DFProperties-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Add a provider:

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

- Delete a provider:

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
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Examples-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Keywords-Begin -->
###### EtwLog/Collectors/{CollectorName}/Providers/{ProviderGuid}/Keywords

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Keywords-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Keywords-Applicability-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Keywords-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/{CollectorName}/Providers/{ProviderGuid}/Keywords
```
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Keywords-OmaUri-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Keywords-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used for setting or getting the keywords of the event provider in this collector node's associated trace session. The string is in the form of hexadecimal digits and 16 chars wide. It'll be internally converted into ULONGLONG data type in the CSP. Default value is "0", which means all events from this provider are included. If the associated trace session is in progress, new keywords setting is applied immediately; if not, it'll be applied next time that session is started.
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Keywords-Description-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Keywords-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Keywords-Editable-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Keywords-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
| Default Value  | "0" |
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Keywords-DFProperties-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Keywords-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Get provider Keywords:

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

- Set provider Keywords:

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
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Keywords-Examples-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-Keywords-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-Begin -->
###### EtwLog/Collectors/{CollectorName}/Providers/{ProviderGuid}/State

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-Applicability-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/{CollectorName}/Providers/{ProviderGuid}/State
```
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-OmaUri-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used for setting or getting the state of the event provider in this collector node's associated trace session. If the trace session isn't started, changing the value controls whether to enable the provider or not when session is started; if trace session is already started, changing its value causes enabling or disabling the provider in the live trace session. Default value is true.
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-Description-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-Editable-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-DFProperties-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| true (Default) | Provider is enabled in the trace session. This is the default. |
| false | Provider is disabled in the trace session. |
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-AllowedValues-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

Set provider State:

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
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-Examples-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-State-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-Begin -->
###### EtwLog/Collectors/{CollectorName}/Providers/{ProviderGuid}/TraceLevel

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-Applicability-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/{CollectorName}/Providers/{ProviderGuid}/TraceLevel
```
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-OmaUri-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used for setting or getting the trace level of this event provider in this collector node's associated trace session. Default value is 5, which is TRACE_LEVEL_VERBOSE. If the associated trace session is in progress, new trace level setting is applied immediately;if not, it'll be applied next time that session is started.
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-Description-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-Editable-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 5 |
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-DFProperties-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | TRACE_LEVEL_CRITICAL - Abnormal exit or termination events. |
| 2 | TRACE_LEVEL_ERROR - Severe error events. |
| 3 | TRACE_LEVEL_WARNING - Warning events such as allocation failures. |
| 4 | TRACE_LEVEL_INFORMATION - Non-error events, such as entry or exit events. |
| 5 (Default) | TRACE_LEVEL_VERBOSE - Detailed information. |
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-AllowedValues-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

Set provider TraceLevel:

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
<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-Examples-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-Providers-{ProviderGuid}-TraceLevel-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-Begin -->
##### EtwLog/Collectors/{CollectorName}/TraceControl

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-Applicability-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/{CollectorName}/TraceControl
```
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-OmaUri-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-Description-Begin -->
<!-- Description-Source-DDF -->
This node is to trigger "start" and "stop" of this collector node's associated trace session. "Get" returns the name of this node.
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-Description-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-Editable-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec, Get |
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-DFProperties-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| START | Start log tracing. |
| STOP | Stop log tracing. |
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-AllowedValues-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

After you've added a logging task, you can start/stop a trace by running an Execute command on this node.

- Start collector trace logging:

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

- Stop collector trace logging:

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
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-Examples-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceControl-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-Begin -->
##### EtwLog/Collectors/{CollectorName}/TraceLogFileMode

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-Applicability-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/{CollectorName}/TraceLogFileMode
```
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-OmaUri-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used for setting or getting the trace log file mode of this collector node's associated trace session. The only two allowed values are 1 and 2, which are EVENT_TRACE_FILE_MODE_SEQUENTIAL and EVENT_TRACE_FILE_MODE_CIRCULAR. Default value is 1.
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-Description-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-Editable-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 1 |
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-DFProperties-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | EVENT_TRACE_FILE_MODE_SEQUENTIAL-Writes events to a log file sequentially. It stops when the file reaches its maximum size. |
| 2 | EVENT_TRACE_FILE_MODE_CIRCULAR-Writes events to a log file. After the file reaches the maximum size, the oldest events are replaced with incoming events. |
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-AllowedValues-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-Examples-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceLogFileMode-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceStatus-Begin -->
##### EtwLog/Collectors/{CollectorName}/TraceStatus

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceStatus-Applicability-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceStatus-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/EtwLog/Collectors/{CollectorName}/TraceStatus
```
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceStatus-OmaUri-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceStatus-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used for getting the status of this collector node's associated trace session. 1 means "in progress"; 0 means "not started or stopped".
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceStatus-Description-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceStatus-Editable-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceStatus-DFProperties-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-EtwLog-Collectors-{CollectorName}-TraceStatus-Examples-End -->

<!-- Device-EtwLog-Collectors-{CollectorName}-TraceStatus-End -->

<!-- Device-FileDownload-Begin -->
## FileDownload

<!-- Device-FileDownload-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-FileDownload-Applicability-End -->

<!-- Device-FileDownload-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/FileDownload
```
<!-- Device-FileDownload-OmaUri-End -->

<!-- Device-FileDownload-Description-Begin -->
<!-- Description-Source-DDF -->
Root node of all csp nodes that are related to log file download in csp.
<!-- Device-FileDownload-Description-End -->

<!-- Device-FileDownload-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The FileDownload feature of the DiagnosticLog CSP enables a management server to pull data directly from the device. In the FileDownload context, the client and server roles are conceptually reversed, with the management server acting as a client to download the data from the managed device.

**Reading a log file**:

1. Enumerate log file under **./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel**.
2. Select a log file in the Enumeration result.
3. Set **BlockSizeKB** per DM server payload limitation.
4. Get **BlockCount** to determine total read request.
5. Set **BlockIndexToRead** to initialize read start point.
6. Get **BlockData** for upload log block.
7. Increase **BlockIndexToRead**.
8. Repeat steps 5 to 7 until **BlockIndexToRead == (BlockIndexToRead – 1)**.
<!-- Device-FileDownload-Editable-End -->

<!-- Device-FileDownload-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-FileDownload-DFProperties-End -->

<!-- Device-FileDownload-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-FileDownload-Examples-End -->

<!-- Device-FileDownload-End -->

<!-- Device-FileDownload-DMChannel-Begin -->
### FileDownload/DMChannel

<!-- Device-FileDownload-DMChannel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-FileDownload-DMChannel-Applicability-End -->

<!-- Device-FileDownload-DMChannel-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel
```
<!-- Device-FileDownload-DMChannel-OmaUri-End -->

<!-- Device-FileDownload-DMChannel-Description-Begin -->
<!-- Description-Source-DDF -->
Root node of all csp nodes that are used for controlling file download for their associated log file generated by logging csp nodes.
<!-- Device-FileDownload-DMChannel-Description-End -->

<!-- Device-FileDownload-DMChannel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-FileDownload-DMChannel-Editable-End -->

<!-- Device-FileDownload-DMChannel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-FileDownload-DMChannel-DFProperties-End -->

<!-- Device-FileDownload-DMChannel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-FileDownload-DMChannel-Examples-End -->

<!-- Device-FileDownload-DMChannel-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-Begin -->
#### FileDownload/DMChannel/{FileContext}

<!-- Device-FileDownload-DMChannel-{FileContext}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-FileDownload-DMChannel-{FileContext}-Applicability-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel/{FileContext}
```
<!-- Device-FileDownload-DMChannel-{FileContext}-OmaUri-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-Description-Begin -->
<!-- Description-Source-DDF -->
Each dynamic node represents a 'FileContext' node corresponding to a log file generated by one of the logging CSP nodes(underneath 'EtwLog' node). The node name must be the name of a registered 'Provider', 'Collector' or 'Channel' node. The log file and its location will be determined by CSP based on the node name. File download is done by dividing the log file into multiple blocks of configured block size and then sending the blocks as requested by MDM server.
<!-- Device-FileDownload-DMChannel-{FileContext}-Description-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-FileDownload-DMChannel-{FileContext}-Editable-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Dynamic Node Naming | UniqueName: The node name must be the name of a registered 'Provider', 'Collector' or 'Channel' node.  |
<!-- Device-FileDownload-DMChannel-{FileContext}-DFProperties-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-FileDownload-DMChannel-{FileContext}-Examples-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockCount-Begin -->
##### FileDownload/DMChannel/{FileContext}/BlockCount

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockCount-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockCount-Applicability-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockCount-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel/{FileContext}/BlockCount
```
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockCount-OmaUri-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockCount-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used for getting the total number of blocks for the associated log file. If the log file isn't generated yet, the value returned is -1; if the trace session is in progress, the value returned is -2.
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockCount-Description-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockCount-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockCount-Editable-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockCount-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockCount-DFProperties-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockCount-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

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
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockCount-Examples-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockCount-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockData-Begin -->
##### FileDownload/DMChannel/{FileContext}/BlockData

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockData-Applicability-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockData-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel/{FileContext}/BlockData
```
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockData-OmaUri-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockData-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used to get the binary data of the block that 'BlockIndexToRead' node is pointing to.
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockData-Description-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockData-Editable-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Get |
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockData-DFProperties-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

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
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockData-Examples-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockData-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockIndexToRead-Begin -->
##### FileDownload/DMChannel/{FileContext}/BlockIndexToRead

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockIndexToRead-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockIndexToRead-Applicability-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockIndexToRead-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel/{FileContext}/BlockIndexToRead
```
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockIndexToRead-OmaUri-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockIndexToRead-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used for setting and getting the block index that points to the data block for 'BlockData' node. The value range is 0~(BlockCount-1).
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockIndexToRead-Description-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockIndexToRead-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
**Example**:

- Set BlockIndexToRead at 0:

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

- Set BlockIndexToRead at 1:

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
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockIndexToRead-Editable-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockIndexToRead-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockIndexToRead-DFProperties-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockIndexToRead-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockIndexToRead-Examples-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockIndexToRead-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockSizeKB-Begin -->
##### FileDownload/DMChannel/{FileContext}/BlockSizeKB

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockSizeKB-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockSizeKB-Applicability-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockSizeKB-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel/{FileContext}/BlockSizeKB
```
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockSizeKB-OmaUri-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockSizeKB-Description-Begin -->
<!-- Description-Source-DDF -->
This node is used for setting or getting the block size (in Kilobytes) for the download of assoicated log file. The value range is 1~16. Default value is 4.
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockSizeKB-Description-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockSizeKB-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockSizeKB-Editable-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockSizeKB-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Allowed Values | Range: `[1-16]` |
| Default Value  | 4 |
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockSizeKB-DFProperties-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockSizeKB-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Set BlockSizeKB:

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

- Get BlockSizeKB:

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
<!-- Device-FileDownload-DMChannel-{FileContext}-BlockSizeKB-Examples-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-BlockSizeKB-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-Begin -->
##### FileDownload/DMChannel/{FileContext}/DataBlocks

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-Applicability-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel/{FileContext}/DataBlocks
```
<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-OmaUri-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-Description-Begin -->
<!-- Description-Source-DDF -->
Root node of all 'BlockNumber' nodes for the associated log file. The number of its children should be the total block count of the log file. No children nodes exist if 'BlockCount' node's value is less than 0.
<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-Description-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-Editable-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-DFProperties-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-Examples-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-{BlockNumber}-Begin -->
###### FileDownload/DMChannel/{FileContext}/DataBlocks/{BlockNumber}

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-{BlockNumber}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-{BlockNumber}-Applicability-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-{BlockNumber}-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel/{FileContext}/DataBlocks/{BlockNumber}
```
<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-{BlockNumber}-OmaUri-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-{BlockNumber}-Description-Begin -->
<!-- Description-Source-DDF -->
Each dynamic node represents a 'BlockNumber' node. The node name is an integer equal to the index of the block which this node stands for. Therefore the node name should be ranging from 0 to (BlockCount -1). It returns the binary data of the block which this node is referring to.
<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-{BlockNumber}-Description-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-{BlockNumber}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-{BlockNumber}-Editable-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-{BlockNumber}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-{BlockNumber}-DFProperties-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-{BlockNumber}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-{BlockNumber}-Examples-End -->

<!-- Device-FileDownload-DMChannel-{FileContext}-DataBlocks-{BlockNumber}-End -->

<!-- Device-Policy-Begin -->
## Policy

<!-- Device-Policy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policy-Applicability-End -->

<!-- Device-Policy-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/Policy
```
<!-- Device-Policy-OmaUri-End -->

<!-- Device-Policy-Description-Begin -->
<!-- Description-Source-DDF -->
Contains policy for diagnostic settings.
<!-- Device-Policy-Description-End -->

<!-- Device-Policy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This can be used to configure Windows event log policies, such as maximum log size.
<!-- Device-Policy-Editable-End -->

<!-- Device-Policy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Policy-DFProperties-End -->

<!-- Device-Policy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policy-Examples-End -->

<!-- Device-Policy-End -->

<!-- Device-Policy-Channels-Begin -->
### Policy/Channels

<!-- Device-Policy-Channels-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policy-Channels-Applicability-End -->

<!-- Device-Policy-Channels-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/Policy/Channels
```
<!-- Device-Policy-Channels-OmaUri-End -->

<!-- Device-Policy-Channels-Description-Begin -->
<!-- Description-Source-DDF -->
Contains policy for Event Log channel settings.
<!-- Device-Policy-Channels-Description-End -->

<!-- Device-Policy-Channels-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policy-Channels-Editable-End -->

<!-- Device-Policy-Channels-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Policy-Channels-DFProperties-End -->

<!-- Device-Policy-Channels-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policy-Channels-Examples-End -->

<!-- Device-Policy-Channels-End -->

<!-- Device-Policy-Channels-{ChannelName}-Begin -->
#### Policy/Channels/{ChannelName}

<!-- Device-Policy-Channels-{ChannelName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policy-Channels-{ChannelName}-Applicability-End -->

<!-- Device-Policy-Channels-{ChannelName}-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/Policy/Channels/{ChannelName}
```
<!-- Device-Policy-Channels-{ChannelName}-OmaUri-End -->

<!-- Device-Policy-Channels-{ChannelName}-Description-Begin -->
<!-- Description-Source-DDF -->
Each dynamic node represents a registered 'Channel' node. The node name must be a valid Windows event log channel name, e.g. "Microsoft-Client-Licensing-Platform%2FAdmin". When specifying the name in the LocURI, it must be url encoded or it'll be translated into a different URI unexpectedly.
<!-- Device-Policy-Channels-{ChannelName}-Description-End -->

<!-- Device-Policy-Channels-{ChannelName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policy-Channels-{ChannelName}-Editable-End -->

<!-- Device-Policy-Channels-{ChannelName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: The node name must be a valid Windows event log channel name, such as Microsoft-Client-Licensing-Platform%2FAdmin. When specifying the name in the LocURI, it must be URL encoded, otherwise it may unexpectedly translate into a different URI. |
<!-- Device-Policy-Channels-{ChannelName}-DFProperties-End -->

<!-- Device-Policy-Channels-{ChannelName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Add Channel

    ```xml
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

- Delete Channel

    ```xml
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

- Get Channel

    ```xml
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
<!-- Device-Policy-Channels-{ChannelName}-Examples-End -->

<!-- Device-Policy-Channels-{ChannelName}-End -->

<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-Begin -->
##### Policy/Channels/{ChannelName}/ActionWhenFull

<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-Applicability-End -->

<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/Policy/Channels/{ChannelName}/ActionWhenFull
```
<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-OmaUri-End -->

<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-Description-Begin -->
<!-- Description-Source-DDF -->
Action to take when the log file reaches maximum size. "Truncate", "Overwrite", "Archive".
<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-Description-End -->

<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
If you disable or don't configure this policy setting, the locally configured value will be used as default. Every channel that is installed, whether inbox or by ISVs, is responsible for defining its own local configuration, and that configuration can be changed by any administrator. Values set via this policy override but don't replace local configuration.
<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-Editable-End -->

<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-DFProperties-End -->

<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| Truncate | When the log file reaches its maximum file size, new events aren't written to the log and are lost. |
| Overwrite | When the log file reaches its maximum file size, new events overwrite old events. |
| Archive | When the log file reaches its maximum size, the log file is saved to the location specified by the "Archive Location" policy setting. If archive location value isn't set, the new file is saved in the same directory as current log file. |
<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-AllowedValues-End -->

<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Add **ActionWhenFull**

    ```xml
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

- Delete **ActionWhenFull**

    ```xml
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

- Get **ActionWhenFull**

    ```xml
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

- Replace **ActionWhenFull**

    ```xml
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
<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-Examples-End -->

<!-- Device-Policy-Channels-{ChannelName}-ActionWhenFull-End -->

<!-- Device-Policy-Channels-{ChannelName}-Enabled-Begin -->
##### Policy/Channels/{ChannelName}/Enabled

<!-- Device-Policy-Channels-{ChannelName}-Enabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policy-Channels-{ChannelName}-Enabled-Applicability-End -->

<!-- Device-Policy-Channels-{ChannelName}-Enabled-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/Policy/Channels/{ChannelName}/Enabled
```
<!-- Device-Policy-Channels-{ChannelName}-Enabled-OmaUri-End -->

<!-- Device-Policy-Channels-{ChannelName}-Enabled-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting specifies whether the channel should be enabled or disabled. Set value to TRUE to enable and FALSE to disable.
<!-- Device-Policy-Channels-{ChannelName}-Enabled-Description-End -->

<!-- Device-Policy-Channels-{ChannelName}-Enabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
If you disable or don't configure this policy setting, the locally configured value is used as default.
<!-- Device-Policy-Channels-{ChannelName}-Enabled-Editable-End -->

<!-- Device-Policy-Channels-{ChannelName}-Enabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Policy-Channels-{ChannelName}-Enabled-DFProperties-End -->

<!-- Device-Policy-Channels-{ChannelName}-Enabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| true | Enables the channel. |
| false | Disables the channel. |
<!-- Device-Policy-Channels-{ChannelName}-Enabled-AllowedValues-End -->

<!-- Device-Policy-Channels-{ChannelName}-Enabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Add **Enabled**

    ```xml
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

- Delete **Enabled**

    ```xml
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

- Get **Enabled**

    ```xml
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

- Replace **Enabled**

    ```xml
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
<!-- Device-Policy-Channels-{ChannelName}-Enabled-Examples-End -->

<!-- Device-Policy-Channels-{ChannelName}-Enabled-End -->

<!-- Device-Policy-Channels-{ChannelName}-MaximumFileSize-Begin -->
##### Policy/Channels/{ChannelName}/MaximumFileSize

<!-- Device-Policy-Channels-{ChannelName}-MaximumFileSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policy-Channels-{ChannelName}-MaximumFileSize-Applicability-End -->

<!-- Device-Policy-Channels-{ChannelName}-MaximumFileSize-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/Policy/Channels/{ChannelName}/MaximumFileSize
```
<!-- Device-Policy-Channels-{ChannelName}-MaximumFileSize-OmaUri-End -->

<!-- Device-Policy-Channels-{ChannelName}-MaximumFileSize-Description-Begin -->
<!-- Description-Source-DDF -->
Maximum size of the channel log file in MB.
<!-- Device-Policy-Channels-{ChannelName}-MaximumFileSize-Description-End -->

<!-- Device-Policy-Channels-{ChannelName}-MaximumFileSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
- If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte and 2 terabytes in megabyte increments.
- If you disable or don't configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog, and it defaults to 1 megabyte.
<!-- Device-Policy-Channels-{ChannelName}-MaximumFileSize-Editable-End -->

<!-- Device-Policy-Channels-{ChannelName}-MaximumFileSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-2000000]` |
| Default Value  | 1 |
<!-- Device-Policy-Channels-{ChannelName}-MaximumFileSize-DFProperties-End -->

<!-- Device-Policy-Channels-{ChannelName}-MaximumFileSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Add **MaximumFileSize**

    ```xml
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

- Delete **MaximumFileSize**

    ```xml
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

- Get **MaximumFileSize**

    ```xml
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

- Replace **MaximumFileSize**

    ```xml
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
<!-- Device-Policy-Channels-{ChannelName}-MaximumFileSize-Examples-End -->

<!-- Device-Policy-Channels-{ChannelName}-MaximumFileSize-End -->

<!-- Device-Policy-Channels-{ChannelName}-SDDL-Begin -->
##### Policy/Channels/{ChannelName}/SDDL

<!-- Device-Policy-Channels-{ChannelName}-SDDL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policy-Channels-{ChannelName}-SDDL-Applicability-End -->

<!-- Device-Policy-Channels-{ChannelName}-SDDL-OmaUri-Begin -->
```Device
./Vendor/MSFT/DiagnosticLog/Policy/Channels/{ChannelName}/SDDL
```
<!-- Device-Policy-Channels-{ChannelName}-SDDL-OmaUri-End -->

<!-- Device-Policy-Channels-{ChannelName}-SDDL-Description-Begin -->
<!-- Description-Source-DDF -->
SDDL String controlling access to the channel. For more information, see [ChannelType Complex Type](/windows/win32/wes/eventmanifestschema-channeltype-complextype).
<!-- Device-Policy-Channels-{ChannelName}-SDDL-Description-End -->

<!-- Device-Policy-Channels-{ChannelName}-SDDL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policy-Channels-{ChannelName}-SDDL-Editable-End -->

<!-- Device-Policy-Channels-{ChannelName}-SDDL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Case Sensitive | True |
<!-- Device-Policy-Channels-{ChannelName}-SDDL-DFProperties-End -->

<!-- Device-Policy-Channels-{ChannelName}-SDDL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Add **SDDL**

    ```xml
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

- Delete **SDDL**

    ```xml
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

- Get **SDDL**

    ```xml
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

- Replace **SDDL**

    ```xml
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
<!-- Device-Policy-Channels-{ChannelName}-SDDL-Examples-End -->

<!-- Device-Policy-Channels-{ChannelName}-SDDL-End -->

<!-- DiagnosticLog-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## Comparing FileDownload and DiagnosticArchive

Both the FileDownload and DiagnosticArchive features can be used to get data from the device to the management server, but they're optimized for different workflows.

- FileDownload enables the management server to directly pull byte-level trace data from the managed device. The data transfer takes place through the existing OMA-DM/SyncML context. It's used together with the EtwLogs feature as part of an advanced monitoring or diagnostic flow. FileDownlod requires granular orchestration by the management server, but avoids the need for dedicated cloud storage.
- DiagnosticArchive allows the management server to give the CSP a full set of instructions as single command. Based on those instructions, the CSP orchestrates the work client-side to package the requested diagnostic files into a zip archive and upload that archive to cloud storage. The data transfer happens outside of the OMA-DM session, via an HTTP PUT.

## How to review ArchiveResults

The zip archive that is created and uploaded by [ArchiveResults](#diagnosticarchivearchiveresults) contains a folder structure like the following example:

```powershell
PS C:\> dir C:\DiagArchiveExamples\DiagLogs-MYDEVICE-20201202T182748Z

    Directory: C:\DiagArchiveExamples\DiagLogs-MYDEVICE-20201202T182748Z

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
la---            1/4/2021  2:45 PM                1
la---            1/4/2021  2:45 PM                2
la---           12/2/2020  6:27 PM           2701 results.xml
```

Each data gathering directive from the original `Collection` XML corresponds to a folder in the output. For example, the first directive was:

```xml
<Collection HRESULT="0">
     <RegistryKey HRESULT="0">HKLM\Software\Policies</RegistryKey>
</Collection>
```

Then, folder `1` will contain the corresponding `export.reg` file.

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

This example produces output similar to the following output:

```text
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

This example script produces a set of files similar to the following set of files, which can be a useful view for an administrator interactively browsing the results without needing to navigate any subfolders or refer to `results.xml` repeatedly:

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
<!-- DiagnosticLog-CspMoreInfo-End -->

<!-- DiagnosticLog-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
