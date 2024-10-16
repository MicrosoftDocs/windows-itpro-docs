---
title: Requirements to use AppLocker
description: This article for the IT professional lists software requirements to use AppLocker on the supported Windows operating systems.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Requirements to use AppLocker

This article for the IT professional lists software requirements to use AppLocker on the supported Windows operating systems.

## General requirements

To use AppLocker, you need:

- A device running a supported operating system to create the rules. The computer can be a domain controller.
- For Group Policy deployment, at least one device with the Group Policy Management Console (GPMC) or Remote Server Administration Tools (RSAT) installed to host the AppLocker rules.
- Devices running a supported operating system to enforce the AppLocker rules that you create.

>[!NOTE]
>As of [KB 5024351](https://support.microsoft.com/help/5024351), Windows 10 versions 2004 and newer and all Windows 11 versions no longer require a specific edition of Windows to enforce AppLocker policies.

## Operating system requirements

The following table shows the Windows versions on which AppLocker features are supported.

| Version | Can be configured | Can be enforced | Available rules | Notes |
| --- | --- | --- | --- | --- |
| Windows 10 and Windows 11 | Yes | Yes | Packaged apps <br/> Executable <br/> Windows Installer <br/> Script <br/> DLL | Policies are supported on all editions Windows 10 version 2004 and newer with [KB 5024351](https://support.microsoft.com/help/5024351). <br> <br> Windows versions older than version 2004, including Windows Server 2019: <br> <ul> <li> Policies deployed through GP are only supported on Enterprise and Server editions. </li> <li> Policies deployed through MDM are supported on all editions. </li> </ul> |
| Windows Server 2019 <br/> Windows Server 2016 <br/> Windows Server 2012 R2 | Yes | Yes | Packaged apps <br/> Executable <br/> Windows Installer <br/> Script <br/> DLL| |
| Windows 8.1 Pro | Yes | No | N/A | |
| Windows 8.1 Enterprise | Yes | Yes | Packaged apps <br/> Executable <br/> Windows Installer <br/> Script <br/> DLL | |

AppLocker isn't supported on versions of the Windows operating system not listed in the preceding table.

## See also

- [Administer AppLocker](administer-applocker.md)
- [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md)
- [Optimize AppLocker performance](optimize-applocker-performance.md)
- [Manage packaged apps with AppLocker](manage-packaged-apps-with-applocker.md)
- [AppLocker Design Guide](applocker-policies-design-guide.md)
