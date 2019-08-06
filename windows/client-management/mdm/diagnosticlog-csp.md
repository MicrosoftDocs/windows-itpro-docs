---
title: DiagnosticLog CSP
description: DiagnosticLog CSP
ms.assetid: F76E0056-3ACD-48B2-BEA1-1048C96571C3
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# DiagnosticLog CSP


The DiagnosticLog configuration service provider (CSP) is used for generating and collecting diagnostic information from the device: Event Tracing for Windows (ETW) log files and current MDM configured state of the device.

DiagnosticLog CSP supports the following type of event tracing:

-   Collector-based tracing
-   Channel-based tracing

### Collector-based tracing

This type of event tracing simultaneously collects event data from a collection of registered ETW providers.

An event collector is a container of registered ETW providers. Users can add or delete a collector node and register or unregister multiple providers in this collector.

The ***CollectorName*** must be unique within the CSP and must not be a valid event channel name or a provider GUID.

The DiagnosticLog CSP maintains a log file for each collector node and the log file is overwritten if a start command is triggered again on the same collector node.

For each collector node, the user can:

-   Start or stop the session with all registered and enabled providers
-   Query session status
-   Change trace log file mode
-   Change trace log file size limit

The configurations log file mode and log file size limit does not take effect while trace session is in progress. These are applied when user stops the current session and then starts it again for this collector.

For each registered provider in this collector, the user can:

-   Specify keywords to filter events from this provider
-   Change trace level to filter events from this provider
-   Enable or disable the provider in the trace session

The changes on **State**, **Keywords** and **TraceLevel** takes effect immediately while trace session is in progress.

> **Note**  Microsoft-WindowsPhone-Enterprise-Diagnostics-Provider (GUID - 3da494e4-0fe2-415C-b895-fb5265c5c83b) has the required debug resource files built into Windows OS, which will allow the logs files to be decoded on the remote machine. Any other logs may not have the debug resources required to decode.

 

### Channel-based tracing

The type of event tracing exports event data from a specific channel. This is only supported on the desktop.

Users can add or delete a channel node using the full name, such as Microsoft-Windows-AppModel-Runtime/Admin.

The DiagnosticLog CSP maintains a log file for each channel node and the log file is overwritten if a start command is triggered again on the same channel node.

For each channel node, the user can:

-   Export channel event data into a log file (.evtx)
-   Enable or disable the channel from Event Log service to allow or disallow event data being written into the channel
-   Specify an XPath query to filter events while exporting the channel event data

For more information about using DiagnosticLog to collect logs remotely from a PC or mobile device, see [Diagnose MDM failures in Windows 10](diagnose-mdm-failures-in-windows-10.md).

Here are the links to the DDFs:

