---
title: Requirements to use AppLocker (Windows)
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
ms.collection: M365-security-compliance
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

>**Note:**  You can use Software Restriction Policies with AppLocker, but with some limitations. For more info, see [Use AppLocker and Software Restriction Policies in the same domain](use-applocker-and-software-restriction-policies-in-the-same-domain.md).
 
## Operating system requirements

The following table shows the on which operating systems AppLocker features are supported.

| Version | Can be configured | Can be enforced | Available rules | Notes |
| - | - | - | - | - |
| Windows 10 and Windows 11| Yes| Yes| Packaged apps<br/>Executable<br/>Windows Installer<br/>Script<br/>DLL| You can use the [AppLocker CSP](/windows/client-management/mdm/applocker-csp) to configure AppLocker policies on any edition of Windows 10 and Windows 11 supported by Mobile Device Management (MDM). You can only manage AppLocker with Group Policy on devices running Windows 10 and Windows 11 Enterprise, Windows 10 and Windows 11 Education, and Windows Server 2016. |
| Windows Server 2019<br/>Windows Server 2016<br/>Windows Server 2012 R2<br/>Windows Server 2012| Yes| Yes| Packaged apps<br/>Executable<br/>Windows Installer<br/>Script<br/>DLL| |
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