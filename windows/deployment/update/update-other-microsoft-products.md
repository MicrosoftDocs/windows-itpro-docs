---
title: Update other Microsoft products
titleSuffix: Windows Update for Business
description: List of other Microsoft products that are updated when install updates for other Microsoft products (allowmuupdateservice) is used.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: reference
author: mestew
ms.author: mstewart
manager: aaroncz
appliesto:
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 06/07/2024
---

# Update other Microsoft products
<!--8743531-->
This article contains a list of other Microsoft products that might be updated when the following policy is used:

- **Group policy**: Computer Configuration\Administrative Templates\Windows Components\Windows Update\Manage end user experience\Configure Automatic Updates
    - `Install updates for other Microsoft products` element under Configure Automatic Updates
- **MDM**: ./Device/Vendor/MSFT/Policy/Config/Update/[AllowMUUpdateService](/windows/client-management/mdm/policy-csp-update?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#allowmuupdateservice)

> [!Note]
> This policy includes drivers. If you need to exclude drivers, use [ExcludeWUDriversInQualityUpdate](/windows/client-management/mdm/policy-csp-update?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#excludewudriversinqualityupdate).


## List of other Microsoft products

The following is a list of other Microsoft products that might be updated:

- Active Directory Rights Management Service
- AppFabric
- Azure File Sync
- Bing Bar
- Bing IME
- BizTalk
- East Asia IME for Windows Content
- Exchange
- IME Dictionary Update
- Live Search
- MED-V
- Microsoft Advanced Threat Analytics
- Microsoft Application Virtualization
- Microsoft Azure StorSimple
- Microsoft Configuration Manager
- Microsoft Dynamics CRM
- Microsoft Information Protection
- Microsoft Lync Server and Microsoft Lync
- Microsoft Monitoring Agent
- Microsoft SRS Device
- Microsoft StreamInsight
- Mobile and IoT
- MSRC
- .NET (also known as .NET Core)
- Office 2016 (MSI versions of Office)
- PlayReady
- Security intelligence updates for Microsoft Defender Antivirus and other Microsoft antimalware
- Silverlight
- Skype for Business
- SQL
- System Center Application Controller
- System Center Data Protection Manager
- System Center Operations Manager
- System Center Orchestrator
- System Center Virtual Machine Manager
- Visual Studio
- Windows Admin Center
- Windows Azure Hyper-V Recovery Manager
- Windows Azure Pack - Web Sites
- Windows Azure Pack
- Windows Azure Service Bus
- Windows Embedded Developer Update
- Windows Live Sign-in Assistant
- Windows Small Business Server
- Zune
