---
title: App-V Client Registry Values
description: App-V Client Registry Values
author: dansimp
ms.assetid: 46af5209-9762-47b9-afdb-9a2947e013f7
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# App-V Client Registry Values


The Microsoft Application Virtualization (App-V) client stores its configuration in the registry. You can gather some useful information about the client if you understand the format of data in the registry. You can also configure many client actions by changing registry entries. This topic lists all the Application Virtualization (App-V) client registry keys and explains their uses.

**Important**  
On a computer running a 64-bit operating system, the keys and values described in the following sections will be under HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\SoftGrid\\4.5\\Client.

 

## Configuration Key


The following table provides information about the registry values associated with the HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Configuration key.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name</th>
<th align="left">Type</th>
<th align="left">Data (Examples)</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>ProductName</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>Microsoft Application Virtualization Desktop Client</p></td>
<td align="left"><p>Do not modify.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Version </p></td>
<td align="left"><p>String </p></td>
<td align="left"><p>4.5.0.xxx </p></td>
<td align="left"><p>Do not modify. </p></td>
</tr>
<tr class="odd">
<td align="left"><p>Drivers </p></td>
<td align="left"><p>String </p></td>
<td align="left"><p>Sftfs.sys </p></td>
<td align="left"><p>If this key value is present, it contains the name of the driver that caused a stop error the last time the core was starting. After you have fixed the stop error, you must delete this key value so that sftlist can start.</p></td>
</tr>
<tr class="even">
<td align="left"><p>InstallPath </p></td>
<td align="left"><p>String </p></td>
<td align="left"><p>Default=C:\Program Files\Microsoft Application Virtualization Client</p></td>
<td align="left"><p>The location where the client is installed. Do not modify. </p></td>
</tr>
<tr class="odd">
<td align="left"><p>LogFileName </p></td>
<td align="left"><p>String </p></td>
<td align="left"><p>Default=CSIDL_COMMON_APPDATA\Microsoft\Application Virtualization Client\sftlog.txt</p></td>
<td align="left"><p>The path and name for the client log file.</p>
<div class="alert">
<strong>Note</strong>  
<p>If you are running an earlier version than App-V 4.6, SP1 and you modify the log file name or location, you must restart the sftlist service for the change to take effect.</p>
</div>
<div>
 
