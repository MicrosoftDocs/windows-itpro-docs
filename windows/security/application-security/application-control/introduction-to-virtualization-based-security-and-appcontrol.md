---
title: App Control for Business and virtualization-based code integrity
description: Hardware and software system integrity-hardening capabilities that can be deployed separately or in combination with App Control for Business.
ms.localizationpriority: medium
author: vinaypamnani-msft
ms.author: vinpa
manager: aaroncz
ms.date: 09/11/2024
ms.topic: conceptual
appliesto:
- ✅ <a href=\"https://learn.microsoft.com/windows/release-health/supported-versions-windows-client\" target=\"_blank\">Windows 11</a>
- ✅ <a href=\"https://learn.microsoft.com/windows/release-health/supported-versions-windows-client\" target=\"_blank\">Windows 10</a>
- ✅ <a href=\"https://learn.microsoft.com/windows/release-health/windows-server-release-info\" target=\"_blank\">Windows Server 2022</a>
- ✅ <a href=\"https://learn.microsoft.com/windows/release-health/windows-server-release-info\" target=\"_blank\">Windows Server 2019</a>
- ✅ <a href=\"https://learn.microsoft.com/windows/release-health/windows-server-release-info\" target=\"_blank\">Windows Server 2016</a>
---

# App Control and virtualization-based protection of code integrity

Windows includes a set of hardware and OS technologies that, when configured together, allow enterprises to "lock down" Windows systems so they behave more like kiosk devices. In this configuration, [**App Control for Business**](app-control-for-business/appcontrol.md) is used to restrict devices to run only approved apps, while the OS is hardened against kernel memory attacks using [**memory integrity**](../../hardware-security/enable-virtualization-based-protection-of-code-integrity.md).

> [!NOTE]
> Memory integrity is sometimes referred to as **hypervisor-protected code integrity (HVCI)** or **hypervisor enforced code integrity**, and was originally released as part of **Device Guard**. Device Guard is no longer used except to locate memory integrity and VBS settings in Group Policy or the Windows registry.

App Control policies and memory integrity are powerful protections that can be used separately. However, when these two technologies are configured to work together, they present a strong protection capability for Windows devices. Using App Control to restrict devices to only authorized apps has these advantages over other solutions:

1. The Windows kernel handles enforcement of App Control policy and requires no other services or agents.
1. The App Control policy takes effect early in the boot sequence before nearly all other OS code and before traditional antivirus solutions run.
1. App Control lets you set application control policy for any code that runs on Windows, including kernel mode drivers and even code that runs as part of Windows.
1. Customers can protect the App Control policy even from local administrator tampering by digitally signing the policy. Changing signed policy requires both administrative privilege and access to the organization's digital signing process. Using signed policies makes it difficult for an attacker, including one who manages to gain administrative privilege, to tamper with App Control policy.
1. You can protect the entire App Control enforcement mechanism with memory integrity. Even if a vulnerability exists in kernel mode code, memory integrity greatly reduces the likelihood that an attacker could successfully exploit it. Without memory integrity, an attacker who compromises the kernel could normally disable most system defenses, including application control policies enforced by App Control or any other application control solution.

There are no direct dependencies between App Control and memory integrity. You can deploy them individually or together and there's no order in which they must be deployed.

Memory integrity relies on Windows Virtualization-based security, and has hardware, firmware, and kernel driver compatibility requirements that some older systems can't meet.

App Control has no specific hardware or software requirements.

## Related articles

- [App Control for Business](app-control-for-business/appcontrol.md)
- [Memory integrity](../../hardware-security/enable-virtualization-based-protection-of-code-integrity.md)
- [Driver compatibility with memory integrity](https://techcommunity.microsoft.com/t5/windows-hardware-certification/driver-compatibility-with-device-guard-in-windows-10/ba-p/364865)
