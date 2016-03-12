---
title: Common Compatibility Issues (Windows 10)
MSHAttr: PreferredLib /library
ms.assetid: f5ad621d-bda2-45b5-ae85-bc92970f602f
description: 
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: TrudyHa
---

# Common Compatibility Issues


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

Compatibility issues tend to occur with the following technologies:

-   **User Account Control (UAC)**: Adds security to Windows by limiting administrator-level access to the computer, restricting most users to running as Standard Users. UAC limits the context in which a process executes to minimize the ability of the user to inadvertently expose the computer to viruses or other malware. UAC affects any application installer or update that requires Administrator permissions to run, performs Administrator checks or actions, or attempts to write to a non-virtualized registry location.

-   **Windows Resource Protection (WRP)**: Enables applications to function properly even if an application attempts to write to protected system files or registry locations. WRP creates a temporary work area and redirects write actions for the application session. WRP affects any application installation that attempts to replace, modify, or delete protected operating system files or registry keys. Attempts typically fail and return an Access Denied error.

-   **Internet Explorer Protected Mode**: Helps to defend against elevation-of-privilege attacks by restricting the ability to write to any local-computer-zone resources other than temporary Internet files. This mode affects any website or web application that attempts to modify user files or registry keys or that attempts to open a new window in another domain.

-   **Deprecation**: Any application that uses .dll files, executable (.exe) files, COM objects, registry keys, APIs, or other files that have been deprecated from previous versions of Windows may lose functionality or fail to start.

-   **Graphical Identification and Authentication (GINA) DLL**: Prior to the release of Windows Vista, independent software vendors (ISVs) were able to modify authentication by installing a GINA DLL. The GINA DLL performed the user identification and authentication.

    The current authentication model does not require the GINA DLL and ignores all previous GINA DLLs. This change affects any application or hardware component that attempts to log on by using customized logon applications, including biometric devices (fingerprint readers), customized user interfaces, and virtual private network (VPN) solutions for remote users with customized logon user interfaces.

-   **Session 0**: Prior to the release of Windows Vista, the first user who logged on to a computer ran in Session 0, which is the same session that is used for system services. The current model requires all users to run in Session 1 or later so that no user runs in the same session as the system services. Applications will fail to start if they depend on *interactive services*. An interactive service is any service that attempts to send a window message, attempts to locate a window or additional service, or attempts to run any user processes that open the same named object, unless it is a globally named object.

-   **Windows Filtering Platform (WFP)**: WFP is an API that enables developers to create code that interacts with the filtering that occurs at several layers in the networking stack and throughout the operating system. If you are using a previous version of the WFP API in your environment, you might experience failures when running network-scanning, antivirus, or firewall applications.

-   **Operating System Version Changes**: The operating system version number changes with each operating system release. The **GetVersion** function returns the version number when queried by an application. This change affects any application or application installer that specifically checks for the operating system version and might prevent the installation from occurring or the application from running.

-   **Windows 64-bit**: 64-bit versions of Windows use the Windows on Windows 64 (WOW64) emulator. This emulator enables the 64-bit operating system to run 32-bit applications. The use of this emulator might cause an application or a component that uses 16-bit executables or installers, or 32-bit kernel drivers, to fail to start or to function incorrectly.

## Related topics


[Using Compatibility Monitor to Send Feedback](using-compatibility-monitor-to-send-feedback.md)

 

 





