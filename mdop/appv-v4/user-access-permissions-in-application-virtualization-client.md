---
title: User Access Permissions in Application Virtualization Client
description: User Access Permissions in Application Virtualization Client
author: v-madhi
ms.assetid: 7459374c-810c-45e3-b205-fdd1f8514f80
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# User Access Permissions in Application Virtualization Client


On the **Permissions** tab on the **Properties** dialog box, accessible by right-clicking the **Application Virtualization** node in the Application Virtualization Client Management Console, administrators can grant users permissions to use the various client functions.

**Note**  
Before changing users permissions, ensure that any permissions changes are consistent with the organization's guidelines for granting user permissions.

 

The following table lists and describes the permissions that can be granted to users.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Permission Name</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Add applications</p></td>
<td align="left"><p>Register new applications by passing a new OSD file to the client by using sfttray.exe, sftmime.exe or the MMC.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Change file system cache size</p></td>
<td align="left"><p>Increase the size of the file system cache.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Change file system drive</p></td>
<td align="left"><p>Select a different preferred drive letter for the file system.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Change log settings</p></td>
<td align="left"><p>Change the log level or the log path for the client log file.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Change OSD files</p></td>
<td align="left"><p>Modify OSD files for registered applications and pass them into the client. This does not affect publishing refresh.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Clear application settings</p></td>
<td align="left"><p>Delete file types, shortcuts and any configurations for the current user.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Delete applications</p></td>
<td align="left"><p>Remove all references to an application from the file system and OSD cache for all users on the computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Import applications into the cache</p></td>
<td align="left"><p>Load application data directly from a specified SFT file into the file system cache. This affects all users.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Load applications into the cache</p></td>
<td align="left"><p>Start a load of the SFT file for an application from the configured source, such as an App-V Streaming Server. This loads the application for all users on the computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Lock and unlock applications in the cache</p></td>
<td align="left"><p>Prevent or allow applications from being unloaded from the file system cache. This affects all users on the computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Manage file type associations</p></td>
<td align="left"><p>Add, modify, or delete file type associations for the current user only.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Manage publishing refresh settings</p></td>
<td align="left"><p>Change settings that control the timing of publishing refreshes for all users on the computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Manage publishing servers</p></td>
<td align="left"><p>Add, modify, or delete publishing servers for all users on the computer. This permission implicitly includes permission to manage publishing refresh settings.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Publish shortcuts</p></td>
<td align="left"><p>Create new shortcuts to registered applications. The user must also have permission to create files in the local file system.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Repair applications</p></td>
<td align="left"><p>Remove application specific configurations for the current user without removing shortcuts or file type associations.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Start a publishing refresh</p></td>
<td align="left"><p>Start an unscheduled publishing refresh for the current user.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Toggle offline mode</p></td>
<td align="left"><p>Change the entire client from online to offline mode for all users.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Unload applications from the cache</p></td>
<td align="left"><p>Clear application data from the file system cache for all users without removing user-specific settings, shortcuts, or file type associations.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>View all applications</p></td>
<td align="left"><p>Allow the user to see the virtual applications for all users registered on the computer.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[How to Change User Access Permissions](how-to-change-user-access-permissions.md)

 

 





