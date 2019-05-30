---
title: End session - ending a Surface Hub meeting
description: To end a Surface Hub meeting, tap End session. Surface Hub cleans up the application state, operating system state, and the user interface so that Surface Hub is ready for the next meeting.
keywords: I am Done, end Surface Hub meeting, finish Surface Hub meeting, clean up Surface Hub meeting
ms.prod: surface-hub
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 07/27/2017
ms.localizationpriority: medium
---

# End a Surface Hub meeting with End session
Surface Hub is a collaboration device designed to be used in meeting spaces by different groups of people. At the end of a meeting, users can tap **End session** to clean up any sensitive data and prepare the device for the next meeting. Surface Hub will clean up, or reset, the following states:
- Applications
- Operating system
- User interface

This topic explains what **End session** resets for each of these states.

## Applications
When you start apps on Surface Hub, they are stored in memory and data is stored at the application level. Data is available to all users during that session (or meeting) until date is removed or overwritten. When **End session** is selected, Surface Hub application state is cleared out by closing applications, deleting browser history, resetting applications, and removing Skype logs.

### Close applications
Surface Hub closes all visible windows, including Win32 and Universal Windows Platform (UWP) applications. The application close stage uses the multitasking view to query the visible windows. Win32 windows that do not close within a certain timeframe are closed using **TerminateProcess**. 
   
### Delete browser history
Surface Hub uses Delete Browser History (DBH) in Edge to clear Edge history and cached data. This is similar to how a user can clear out their browser history manually, but **End session** also ensures that application states are cleared and data is removed before the next session, or meeting, starts. 
 
### Reset applications
**End session** resets the state of each application that is installed on the Surface Hub. Resetting an application clears all background tasks, application data, notifications, and user consent dialogs. Applications are returned to their first-run state for the next people that use Surface Hub.  
 
### Remove Skype logs
Skype does not store personally-identifiable information on Surface Hub. Information is stored in the Skype service to meet existing Skype for Business guidance. Local Skype logging information is the only data removed when **End session** is selected. This includes Unified Communications Client Platform (UCCP) logs and media logs.   

## Operating System
The operating system hosts a variety of information about the state of the sessions that needs to be cleared after each Surface Hub meeting. 

### File System
Meeting attendees have access to a limited set of directories on the Surface Hub. When **End session** is selected, Surface Hub clears these directories:<br>
- Music
- Videos
- Documents
- Pictures
- Downloads

Surface Hub also clears these directories, since many applications often write to them:
- Desktop
- Favorites
- Recent
- Public Documents
- Public Music
- Public Videos
- Public Downloads

### Credentials
User credentials that are stored in **TokenBroker**, **PasswordVault**, or **Credential Manager** are cleared when you tap **End session**.

## User interface
User interface (UI) settings are returned to their default values when **End session** is selected. 

### UI items
- Reset Quick Actions to default state
- Clear Toast notifications
- Reset volume levels
- Reset sidebar width
- Reset tablet mode layout
- Sign user out of Office 365 meetings and files

### Accessibility
Accessibility features and apps are returned to default settings when **End session** is selected.
- Filter keys
- High contrast
- Sticky keys
- Toggle keys
- Mouse keys
- Magnifier
- Narrator

### Clipboard
The clipboard is cleared to remove data that was copied to the clipboard during the session. 

## Frequently asked questions
**What happens if I forget to tap End session at the end of a meeting, and someone else uses the Surface Hub later?**<br>
Surface Hub only cleans up meeting content when users tap **End session**. If you leave the meeting without tapping **End session**, the device will return to the welcome screen after some time. From the welcome screen, users have the option to resume the previous session or start a new one. You can also disable the ability to resume a session if **End session** is not pressed.

**Are documents recoverable?**<br> 
Removing files from the hard drive when **End session** is selected is just like any other file deletion from a hard disk drive. Third-party software might be able to recover data from the hard disk drive, but file recovery is not a supported feature on Surface Hub. To prevent data loss, always save the data you need before leaving a meeting.

**Do the clean-up actions from End session comply with the US Department of Defense clearing and sanitizing standard: DoD 5220.22-M?**<br>
No. Currently, the clean-up actions from **End session** do not comply with this standard.  
  
