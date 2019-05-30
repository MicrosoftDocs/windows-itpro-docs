---
title: Deploy updates using Windows Update for Business (Windows 10)
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
- Windows 10 Mobile
- Windows Server 2016
- Windows Server 2019

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 



Windows Update for Business enables information technology administrators to keep the Windows 10 devices in their organization always up to date with the latest security defenses and Windows features by directly connecting these systems to Windows Update service. You can use Group Policy or MDM solutions such as Intune to configure the Windows Update for Business settings that control how and when Windows 10 devices are updated. In addition, by using Intune, organizations can manage devices that are not joined to a domain at all or are joined to Microsoft Azure Active Directory (Azure AD) alongside your on-premises domain-joined devices. Windows Update for Business leverages diagnostic data to provide reporting and insights into an organization's Windows 10 devices. 

Specifically, Windows Update for Business allows for: 

- The creation of deployment rings, where administrators can specify which devices go first in an update wave, and which ones will come later (to allow for reliability and performance testing on a subset of systems before rolling out updates across the organization).
- Selectively including or excluding drivers as part of Microsoft-provided updates
- Integration with existing management tools such as Windows Server Update Services (WSUS), System Center Configuration Manager, and Microsoft Intune.
- Peer-to-peer delivery for Microsoft updates, which optimizes bandwidth efficiency and reduces the need for an on-site server caching solution.
- Control over diagnostic data level to provide reporting and insights in Windows Analytics.

Windows Update for Business is a free service that is available for Windows Pro, Enterprise, Pro Education, and Education editions.

>[!NOTE]
>See [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md) to learn more about deployment rings in Windows 10.

## Update types

Windows Update for Business provides three types of updates to Windows 10 devices:

- **Feature Updates**: previously referred to as *upgrades*, Feature Updates contain not only security and quality revisions, but also significant feature additions and changes; they are released semi-annually.
- **Quality Updates**: these are traditional operating system updates, typically released the second Tuesday of each month (though they can be released at any time). These include security, critical, and driver updates. Windows Update for Business also treats non-Windows updates (such as those for Microsoft Office or Visual Studio) as Quality Updates. These non-Windows Updates are known as *Microsoft Updates* and devices can be optionally configured to receive such updates along with their Windows Updates.
- **Non-deferrable updates**: Currently, antimalware and antispyware Definition Updates from Windows Update cannot be deferred.
 
Both Feature and Quality Updates can be deferred from deploying to client devices by a Windows Update for Business administrator within a bounded range of time from when those updates are first made available on the Windows Update Service. This deferral capability allows administrators to validate deployments as they are pushed to all client devices configured for Windows Update for Business. Deferrals work by allowing you to specify the number of days after an update is released before it is offered to a device (if you set a deferral period of 365 days, the update will not be offered until 365 days after that update was released).

| Category | Maximum deferral | Deferral increments | Example | WSUS classification GUID |
| --- | --- | --- | --- | --- |
| Feature Updates | 365 days | Days | From Windows 10, version 1511 to version 1607 maximum was 180 days.</br>From Windows 10, version 1703 to version 1809, the maximum is 365 days. | 3689BDC8-B205-4AF4-8D4A-A63924C5E9D5 |
| Quality Updates | 30 days | Days | Security updates</br>Drivers (optional)</br>Non-security updates</br>Microsoft updates (Office,Visual Studio, etc.) | 0FA1201D-4330-4FA8-8AE9-B877473B6441</br></br>EBFC1FC5-71A4-4F7B-9ACA-3B9A503104A0</br></br>CD5FFD1E-E932-4E3A-BF74-18BF0B1BBD83</br></br>varies |
| Non-deferrable | No deferral | No deferral | Definition updates | E0789628-CE08-4437-BE74-2495B842F43B |

