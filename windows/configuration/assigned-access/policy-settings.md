---
title: Assigned Access policy settings
description: Learn about the policy settings enforced on a device configured with Assigned Access.
ms.topic: reference
ms.date: 03/04/2024
---

# Assigned Access policy settings

When the Assigned Access configuration is applied on a device, certain policy settings and AppLocker rules are enforced, impacting the users accessing the device. The policy settings use a combination of configuration service provider (CSP) and group policy (GPO) settings.

This reference article lists the policy settings and AppLocker rules applied by Assigned Access.

>[!NOTE]
>It's not recommended to configure policy settings enforced by Assigned Access to different values using other channels. Assigned Access is optimized to provide a locked-down experience.

## Device policy settings

The following policy settings are applied at the device level when you deploy a restricted user experience. Any user accessing the device is subject to the policy settings, including administrator accounts:

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

The following policy settings are applied to any nonadministrator account when you deploy a restricted user experience:

| Type    | Path                                                                             | Name/Description                                                  |
|---------|----------------------------------------------------------------------------------|-------------------------------------------------------------------|
| **CSP** | `./User/Vendor/MSFT/Policy/Config/Start/DisableContextMenus`                     | Disable Context Menu for Start menu apps                          |
| **CSP** | `./User/Vendor/MSFT/Policy/Config/Start/HidePeopleBar`                           | Hide People Bar from appearing on taskbar                         |
| **CSP** | `./User/Vendor/MSFT/Policy/Config/Start/HideRecentlyAddedApps`                   | Hide recently added apps from appearing on the Start menu         |
| **CSP** | `./User/Vendor/MSFT/Policy/Config/Start/HideRecentJumplists`                     | Hide recent jumplists from appearing on the Start menu/taskbar    |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Clear history of recently opened documents on exit                |
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar               | Disable showing balloon notifications as toast                    |
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

The following policy settings are applied to the kiosk account when you configure a kiosk experience with Microsoft Edge:

| Type    | Path                                                                              | Name/Description                                       |
|---------|-----------------------------------------------------------------------------------|--------------------------------------------------------|
| **GPO** | User Configuration\Administrative Templates\Start Menu and Taskbar\Notifications  | Run only specified Windows applications > `msedge.exe` |
| **GPO** | User Configuration\Administrative Templates\System                                | Turn off toast notifications                           |
| **GPO** | User Configuration\Administrative Templates\Windows Components\Attachment Manager | Default risk level for file attachments > High risk    |
| **GPO** | User Configuration\Administrative Templates\Windows Components\Attachment Manager | Inclusion list for low file types > `.pdf;.epub`       |
| **GPO** | User Configuration\Administrative Templates\Windows Components\File Explorer      | Remove File Explorer's default context menu            |

## AppLocker rules

When you deploy an Assigned Access restricted user experience, AppLocker rules are generated to allow the apps that are listed in the configuration. Here are the predefined Assigned Access AppLocker rules:

### Universal Windows Platform (UWP) app rules

1. The default rule is to allow all users to launch the signed *packaged apps*
1. The packaged app *deny list* is generated at runtime when the Assigned Access user signs in:
    1. Based on the installed apps available for the user account, Assigned Access generates the deny list. The list excludes the default allowed inbox packaged apps, which are critical for the system to function, and then exclude the allowed packages that are defined in the Assigned Access configuration
    1. If there are multiple apps within the same package, all the apps are excluded

The deny list is used to prevent the user from accessing the apps, which are currently available for the user but not in the allowed list

> [!NOTE]
> You can't manage AppLocker rules that are generated by the restricted user experience in MMC snap-ins. Avoid creating AppLocker rules that conflict with AppLocker rules generated by Assigned Access.
>
> Assigned access doesn't prevent the organization or users from installing UWP apps. When a new UWP app is installed during an Assigned Access session, the app isn't in the deny list. When the user signs out and signs in again, the installed app is included in the deny list. For apps deployed centrally that you want to allow, like line-of-biness apps, update the Assigned Access configuration and include the apps in the *allow app list*.

### Desktop app rules

1. The default rule is to allow all users to launch the desktop programs signed with *Microsoft Certificate* for the system to boot and function. The rule also allows the admin user group to launch all desktop programs.
1. There's a predefined inbox desktop app deny list for the Assigned Access user account, which is updated based on the *desktop app allow list* that you defined in the Assigned Access configuration
1. Enterprise-defined allowed desktop apps are added in the AppLocker allow list

## Keyboard shortcuts

The following keyboard shortcuts are blocked for the user accounts with Assigned Access:

| Keyboard shortcut                                    | Action                                                                                        |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------|
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd>  + <kbd>Esc</kbd> | Open Task Manager                                                                             |
| <kbd>WIN</kbd> + <kbd>,</kbd> (comma)                | Temporarily peek at the desktop                                                               |
| <kbd>WIN</kbd> + <kbd>A</kbd>                        | Open Action center                                                                            |
| <kbd>WIN</kbd> + <kbd>Alt</kbd>  + <kbd> D</kbd>     | Display and hide the date and time on the desktop                                             |
| <kbd>WIN</kbd> + <kbd>Ctrl</kbd>  + <kbd> F</kbd>    | Find computer objects in Active Directory                                                     |
| <kbd>WIN</kbd> + <kbd>D</kbd>                        | Display and hide the desktop                                                                  |
| <kbd>WIN</kbd> + <kbd>E</kbd>                        | Open File Explorer                                                                            |
| <kbd>WIN</kbd> + <kbd>F</kbd>                        | Open Feedback Hub                                                                             |
| <kbd>WIN</kbd> + <kbd>G</kbd>                        | Open Game bar when a game is open                                                             |
| <kbd>WIN</kbd> + <kbd>I</kbd>                        | Open Settings                                                                                 |
| <kbd>WIN</kbd> + <kbd>J</kbd>                        | Set focus to a Windows tip when one is available                                              |
| <kbd>WIN</kbd> + <kbd>O</kbd>                        | Lock device orientation                                                                       |
| <kbd>WIN</kbd> + <kbd>Q</kbd>                        | Open search                                                                                   |
| <kbd>WIN</kbd> + <kbd>R</kbd>                        | Open the Run dialog box                                                                       |
| <kbd>WIN</kbd> + <kbd>S</kbd>                        | Open search                                                                                   |
| <kbd>WIN</kbd> + <kbd>Shift</kbd>  + <kbd> C</kbd>   | Open Cortana in listening mode                                                                |
| <kbd>WIN</kbd> + <kbd>X</kbd>                        | Open the Quick Link menu                                                                      |
| <kbd>LaunchApp1</kbd>                                | Open the app that is assigned to this key                                                     |
| <kbd>LaunchApp2</kbd>                                | Open the app that is assigned to this key. On many Microsoft keyboards, the app is Calculator |
| <kbd>LaunchMail</kbd>                                | Open the default mail client                                                                  |

For information on how to customize keyboard shortcuts, see [Assigned Access recommendations](recommendations.md#keyboard-shortcuts).
