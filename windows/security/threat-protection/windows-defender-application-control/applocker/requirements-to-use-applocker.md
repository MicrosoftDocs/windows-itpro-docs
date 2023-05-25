---
title: Requirements to use AppLocker 
description: This topic for the IT professional lists software requirements to use AppLocker on the supported Windows operating systems.
ms.assetid: dc380535-071e-4794-8f9d-e5d1858156f0
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: conceptual
ms.date: 09/21/2017
ms.technology: itpro-security
---

# Requirements to use AppLocker

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic for the IT professional lists software requirements to use AppLocker on the supported Windows operating systems.

## General requirements

To use AppLocker, you need:

-   A device running a supported operating system to create the rules. The computer can be a domain controller.
-   For Group Policy deployment, at least one device with the Group Policy Management Console (GPMC) or Remote Server Administration Tools (RSAT) installed to host the AppLocker rules.
-   Devices running a supported operating system to enforce the AppLocker rules that you create.

>[!NOTE]
>As of [KB 5024351](https://support.microsoft.com/help/5024351), Windows 10 versions 2004 and newer and all Windows 11 versions no longer require a specific edition of Windows to enforce AppLocker policies 
 
## Operating system requirements

The following table shows the Windows versions on which AppLocker features are supported.

| Version | Can be configured | Can be enforced | Available rules | Notes |
| - | - | - | - | - |
| Windows 10 and Windows 11| Yes| Yes| Packaged apps<br/>Executable<br/>Windows Installer<br/>Script<br/>DLL| Policies are supported on all editions Windows 10 version 2004 and newer with [KB 5024351](https://support.microsoft.com/help/5024351).<br><br>Windows versions older than version 2004, including Windows Server 2019:<br><ul><li>Policies deployed through GP are only supported on Enterprise and Server editions.</li><li>Policies deployed through MDM are supported on all editions.</li></ul> |
| Windows Server 2019<br/>Windows Server 2016<br/>Windows Server 2012 R2<br/>Windows Server 2012| Yes| Yes| Packaged apps<br/>Executable<br/>Windows Installer<br/>Script<br/>DLL| |
| Windows 8.1 Pro| Yes| No| N/A||
| Windows 8.1 Enterprise| Yes| Yes| Packaged apps<br/>Executable<br/>Windows Installer<br/>Script<br/>DLL| |
| Windows RT 8.1| No| No| N/A||
| Windows 8 Pro| Yes| No| N/A||
| Windows 8 Enterprise| Yes| Yes| Packaged apps<br/>Executable<br/>Windows Installer<br/>Script<br/>DLL||
| Windows RT| No| No| N/A| |
| Windows Server 2008 R2 Standard| Yes| Yes| Executable<br/>Windows Installer<br/>Script<br/>DLL| Packaged app rules won't be enforced.|
| Windows Server 2008 R2 Enterprise|Yes| Yes| Executable<br/>Windows Installer<br/>Script<br/>DLL| Packaged app rules won't be enforced.|
| Windows Server 2008 R2 Datacenter| Yes| Yes| Executable<br/>Windows Installer<br/>Script<br/>DLL| Packaged app rules won't be enforced.|
| Windows Server 2008 R2 for Itanium-Based Systems| Yes| Yes| Executable<br/>Windows Installer<br/>Script<br/>DLL| Packaged app rules won't be enforced.|
| Windows 7 Ultimate| Yes| Yes| Executable<br/>Windows Installer<br/>Script<br/>DLL| Packaged app rules won't be enforced.|
| Windows 7 Enterprise| Yes| Yes| Executable<br/>Windows Installer<br/>Script<br/>DLL| Packaged app rules won't be enforced.|
| Windows 7 Professional| Yes| No| Executable<br/>Windows Installer<br/>Script<br/>DLL| No AppLocker rules are enforced.|
 

AppLocker isn't supported on versions of the Windows operating system not listed above. Software Restriction Policies can be used with those versions. However, the SRP Basic User feature isn't supported on the above operating systems.

>[!NOTE]
>You can use Software Restriction Policies with AppLocker, but with some limitations. For more info, see [Use AppLocker and Software Restriction Policies in the same domain](use-applocker-and-software-restriction-policies-in-the-same-domain.md).

## See also
- [Administer AppLocker](administer-applocker.md)
- [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md)
- [Optimize AppLocker performance](optimize-applocker-performance.md)
- [Use AppLocker and Software Restriction Policies in the same domain](use-applocker-and-software-restriction-policies-in-the-same-domain.md)
- [Manage packaged apps with AppLocker](manage-packaged-apps-with-applocker.md)
- [AppLocker Design Guide](applocker-policies-design-guide.md)