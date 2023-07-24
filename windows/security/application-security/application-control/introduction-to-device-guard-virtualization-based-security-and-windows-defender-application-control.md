---
title: Windows Defender Application Control and virtualization-based code integrity
description: Hardware and software system integrity-hardening capabilities that can be deployed separately or in combination with Windows Defender Application Control (WDAC).
ms.prod: windows-client
ms.localizationpriority: medium
author: vinaypamnani-msft
ms.author: vinpa
ms.reviewer:
manager: aaroncz
ms.custom: asr
ms.technology: itpro-security
ms.date: 03/16/2023
ms.topic: article
---

# Windows Defender Application Control and virtualization-based protection of code integrity

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and higher

Windows includes a set of hardware and OS technologies that, when configured together, allow enterprises to "lock down" Windows systems so they behave more like mobile devices. In this configuration, [**Windows Defender Application Control (WDAC)**](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control) is used to restrict devices to run only approved apps, while the OS is hardened against kernel memory attacks using [**memory integrity**](../../hardware-security/enable-virtualization-based-protection-of-code-integrity.md).

> [!NOTE]
> Memory integrity is sometimes referred to as *hypervisor-protected code integrity (HVCI)* or *hypervisor enforced code integrity*, and was originally released as part of *Device Guard*. Device Guard is no longer used except to locate memory integrity and VBS settings in Group Policy or the Windows registry.

WDAC policies and memory integrity are powerful protections that can be used separately. However, when these two technologies are configured to work together, they present a strong protection capability for Windows devices.

Using WDAC to restrict devices to only authorized apps has these advantages over other solutions:

1. The Windows kernel handles enforcement of WDAC policy and requires no other services or agents.
2. The WDAC policy takes effect early in the boot sequence before nearly all other OS code and before traditional antivirus solutions run.
3. WDAC lets you set application control policy for any code that runs on Windows, including kernel mode drivers and even code that runs as part of Windows.
4. Customers can protect the WDAC policy even from local administrator tampering by digitally signing the policy. Changing signed policy requires both administrative privilege and access to the organization's digital signing process. Using signed policies makes it difficult for an attacker, including one who has managed to gain administrative privilege, to tamper with WDAC policy.
5. You can protect the entire WDAC enforcement mechanism with memory integrity. Even if a vulnerability exists in kernel mode code, memory integrity greatly reduces the likelihood that an attacker could successfully exploit it. Without memory integrity, an attacker who compromises the kernel could normally disable most system defenses, including application control policies enforced by WDAC or any other application control solution.

There are no direct dependencies between WDAC and memory integrity. You can deploy them individually or together and there's no order in which they must be deployed.

Memory integrity relies on Windows virtualization-based security, and has hardware, firmware, and kernel driver compatibility requirements that some older systems can't meet.

WDAC has no specific hardware or software requirements.

## Related articles

- [Windows Defender Application Control](../../threat-protection/windows-defender-application-control/windows-defender-application-control.md)
- [Memory integrity](../../hardware-security/enable-virtualization-based-protection-of-code-integrity.md)
- [Driver compatibility with memory integrity](https://techcommunity.microsoft.com/t5/windows-hardware-certification/driver-compatibility-with-device-guard-in-windows-10/ba-p/364865)
