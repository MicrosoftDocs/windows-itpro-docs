---
title: I am done - ending a Surface Hub meeting
description: To end a Surface Hub meeting, tap I am Done. Surface Hub cleans up the application state, operating system state, and the user interface so that Surface Hub is ready for the next meeting.
keywords: I am Done, end Surface Hub meeting, finish Surface Hub meeting, clean up Surface Hub meeting
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: surfacehub
author: TrudyHa
localizationpriority: medium
---

# End a Surface Hub meeting with I'm Done
Surface Hub is a collaboration device designed to be used simultaneously and sequentially by multiple people. At the end of a Surface Hub meeting, one of the attendees can tap or click **I'm Done** to end the meeting. Tapping **I'm Done** tells Surface Hub to clean up info from the current meeting, so that it will be ready for the next meeting. When a meeting attendee taps **I'm Done**, Surface Hub cleans up, or resets, these states. 
- Applications
- Operating system
- User interface

This topic explains what **I'm Done** resets for each of these states. 

## Applications
When you start apps on Surface Hub, they are stored in memory and data is stored at the application level. Data is available to all users during that session (or meeting) until date is removed or overwritten. When **I'm done** is selected, Surface Hub application state is cleared out by closing applications, deleting browser history, resetting applications, and removing Skype logs.

### Close applications
Surface Hub closes all visible windows, including Win32 and Universal Windows Platform (UWP) applications. The application close stage uses the multitasking view to query the visible windows. Win32 windows that do not close within a certain timeframe are closed using **TerminateProcess**. 
   
### Delete browser history
Surface Hub uses Delete Browser History (DBH) in Edge to clear Edge history and cached data. This is similar to how a user can clear out their browser history manually, but **I'm Done** also ensures that application states are cleared and data is removed before the next session, or meeting, starts. 
 
### Reset applications
**I'm Done** resets the state of each application that is installed on the Surface Hub. Resetting an application clears all background tasks, application data, notifications, and user consent dialogs. Applications are returned to their first-run state for the next people that use Surface Hub.  
 
### Remove Skype logs
Skype does not store personally-identifiable information on Surface Hub. Information is stored in the Skype service to meet existing Skype for Business guidance. Local Skype logging information is the only data removed when **I'm Done** is selected. This includes Unified Communications Client Platform (UCCP) logs and media logs.   

## Operating System
The operating system hosts a variety of information about the state of the sessions that needs to be cleared after each Surface Hub meeting. 
### File System
Meeting attendees have access to a limited set of directories on the Surface Hub. When **I'm Done** is selected, Surface Hub clears these directories:<br>
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
User credentials that are stored in **TokenBroker**, **PasswordVault**, or **Credential Manager** are cleared when you tap I’m done.

## User interface
User interface (UI) settings are returned to their default values when **I'm Done** is selected. 

### UI items
- Reset Quick Actions to default state
- Clear Toast notifications
- Reset volume levels
- Reset sidebar width
- Reset tablet mode layout

### Accessibility
Accessibility features and apps are returned to default settings when **I'm Done** is selected.
- Filter keys
- High contrast
- Stickey keys
- Toggle keys
- Mouse keys
- Magnifier
- Narrator

### Clipboard
The clipboard is cleared to remove data that was copied to the clipboard during the session. 

## Frequently asked questions
**What happens if I forget to tap I'm Done at the end of a meeting, and someone else uses the Surface Hub later?**<br>
When you don't tap **I"m Done** at the end of your meeting, Surface Hub enters a Resume state. This is similar to leaving content on a whiteboard in a meeting room, and forgetting to erase the whiteboard. When you return to the meeting room, that content will still be on the whiteboard unless someone erarses it. With Surface Hub, meeting content is still available if an attendee doesn't tap **I'm Done**. However, Surface Hub removes all meeting data during daily maintenance. Any meeting that wasn't ended with **I'm Done** will be cleaned up during maintenance. 

**Are documents recoverable?**<br> 
Removing files from the hard drive when **I'm Done** is selected is just like any other file deletion from a hard disk drive. 3rd-party software might be able to recover data from the hard disk drive, but file recovery is not a supported feature on Surface Hub. 

**Do the clean-up actions from I'm Done comply with the US Department of Defense clearing and sanitizing standard: DoD 5220.22-M?**<br>
No. Currently, the clean-up actions from **I'm Done** do not comply with this standard.  

  