</div>
<p></p></td>
</tr>
<tr class="even">
<td align="left"><p>LogMinSeverity </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>Default=4, Informational</p></td>
<td align="left"><p>Controls which messages are written to the log. The value indicates a threshold of what is logged—everything less than or equal to that value is logged. For example, a value of 0x3 (Warning) indicates that Warnings (0x3), Errors (0x2), and Critical Errors (0x1) are logged.</p>
<p>Value Range: 0x0 = None, 0x1 = Critical, 0x2 = Error, 0x3 = Warning, 0x4 = Information (Default), 0x5 = Verbose.</p>
<p>The log level is configurable from the Application Virtualization (App-V) client console and from the command prompt. At a command prompt, the command sftlist.exe /verboselog will increase the log level to verbose. For more information on command-line details see</p>
<p>https://go.microsoft.com/fwlink/?LinkId=141467https://go.microsoft.com/fwlink/?LinkId=141467</p>
<p>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>LogRolloverCount</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=4</p></td>
<td align="left"><p>Defines the number of backup copies of the log file that are kept when it is reset. The valid range is 0–9999. The default is 4. A value of 0 means no copies will be kept.</p></td>
</tr>
<tr class="even">
<td align="left"><p>LogMaxSize</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=256</p></td>
<td align="left"><p>Defines the maximum size in megabytes (MB) that the log file can grow before being reset. The default size is 256 MB. When this size is reached, a log reset will be forced on the next write attempt.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SystemEventLogLevel</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=0x4 (App-V 4.5)</p>
<p>Default=0x3 (App-V 4.6)</p></td>
<td align="left"><p>Indicates the logging level at which log messages are written to the NT event log. The value indicates a threshold of what is logged—that is, everything equal to or less than that value is logged. For example, a value of 0x3 (Warning) indicates that Warnings (0x3), Errors (0x2), and Critical Errors (0x1) are logged.</p>
<p>Value Range</p>
<p>0x0 = None</p>
<p>0x1 = Critical</p>
<p>0x2 = Error</p>
<p>0x3 = Warning</p>
<p>0x4 = Information (Default)</p>
<p>0x5 = Verbose</p></td>
</tr>
<tr class="even">
<td align="left"><p>AllowIndependentFileStreaming</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=0</p></td>
<td align="left"><p>Indicates whether streaming from file will be enabled regardless of how the client has been configured with the APPLICATIONSOURCEROOT parameter. If set to FALSE, the transport will not enable streaming from files even if the OSD HREF or the APPLICATIONSOURCEROOT parameter contains a file path.</p>
<p>0x0=False (default)</p>
<p>0x1=True</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ApplicationSourceRoot</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>rtsps://mainserver:322/prodapps</p>
<p>https://mainserver:443/prodapps</p>
<p>file://\\uncserver\share\prodapps</p>
<p>file://\\uncserver\share</p></td>
<td align="left"><p>Enables an administrator or electronic software distribution (ESD) system to ensure application loading is performed according to the topology management scheme. Use this key value to override the OSD CODEBASE for the HREF element (for example, the source location) for an application. Application Source Root supports URLs and Universal Naming Convention (UNC) path formats.</p>
<p>The correct format for the URL path is protocol://servername:[port][/path][/], where port and path are optional. If a port is not specified, the default port for the protocol is used. Only the protocol://server:port portion of the OSD URL is replaced. </p>
<p>The correct format for the UNC path is \\computername\sharefolder\[folder][\], where folder is optional. The computer name can be a fully qualified domain name (FQDN) or an IP address, and sharefolder can be a drive letter. Only the \\computername\sharefolder or drive letter portion of the OSD path is replaced. </p></td>
</tr>
<tr class="even">
<td align="left"><p>OSDSourceRoot</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>\\computername\sharefolder\resource</p>
<p>\\computername\content</p>
<p>C:\foldername</p>
<p>http://computername/productivity/</p>
<p>https://computername/productivity/</p></td>
<td align="left"><p>Enables an administrator to specify a source location for OSD file retrieval for a sequenced application package during publication. Acceptable formats for the OSDSourceRoot include UNC paths and URLs (http or https).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>IconSourceRoot</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>\\computername\sharefolder\resource</p>
<p>\\computername\content</p>
<p>C:\foldername</p>
<p>http://computername/productivity/</p>
<p>https://computername/productivity/</p></td>
<td align="left"><p>Enables an administrator to specify a source location for icon file retrieval for a sequenced application package during publication. Acceptable formats for the IconSourceRoot include UNC paths and URLs (http or https).</p></td>
</tr>
<tr class="even">
<td align="left"><p>AutoLoadTriggers</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=5</p></td>
<td align="left"><p>AutoLoad is a client runtime policy configuration parameter that enables the secondary feature block of a virtualized application to be streamed to the client automatically in the background. The AutoLoad triggers are flags to indicate events that initiate auto-loading of applications. AutoLoad implicitly uses background streaming to enable the application to be fully loaded into cache. The primary feature block will be loaded first, and the remaining feature blocks will be loaded in the background to enable foreground operations, such as user interaction with applications, to take place and provide optimal perceived performance.</p>
<p>Bit mask values:</p>
<p>(0) Never: No bits are set (value is 0), no auto loading will be performed, because there are no triggers set.</p>
<p>(1) OnLaunch: Loading starts when a user starts an application.</p>
<p>(2) OnRefresh: Loading starts when the application is published. This occurs whenever the package record is added or updated—for example, when a publishing refresh occurs.</p>
<p>(4) OnLogin: Loading starts when a user logs in.</p>
<p>(5) OnLaunch and OnLogin: Default.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>AutoLoadTarget</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=1</p></td>
<td align="left"><p>Indicates what will be auto-loaded when any given AutoLoad triggers occur. Bit mask values:</p>
<p>(0) None: No auto-loading, regardless of what triggers may be set.</p>
<p>(1) PreviouslyUsed (default): If any AutoLoad trigger is enabled, load only the packages where at least one application in the package has been previously used—that is, started or precached.</p>
<p>(2) All: If any AutoLoad trigger is enabled, all applications in the package (per package) or all packages (set for client) will be automatically loaded, whether or not they have ever been started.</p></td>
</tr>
<tr class="even">
<td align="left"><p>RequireAuthorizationIfCached</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=1</p></td>
<td align="left"><p>Indicates that authorization is always required, whether or not an application is already in cache. Possible values:</p>
<p>0=False: Always try to connect to the server. If a connection to the server cannot be established, the client still allows the user to launch an application that has previously been loaded into cache.</p>
<p>1=True (default): Application always must be authorized at startup. For RTSP streamed applications, the user authorization token is sent to the server for authorization. For file-based applications, file ACLs control whether a user may access the application.</p>
<p>Restart the sftlist service for the change to take effect.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>UserDataDirectory </p></td>
<td align="left"><p>String </p></td>
<td align="left"><p>%APPDATA%</p></td>
<td align="left"><p>Location where the icon cache and user settings are stored.</p></td>
</tr>
<tr class="even">
<td align="left"><p>GlobalDataDirectory </p></td>
<td align="left"><p>String </p></td>
<td align="left"><p>C:\Users\Public\Documents </p></td>
<td align="left"><p>Directory to use for global App-V data, including caches for OSD files, icon files, shortcut information, and SystemGuard resources such as .ini files.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>AllowCrashes </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>0 or 1 </p></td>
<td align="left"><p>Default=0: A value of 0 means that the client tries to catch internal program exceptions so that other user applications can recover and continue when a crash happens. A value of 1 means that the client allows the internal program exceptions to occur so that they can be captured in a debugger.</p></td>
</tr>
<tr class="even">
<td align="left"><p>CoreInternalTimeout </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>60</p></td>
<td align="left"><p>Time-out in seconds for internal IPC requests between core and front-end. Do not modify. </p></td>
</tr>
<tr class="odd">
<td align="left"><p>DefaultSuiteCombineTime </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>10</p></td>
<td align="left"><p>This value is used to indicate how soon after being started that a program can shut down and not generate any error messages when another application in the same suite is running. </p></td>
</tr>
<tr class="even">
<td align="left"><p>SerializedSuiteLaunchTimeout </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>Default=60000</p></td>
<td align="left"><p>Defines how long in milliseconds the client will wait as it tries to serialize program starts in the same suite. If the client times out, the program start will continue but it will not be serialized. </p></td>
</tr>
<tr class="odd">
<td align="left"><p>ScriptTimeout </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>300</p></td>
<td align="left"><p>Default time-out in seconds for scripts in OSD file if WAIT=TRUE. You can specify per-script time-outs with TIMEOUT instead of WAIT. A value of 0 means no wait, and 0xFFFFFFFF means wait forever. </p></td>
</tr>
<tr class="even">
<td align="left"><p>LaunchRecordLogPath </p></td>
<td align="left"><p>String </p></td>
<td align="left"><p></p></td>
<td align="left"><p>If, under either HKLM or HKCU, this value contains a valid path to a log file, SFTTray will write to this log when programs start, shut down, fail to launch, and enter or exit disconnected mode.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>LaunchRecordMask </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>0x1A (26) log launch errors and disconnected mode entry and exit activity.</p>
<p>0x1F (31) logs everything.</p>
<p>0x0 (0) logs nothing. </p></td>
<td align="left"><p>Specifies which of the five events are logged (bitmask values):</p>
<p>1 for program starts</p>
<p>2 for launch failure errors</p>
<p>4 for shutdowns</p>
<p>8 for entering disconnected mode</p>
<p>16 for exiting disconnected mode to reconnect to a server</p>
<p>Add any combination of those numbers to turn on the respective messages. Defaults to 0x1F if not in registry. </p></td>
</tr>
<tr class="even">
<td align="left"><p>LaunchRecordWriteTimeout </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>Default=3000</p></td>
<td align="left"><p>Specifies in milliseconds how long the tray will wait when trying to write to the launch record log if another process is using it.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ImportSearchPath </p></td>
<td align="left"><p>String </p></td>
<td align="left"><p>d:\files\;C:\documents and settings\user1\SFTs </p></td>
<td align="left"><p>A semicolon delimited list of up to five directories to search for portable SFT files before prompting the user to select a directory. Trailing backslash in paths is optional. This value is not present by default and must be set manually.</p></td>
</tr>
<tr class="even">
<td align="left"><p>UserImportPath</p></td>
<td align="left"><p>String </p></td>
<td align="left"><p>D:\SFTs\ </p></td>
<td align="left"><p>Valid only under HKCU. The last location the user browsed to while finding a SFT file for package import. Set automatically if the SFT is found successfully. This is used on successive imports when trying to automatically locate SFT files.</p></td>
</tr>
</tbody>
</table>

 

