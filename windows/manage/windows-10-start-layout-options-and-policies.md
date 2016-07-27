---
title: Manage Windows 10 Start and taskbar layout  (Windows 10)
description: Organizations might want to deploy a customized Start and taskbar layout to devices running Windows 10 Enterprise or Windows 10 Education.
ms.assetid: 2E94743B-6A49-463C-9448-B7DD19D9CD6A
keywords: ["start screen", "start menu"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
---

# Manage Windows 10 Start and taskbar layout


**Applies to**

-   Windows 10

> **Looking for consumer information?** See [Customize the Start menu](http://windows.microsoft.com/en-us/windows-10/getstarted-see-whats-on-the-menu) 

Organizations might want to deploy a customized Start and taskbar configuration to devices running Windows 10 Enterprise or Windows 10 Education. A standard, customized Start layout can be useful on devices that are common to multiple users and devices that are locked down for specialized purposes. Configuring the taskbar allows the organization to pin useful apps for their employees and to remove apps that are pinned by default.

> **Note:** Taskbar configuration is available starting in Windows 10, version 1607.

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
<p>Group Policy: <strong>Computer Configuration</strong>\\<strong>Administrative Templates</strong>\\<strong>Windows Components</strong>\\<strong>Cloud Content</strong>\\<strong>Turn off Microsoft consumer experiences</strong></p>
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
<strong>Note</strong>  
<p> When a full Start screen layout is imported with Group Policy or MDM, the users cannot pin, unpin, or uninstall apps from the Start screen. Users can view and open all apps in the <strong>All Apps</strong> view, but they cannot pin any apps to the Start screen. When a partial Start screen layout is imported, users cannot change the tile groups applied by the partial layout, but can modify other tile groups and create their own.</p><p><strong>Start layout</strong> policy can be used to pin apps to the taskbar based on an XML File that you provide. Users will be able to change the order of pinned apps, unpin apps, and pin additional apps to the taskbar.
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

Starting in Windows 10, version 1607, you can pin additional apps to the taskbar and remove default pinned apps from the taskbar. You can specify different taskbar configurations based on device locale or region.

There are three categories of apps that might be pinned to a taskbar:
* Apps pinned by the user
* Default Windows apps, pinned during operating system installation (Microsoft Edge, File Explorer, Store)
* Apps pinned by the enterprise, such as in an unattended Windows setup

 **Note**  
   The earlier method of using [TaskbarLinks](http://go.microsoft.com/fwlink/p/?LinkId=761230) in an unattended Windows setup file is deprecated in Windows 10, version 1607.
   
The following example shows how apps will be pinned - Windows default apps to the left (blue circle), apps pinned by the user in the center (orange triangle), and apps that you pin using XML to the right (green square).

> **Note**  In operating systems configured to use a right-to-left language, the taskbar order will be reversed.

![Windows left, user center, enterprise to the right](images/taskbar-generic.png)

Whether you apply the taskbar configuration to a clean install or an update, users will still be able to:
* Pin additional apps
* Change the order of pinned apps
* Unpin any app

### Taskbar configuration applied to clean install of Windows 10

In a clean install, if you apply a taskbar layout, only the apps that you specify and default apps that you do not remove will be pinned to the taskbar. Users can pin additional apps to the taskbar after the layout is applied.

### Taskbar configuration applied to Windows 10 upgrades

When a device is upgraded to Windows 10, apps will be pinned to the taskbar already.  Some apps may have been pinned to the taskbar by a user, and others may have been pinned to the taskbar through a customized base image or by using Windows Unattend setup. 

The new taskbar layout for upgrades to Windows 10, version 1607 or later, will apply the following behavior:
* If the user pinned the app to the taskbar, those pinned apps remain and new apps will be added to the right.
* If the user didn't pin the app (it was pinned during installation or by policy) and the app is not in updated layout file, the app will be unpinned.
* If the user didn't pin the app and the app is in the updated layout file, the app will be pinned to the right.
* New apps specified in updated layout file are pinned to right of user's pinned apps.
  


## Related topics


[Customize and export Start layout](customize-and-export-start-layout.md)

[Configure Windows 10 taskbar](configure-windows-10-taskbar.md)

[Customize Windows 10 Start and taskbar with Group Policy](customize-windows-10-start-screens-by-using-group-policy.md)

[Customize Windows 10 Start with mobile device management (MDM)](customize-windows-10-start-screens-by-using-mobile-device-management.md)

[Customize Windows 10 Start and taskbar with ICD and provisioning packages](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md)

[Changes to Group Policy settings for Windows 10 Start](changes-to-start-policies-in-windows-10.md)

 

 





