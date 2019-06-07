---
title: Changes to Group Policy settings for Windows 10 Start menu (Windows 10)
description: Windows 10 has a brand new Start experience.
ms.assetid: 612FB68A-3832-451F-AA97-E73791FEAA9F
ms.reviewer: 
manager: dansimp
keywords: ["group policy", "start menu", "start screen"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 11/28/2017
---

# Changes to Group Policy settings for Windows 10 Start


**Applies to**

-   Windows 10

Windows 10 has a brand new Start experience. As a result, there are changes to the Group Policy settings that you can use to manage Start. Some policy settings are new or changed, and some old Start policy settings still apply. Other Start policy settings no longer apply and are deprecated.

## Start policy settings supported for Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education


These policy settings are available in **Administrative Templates\\Start Menu and Taskbar** under **User Configuration**.

<table>

<thead>
<tr class="header">
<th align="left">Policy</th>
<th align="left">Notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Clear history of recently opened documents on exit</td>
<td align="left">Documents that the user opens are tracked during the session. When the user signs off, the history of opened documents is deleted.</td>
</tr>
<tr class="even">
<td align="left">Do not allow pinning items in Jump Lists</td>
<td align="left">Jump Lists are lists of recently opened items, such as files, folders, or websites, organized by the program that you use to open them. This policy prevents users from pinning items to any Jump List.</td>
</tr>
<tr class="odd">
<td align="left">Do not display or track items in Jump Lists from remote locations</td>
<td align="left">When this policy is applied, only items local on the computer are shown in Jump Lists.</td>
</tr>
<tr class="even">
<td align="left">Do not keep history of recently opened documents</td>
<td align="left">Documents that the user opens are not tracked during the session.</td>
</tr>
<tr class="odd">
<td align="left">Prevent changes to Taskbar and Start Menu Settings</td>
<td align="left">In Windows 10, this disables all of the settings in <strong>Settings</strong> &gt; <strong>Personalization</strong> &gt; <strong>Start</strong> as well as the options in dialog available via right-click Taskbar &gt; <strong>Properties</strong></td>
</tr>
<tr class="even">
<td align="left">Prevent users from customizing their Start Screen</td>
<td align="left"><p>Use this policy in conjunction with a <a href="windows-10-start-layout-options-and-policies.md" data-raw-source="[customized Start layout](windows-10-start-layout-options-and-policies.md)">customized Start layout</a> to prevent users from changing it</p></td>
</tr>
<tr class="odd">
<td align="left">Prevent users from uninstalling applications from Start</td>
<td align="left">In Windows 10, this removes the uninstall button in the context menu. It does not prevent users from uninstalling the app through other entry points (e.g. PowerShell)</td>
</tr>
<tr class="even">
<td align="left">Remove All Programs list from the Start menu</td>
<td align="left">In Windows 10, this removes the <strong>All apps</strong> button.</td>
</tr>
<tr class="odd">
<td align="left">Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands</td>
<td align="left">This removes the Shut Down, Restart, Sleep, and Hibernate commands from the Start Menu, Start Menu power button, CTRL+ALT+DEL screen, and Alt+F4 Shut Down Windows menu.</td>
</tr>
<tr class="even">
<td align="left">Remove common program groups from Start Menu</td>
<td align="left">As in earlier versions of Windows, this removes apps specified in the All Users profile from Start</td>
</tr>
<tr class="odd">
<td align="left">Remove frequent programs list from the Start Menu</td>
<td align="left">In Windows 10, this removes the top left <strong>Most used</strong> group of apps.</td>
</tr>
<tr class="even">
<td align="left">Remove Logoff on the Start Menu</td>
<td align="left"><strong>Logoff</strong> has been changed to <strong>Sign Out</strong> in the user interface, however the functionality is the same.</td>
</tr>
<tr class="odd">
<td align="left">Remove pinned programs list from the Start Menu</td>
<td align="left">In Windows 10, this removes the bottom left group of apps (by default, only File Explorer and Settings are pinned).</td>
</tr>
<tr class="even">
<td align="left">Show &quot;Run as different user&quot; command on Start</td>
<td align="left">This enables the <strong>Run as different user</strong> option in the right-click menu for apps.</td>
</tr>
<tr class="odd">
<td align="left">Start Layout</td>
<td align="left"><p>This applies a specific Start layout, and it also prevents users from changing the layout. This policy can be configured in <strong>User Configuration</strong> or <strong>Computer Configuration</strong>.</p>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left">Force Start to be either full screen size or menu size</td>
<td align="left">This applies a specific size for Start.</td>
</tr>
</tbody>
</table>

 

## <a href="" id="deprecated-group-policy-settings-for-start-"></a>Deprecated Group Policy settings for Start


The Start policy settings listed below do not work on Windows 10. Most of them were deprecated in Windows 8 however a few more were deprecated in Windows 10. Deprecation in this case means that the policy setting will not work on Windows 10. The “Supported on” text for a policy setting will not list Windows 10. The policy settings are still in the Group Policy Management Console and can be used on the operating systems that they apply to.

| Policy                                                                           | When deprecated |
|----------------------------------------------------------------------------------|-----------------|
| Go to the desktop instead of Start when signing in                               | Windows 10      |
| List desktop apps first in the Apps view                                         | Windows 10      |
| Pin Apps to Start when installed (User or Computer)                              | Windows 10      |
| Remove Default Programs link from the Start menu.                                | Windows 10      |
| Remove Documents icon from Start Menu                                            | Windows 10      |
| Remove programs on Settings menu                                                 | Windows 10      |
| Remove Run menu from Start Menu                                                  | Windows 10      |
| Remove the "Undock PC" button from the Start Menu                                | Windows 10      |
| Search just apps from the Apps view                                              | Windows 10      |
| Show Start on the display the user is using when they press the Windows logo key | Windows 10      |
| Show the Apps view automatically when the user goes to Start                     | Windows 10      |
| Add the Run command to the Start Menu                                            | Windows 8       |
| Change Start Menu power button                                                   | Windows 8       |
| Gray unavailable Windows Installer programs Start Menu shortcuts                 | Windows 8       |
| Remove Downloads link from Start Menu                                            | Windows 8       |
| Remove Favorites menu from Start Menu                                            | Windows 8       |
| Remove Games link from Start Menu                                                | Windows 8       |
| Remove Help menu from Start Menu                                                 | Windows 8       |
| Remove Homegroup link from Start Menu                                            | Windows 8       |
| Remove Music icon from Start Menu                                                | Windows 8       |
| Remove Network icon from Start Menu                                              | Windows 8       |
| Remove Pictures icon from Start Menu                                             | Windows 8       |
| Remove Recent Items menu from Start Menu                                         | Windows 8       |
| Remove Recorded TV link from Start Menu                                          | Windows 8       |
| Remove user folder link from Start Menu                                          | Windows 8       |
| Remove Videos link from Start Menu                                               | Windows 8       |

 

## Related topics

- [Manage Windows 10 Start and taskbar layout](windows-10-start-layout-options-and-policies.md)
- [Configure Windows 10 taskbar](configure-windows-10-taskbar.md)
- [Customize and export Start layout](customize-and-export-start-layout.md)
- [Add image for secondary tiles](start-secondary-tiles.md)
- [Start layout XML for desktop editions of Windows 10 (reference)](start-layout-xml-desktop.md)
- [Customize Windows 10 Start and taskbar with Group Policy](customize-windows-10-start-screens-by-using-group-policy.md)
- [Customize Windows 10 Start and taskbar with provisioning packages](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md)
- [Customize Windows 10 Start and tasbkar with mobile device management (MDM)](customize-windows-10-start-screens-by-using-mobile-device-management.md)