## Shared Key


The HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Shared key controls values that are shared across App-V components. The following table provides information about the registry values associated with the Shared key.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name </th>
<th align="left">Type </th>
<th align="left">Data (Examples) </th>
<th align="left">Description </th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>DumpPath </p></td>
<td align="left"><p>String </p></td>
<td align="left"><p>Default=C:\ </p></td>
<td align="left"><p>Default path to create dump files when generating a minidump on an exception. This defaults to C:\ if not specified. The Client installer sets this key to the &lt;App Virtualization global data directory&gt;\Dumps. The Sequencer installer sets this key to the installation directory. </p></td>
</tr>
<tr class="even">
<td align="left"><p>DumpPathSizeLimit </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>1000</p></td>
<td align="left"><p>Specifies the maximum total amount of disk space in megabytes that can be used to store minidumps. Default = 1000 MB.</p></td>
</tr>
</tbody>
</table>

 

## Network Key


The HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Network key controls a variety of network-related parameters. This key is primarily used by the network transport agent. The following table provides information about the registry values associated with the Network key.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name </th>
<th align="left">Type </th>
<th align="left">Data (Examples) </th>
<th align="left">Description </th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Online</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=1</p></td>
<td align="left"><p>Enables or disables offline mode. If set to 0, the client will not communicate with App-V Management Servers or publishing servers. In disconnected operations, the client can start a loaded application even when it is not connected to an App-V Management Server. In offline mode, the client does not attempt to connect to an App-V Management Server or publishing server. You must allow disconnected operations to be able to work offline. Default value is 1 enabled (online), and 0 is disabled (offline).</p></td>
</tr>
<tr class="even">
<td align="left"><p>AllowDisconnectedOperation </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>Default=1</p></td>
<td align="left"><p>Enables or disables disconnected operation. Default value is 1 enabled, and 0 is disabled. When disconnected operations are enabled, the App-V client can start a loaded application even when it is not connected to an App-V Management Server.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>FastConnectTimeout</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=1000</p></td>
<td align="left"><p>This value specifies the TCP connect time-out in milliseconds to determine when to go into disconnected operations mode. This value can be used to override the default ConnectTimeout of 20 seconds (App-V connect time-out for network transactions) or the system’s TCP time-out of approximately 25 seconds. This brings the client into disconnected operations mode quickly. Applied on the next connect.</p></td>
</tr>
<tr class="even">
<td align="left"><p>LimitDisconnectedOperation</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=1 </p></td>
<td align="left"><p>Applicable only if AllowDisconnectedOperation is 1, enabled. This value determines whether there will be a time limit for how long the client will be allowed to operate in disconnected operations. 1=limited. 0=unlimited.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>DOTimeoutMinutes</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=129,600</p></td>
<td align="left"><p>Indicates how many minutes an application may be used in disconnected operation mode.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>The valid values are 1–999,999 in days expressed in minutes (1–1,439,998,560 minutes). The default value is 90 days or 129,600 minutes.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Protocol</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=8</p></td>
<td align="left"><p>Default protocol to use (TCP vs SSL). Configure in Options Dialog.</p></td>
</tr>
<tr class="even">
<td align="left"><p>ReadTimeout</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>20</p></td>
<td align="left"><p>Read time-out for network transactions, in seconds. Do not modify.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>WriteTimeout</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>20</p></td>
<td align="left"><p>Write time-out for network transactions, in seconds. Do not modify.</p></td>
</tr>
<tr class="even">
<td align="left"><p>ConnectTimeout</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>20</p></td>
<td align="left"><p>Connect time-out for network transactions, in seconds. Do not modify.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ReestablishmentRetries</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>3</p></td>
<td align="left"><p>The number of times to try to reestablish a dropped session.</p></td>
</tr>
<tr class="even">
<td align="left"><p>ReestablishmentInterval</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>15</p></td>
<td align="left"><p>The number of seconds to wait between tries to reestablish a dropped session.</p></td>
</tr>
</tbody>
</table>

 

