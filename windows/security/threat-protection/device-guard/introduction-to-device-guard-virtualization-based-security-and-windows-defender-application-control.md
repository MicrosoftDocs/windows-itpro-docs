---
title: Windows Defender Application Control and virtualization-based code integrity (Windows 10)
description: Hardware and software system integrity-hardening capabilities that can be deployed separately or in combination with Windows Defender Application Control (WDAC).
keywords: virtualization, security, malware, device guard
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.reviewer: 
manager: dansimp
ms.custom: asr
ms.technology: mde
---

# Windows Defender Application Control and virtualization-based protection of code integrity

**Applies to**

- Windows 10
- Windows Server 2016

Windows 10 includes a set of hardware and OS technologies that, when configured together, allow enterprises to "lock down" Windows 10 systems so they behave more like mobile devices. In this configuration, Windows Defender Application Control (WDAC) is used to restrict devices to run only approved apps, while the OS is hardened against kernel memory attacks using hypervisor-protected code integrity (HVCI).

WDAC policies and HVCI are powerful protections that can be used separately. However, when these two technologies are configured to work together, they present a strong protection capability for Windows 10 devices.  

Using WDAC to restrict devices to only authorized apps has these advantages over other solutions:

1. WDAC policy is enforced by the Windows kernel itself, and the policy takes effect early in the boot sequence before nearly all other OS code and before traditional antivirus solutions run.
2. WDAC lets you set application control policy for code that runs in user mode, kernel mode hardware and software drivers, and even code that runs as part of Windows.
3. Customers can protect the WDAC policy even from local administrator tampering by digitally signing the policy. To change signed policy requires both administrative privilege and access to the organization’s digital signing process. This makes it difficult for an attacker, including one who has managed to gain administrative privilege, to tamper with WDAC policy.
4. You can protect the entire WDAC enforcement mechanism with HVCI. Even if a vulnerability exists in kernel mode code, HVCI greatly reduces the likelihood that an attacker could successfully exploit it. This is important because an attacker that compromises the kernel could normally disable most system defenses, including those enforced by WDAC or any other application control solution.

## Why we no longer use the Device Guard brand

When we originally promoted Device Guard, we did so with a specific security promise in mind. Although there were no direct dependencies between WDAC and HVCI, we intentionally focused our discussion around the lockdown state achieved when using them together. However, since HVCI relies on Windows virtualization-based security, it has hardware, firmware, and kernel driver compatibility requirements that some older systems can’t meet. This misled many people to assume that if systems couldn't use HVCI, they couldn’t use WDAC either.

WDAC has no specific hardware or software requirements other than running Windows 10, which means customers were denied the benefits of this powerful application control capability due to Device Guard confusion.

Since the initial release of Windows 10, the world has witnessed numerous hacking and malware attacks where application control alone could have prevented the attack altogether. With this in mind, we now discuss and document WDAC as an independent technology within our security stack and gave it a name of its own: [Windows Defender Application Control](../windows-defender-application-control/windows-defender-application-control.md).
We hope this change will help us better communicate options for adopting application control within your organizations.

## Related articles

- [Windows Defender Application Control](../windows-defender-application-control/windows-defender-application-control.md)
- [Dropping the Hammer Down on Malware Threats with Windows 10’s Windows Defender](https://channel9.msdn.com/Events/Ignite/2015/BRK2336)
- [Driver compatibility with Windows Defender in Windows 10](https://blogs.msdn.microsoft.com/windows_hardware_certification/2015/05/22/driver-compatibility-with-device-guard-in-windows-10)
- [Code integrity](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/dd348642(v=ws.10))
