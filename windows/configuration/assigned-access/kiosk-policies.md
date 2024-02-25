---
title: Policy settings enforced by Assigned Access
description: Learn about the policy settings enforced on a device configured with Assigned Access.
ms.topic: reference
ms.date: 02/26/2024
---

# Policy settings enforced by Assigned Access

When the Assigned Access configuration is applied on a device, certain policy settings are enforced, impacting other users using the device.

This reference article lists the policy settings applied by Assigned Access.



## Group policy

The following local policies affect all **non-administrator** users on the system, regardless whether the user is configured as an assigned access user or not.  These users include local users, domain users, and Microsoft Entra users.

| Setting | Value |
|--|--|
| Remove Pinned programs from the taskbar | Enabled |
| Turn off toast notifications | Enabled |
| Remove Task Manager | Enabled |
| Remove Change Password option in Security Options UI | Enabled |
| Remove Sign Out option in Security Options UI | Enabled |
| Prevent access to drives from My Computer | Enabled - Restrict all drives |

>[!NOTE]
>When **Prevent access to drives from My Computer** is enabled, users can browse the directory structure in File Explorer, but they cannot open folders and access the contents. Also, they cannot use the **Run** dialog box or the **Map Network Drive** dialog box to view the directories on these drives. The icons representing the specified drives still appear in File Explorer, but if users double-click the icons, a message appears explaining that a setting prevents the action. This setting does not prevent users from using programs to access local and network drives. It does not prevent users from using the Disk Management snap-in to view and change drive characteristics.

## MDM policy

Start/AllowPinnedFolderDocuments
Start/AllowPinnedFolderDownloads
Start/AllowPinnedFolderFileExplorer
Start/AllowPinnedFolderHomeGroup
Start/AllowPinnedFolderMusic
Start/AllowPinnedFolderNetwork
Start/AllowPinnedFolderPersonalFolder
Start/AllowPinnedFolderPictures
Start/AllowPinnedFolderSettings
Start/AllowPinnedFolderVideos
Start/DisableContextMenus
Start/HidePeopleBar (hide)
Start/HideChangeAccountSettings (hide)
AllowWindowsInkWorkspace (disabled and the feature is turned off)
StartLayout
DontDisplayNetworkSelectionUI

<!--
## Start Menu

*Remove access to the context menus for the task bar
*Clear history of recently opened documents on exit
*Prevent users from customizing their Start Screen
*Prevent users from uninstalling applications from Start
*Remove All Programs list from the Start menu
*Remove Run menu from Start Menu

## Desktop

Hide and disable all items on the desktop

## Task bar

*Disable showing balloon notificationss as toast
*Do not allow pinning items in Jump Lists
*Do not allow pinning programs to the Taskbar
*Do not display or track items in Jump Lists from remote locations
*Remove Notification Center
*Remove Control Center (What is it? is it action center perhaps?)
*Lock all Taskbar settings
*Lock the Taskbar
*Prevent users from adding or removing toolbars
**Prevent users from moving taskbar to another screen dock location
**Prevent users from rearranging toolbars
*Prevent users from resizing the taskbar
*Remove frequent programs list from the Start Menu
*Remove the Security and Maintenance icon
*Turn off all balloon notifications
*Turn off feature advertisement balloon notifications
**Hide the Task View button

-->

>[!NOTE]
>It's not recommended to configure policy settings enforced by Assigned Access to different values using other channels. Assigned Access is optimized to provide a locked-down experience.