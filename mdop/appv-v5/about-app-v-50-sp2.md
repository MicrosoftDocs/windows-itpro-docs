---
title: About App-V 5.0 SP2
description: About App-V 5.0 SP2
author: v-madhi
ms.assetid: 16ca8452-cef2-464e-b4b5-c10d4630fa6a
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# About App-V 5.0 SP2


App-V 5.0 SP2 provides an improved integrated platform, more flexible virtualization, and powerful management for virtualized applications. For more information see, [App-V 5.0 Overview](https://go.microsoft.com/fwlink/p/?LinkId=325265) (https://go.microsoft.com/fwlink/?LinkId=325265).

## Changes in Standard App-V 5.0 SP2 Functionality


The following sections contain information about the changes in standard functionality for App-V 5.0 SP2.

### <a href="" id="bkmk-sp2-supported-cfg"></a>Support for Windows Server 2012 R2 and Windows 8.1

App-V 5.0 includes support for Windows Server 2012 R2 and Windows 8.1

### <a href="" id="-------------app-v-5-0-sp2-now-supports-folder-redirection-for-the-user-s-roaming-appdata-directory"></a> App-V 5.0 SP2 now supports folder redirection for the user’s roaming AppData directory

App-V 5.0 SP2 supports roaming AppData (%AppData%) folder redirection. For more information, see the [Planning to Use Folder Redirection with App-V](planning-to-use-folder-redirection-with-app-v.md).

### <a href="" id="bkmk-pkg-upgr-pendg-tasks"></a>Package upgrade improvements and pending tasks

In App-V 5.0 SP2, you are no longer prompted to close a running virtual application when a newer version of the package or connection group is published. If a package or connection group is in use when you try to perform a related task, a message displays to indicate that the object is in use, and that the operation will be attempted at a later time.

Tasks that have been placed in a pending state will be performed according to the following rules:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task type</th>
<th align="left">Applicable rule</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>User-based task, e.g., publishing a package to a user</p></td>
<td align="left"><p>The pending task will be performed after the user logs off and then logs back on.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Globally based task, e.g., enabling a connection group globally</p></td>
<td align="left"><p>The pending task will be performed when the computer is shut down and then restarted.</p></td>
</tr>
</tbody>
</table>

 

When a task is placed in a pending state, the App-V client also generates a registry key for the pending task, as follows:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">User-based or globally based task</th>
<th align="left">Where the registry key is generated</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>User-based tasks</p></td>
<td align="left"><p>KEY_CURRENT_USER\Software\Microsoft\AppV\Client\PendingTasks</p></td>
</tr>
<tr class="even">
<td align="left"><p>Globally based tasks</p></td>
<td align="left"><p>HKEY_LOCAL_MACHINE\Software\Microsoft\AppV\Client\PendingTasks</p></td>
</tr>
</tbody>
</table>

 

### Virtualizing Microsoft Office 2013 and Microsoft Office 2010 using App-V 5.0

Use the following link for more information about App-V 5.0 supported Microsoft Office scenarios.

[Virtualizing Microsoft Office 2013 for Application Virtualization (App-V) 5.0](../solutions/virtualizing-microsoft-office-2013-for-application-virtualization--app-v--50-solutions.md)

**Note**  
This document focuses on creating a Microsoft Office 2013 App-V 5.0 Package. However, it also provides information about scenarios for Microsoft Office 2010 with App-V 5.0.

 

### <a href="" id="-------------app-v-5-0-client-management-user-interface-application"></a> App-V 5.0 Client Management User Interface Application

In previous versions of App-V 5.0 the Client Management User Interface (UI) was provided with the App-V 5.0 Client installation. With App-V 5.0 SP2 this is no longer the case. Administrators now have the option to deploy the App-V 5.0 Client UI as a Virtual Application (using all supported App-V deployment configurations) or as an installed application.

For more information see [Microsoft Application Virtualization 5.0 Client UI Application](https://go.microsoft.com/fwlink/p/?LinkId=386345) (https://go.microsoft.com/fwlink/?LinkId=386345).

### Side-by-Side (SxS) Assembly Automatic Packaging and Deployment

App-V 5.0 SP2 now automatically detects side-by-side (SxS) assemblies, and deployment on the computer running the App-V 5.0 SP2 client. A SxS assembly primarily consists of VC++ run-time dependencies or MSXML. In previous versions of App-V, virtual applications that had dependencies on VC run-times required these dependencies to be locally on the computer running the App-V 5.0 SP2 client.

The following functionality is now supported:

-   The App-V 5.0 sequencer automatically captures the SxS assembly in the package regardless of whether the VC run-time has already been installed on the computer running the sequencer.

-   The App-V 5.0 client automatically installs the required SxS assembly to the computer running the client as required at publishing time.

-   The App-V 5.0 sequencer reports the VC run-time dependency using the sequencer reporting mechanism.

-   The App-V 5.0 sequencer now allows you to exclude the VC run-time dependency in the event that the dependency is already available on the computer running the sequencer.

### Publishing Refresh Improvements

App-V 5.0 supports several features were added to improve the overall experience of refreshing a set of applications for a specific user.

The following list displays the publishing refresh enhancements:

The following list contains more information about how to enable the new publishing refresh improvements.

-   **EnablePublishingRefreshUI** - Enables the publishing refresh progress bar for the computer running the App-V 5.0 Client.

-   **HideUI** - Hides the publishing refresh progress bar during a manual sync.

### New Client Configuration Setting

The following new client configuration setting is available with App-V 5.0 SP2:

**EnableDynamicVirtualization** - Enables supported Shell Extensions, Browser Helper Objects, and Active X controls to be virtualized and run with virtual applications.

For more information, see [About Client Configuration Settings](about-client-configuration-settings.md).

### <a href="" id="-------------app-v-5-0-shell-extensions"></a> App-V 5.0 Shell extensions

App-V 5.0 SP2 now supports shell extensions.

For more information see the **App-V 5.0 SP2 shell extension support** section of [Creating and Managing App-V 5.0 Virtualized Applications](creating-and-managing-app-v-50-virtualized-applications.md).

## <a href="" id="---------app-v-5-0-documentation-updates"></a> App-V 5.0 documentation updates


App-V 5.0 SP2 provides updated documentation for the following scenarios:

-   [Migrating from a Previous Version](migrating-from-a-previous-version-app-v-50.md)

-   [About App-V 5.0](about-app-v-50.md)

-   [About App-V 5.0 Reporting](about-app-v-50-reporting.md) (frequently asked questions section)

## How to Get MDOP Technologies


App-V 5.0 is a part of the Microsoft Desktop Optimization Pack (MDOP). MDOP is part of Microsoft Software Assurance. For more information about Microsoft Software Assurance and acquiring MDOP, see [How Do I Get MDOP](https://go.microsoft.com/fwlink/?LinkId=322049) (https://go.microsoft.com/fwlink/?LinkId=322049).






## Related topics


[Release Notes for App-V 5.0 SP2](release-notes-for-app-v-50-sp2.md)

 

 





