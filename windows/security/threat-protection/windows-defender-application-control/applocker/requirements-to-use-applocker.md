---
title: Requirements to use AppLocker (Windows 10)
description: This topic for the IT professional lists software requirements to use AppLocker on the supported Windows operating systems.
ms.assetid: dc380535-071e-4794-8f9d-e5d1858156f0
ms.reviewer: 
ms.author: macapara
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mjcaparas
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Requirements to use AppLocker

**Applies to**
 -   Windows 10
 -   Windows Server

This topic for the IT professional lists software requirements to use AppLocker on the supported Windows operating systems.

## General requirements

To use AppLocker, you need:

-   A device running a supported operating system to create the rules. The computer can be a domain controller.
-   For Group Policy deployment, at least one device with the Group Policy Management Console (GPMC) or Remote Server Administration Tools (RSAT) installed to host the AppLocker rules.
-   Devices running a supported operating system to enforce the AppLocker rules that you create.

>**Note:**  You can use Software Restriction Policies with AppLocker, but with some limitations. For more info, see [Use AppLocker and Software Restriction Policies in the same domain](use-applocker-and-software-restriction-policies-in-the-same-domain.md).
 
## Operating system requirements

The following table show the on which operating systems AppLocker features are supported.

| Version | Can be configured | Can be enforced | Available rules | Notes |
| - | - | - | - | - |
| Windows 10| Yes| Yes| Packaged apps<br/>Executable<br/>Windows Installer<br/>Script<br/>DLL| You can use the [AppLocker CSP](https://msdn.microsoft.com/library/windows/hardware/dn920019.aspx) to configure AppLocker policies on any edition of Windows 10 supported by Mobile Device Management (MDM). You can only manage AppLocker with Group Policy on devices running Windows 10 Enterprise, Windows 10 Education, and Windows Server 2016. |
| Windows Server 2016<br/>Windows Server 2012 R2<br/>Windows Server 2012| Yes| Yes| Packaged apps<br/>Executable<br/>Windows Installer<br/>Script<br/>DLL| |
| Windows 8.1 Pro| Yes| No| N/A||
| Windows 8.1 Enterprise| Yes| Yes| Packaged apps<br/>Executable<br/>Windows Installer<br/>Script<br/>DLL| |
| Windows RT 8.1| No| No| N/A||
| Windows 8 Pro| Yes| No| N/A||
| Windows 8 Enterprise| Yes| Yes| Packaged apps<br/>Executable<br/>Windows Installer<br/>Script<br/>DLL||
| Windows RT| No| No| N/A| |
| Windows Server 2008 R2 Standard| Yes| Yes| Executable<br/>Windows Installer<br/>Script<br/>DLL| Packaged app rules will not be enforced.|
| Windows Server 2008 R2 Enterprise|Yes| Yes| Executable<br/>Windows Installer<br/>Script<br/>DLL| Packaged app rules will not be enforced.|
| Windows Server 2008 R2 Datacenter| Yes| Yes| Executable<br/>Windows Installer<br/>Script<br/>DLL| Packaged app rules will not be enforced.|
| Windows Server 2008 R2 for Itanium-Based Systems| Yes| Yes| Executable<br/>Windows Installer<br/>Script<br/>DLL| Packaged app rules will not be enforced.|
| Windows 7 Ultimate| Yes| Yes| Executable<br/>Windows Installer<br/>Script<br/>DLL| Packaged app rules will not be enforced.|
| Windows 7 Enterprise| Yes| Yes| Executable<br/>Windows Installer<br/>Script<br/>DLL| Packaged app rules will not be enforced.|
| Windows 7 Professional| Yes| No| Executable<br/>Windows Installer<br/>Script<br/>DLL| No AppLocker rules are enforced.|
 

AppLocker is not supported on versions of the Windows operating system not listed above. Software Restriction Policies can be used with those versions. However, the SRP Basic User feature is not supported on the above operating systems.

## See also
- [Administer AppLocker](administer-applocker.md)
- [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md)
- [Optimize AppLocker performance](optimize-applocker-performance.md)
- [Use AppLocker and Software Restriction Policies in the same domain](use-applocker-and-software-restriction-policies-in-the-same-domain.md)
- [Manage packaged apps with AppLocker](manage-packaged-apps-with-applocker.md)
- [AppLocker Design Guide](applocker-policies-design-guide.md)
