---
title: Policy settings enforced by Assigned Access
description: Learn about the policy settings enforced on a device configured with Assigned Access.
ms.topic: reference
ms.date: 02/25/2024
---

# Policy settings enforced by Assigned Access

When the Assigned Access configuration is applied on a device, certain policy settings are enforced, impacting other users using the device. The policy settings are appllied using a combination of configuration service provider (CSP) and group policy (GPO) settings.

This reference article lists the policy settings applied by Assigned Access.

>[!NOTE]
>It's not recommended to configure policy settings enforced by Assigned Access to different values using other channels. Assigned Access is optimized to provide a locked-down experience.

## Device policy settings

The following settings are applied at the device level. Any user accessing the device is subject to the policy settings, including administrator accounts.

| Type    | Path                                                                       | Name/Description                                                          |
|---------|----------------------------------------------------------------------------|---------------------------------------------------------------------------|
| **CSP** | `./Vendor/MSFT/Policy/Config/Experience/AllowCortana`                      | Disable Cortana                                                           |
| **CSP** | `./Vendor/MSFT/Policy/Config/Start/AllowPinnedFolderDocuments`             | Disable Start documents icon                                              |
| **CSP** | `./Vendor/MSFT/Policy/Config/Start/AllowPinnedFolderDownloads`             | Disable Start downloads icon                                              |
| **CSP** | `./Vendor/MSFT/Policy/Config/Start/AllowPinnedFolderFileExplorer`          | Disable Start file explorer icon                                          |
| **CSP** | `./Vendor/MSFT/Policy/Config/Start/AllowPinnedFolderHomeGroup`             | Disable Start home group icon                                             |
| **CSP** | `./Vendor/MSFT/Policy/Config/Start/AllowPinnedFolderMusic`                 | Disable Start music icon                                                  |
| **CSP** | `./Vendor/MSFT/Policy/Config/Start/AllowPinnedFolderNetwork`               | Disable Start network icon                                                |
| **CSP** | `./Vendor/MSFT/Policy/Config/Start/AllowPinnedFolderPersonalFolder`        | Disable Start personal folder icon                                        |
| **CSP** | `./Vendor/MSFT/Policy/Config/Start/AllowPinnedFolderPictures`              | Disable Start pictures icon                                               |
| **CSP** | `./Vendor/MSFT/Policy/Config/Start/AllowPinnedFolderSettings`              | Disable Start settings icon                                               |
| **CSP** | `./Vendor/MSFT/Policy/Config/Start/AllowPinnedFolderVideos`                | Disable Start videos icon                                                 |
| **CSP** | `./Vendor/MSFT/Policy/Config/Start/HideChangeAccountSettings`              | Hide *Change account settings* from appearing in the user tile            |
| **CSP** | `./Vendor/MSFT/Policy/Config/Update/SetAutoRestartNotificationDisable`     | Hides all update notifications                                            |
| **CSP** | `./Vendor/MSFT/Policy/Config/Update/UpdateNotificationLevel`               | Disables auto restart notifications for updates                           |
| **CSP** | `./Vendor/MSFT/Policy/Config/WindowsInkWorkspace/AllowWindowsInkWorkspace` | Access to ink workspace is disabled                                       |
| **CSP** | `./Vendor/MSFT/Policy/Config/WindowsLogon/DontDisplayNetworkSelectionUI`   | Hide networks UI on the logon screen, as well as on "security options" UI |

## User policy settings

The following policy settings are applied to any nonadministrator accessing the device:

| Type    | Path                                                                             | Name/Description                                                  |
|---------|----------------------------------------------------------------------------------|-------------------------------------------------------------------|
| **CSP** | `./User/Vendor/MSFT/Policy/Config/Start/DisableContextMenus`                     | Disable Context Menu for Start menu apps                          |
| **CSP** | `./User/Vendor/MSFT/Policy/Config/Start/HidePeopleBar`                           | Hide People Bar from appearing on taskbar                         |
| **CSP** | `./User/Vendor/MSFT/Policy/Config/Start/HideRecentlyAddedApps`                   | Hide recently added apps from appearing on the Start menu         |
| **CSP** | `./User/Vendor/MSFT/Policy/Config/Start/HideRecentJumplists`                     | Hide recent jumplists from appearing on the Start menu/taskbar    |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Clear history of recently opened documents on exit                |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Disable showing balloon notificationss as toast                   |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Do not allow pinning items in Jump Lists                          |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Do not allow pinning programs to the Taskbar                      |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Do not display or track items in Jump Lists from remote locations |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Hide and disable all items on the desktop                         |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Hide the Task View button                                         |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Lock all taskbar settings                                         |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Lock the Taskbar                                                  |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Prevent users from adding or removing toolbars                    |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Prevent users from customizing their Start Screen                 |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Prevent users from moving taskbar to another screen dock location |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Prevent users from rearranging toolbars                           |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Prevent users from resizing the taskbar                           |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Prevent users from uninstalling applications from Start           |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Remove access to the context menus for the task bar               |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Remove All Programs list from the Start menu                      |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Remove Control Center                                             |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Remove frequent programs list from the Start Menu                 |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Remove Notification and Action Center                             |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Remove Quick Settings                                             |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Remove Run menu from Start Menu                                   |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Remove the Security and Maintenance icon                          |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Turn off all balloon notifications                                |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Turn off feature advertisement balloon notifications              |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar\Notifications | Turn off toast notifications                                      |
| **GPO** | User Configuration\Administrative Templates\System\Ctrl+Alt+Del Options          | Remove Change Password                                            |
| **GPO** | User Configuration\Administrative Templates\System\Ctrl+Alt+Del Options          | Remove Logoff                                                     |
| **GPO** | User Configuration\Administrative Templates\System\Ctrl+Alt+Del Options          | Remove Task Manager                                               |
| **GPO** | User Configuration\Administrative Templates\Windows Components\File Explorer     | Remove *Map network drive* and *Disconnect Network Drive*         |
| **GPO** | User Configuration\Administrative Templates\Windows Components\File Explorer     | Remove File Explorer's default context menu                       |
