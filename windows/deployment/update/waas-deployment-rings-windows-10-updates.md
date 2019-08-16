---
title: Build deployment rings for Windows 10 updates (Windows 10)
description: Deployment rings in Windows 10 are similar to the deployment groups most organizations constructed for previous major revision upgrades.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.reviewer: 
manager: laurawi
ms.collection: M365-modern-desktop
ms.topic: article
---

# Build deployment rings for Windows 10 updates


**Applies to**

- Windows 10

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

> [!NOTE]
> We're in the process of updating this topic with more definitive guidance. In the meantime, see [this post](https://techcommunity.microsoft.com/t5/Windows-IT-Pro-Blog/Tactical-considerations-for-creating-Windows-deployment-rings/ba-p/746979) on the Windows 10 IT Pro blog for some great suggestions for a deployment ring structure.

For Windows as a service, maintenance is ongoing and iterative. Deploying previous versions of Windows required organizations to build sets of users to roll out the changes in phases. Typically, these users ranged (in order) from the most adaptable and least risky to the least adaptable or riskiest. With Windows 10, a similar methodology exists, but construction of the groups is a little different. 

Deployment rings in Windows 10 are similar to the deployment groups most organizations constructed for previous major revision upgrades. They are simply a method by which to separate machines into a deployment timeline. With Windows 10, you construct deployment rings a bit differently in each servicing tool, but the concepts remain the same. Each deployment ring should reduce the risk of issues derived from the deployment of the feature updates by gradually deploying the update to entire departments. As previously mentioned, consider including a portion of each department’s employees in several deployment rings. 

Defining deployment rings is generally a one-time event (or at least infrequent), but IT should revisit these groups to ensure that the sequencing is still correct. Also, there are times in which client computers could move between different deployment rings when necessary.

Table 1 provides an example of the deployment rings you might use. 

**Table 1**

| Deployment ring | Servicing channel | Deferral for feature updates | Deferral for quality updates | Example |
| --- | --- | --- | --- | --- |
| Preview | Windows Insider Program | None | None | A few machines to evaluate early builds prior to their arrival to the semi-annual channel |
| Broad | Semi-annual channel | 120 days | 7-14 days | Broadly deployed to most of the organization and monitored for feedback</br>Pause updates if there are critical issues |
| Critical | Semi-annual channel | 180 days | 30 days | Devices that are critical and will only receive updates once they've been vetted for a period of time by the majority of the organization |

>[!NOTE]
>In this example, there are no rings made up of the long-term servicing channel (LTSC). The LTSC does not receive feature updates. 


As Table 1 shows, each combination of servicing channel and deployment group is tied to a specific deployment ring. As you can see, the associated groups of devices are combined with a servicing channel to specify which deployment ring those devices and their users fall into. The naming convention used to identify the rings is completely customizable as long as the name clearly identifies the sequence. Deployment rings represent a sequential deployment timeline, regardless of the servicing channel they contain. Deployment rings will likely rarely change for an organization, but they should be periodically assessed to ensure that the deployment cadence still makes sense. 


## Steps to manage updates for Windows 10

| | |
| --- | --- |
| ![done](images/checklistdone.png) | [Learn about updates and servicing channels](waas-overview.md) |
| ![done](images/checklistdone.png) | [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md) |
| ![done](images/checklistdone.png) | Build deployment rings for Windows 10 updates (this topic) |
| ![to do](images/checklistbox.gif) | [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md) |
| ![to do](images/checklistbox.gif) | [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md) |
| ![to do](images/checklistbox.gif) | [Deploy updates using Windows Update for Business](waas-manage-updates-wufb.md)</br>or [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)</br>or [Deploy Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md) |

## Related topics

- [Update Windows 10 in the enterprise](index.md)
- [Deploy updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](waas-mobile-updates.md) 
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Manage software updates in Intune](https://docs.microsoft.com/intune/windows-update-for-business-configure)
- [Walkthrough: use Intune to configure Windows Update for Business](https://docs.microsoft.com/intune/windows-update-for-business-configure)
- [Manage device restarts after updates](waas-restart.md)

