---
title: Manage Windows 10 Start layout and taskbar options (Windows 10)
description: Organizations might want to deploy a customized Start screen, menu, and taskbar to devices running Windows 10 Enterprise or Windows 10 Education.
ms.assetid: 2E94743B-6A49-463C-9448-B7DD19D9CD6A
keywords: ["start screen", "start menu"]
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
---

# Manage Windows 10 Start layout and taskbar options


**Applies to**

-   Windows 10

**Looking for consumer information?**

-   [Customize the Start menu](http://go.microsoft.com/fwlink/p/?LinkId=623630)

Organizations might want to deploy a customized Start screen, Start menu, and taskbar configuration to devices running Windows 10 Enterprise or Windows 10 Education. A standard Start layout can be useful on devices that are common to multiple users and devices that are locked down for specialized purposes. Configuring the taskbar allows the organization to pin useful apps for their employees and to remove apps pinned by default.

## Start options

![start layout sections](images/startannotated.png)

Some areas of Start can be managed using Group Policy. The layout of Start tiles can be managed using either Group Policy or Mobile Device Management (MDM) policy.

The following table lists the different parts of Start and any applicable policy settings or Settings options. Group Policy settings are in the **User Configuration**\\**Administrative Templates**\\**Start Menu and Taskbar** path except where a different path is listed in the table.

<table>
<thead>
<tr class="header">
<th align="left">Start</th>
<th align="left">Policy</th>
<th align="left">Setting</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">User tile</td>
<td align="left">Group Policy: <strong>Remove Logoff on the Start menu</strong></td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left">Most used</td>
<td align="left">Group Policy: <strong>Remove frequent programs from the Start menu</strong></td>
<td align="left"><strong>Settings</strong> &gt; <strong>Personalization</strong> &gt; <strong>Start</strong> &gt; <strong>Show most used apps</strong></td>
</tr>
<tr class="odd">
<td align="left"><p>Suggestions</p>
<p>-and-</p>
<p>Dynamically inserted app tile</p></td>
<td align="left"><p>MDM: <strong>Allow Windows Consumer Features</strong></p>
<p>Group Policy: <strong>Computer Configuration</strong>\<strong>Administrative Templates</strong>\<strong>Windows Components</strong>\<strong>Cloud Content</strong>\<strong>Turn off Microsoft consumer experiences</strong></p>
<div class="alert">
<strong>Note</strong>  
<p>This policy also enables or disables notifications for a user's Microsoft account and app tiles from Microsoft dynamically inserted in the default Start menu.</p>
</div>
<div>
 
</div></td>
<td align="left"><strong>Settings</strong> &gt; <strong>Personalization</strong> &gt; <strong>Start</strong> &gt; <strong>Occasionally show suggestions in Start</strong></td>
</tr>
<tr class="even">
<td align="left">Recently added</td>
<td align="left"></td>
<td align="left"><strong>Settings</strong> &gt; <strong>Personalization</strong> &gt; <strong>Start</strong> &gt; <strong>Show recently added apps</strong></td>
</tr>
<tr class="odd">
<td align="left">Pinned folders</td>
<td align="left"></td>
<td align="left"><strong>Settings</strong> &gt; <strong>Personalization</strong> &gt; <strong>Start</strong> &gt; <strong>Choose which folders appear on Start</strong></td>
</tr>
<tr class="even">
<td align="left">Power</td>
<td align="left">Group Policy: <strong>Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands</strong></td>
<td align="left">None</td>
</tr>
<tr class="odd">
<td align="left">All apps</td>
<td align="left">Group Policy: <strong>Remove All Programs list from the Start menu</strong></td>
<td align="left">None</td>
</tr>
<tr class="even">
<td align="left">Start layout</td>
<td align="left"><p>MDM: <strong>Start layout</strong></p>
<p>Group Policy: <strong>Start layout</strong></p>
<p>Group Policy: <strong>Prevent users from customizing their Start Screen</strong></p>
<div class="alert">
<strong>Warning</strong>  
<p><strong>Start layout</strong> can only be applied to a device using the same architecture (32-bit or 64-bit) as the device on which <strong>Start layout</strong> was created. When a Start screen layout is imported with Group Policy or MDM, the users cannot pin, unpin, or uninstall apps from the Start screen. Users can view and open all apps in the <strong>All Apps</strong> view, but they cannot pin any apps to the Start screen.</p>
</div>
<div>
 
</div></td>
<td align="left">None</td>
</tr>
<tr class="odd">
<td align="left">Jump lists</td>
<td align="left">Group Policy: <strong>Do not keep history of recently opened documents</strong></td>
<td align="left"><strong>Settings</strong> &gt; <strong>Personalization</strong> &gt; <strong>Start</strong> &gt; <strong>Show recently opened items in Jump Lists on Start or the taskbar</strong></td>
</tr>
<tr class="even">
<td align="left">Start size</td>
<td align="left"><p>MDM: <strong>Force Start size</strong></p>
<p>Group Policy: <strong>Force Start to be either full screen size or menu size</strong></p></td>
<td align="left"><strong>Settings</strong> &gt; <strong>Personalization</strong> &gt; <strong>Start</strong> &gt; <strong>Use Start full screen</strong></td>
</tr>
<tr class="odd">
<td align="left">All Settings</td>
<td align="left">Group Policy: <strong>Prevent changes to Taskbar and Start Menu Settings</strong></td>
<td align="left">None</td>
</tr>
</tbody>
</table>

 ## Taskbar options

There are four categories of apps that might be pinned to a taskbar:
* Default Windows apps, pinned during operating system installation
* OEM apps, pinned by the OEM as part of the operating system image 
* Apps pinned by the enterprise, such as in an unattended Windows setup

   **Note**  
   The earlier method of using [TaskbarLinks](http://go.microsoft.com/fwlink/p/?LinkId=761230) in an unattended Windows setup file is deprecated in Windows 10, version 1607.
* Apps pinned by the user

## Related topics


[Customize and export Start layout](customize-and-export-start-layout.md)

[Customize Windows 10 Start with Group Policy](customize-windows-10-start-screens-by-using-group-policy.md)

[Customize Windows 10 Start with mobile device management (MDM)](customize-windows-10-start-screens-by-using-mobile-device-management.md)

[Customize Windows 10 Start with ICD and provisioning packages](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md)

[Changes to Group Policy settings for Windows 10 Start](changes-to-start-policies-in-windows-10.md)

 

 