-   [DiagnosticLog CSP version 1.2](diagnosticlog-ddf.md#version-1-2)
-   [DiagnosticLog CSP version 1.3](diagnosticlog-ddf.md#version-1-3)

The following diagram shows the DiagnosticLog configuration service provider in tree format.

![diagnosticlog csp diagram](images/provisioning-csp-diagnosticlog.png)

<a href="" id="--vendor-msft-diagnosticlog"></a>**./Vendor/MSFT/DiagnosticLog**  
The root node for the DiagnosticLog configuration service provider.

The following steps describe the process for gathering diagnostics using this CSP.

1.  Specify a *CollectorName* for the container of the target ETW providers.
2.  (Optional) Set logging and log file parameters using the following options:

    -   **TraceLogFileMode**
    -   **LogFileSizeLimitMB**

    Each of these are described later in this topic.

3.  Indicate one or more target ETW providers by supplying its *ProviderGUID* to the Add operation of EtwLog/Collectors/*CollectorName*/Providers/*ProviderGUID*.
4.  (Optional) Set logging and log file parameters using the following options:

    -   **TraceLevel**
    -   **Keywords**

    Each of these are described later in this topic.

5.  Start logging using **TraceControl** EXECUTE command “START”
6.  Perform actions on the target device that will generate activity in the log files.
7.  Stop logging using **TraceControl** EXECUTE command “STOP”
8.  Collect the log file located in the `%temp%` folder using the method described in [Reading a log file](#reading-a-log-file)

<a href="" id="etwlog"></a>**EtwLog**  
Node to contain the Error Tracing for Windows log.

The supported operation is Get.

<a href="" id="etwlog-collectors"></a>**EtwLog/Collectors**  
Interior node to contain dynamic child interior nodes for active providers.

The supported operation is Get.

<a href="" id="etwlog-collectors-collectorname"></a>**EtwLog/Collectors/**<strong>*CollectorName*</strong>  
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
|-------|-------------|
| 0     | Stopped     |
| 1     | Started     |

 

<a href="" id="etwlog-collectors-collectorname-tracelogfilemode"></a>**EtwLog/Collectors/*CollectorName*/TraceLogFileMode**  
Specifies the log file logging mode.

The data type is an integer.

Supported operations are Get and Replace.

The following table lists the possible values:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Value</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>EVENT_TRACE_FILE_MODE_SEQUENTIAL (0x00000001)</p></td>
<td><p>Writes events to a log file sequentially; stops when the file reaches its maximum size.</p></td>
</tr>
<tr class="even">
<td><p>EVENT_TRACE_FILE_MODE_CIRCULAR (0x00000002)</p></td>
<td><p>Writes events to a log file. After the file reaches the maximum size, the oldest events are replaced with incoming events.</p></td>
</tr>
</tbody>
</table>

 

<a href="" id="etwlog-collectors-collectorname-tracecontrol"></a>**EtwLog/Collectors/*CollectorName*/TraceControl**  
Specifies the logging and report action state.

The data type is a string.

The following table lists the possible values:

| Value | Description        |
|-------|--------------------|
| START | Start log tracing. |
| STOP  | Stop log tracing   |

 

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

<a href="" id="etwlog-collectors-collectorname-providers-providerguid"></a>**EtwLog/Collectors/*CollectorName*/Providers/**<strong>*ProviderGUID*</strong>  
Dynamic nodes to represent active provider configuration per provider GUID.

> **Note**  Microsoft-WindowsPhone-Enterprise-Diagnostics-Provider (GUID - 3da494e4-0fe2-415C-b895-fb5265c5c83b) has the required debug resource files built into Windows OS, which will allow the logs files to be decoded on the remote machine. Any other logs may not have the debug resources required to decode.

 

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

The following table lists the possible values.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Value</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1 – TRACE_LEVEL_CRITICAL</p></td>
<td><p>Abnormal exit or termination events</p></td>
</tr>
<tr class="even">
<td><p>2 – TRACE_LEVEL_ERROR</p></td>
<td><p>Severe error events</p></td>
</tr>
<tr class="odd">
<td><p>3 – TRACE_LEVEL_WARNING</p></td>
<td><p>Warning events such as allocation failures</p></td>
</tr>
<tr class="even">
<td><p>4 – TRACE_LEVEL_INFORMATION</p></td>
<td><p>Non-error events, such as entry or exit events</p></td>
</tr>
<tr class="odd">
<td><p>5 – TRACE_LEVEL_VERBOSE</p></td>
<td><p>Detailed information</p></td>
</tr>
</tbody>
</table>

 

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

the data type is a string.

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

The following table lists the possible values. Default value is TRUE.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Value</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>TRUE</p></td>
<td><p>Provider is enabled in the trace session.</p></td>
</tr>
<tr class="even">
<td><p>FALSE</p></td>
<td><p>Provider is disables in the trace session.</p></td>
</tr>
</tbody>
</table>

 

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

<a href="" id="etwlog-channels-channelname"></a>**EtwLog/Channels/**<strong>*ChannelName*</strong>  
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

The following table lists the possible values.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Value</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>TRUE</p></td>
<td><p>Channel is enabled.</p></td>
</tr>
<tr class="even">
<td><p>FALSE</p></td>
<td><p>Channel is disabled.</p></td>
</tr>
</tbody>
</table>

 

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

<a href="" id="filedownload"></a>**FileDownload**  
Node to contain child nodes for log file transportation protocols and corresponding actions.

<a href="" id="filedownload-dmchannel"></a>**FileDownload/DMChannel**  
Node to contain child nodes using DM channel for transport protocol.

<a href="" id="filedownload-dmchannel-filecontext"></a>**FileDownload/DMChannel/**<strong>*FileContext*</strong>  
Dynamic interior nodes that represents per log file context.

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

<a href="" id="filedownload-dmchannel-filecontext-datablocks-blocknumber"></a>**FileDownload/DMChannel/*FileContext*/DataBlocks/**<strong>*BlockNumber*</strong>  
The data type is Base64.

The only supported operation is Get.

## Reading a log file


1.  Enumerate log file under **./Vendor/MSFT/DiagnosticLog/FileDownload/DMChannel**
2.  Select a log file in the Enumeration result
3.  Set **BlockSizeKB** per DM server payload limitation
4.  Get **BlockCount** to determine total read request
5.  Set **BlockIndexToRead** to initialize read start point
6.  Get **BlockData** for upload log block
7.  Increase **BlockIndexToRead**
8.  Repeat step 5 to 7 until **BlockIndexToRead == (BlockIndexToRead – 1)**

 

 






