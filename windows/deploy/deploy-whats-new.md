---
title: What's new in Windows 10 deployment
description: Changes and new features related to Windows 10 deployment
keywords: deployment, automate, tools, configure, news
ms.mktglfcycl: deploy
localizationpriority: high
ms.prod: w10
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# What's new in Windows 10 deployment

**Applies to**
-   Windows 10


## In this topic

This topic provides an overview of new solutions and online content related to deploying Windows 10 in your organization.

- For an all-up overview of new features in Windows 10, see [What's new in Windows 10](https://technet.microsoft.com/itpro/windows/whats-new/index).
- For a detailed list of changes to Windows 10 ITPro TechNet library content, see [Online content change history](#online-content-change-history).

## Windows 10 Enterprise upgrade

Windows 10 Enterprise E3 launched in the Cloud Solution Provider (CSP) channel on September 1, 2016. Previously, only organizations with a Microsoft Volume Licensing Agreement could deploy Windows 10 Enterprise to their users. With Windows 10 Enterprise E3 in CSP, small and medium-sized organizations can more easily take advantage of Windows 10 Enterprise features.

For more information, see:

- [Windows 10 Enterprise E3 in CSP Overview](windows-10-enterprise-e3-overview.md)

## Deployment solutions and tools

### Upgrade Readiness

The Upgrade Readiness tool moved from public preview to general availability on March 2, 2017. 

Upgrade Readiness helps you ensure that applications and drivers are ready for a Windows 10 upgrade. The solution provides up-to-date application and driver inventory, information about known issues, troubleshooting guidance, and per-device readiness and tracking details. To use Upgrade Readiness, add it to an existing Operation Management Suite (OMS) workspace or sign up for a new OMS workspace with the Upgrade Readiness solution enabled.

The development of Upgrade Readiness has been heavily influenced by input from the community the development of new features is ongoing. For more information about Upgrade Readiness, see the following topics:

- [Windows Analytics blog](https://blogs.technet.microsoft.com/upgradeanalytics/)
- [Manage Windows upgrades with Upgrade Readiness](manage-windows-upgrades-with-upgrade-readiness.md)

### Update Compliance

Update Compliance helps you to keep Windows 10 devices in your organization secure and up-to-date.

Update Compliance is a solution built using OMS Logs and Analytics that provides information about installation status of monthly quality and feature updates. Details are provided about the deployment progress of existing updates and the status of future updates. Information is also provided about devices that might need attention to resolve issues.

For more information about Update Compliance, see [Monitor Windows Updates with Update Compliance](../manage/update-compliance-monitor.md).

### MBR2GPT

MBR2GPT.EXE converts a disk from Master Boot Record (MBR) to GUID Partition Table (GPT) partition style without modifying or deleting data on the disk. Previously, it was necessary to image, then wipe and reload a disk to change from MBR format to GPT. 

There are many benefits to converting the partition style of a disk to GPT, including the use of larger disk partitions, added data reliability, and faster boot and shutdown speeds. The GPT format also enables you to use the Unified Extensible Firmware Interface (UEFI) which replaces the Basic Input/Output System (BIOS) firmware interface.  Security features of Windows 10 that require UEFI mode include: Secure Boot, Early Launch Anti-malware (ELAM) driver, Windows Trusted Boot, Measured Boot, Device Guard, Credential Guard, and BitLocker Network Unlock.

For more information, see [MBR2GPT.EXE](mbr-to-gpt.md).

### Microsoft Deployment Toolkit (MDT)

MDT build 884 is available, including support for:
- Deployment and upgrade of Windows 10, version 1607 (including Enterprise LTSB and Education editions) and Windows Server 2016.
- The Windows ADK for Windows 10, version 1607.
- Integration with Configuration Manager version 1606.

For more information about MDT, see the [MDT resource page](https://technet.microsoft.com/en-US/windows/dn475741).

### Windows Assessment and Deployment Kit (ADK)

The Windows Assessment and Deployment Kit (Windows ADK) contains tools that can be used by IT Pros to deploy Windows. See the following topics:

- [What's new in ADK kits and tools](https://msdn.microsoft.com/windows/hardware/commercialize/what-s-new-in-kits-and-tools)
- [Windows ADK for Windows 10 scenarios for IT Pros](windows-adk-scenarios-for-it-pros.md)

## Testing and validation guidance

### Windows 10 deployment proof of concept (PoC)

The Windows 10 PoC guide enables you to test Windows 10 deployment in a virtual environment and become familiar with deployment tools such as MDT and Configuration Manager. The PoC guide provides step-by-step instructions for installing and using Hyper-V to create a virtual lab environment. The guide makes extensive use of Windows PowerShell to streamline each phase of the installation and setup. 

For more information, see the following guides:

- [Step by step guide: Configure a test lab to deploy Windows 10](windows-10-poc.md)
- [Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit](windows-10-poc-mdt.md)
- [Deploy Windows 10 in a test lab using System Center Configuration Manager](windows-10-poc-sc-config-mgr.md)

## Troubleshooting guidance

[Resolve Windows 10 upgrade errors](resolve-windows-10-upgrade-errors.md) was published in October of 2016 and will continue to be updated with new fixes. The topic provides a detailed explanation of the Windows 10 upgrade process and instructions on how to locate, interpret, and resolve specific errors that can be encountered during the upgrade process.

## Online content change history

The following topics provide a change history for Windows 10 ITPro TechNet library content related to deploying and using Windows 10.

[Change history for Deploy Windows 10](change-history-for-deploy-windows-10.md)
<BR>[Change history for Plan for Windows 10 deployment](../plan/change-history-for-plan-for-windows-10-deployment.md)
<BR>[Change history for Manage and update Windows 10](../manage/change-history-for-manage-and-update-windows-10.md)
<BR>[Change history for Keep Windows 10 secure](../keep-secure/change-history-for-keep-windows-10-secure.md)

## Related topics

[Overview of Windows as a service](../manage/waas-overview.md)
<BR>[Windows 10 deployment considerations](../plan/windows-10-deployment-considerations.md)
<BR>[Windows 10 release information](https://technet.microsoft.com/en-us/windows/release-info.aspx)
<BR>[Windows 10 Specifications & Systems Requirements](https://www.microsoft.com/en-us/windows/windows-10-specifications)
<BR>[Windows 10 upgrade paths](windows-10-upgrade-paths.md)

 