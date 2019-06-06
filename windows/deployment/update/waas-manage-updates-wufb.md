---
title: Deploy updates using Windows Update for Business (Windows 10)
ms.reviewer: 
manager: laurawi
description: Windows Update for Business lets you manage when devices received updates from Windows Update.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.topic: article
---

# Deploy updates using Windows Update for Business


**Applies to**

- Windows 10
- Windows Server 2016
- Windows Server 2019

Windows Update for Business is a free service that is available for Windows Pro, Enterprise, Pro for Workstation, and Education editions. 

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 



Windows Update for Business enables IT administrators to keep the Windows 10 devices in their organization always up to date with the latest security defenses and Windows features by directly connecting these systems to Windows Update service. You can use Group Policy or MDM solutions such as Microsoft Intune to configure the Windows Update for Business settings that control how and when Windows 10 devices are updated.
  
Specifically, Windows Update for Business allows for control over update offering and experience to allow for reliability and performance testing on a subset of systems before rolling out updates across the organization as well as a positive update experience for those within your organization.

>[!NOTE]
> To use Windows Update for Business, you must allow devices to access the Windows Update service.

## Types of updates managed by Windows Update for Business

Windows Update for Business provides management policies for several types of updates to Windows 10 devices:

- **Feature updates:** previously referred to as upgrades, feature updates contain not only security and quality revisions, but also significant feature additions and changes; they are released semi-annually in the fall and in the spring.
- **Quality updates:** these are traditional operating system updates, typically released the second Tuesday of each month (though they can be released at any time). These include security, critical, and driver updates. Windows Update for Business also treats non-Windows updates (such as those for Microsoft Office or Visual Studio) as quality updates. These non-Windows Updates are known as "Microsoft updates" and can configure devices to receive or not receive such updates along with their Windows updates.
- **Driver updates:** these are non-Microsoft drivers that are applicable to your devices. Driver updates can be turned off by using Windows Update for Business policies. 
- **Microsoft product updates**: these are updates for other Microsoft products, such as Office. These updates can be enabled or disabled by using Windows Update for Business policy.



## Offering

You can control when updates are applied, for example by deferring when an update is installed on a device or by pausing updates for a certain period of time.

### Manage which updates are offered

Windows Update for Business offers you the ability to turn on or off both driver and Microsoft product updates.   

- Drivers (on/off): When "on," this policy will not include drivers with Windows Update.
- Microsoft product updates (on/off): When "on" this policy will install udpates for other Microsoft products.


### Manage when updates are offered
You can defer or pause the installation of updates for a set period of time.

#### Defer or pause an update

A Windows Update for Business administrator can defer the installation of both feature and quality updates from deploying to devices within a bounded range of time from when those updates are first made available on the Windows Update service. You can use this deferral to allow time to validate deployments as they are pushed to devices. Deferrals work by allowing you to specify the number of days after an update is released before it is offered to a device (if you set a feature update deferral period of 365 days, the device will not install a feature update that has been released for less than 365 days). To defer feature updates use the **Select when Preview Builds and Feature Updates are Received** policy.


|Category |Maximum deferral  |
|---------|---------|
|Feature updates     |  365 days       |
|Quality updates     |  30 days       |
|Non-deferrable     |   none      |

#### Pause an update

If you discover a problem while deploying a feature or quality update, the IT administrator can pause the update for 35 days to prevent other devices from installing it until the issue is mitigated.

If you pause a feature update, quality updates are still offered to devices to ensure they stay secure. The pause period for both feature and quality updates is calculated from a start date that you set.

To pause feature updates use the **Select when Preview Builds and Feature Updates are Received** policy and to pause quality updates use the **Select when Quality Updates are Received** policy. For more information, see [Pause feature updates](waas-configure-wufb.md#pause-feature-updates) and [Pause quality updates](waas-configure-wufb.md#pause-quality-updates).

### Select branch readiness level for feature updates

The branch readiness level enables administrators to specify which channel of feature updates they want to receive. Today there are branch readiness level options for both pre-release and released updates:

- Windows Insider Program for Business pre-release updates
    - Windows Insider Fast 
    - Windows Insider Slow 
    - Windows Insider Release Preview 
- Semi-annual Channel for released updates
 
Prior to Windows 10, version 1903, there are two channels for released updates: Semi-annual Channel and Semi-annual Channel (Targeted). Deferral days are calculated against the release date of the chosen channel. Starting with Windows 10, version 1903 there is only the one release channel: Semi-annual Channel. All deferral days will be calculated against a release’s Semi-annual Channel release date. To see release dates, visit [Windows Release Information](https://docs.microsoft.com/windows/release-information/). You can set the branch readiness level by using the **Select when Preview Builds and Feature Updates are Received** policy. In order to use this to manage pre-release builds, first enable preview builds by using the **Manage preview Builds** policy.



## Monitor Windows Updates by using Update Compliance

Update Compliance provides a holistic view of operating system update compliance, update deployment progress, and failure troubleshooting for Windows 10 devices. This  service uses diagnostic data including installation progress, Windows Update configuration, and other information to provide such insights, at no extra cost and without additional infrastructure requirements. Whether used with Windows Update for Business or other management tools, you can be assured that your devices are properly updated.

![Update Compliance Dashboard](images/waas-wufb-update-compliance.png)

For more information about Update Compliance, see [Monitor Windows Updates using Update Compliance](update-compliance-monitor.md).


## Steps to manage updates for Windows 10

| | |
| --- | --- |
| ![done](images/checklistdone.png) | [Learn about updates and servicing channels](waas-overview.md) |
| ![done](images/checklistdone.png) | [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md) |
| ![done](images/checklistdone.png) | [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md) |
| ![done](images/checklistdone.png) | [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md) |
| ![done](images/checklistdone.png) | [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md) |
| ![done](images/checklistdone.png) | Deploy updates using Windows Update for Business (this topic) </br>or [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)</br>or [Deploy Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md) |

## Related topics
- [Update Windows 10 in the enterprise](index.md)
- [Overview of Windows as a service](waas-overview.md)
- [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)
- [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)
- [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md)
- [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md)
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Deploy updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](waas-mobile-updates.md) 
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Deploy Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)
- [Manage device restarts after updates](waas-restart.md)


