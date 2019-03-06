---
title: Update Windows 10 in enterprise deployments (Windows 10)
description: Windows as a service provides an all-new way to think about building, deploying, and servicing Windows 10.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: Jaimeo
ms.localizationpriority: high
ms.author: jaimeo
ms.date: 04/06/2018
ms.topic: article
---

# Update Windows 10 in enterprise deployments


**Applies to**

- Windows 10
- Windows 10 Mobile

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

Windows as a service provides a new way to think about building, deploying, and servicing the Windows operating system. The Windows as a service model is focused on continually providing new capabilities and updates while maintaining a high level of hardware and software compatibility. Deploying new versions of Windows is simpler than ever before: Microsoft releases new features two to three times per year rather than the traditional upgrade cycle where new features are only made available every few years. Ultimately, this model replaces the need for traditional Windows deployment projects, which can be disruptive and costly, and spreads the required effort out into a continuous updating process, reducing the overall effort required to maintain Windows 10 devices in your environment. In addition, with the Windows 10 operating system, organizations have the chance to try out “flighted” builds of Windows as Microsoft develops them, gaining insight into new features and the ability to provide continual feedback about them. 

>[!TIP]
>See [Windows 10 update history](https://support.microsoft.com/help/12387/windows-10-update-history) for details about each Windows 10 update released to date. 

 

## In this section

| Topic | Description|
| --- | --- |
| [Quick guide to Windows as a service](waas-quick-start.md) | Provides a brief summary of the key points for the new servicing model for Windows 10. |
| [Overview of Windows as a service](waas-overview.md) | Explains the differences in building, deploying, and servicing Windows 10; introduces feature updates, quality updates, and the different servicing branches; compares servicing tools. |
| [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md) | Explains the decisions you need to make in your servicing strategy.  |
| [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md) | Explains how to make use of servicing branches and update deferrals to manage Windows 10 updates.  |
| [Assign devices to servicing branches for Windows 10 updates](waas-servicing-branches-windows-10-updates.md) | Explains how to assign devices to Current Branch (CB) or Current Branch for Business (CBB) for feature and quality updates, and how to enroll devices in Windows Insider. |
| [Monitor Windows Updates with Update Compliance](update-compliance-monitor.md) | Explains how to use Windows Analytics: Update Compliance to monitor and manage Windows Updates on devices in your organization.  |
| [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md) | Explains the benefits of using Delivery Optimization or BranchCache for update distribution.  |
| [Deploy updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](waas-mobile-updates.md) | Explains updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile. |
| [Deploy updates using Windows Update for Business](waas-manage-updates-wufb.md) | Explains how to use Windows Update for Business to manage when devices receive updates directly from Windows Update. Includes walkthroughs for configuring Windows Update for Business using Group Policy and Microsoft Intune.  |
| [Deploy Windows 10 updates using Windows Server Update Services (WSUS)](waas-manage-updates-wsus.md) | Explains how to use WSUS to manage Windows 10 updates. |
| [Deploy Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md) | Explains how to use Configuration Manager to manage Windows 10 updates.  |
| [Manage device restarts after updates](waas-restart.md) | Explains how to manage update related device restarts. |
| [Manage additional Windows Update settings](waas-wu-settings.md) | Provides details about settings available to control and configure Windows Update |
| [Windows Insider Program for Business](waas-windows-insider-for-business.md) | Explains how the Windows Insider Program for Business works and how to become an insider. |

>[!TIP]
>Windows servicing is changing, but for disaster recovery scenarios and bare-metal deployments of Windows 10, you still can use traditional imaging software such as System Center Configuration Manager or the Microsoft Deployment Toolkit. Using these tools to deploy Windows 10 images is similar to deploying previous versions of Windows.
>With each release of a new feature update for CB, Microsoft makes available new .iso files for use in updating your custom images. Each Windows 10 build has a finite servicing lifetime, so it’s important that images stay up to date with the latest build. For detailed information about how to deploy Windows 10 to bare-metal machines or to upgrade to Windows 10 from previous builds of Windows, see [Deploy Windows 10 with System Center 2012 R2 Configuration Manager](../deploy-windows-sccm/deploy-windows-10-with-system-center-2012-r2-configuration-manager.md). Additionally, Windows 10 clients can move from any supported version of Windows 10 (i.e. Version 1511) to the latest version directly (i.e 1709).