## Http Key


The HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Network\\Http key controls the parameters that are related to Http streaming. This key is used primarily by the network transport agent. The following table provides information about the registry values that are associated with the Http key.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name </th>
<th align="left">Type </th>
<th align="left">Data (Examples) </th>
<th align="left">Description </th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>LaunchIfNotFound</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=0</p></td>
<td align="left"><p>Controls the behavior of HTTP streaming when a connection to the HTTP server can be established and the package file no longer exists on the HTTP server. If the value does not exist or if it is not set to 1, the App-V client does not let you launch an application that has previously been loaded into cache.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1</p></td>
<td align="left"><p>If this value is set to 1, the App-V client lets you launch an application that has previously been loaded into cache.</p></td>
</tr>
</tbody>
</table>

 

## File System Key


The values that are contained under the HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\AppFS key control the file system parameters for App-V. The following table provides information about the registry values associated with the AppFS key.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name </th>
<th align="left">Type </th>
<th align="left">Data (Examples) </th>
<th align="left">Description </th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>FileSize </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>4096</p></td>
<td align="left"><p>Maximum size in megabytes of file system cache file. If you change this value in the registry, you must set State to 0 and reboot. </p></td>
</tr>
<tr class="even">
<td align="left"><p>FileName </p></td>
<td align="left"><p>String </p></td>
<td align="left"><p>C:\Users\Public\Documents\SoftGrid Client\sftfs.fsd </p></td>
<td align="left"><p>Location of file system cache file. If you change this value in the registry, you must either leave FileSize the same and reboot or set State to 0 and reboot. </p></td>
</tr>
<tr class="odd">
<td align="left"><p>DriveLetter </p></td>
<td align="left"><p>String </p></td>
<td align="left"><p>Q: </p></td>
<td align="left"><p>Drive where App-V file system will be mounted, if it is available. This value is set either by the listener or the installer, and it is read by the file system. </p></td>
</tr>
<tr class="even">
<td align="left"><p>State </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>0x100 </p></td>
<td align="left"><p>State of file system. Set to 0 and reboot to completely clear the file system cache. </p></td>
</tr>
<tr class="odd">
<td align="left"><p>FileSystemStorage </p></td>
<td align="left"><p>String </p></td>
<td align="left"><p>C:\Profiles\Joe\SG </p></td>
<td align="left"><p>Path for symlinks, set under HKCU. Do not modify (use data directory under Configuration to change). </p></td>
</tr>
<tr class="even">
<td align="left"><p>GlobalFileSystemStorage </p></td>
<td align="left"><p>String </p></td>
<td align="left"><p>C:\Users\Public\Documents\SoftGrid Client\AppFS Storage </p></td>
<td align="left"><p>Path for global file system data. Do not modify. </p></td>
</tr>
<tr class="odd">
<td align="left"><p>MaxPercentToLockInCache </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>Default=90 </p></td>
<td align="left"><p>Specifies the maximum percentage of the file system cache file that can be locked. Do not modify.</p></td>
</tr>
<tr class="even">
<td align="left"><p>UnloadLeastRecentlyUsed</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=1</p></td>
<td align="left"><p>The file system cache space management feature uses a Least Recently Used (LRU) algorithm and is enabled by default. If the space that is required for a new package would exceed the available free space in the cache, the App-V Client uses this feature to determine which, if any, existing packages it can delete from the cache to make room for the new package. The client deletes the package with the oldest last-accessed date if it is older than the value specified in the MinPkgAge registry value. Values are 0 (disabled) and 1 (default, enabled).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MinPackageAge</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>1</p></td>
<td align="left"><p>To determine when the package can be selected for discard, set this registry value to equal the minimum number of days you want to elapse since the package was last accessed. Packages that have been used more recently are not discarded.</p></td>
</tr>
</tbody>
</table>

 