>[!NOTE]
>For information about classification GUIDs, see [WSUS Classification GUIDs](https://msdn.microsoft.com/library/ff357803.aspx).

## Windows Update for Business in various Windows 10 versions

Windows Update for Business was first available in Windows 10, version 1511. This diagram lists new or changed capabilities and updated behavior in subsequent versions.


| Windows 10, version 1511 | 1607 | 1703 | 1709 | 1803 | 1809 |
| --- | --- | --- | --- | --- | --- |
| Defer quality updates</br>Defer feature updates</br>Pause updates | All 1511 features, plus: **WSUS integration** | All 1607 features, plus **Settings controls** | All 1703 features, plus **Ability to set slow vs. fast Insider Preview branch** | All 1709 features, plus **Uninstall updates remotely** | All 1803 features, plus **Option to use default automatic updates**</br>**Ability to set separate deadlines for feature vs. quality updates**</br>**Admins can prevent users from pausing updates**
## Managing Windows Update for Business with Group Policy

The group policy path for Windows Update for Business has changed to correctly reflect its association to Windows Update for Business and provide the ability to easily manage pre-release Windows Insider Preview builds in Windows 10, version 1709. 

| Action | Windows 10 versions prior to 1709 | Windows 10 versions after 1709 |
| --- | --- | --- |
| Set Windows Update for Business Policies | Computer Configuration > Administrative Templates > Windows Components > Windows Update > Defer Windows Update | Computer Configuration > Administrative Templates > Windows Components > Windows Update > Windows Update for Business |
| Manage Windows Insider Preview builds | Computer Configuration/Administrative Templates/Windows Components/Data Collection and Preview Builds/Toggle user control over Insider builds |	Computer Configuration/Administrative Templates/Windows Components/Windows Update/Windows Update for Business - *Manage preview builds* |
| Manage when updates are received | Select when Feature Updates are received | Select when Preview Builds and Feature Updates are received </br> (Computer Configuration/Administrative Templates/Windows Components/Windows Update/ Windows Update for Business - **Select when Preview Builds and Feature Updates are received**) |

## Managing Windows Update for Business with MDM

Starting with Windows 10, version 1709, the Windows Update for Business settings in MDM were changed to correctly reflect the associations with Windows Update for Business and provide the ability to easily manage Windows Insider Preview builds in 1709.

| Action | Windows 10 versions prior to 1709 | Windows 10 versions after 1709 |
| --- | --- | --- |
| Manage Windows Insider Preview builds | System/AllowBuildPreview | Update/ManagePreviewBuilds |
| Manage when updates are received | Select when Feature Updates are received |	Select when Preview Builds and Feature Updates are received (Update/BranchReadinessLevel) |

## Managing Windows Update for Business with System Center Configuration Manager

Starting with Windows 10, version 1709, you can assign a collection of devices to have dual scan enabled and manage that collection with Windows Update for Business policies. Starting with Windows 10, version 1809, you can set a collection of devices to receive the Windows Insider Preview Feature Updates from Windows Update from within System Center Configuration Manager.

| Action | Windows 10 versions between 1709 and 1809 | Windows 10 versions after 1809 |
| --- | --- | --- |
| Manage Windows Update for Business in Configuration Manager | Manage Feature or Quality Updates with Windows Update for Business via Dual Scan | Manage Insider pre-release builds with Windows Update for Business within System Center Configuration Manager |

## Managing Windows Update for Business with Windows Settings options
Windows Settings includes options to control certain Windows Update for Business features:

- [Configure the readiness level](waas-configure-wufb.md#configure-devices-for-the-appropriate-service-channel) for a branch by using **Settings > Update & security > Windows Update > Advanced options**
- [Pause feature updates](waas-configure-wufb.md#pause-feature-updates) by using Settings > Update & security > Window Update > Advanced options

## Other changes in Windows Update for Business in Windows 10, version 1703 and later releases


### Pause and deferral periods

The maximum pause time period is 35 days for both quality and feature updates. The maximum deferral period for feature updates is 365 days.

Also, the pause period is calculated from the set start date. For more details, see [Pause Feature Updates](waas-configure-wufb.md#pause-feature-updates) and [Pause Quality Updates](waas-configure-wufb.md#pause-quality-updates). As a result, certain policy keys have different names; see the "Comparing keys in Windows 10, version 1607 to Windows 10, version 1703" section in [Configure Windows Update for Business](waas-configure-wufb.md) for details.



## Monitor Windows Updates by using Update Compliance

Update Compliance provides a holistic view of OS update compliance, update deployment progress, and failure troubleshooting for Windows 10 devices. This new service uses diagnostic data including installation progress, Windows Update configuration, and other information to provide such insights, at no extra cost and without additional infrastructure requirements. Whether used with Windows Update for Business or other management tools, you can be assured that your devices are properly updated.

![Update Compliance Dashboard](images/waas-wufb-update-compliance.png)

For more information about Update Compliance, see [Monitor Windows Updates using Update Compliance](update-compliance-monitor.md).

## Manage Windows Update for Business with Intune

Microsoft Intune provides the ability to configure Windows Update for Business settings on devices. Intune doesn’t store the updates, but only the update policy assignment. For more information, see [Manage software updates](https://docs.microsoft.com/intune/windows-update-for-business-configure).

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


