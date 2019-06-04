---
title: Validate kiosk configuration (Windows 10)
description: This topic explains what to expect on a multi-app kiosk.
ms.assetid: 428680AE-A05F-43ED-BD59-088024D1BFCC
ms.reviewer: 
manager: dansimp
ms.author: dansimp
keywords: ["assigned access", "kiosk", "lockdown", "digital sign", "digital signage"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.date: 07/30/2018
ms.topic: article
---

# Validate kiosk configuration


**Applies to**

-   Windows 10 Pro, Enterprise, and Education

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
- Only **User** and **Power** buttons are available. (You can control whether to show the **User/Power** buttons using [existing policies](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start).) 
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
| --- | --- |
| Windows logo key  + A	 | Open Action center |
| Windows logo key  + Shift + C |	Open Cortana in listening mode |
| Windows logo key  + D	| Display and hide the desktop |
| Windows logo key  + Alt + D	| Display and hide the date and time on the desktop |
| Windows logo key  + E	| Open File Explorer |
| Windows logo key  + F |	Open Feedback Hub |
| Windows logo key  + G	| Open Game bar when a game is open |
| Windows logo key  + I	| Open Settings |
| Windows logo key  + J |	Set focus to a Windows tip when one is available. |
| Windows logo key  + O	| Lock device orientation |
| Windows logo key  + Q	 | Open search |
| Windows logo key  + R	| Open the Run dialog box |
| Windows logo key  + S	| Open search |
| Windows logo key  + X	| Open the Quick Link menu |
| Windows logo key  + comma (,) |	Temporarily peek at the desktop |
| Windows logo key  + Ctrl + F |	Search for PCs (if you're on a network) |



### Locked-down Ctrl+Alt+Del screen

The multi-app mode removes options (e.g. **Change a password**, **Task Manager**, **Network**) in the Ctrl+Alt+Del screen to ensure the users cannot access the functionalities that are not allowed in the lockdown experience. 

### Auto-trigger touch keyboard

In the multi-app mode, the touch keyboard will be automatically triggered when there is an input needed and no physical keyboard is attached on touch-enabled devices. You don’t need to configure any other setting to enforce this behavior. 