## Permissions Key


To help to prevent users from making mistakes, administrators can use the HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Permissions key to control access to some actions for non-administrative users—for example, to prevent users from accidentally unloading programs. Users with administrative rights can give themselves any of these permissions. On shared systems, such as a Remote Desktop Session Host (RD Session Host) server (formerly Terminal Server) system, be careful when granting additional permissions to users because some of these permissions would enable users to control the applications used by all users on the system. Possible values for these settings are 1 (allow) and 0 (disallow).

The Permissions key settings control all interfaces that enable the named actions. This includes the Options Dialog, SFTTray, and SFTMime. These settings do not affect administrators. The following table provides information about the registry values associated with the Permissions key.

Name 
Type 
Data (Examples) 
Description 
ChangeFSDrive

DWORD

Default=0

A value of 1 allows users to pick a different drive letter to be used as the file system drive.

ChangeCacheSize

DWORD

Default=0

A value of 1 allows users to change the cache size.

ChangeLogSettings

DWORD

Default=0

A value of 1 allows users to modify the log level, change its location, and reset it through the user interface.

AddApp

DWORD

Default=0

A value of 1 allows users to add applications explicitly. This does not affect applications that are added through publishing refresh nor does it prevent users from starting (and thereby implicitly adding) applications that have not already been added. Values are 0 or 1.

