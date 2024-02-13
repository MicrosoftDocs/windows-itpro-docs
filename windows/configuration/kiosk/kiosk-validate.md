---
title: Validate kiosk configuration
description: In this article, learn what to expect on a multi-app kiosk in Windows 10/11 Pro, Enterprise, and Education.

ms.topic: article
ms.date: 12/31/2017
---

# Validate kiosk configuration

To identify the provisioning packages applied to a device, go to **Settings** > **Accounts** > **Access work or school**, and then click **Add or remove a provisioning package**. You should see a list of packages that were applied to the device.

Optionally, run Event Viewer (eventvwr.exe) and look through logs under **Applications and Services Logs** > **Microsoft** > **Windows** > **Provisioning-Diagnostics-Provider** > **Admin**.

To test the kiosk, sign in with the assigned access user account you specified in the configuration to check out the multi-app experience.

>[!NOTE]
>The kiosk configuration setting will take effect the next time the assigned access user signs in. If that user account is signed in when you apply the configuration, make sure the user signs out and signs back in to validate the experience.

The following sections explain what to expect on a multi-app kiosk.

### App launching and switching experience

In the multi-app mode, to maximize the user productivity and streamline the experience, an app will be always launched in full screen when the users click the tile on the Start. The users can minimize and close the app, but cannot resize the app window.

The users can switch apps just as they do today in Windows. They can use the Task View button, Alt + Tab hotkey, and the swipe in from the left gesture to view all the open apps in task view. They can click the Windows button to show Start, from which they can open apps, and they can switch to an opened app by clicking it on the taskbar.

### Start changes

When the assigned access user signs in, you should see a restricted Start experience:
- Start gets launched in full screen and prevents the end user from accessing the desktop.

- Start shows the layout aligned with what you defined in the multi-app configuration XML.

- Start prevents the end user from changing the tile layout.
  - The user cannot resize, reposition, and unpin the tiles.
  - The user cannot pin additional tiles on the start.
- Start hides **All Apps** list.
- Start hides all the folders on Start (including File Explorer, Settings, Documents, Downloads, Music, Pictures, Videos, HomeGroup, Network, and Personal folders).
- Only **User** and **Power** buttons are available. (You can control whether to show the **User/Power** buttons using [existing policies](/windows/client-management/mdm/policy-csp-start).)
- Start hides **Change account settings** option under **User** button.

### Taskbar changes

If the applied multi-app configuration enables taskbar, when the assigned access user signs in, you should see a restricted Taskbar experience:

- Disables context menu of Start button (Quick Link)
- Disables context menu of taskbar
- Prevents the end user from changing the taskbar
- Disables Cortana and Search Windows
- Hides notification icons and system icons, e.g. Action Center, People, Windows Ink Workspace
- Allows the end user to view the status of the network connection and power state, but disables the flyout of **Network/Power** to prevent end user from changing the settings

### Blocked hotkeys

The multi-app mode blocks the following hotkeys, which are not relevant for the lockdown experience.

| Hotkey | Action |
|--|--|
| <kbd>WIN</kbd> + <kbd>A</kbd> | Open Action center |
| <kbd>WIN</kbd> + <kbd>Shift</kbd>  + <kbd> C</kbd> | Open Cortana in listening mode |
| <kbd>WIN</kbd> + <kbd>D</kbd> | Display and hide the desktop |
| <kbd>WIN</kbd> + <kbd>Alt</kbd>  + <kbd> D</kbd> | Display and hide the date and time on the desktop |
| <kbd>WIN</kbd> + <kbd>E</kbd> | Open File Explorer |
| <kbd>WIN</kbd> + <kbd>F</kbd> | Open Feedback Hub |
| <kbd>WIN</kbd> + <kbd>G</kbd> | Open Game bar when a game is open |
| <kbd>WIN</kbd> + <kbd>I</kbd> | Open Settings |
| <kbd>WIN</kbd> + <kbd>J</kbd> | Set focus to a Windows tip when one is available. |
| <kbd>WIN</kbd> + <kbd>O</kbd> | Lock device orientation |
| <kbd>WIN</kbd> + <kbd>Q</kbd> | Open search |
| <kbd>WIN</kbd> + <kbd>R</kbd> | Open the Run dialog box |
| <kbd>WIN</kbd> + <kbd>S</kbd> | Open search |
| <kbd>WIN</kbd> + <kbd>X</kbd> | Open the Quick Link menu |
| <kbd>WIN</kbd> + <kbd>, (comma)</kbd> | Temporarily peek at the desktop |
| <kbd>WIN</kbd> + <kbd>Ctrl</kbd>  + <kbd> F</kbd> | Search for PCs (if you're on a network) |

### Locked-down Ctrl+Alt+Del screen

The multi-app mode removes options (e.g. **Change a password**, **Task Manager**, **Network**) in the Ctrl+Alt+Del screen to ensure the users cannot access the functionalities that are not allowed in the lockdown experience.

### Auto-trigger touch keyboard

In the multi-app mode, the touch keyboard i automatically triggered when there is an input needed and no physical keyboard is attached on touch-enabled devices. You don't need to configure any other setting to enforce this behavior.
