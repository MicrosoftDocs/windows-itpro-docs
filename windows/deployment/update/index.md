---
title: Update Windows client in enterprise deployments
description: Windows as a service provides an all-new way to think about building, deploying, and servicing Windows client.
ms.prod: windows-client
author: mestew
manager: aaroncz
ms.localizationpriority: high
ms.author: mstewart
ms.topic: article
ms.technology: itpro-updates
ms.date: 12/31/2017
---

# Update Windows client in enterprise deployments


**Applies to**

- Windows 10
- Windows 11

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

Windows as a service provides a new way to think about building, deploying, and servicing the Windows operating system. The Windows as a service model is focused on continually providing new capabilities and updates while maintaining a high level of hardware and software compatibility. Deploying new versions of Windows is simpler than ever before: Microsoft releases new features two to three times per year rather than the traditional upgrade cycle where new features are only made available every few years. Ultimately, this model replaces the need for traditional Windows deployment projects, which can be disruptive and costly. It spreads out the required effort into a continuous updating process, reducing the overall effort required to maintain Windows client devices in your environment. In addition, with the Windows client operating system, organizations have the chance to try out “flighted” builds of Windows as Microsoft develops them, gaining insight into new features and the ability to provide continual feedback about them. 


 

## In this section

| Article | Description|
| --- | --- |
| [Quick guide to Windows as a service](waas-quick-start.md) | Provides a brief summary of the key points for the servicing model for Windows client. |
| [Overview of Windows as a service](waas-overview.md) | Explains the differences in building, deploying, and servicing Windows client; introduces feature updates, quality updates, and the different servicing branches; compares servicing tools. |
| [Prepare servicing strategy for Windows client updates](waas-servicing-strategy-windows-10-updates.md) | Explains the decisions you need to make in your servicing strategy.  |
| [Assign devices to servicing branches for Windows client updates](waas-servicing-channels-windows-10-updates.md) | Explains how to assign devices to the General Availability Channel for feature and quality updates, and how to enroll devices in Windows Insider. |
| [Monitor Windows Updates with Windows Update for Business reports](wufb-reports-overview.md) | Explains how to use Windows Update for Business reports to monitor and manage Windows Updates on devices in your organization.  |
| [Optimize update delivery](../do/waas-optimize-windows-10-updates.md) | Explains the benefits of using Delivery Optimization or BranchCache for update distribution.  |
| [Deploy updates using Windows Update for Business](waas-manage-updates-wufb.md) | Explains how to use Windows Update for Business to manage when devices receive updates directly from Windows Update. Includes walkthroughs for configuring Windows Update for Business using Group Policy and Microsoft Intune.  |
| [Deploy Windows client updates using Windows Server Update Services (WSUS)](waas-manage-updates-wsus.md) | Explains how to use WSUS to manage Windows client updates. |
| [Deploy Windows client updates using Microsoft Configuration Manager](/mem/configmgr/osd/deploy-use/manage-windows-as-a-service) | Explains how to use Configuration Manager to manage Windows client updates.  |
| [Manage device restarts after updates](waas-restart.md) | Explains how to manage update related device restarts. |
| [Manage more Windows Update settings](waas-wu-settings.md) | Provides details about settings available to control and configure Windows Update |
| [Windows Insider Program for Business](/windows-insider/business/register) | Explains how the Windows Insider Program for Business works and how to become an insider. |

>[!TIP]
>For disaster recovery scenarios and bare-metal deployments of Windows client, you still can use traditional imaging software such as Microsoft Configuration Manager or the Microsoft Deployment Toolkit. Using these tools to deploy Windows client images is similar to deploying previous versions of Windows.