LoadApp 

DWORD 

0

Does not allow a user to load an application. This is the default for RD Session Hosts. If you are a mobile user, you might want to fully load your applications in the cache to use them during disconnected operation or offline mode. To stream applications from the App-V Management Server or the App-V Streaming Server, you must be connected to a server to load applications.

1

Allows a user to load an application. This is the default for Windows desktops. 

UnloadApp 

DWORD 

0

Does not allow a user to unload an application. When you load or unload a package, all the applications in the package are loaded into or removed from cache.

1

Allows a user to unload an application. 

LockApp 

DWORD 

0

Does not allow a user to lock and unlock an application. This is the default for RD Session Hosts. A locked application cannot be removed from the cache to make room for new applications. To remove a locked application from the App-V Desktop or Client for Remote Desktop Services (formerly Terminal Services) cache, you must unlock it.

1

Allows a user to lock and unlock an application. This is the default for Windows Desktops. 

ManageTypes 

DWORD 

0

Does not allow a user to add, edit, or remove file type associations for that User alone. This is the default for RD Session Hosts. 

1

Allows a user to add, edit, and remove file type associations for that user only and not globally. This is the default for Windows Desktops. 

RefreshServer 

DWORD 

0

Does not allow a user to trigger a refresh of MIME settings. This is the default for RD Session Hosts. 

1

Enables a user to trigger a refresh of MIME settings. This is the default for Windows Desktops. 

UpdateOSDFile

DWORD

Default= 0

A value of 1 enables a user to use a modified OSD file.

ImportApp 

DWORD 

0

Does not allow a user to import applications into cache. The difference between Load and Import is that when a Load is triggered, the client gets the package from the currently configured location contained in the OSD, ASR, or Override URL. When using Import, a location to get the package from must be specified. 

1

Allows a user to import applications into cache. 

ChangeRefreshSettings

DWORD

Default=0

A value of 1 allows users to modify the refresh settings for servers (refresh on login and periodic refresh). This does not imply that the user can modify other server settings (path, host, and so on).

ManageServers

DWORD

Default=0

A value of 1 allows the user to add, edit, and remove servers, except for editing the refresh settings, which is controlled by the ChangeRefreshSettings permission.

PublishShortcut

DWORD

Default=0

A value of 1 allows users to publish shortcuts through the user interface. This does not affect shortcuts that are published during a publishing refresh.

ViewAllApplications

DWORD

Default=0

A value of 1 displays all applications through the user interface; otherwise, only the user’s applications are displayed.

