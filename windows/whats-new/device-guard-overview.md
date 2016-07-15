---
title: Device Guard overview (Windows 10)
description: Device Guard is a combination of enterprise-related hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications.
ms.assetid: FFE244EE-5804-4CE8-A2A9-48F49DC3AEF2
ms.pagetype: mobile, security
keywords: Device Guard
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
author: brianlic-msft
---

# Device Guard overview

**Applies to**
-   Windows 10
-   Windows 10 Mobile
-   Windows Server 2016

Device Guard is a combination of enterprise-related hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications. If the app isn’t trusted it can’t run, period. It also means that even if an attacker manages to get control of the Windows kernel, he or she will be much less likely to be able to run malicious executable code after the computer restarts because of how decisions are made about what can run and when.

Device Guard uses the new virtualization-based security in Windows 10 Enterprise to isolate the Code Integrity service from the Microsoft Windows kernel itself, letting the service use signatures defined by your enterprise-controlled policy to help determine what is trustworthy. In effect, the Code Integrity service runs alongside the kernel in a Windows hypervisor-protected container.

For details on how to implement Device Guard, see [Device Guard deployment guide](../keep-secure/device-guard-deployment-guide.md).

## Why use Device Guard
With thousands of new malicious files created every day, using traditional methods like signature-based detection to fight against malware provides an inadequate defense against new attacks. Device Guard on Windows 10 Enterprise changes from a mode where apps are trusted unless blocked by an antivirus or other security solutions, to a mode where the operating system trusts only apps authorized by your enterprise.
Device Guard also helps protect against [zero day attacks](http://go.microsoft.com/fwlink/p/?linkid=534209) and works to combat the challenges of [polymorphic viruses](http://go.microsoft.com/fwlink/p/?LinkId=534210).
## Virtualization-based security using Windows 10 Enterprise Hypervisor

Windows 10 Enterprise Hypervisor introduces new capabilities around virtual trust levels, which helps Windows 10 Enterprise services to run in a protected environment, in isolation from the running operating system. Windows 10 Enterprise virtualization-based security helps protect kernel code integrity and helps to provide credential isolation for the local security authority (LSA). Letting the Kernel Code Integrity service run as a hypervisor-hosted service increases the level of protection around the root operating system, adding additional protections against any malware that compromises the kernel layer. 

>**Important**&nbsp;&nbsp;Device Guard devices that run Kernel Code Integrity with virtualization-based security (VBS) must have compatible drivers (legacy drivers can be updated) and meet requirements for the hardware and firmware that support virtualization-based security. For more information, see [Hardware, firmware, and software requirements for Device Guard](../keep-secure/requirements-and-deployment-planning-guidelines-for-device-guard.md#hardware-firmware-and-software-requirements-for-device-guard)
