---
title: SFTTRAY Command Reference
description: SFTTRAY Command Reference
author: manikadhiman
ms.assetid: 6fa3a939-b047-4d6c-bd1d-dfb93e065eb2
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# SFTTRAY Command Reference


The Microsoft Application Virtualization (App-V) Client Tray application, sfttray.exe, is the main user interface element of the App-V Client that users will interact with during normal use. This program controls the streaming and starting of all virtual applications and is accessed by right-clicking the icon displayed in the notification area to display the menu of client functions. The menu enables the user to load applications, start a publishing refresh, cancel a request, or change the client to offline mode. The user can also close the Application Virtualization Client Tray application and all active applications by clicking **Exit**.

By default, the icon is displayed whenever a virtual application is started, although you can control this behavior by using SFTTRAY commands. The Application Virtualization Client Tray application also displays a progress bar for each application that is started, as well as status messages about active applications. Clicking the progress bar displays a message that allows you to cancel the loading or starting of an application.

## SFTTRAY Commands


The list of commands and command-line switches can be displayed by running the following command from a command window.

**Note**  
There is only one Application Virtualization Client Tray instance for each user context, so if you start a new SFTTRAY command, it will be passed to the program that is already running.



`Sfttray.exe /?`

### Command Usage

`Sfttray.exe [/HIDE | /SHOW]`

`Sfttray.exe [/HIDE | /SHOW] [/QUIET] [/EXE alternate-exe] /LAUNCH app [args]`

`Sfttray.exe [/HIDE | /SHOW] [/QUIET] /LOAD app [/SFTFILE sft]`

`Sfttray.exe [/HIDE | /SHOW] [/QUIET] /LOADALL`

`Sfttray.exe [/HIDE | /SHOW] [/QUIET] /REFRESHALL`

`Sfttray.exe [/HIDE | /SHOW] [/QUIET] /LAUNCHRESULT <UNIQUE ID>  /LAUNCH app [args]`

`Sfttray.exe /EXIT`

### Command-Line Switches

The SFTTRAY command-line switches are described in the following table.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Switch</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>/HIDE</p></td>
<td align="left"><p>Hides the SFTTRAY icon in the Windows notification area.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/SHOW</p></td>
<td align="left"><p>Displays the SFTTRAY icon in the Windows notification area.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/QUIET</p></td>
<td align="left"><p>Supports unattended usage by preventing errors from displaying message boxes that require user acknowledgement.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/EXE &lt;alternate-exe&gt;</p></td>
<td align="left"><p>Used with /LAUNCH to specify that an executable program is to be started in the virtual environment when a virtual application is started in place of the target file specified in the OSD.</p>
<div class="alert">
<strong>Note</strong><br/><p>For example, use “SFTTRAY.EXE /EXE REGEDIT.EXE /LAUNCH &lt;app&gt;” to enable you to examine the registry of the virtual environment in which the application is running.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td align="left"><p>/LAUNCH &lt;app&gt; [&lt;args&gt;]</p></td>
<td align="left"><p>Starts a virtual application. Specify the name and version of an application or the path to an OSD file. Optionally, command-line arguments can be passed to the virtual application.</p>
<div class="alert">
<strong>Note</strong><br/><p>Use the command “SFTMIME.EXE /QUERY OBJ:APP /SHORT” to obtain a list of the names and versions of available virtual applications.</p>
</div>
<div>

</div></td>
</tr>
<tr class="even">
<td align="left"><p>/LOAD</p></td>
<td align="left"><p>Loads or imports a virtual application.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/LOADALL</p></td>
<td align="left"><p>Loads all applications into cache.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/REFRESHALL</p></td>
<td align="left"><p>Starts a publishing refresh for all applications.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/LAUNCHRESULT &lt;UNIQUE ID&gt;</p></td>
<td align="left"><p>Returns the launch result code to the process that launches sfttray.exe by using a global event and a memory mapped file that are based on the specified root name for the UNIQUE ID.¹</p></td>
</tr>
<tr class="even">
<td align="left"><p>/SFTFILE &lt;sft&gt;</p></td>
<td align="left"><p>Optional switch used with /LOAD to specify the path to the application’s SFT file. If specified, the application is imported rather than loaded.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/EXIT</p></td>
<td align="left"><p>Closes the SFTTRAY program and all active virtual applications and removes the icon from the Windows notification area.</p></td>
</tr>
</tbody>
</table>



**Note**  
¹ The */LAUNCHRESULT* command line parameter provides a means for the process that launches sfttray.exe to specify the root name for a global event and a memory mapped file that are used to return the launch result code to the process. The unique identifier name should start with “SFT-” to prevent the event name from getting virtualized when the launching process is invoked within a virtual environment. The memory mapped region will be 64 bits in size.

To use this parameter, the launching process creates an event with the name “&lt;UNIQUE ID&gt;-result\_event”, a memory mapped file with the name “&lt;UNIQUE ID&gt;-result\_value”, and optionally an event with the name “&lt;UNIQUE ID&gt;-shutdown\_event”, and then the launching process launches sfttray.exe and waits on the event to be signaled. After the event “&lt;UNIQUE ID&gt;-result\_event” is signaled, the launching process retrieves the 64-bit return code from the memory mapped region.

If the optional event “&lt;UNIQUE ID&gt;-shutdown\_event” exists when the virtual application exits, sfttray.exe opens and signals the event. The launching process waits on this shutdown event if it needs to determine when the virtual application exits.