RepairApp

DWORD

Default=1

A value of 1 allows the user to use the Repair action on applications in SFTMime or the Client Management Console. When you repair an application, you remove any custom user settings and restore the default settings. This action does not change or delete shortcuts or file type associations, and it does not remove the application from cache.

ClearApp

DWORD

Default=1

A value of 1 allows the user to use the Clear action on applications in SFTMime or the Client Management Console. When you clear an application from the console, you can no longer use that application. However, the application remains in cache and is still available to other users on the same system. After a publishing refresh, the cleared applications will again become available to you.

DeleteApp

DWORD

Default=0

A value of 1 allows the user to use the Delete action on applications in SFTMime or the Client Management Console. When you delete an application, the selected application will no longer be available to any users on that client. Shortcuts and file type associations are deleted and the application is deleted from cache. However, if another application refers to data in the file system cache or settings data for the selected application, these items will not be deleted.

After a publishing refresh, the deleted applications will again become available to you.

ToggleOfflineMode

DWORD

A value of 1 allows the users to select to run the client in Offline Mode. In Offline Mode, the Application Virtualization client can start a loaded application even when it is not connected to an Application Virtualization Server.

 

## Custom Settings


The HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\CustomSettings key contains values specific to front-end components. All custom settings are stored as strings. The following table provides information about the registry values associated with the CustomSettings key.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name </th>
<th align="left">Type </th>
<th align="left">Data (Examples) </th>
<th align="left">Description </th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>TrayErrorDelay </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>Default=30 </p></td>
<td align="left"><p>Time in seconds that the Application Virtualization notification area will display error messages like &quot;Launch failed&quot;. Minimum value of 1. </p></td>
</tr>
<tr class="even">
<td align="left"><p>TraySuccessDelay </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>Default=10 </p></td>
<td align="left"><p>Time in seconds that the appvmed notification area will display success messages like &quot;Word launched&quot; or &quot;Excel shut down&quot;. If 0, those messages will be suppressed. </p></td>
</tr>
<tr class="odd">
<td align="left"><p>TrayVisibility</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=0</p></td>
<td align="left"><p>0=Show Tray when virtualized applications are in use.</p>
<p>1=Show Tray always.</p>
<p>2=Never show Tray.</p></td>
</tr>
<tr class="even">
<td align="left"><p>TrayShowRefresh</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p></p></td>
<td align="left"><p>When present and set to a value of 1, allows menu item Refresh Applications to be displayed on the Tray menu and is accessible by the user.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>TrayShowLoad</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p></p></td>
<td align="left"><p>When present and set to a value of 1, allows menu item Load Applications to be displayed on the Tray menu and is accessible by the user.</p></td>
</tr>
</tbody>
</table>

 

## Reporting Settings


The HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Reporting key contains values specific to reporting to an App-V Management Server. The following table provides information about the registry values associated with the Reporting key.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name </th>
<th align="left">Type </th>
<th align="left">Data (Examples) </th>
<th align="left">Description </th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>DataCacheLimit</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=20</p></td>
<td align="left"><p>This value specifies the maximum size in megabytes (MB) of the XML cache for storing reporting information. The size applies to the cache in memory. When the limit is reached, the log file will roll over. When a new record is added (bottom of the list), one or more of the oldest records (top of the list) will be deleted to make room. A warning will be logged to the Client log and the event log the first time this occurs, and it will not be logged again until after the cache has been successfully cleared on transmission and the log has filled up again.</p></td>
</tr>
<tr class="even">
<td align="left"><p>DataBlockSize</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=65536</p></td>
<td align="left"><p>This value specifies the maximum size in bytes to transmit to the server at once on publishing refresh, to avoid permanent transmission failures when the log has reached a significant size. The default value is 65536. When transmitting report data to the server, one block of application records—less than or equal to the block size in bytes of XML data—will be removed from the cache and sent to the server. Each block will have the general Client data and global package list data prepended, and these will not factor into the block size calculations; the potential exists for an extremely large package list to result in transmission failures over low bandwidth or unreliable connections.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Application Virtualization Client Reference](application-virtualization-client-reference.md)

 

 





