---
title: Operations Troubleshooting
description: Operations Troubleshooting
author: dansimp
ms.assetid: 948d7869-accd-44da-974f-93409234dee7
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Operations Troubleshooting


This topic includes information that you can use to help troubleshoot general operational issues in Microsoft Enterprise Desktop Virtualization (MED-V) 2.0.

## Troubleshooting Issues in MED-V Operations


The following are some issues end users might encounter when they run MED-V and solutions to help troubleshoot these issues:

**Documentation Redirection Fails**. This issue typically occurs when an end user’s My Documents folder points to a network location. Windows does not support creating a share from another shared folder. When a drive or folder is redirected to the guest, RDP\\Windows Virtual PC creates a share for that folder. Therefore, if the My Documents folder on the host is already pointing to a share, RDP\\Windows Virtual PC cannot create a share of a share.

Another possible cause of this issue is that the credentials that are required to connect to the network resource might differ from the user’s domain credentials. MED-V might be detecting that documents are redirected on the host, send that information to the guest, and then try to reconnect the network resource. If the user’s credentials do not authenticate, MED-V might stop trying to authenticate.

**Solution**

Try one of the following to resolve this issue:

-   Set the user’s root directory inside Active Directory. The guest and host should then connect to the same network resource.

-   Instead of redirecting the My Documents folder to a UNC path, map it to a drive letter (on the host, map a drive that points to the network resource). The My Documents folder can then be set to use the drive letter instead of the UNC path. The guest will then redirect to that same mapped drive as expected.

-   Create a startup script in the guest that redirects the My Documents folder to the network resource and provides additional credentials as needed.

**URL Redirection Fails**. A URL that you have specified for redirection from the host to the guest is not redirecting as intended or is returning an error message that indicates that the website does not exist.

**Solution**

This error can occur when there is a misspelling or incorrect use of characters, such as asterisk (\*), in the URL redirection information. Check the registry value for URL redirection and correct any mistakes.

The registry key is called `RedirectUrls` and is typically located at:

Computer\\HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\MEDV\\v2\\UserExperience

**Icon in Taskbar Misleading**. By default, the icon that appears in an end user’s taskbar for published applications and redirected URLs is the icon for Windows Virtual PC. If an end user is not aware of this default behavior, they can become confused when looking at the taskbar to locate their application.

**Solution**

The only way to avoid this default behavior is to change the user settings for the taskbar properties as follows:

1.  Right-click the taskbar and then click **Properties**.

2.  In the **Taskbar and Start Menu Properties** dialog box, click the **Taskbar** tab.

3.  In the drop-down bar for the **Taskbar buttons** box, select **Never combine**.

4.  Click **OK**.

The expected icons for published applications and redirected URLs are displayed.

**Warning Issued if Second User Attempts Log on or if Virtual Machine is in Use**. A warning message is issued when a second user logs on to a MED-V workspace while a first user is still running MED-V. The warning is also issued if MED-V is started while the virtual machine is being used, for example, if the virtual machine was started through Windows Virtual PC on the **Start** menu. When the end user accepts the warning message, MED-V shuts down.

**Solution**

An end user must verify that all other users are logged off MED-V before they try to log on. This ensures that no other instance of MED-V is running and that Windows Virtual PC is not in control of the virtual machine.

**Beeps Heard During First Time Setup**. Occasionally, beeps are heard while MED-V is running first time setup. This can be confusing to an end user. The beeps are originating from the virtual machine when it performs certain actions, such as shutting down.

**Solution**

You can stop the beep service by specifying the "net stop beep" command at the beginning of each virtual machine start sequence. Or you can disable the beep service by specifying the “sc config beep start= disabled" command. You can specify these commands either before you seal the image or as part of Sysprep.

**Multiple Network Connections Created for MED-V Workspaces in BRIDGED Mode**. If first time setup is creating a MED-V workspace that is configured for NAT mode, it only creates a single network connection in Windows Virtual PC. However, if first time setup is creating a MED-V workspace that is configured for BRIDGED mode, it creates a separate network connection for each network adapter that is installed in the computer, because MED-V cannot determine which network adapter is active. This also ensures that roaming users always have a network adapter available for wired and wireless connections.

**Solution**

None.

**MED-V Application is Unresponsive for Too Long when Closing**. In some instances, a MED-V application stops responding when it is trying to close.

**Solution**

You can specify the length of time that MED-V waits to close unresponsive applications by setting the WaitToKillAppTimeout registry key in the guest virtual machine. For more information, see [How To Increase Shutdown Time So That Processes Can Quit Properly in Windows XP](https://go.microsoft.com/fwlink/?LinkId=206819) (https://go.microsoft.com/fwlink/?LinkId=206819).

**Renaming a Published Application Shortcut in the Guest Virtual Machine does not Change the Published Name in the Host**. When you publish an application by creating a shortcut and then rename the shortcut in the guest virtual machine, the original application name remains in the host **Start** menu. The program continues to run as expected, however the program will always retain the original name.

**Solution**

None. This is a known behavior of Windows Virtual PC.

**Moving a Shortcut in the Guest Virtual Machine does not Update the Location on the Host Computer Start Menu**. MED-V application shortcuts that are published to the host computer **Start** menu are cataloged in the registry. If you move an application shortcut into a subfolder, the registry is not updated to reflect the change.

**Solution**

Follow these steps to change the location of a MED-V application shortcut:

1.  When MED-V is running, open up Windows Explorer on the MED-V guest virtual machine.

2.  Browse to the "%ALLUSERSPROFILE%\\Start Menu\\Programs" directory.

3.  Move the application shortcuts out of the startmenu or programs folders.

4.  After about 30 seconds, validate that the shortcuts are removed from the host computer **Start** menu.

5.  Move the application shortcuts back in to the new program folders under the Start Menu\\Programs directory.

6.  After about 30 seconds, validate that the shortcuts are updated in the host computer **Start** Menu.

**Published Applications can Time Out after Sitting Idle**. In some cases, published applications will time out if they have sat idle for some time. This situation only occurs if IPsec is enabled and the MED-V workspace is configured for NAT mode. This situation does not occur if running in BRIDGED mode.

**Solution**

Disable IPsec when you are running the MED-V workspace in NAT mode.

**Pinning a Published Application to the Taskbar Bypasses MED-V**. If an end user pins a published application to the taskbar and then closes the application, MED-V is bypassed the next time that the application is opened from the taskbar icon. Instead, the application opens directly in a VMSAL window.

**Solution**

Do not pin the applications published in MED-V to the taskbar.

## Related topics


[Security Best Practices for MED-V Operations](security-best-practices-for-med-v-operations.md)

[Deployment Troubleshooting](deployment-troubleshooting.md)

 

 





