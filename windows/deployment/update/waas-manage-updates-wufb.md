---
title: Windows Update for Business (Windows 10)
ms.reviewer: 
manager: laurawi
description: Learn how Windows Update for Business lets you manage when devices receive updates from Windows Update.
ms.prod: w10
ms.mktglfcycl: manage
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# What is Windows Update for Business?


**Applies to**

- Windows 10


Windows Update for Business is a free service that is available for all premium editions including Windows 10 Pro, Enterprise, Pro for Workstation, and Education editions. 

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 


Windows Update for Business enables IT administrators to keep the Windows 10 devices in their organization always up to date with the latest security defenses and Windows features by directly connecting these systems to Windows Update service. You can use Group Policy or Mobile Device Management (MDM) solutions such as Microsoft Intune to configure the Windows Update for Business settings that control how and when Windows 10 devices are updated.
  
Specifically, Windows Update for Business lets you control update offerings and experiences to allow for reliability and performance testing on a subset of devices before deploying updates across the organization. It also provides a positive update experience for people in your organization.

## What can I do with Windows Update for Business?

Windows Update for Business enables commercial customers to manage which Windows Updates are received when as well as the experience a device has when it receives them.

You can control Windows Update for Business policies by using either Mobile Device Management (MDM) tools such as Microsoft Intune or Group Policy management tools such as local group policy or the Group Policy Management Console (GPMC), as well as a variety of other non-Microsoft management tools. MDMs use Configuration Service Provider (CSP) policies instead of Group Policy. Intune additionally uses Cloud Policies. Not all policies are available in all formats (CSP, Group Policy, or Cloud policy).


### Manage deployment of Windows Updates 
By using Windows Update for Business, you can control which types of Windows Updates are offered to devices in your ecosystem, when updates are applied, and deployment to devices in your organization in waves.

### Manage which updates are offered 
Windows Update for Business enables an IT administrator to receive and manage a variety of different types of Windows Updates. 

## Types of updates managed by Windows Update for Business

Windows Update for Business provides management policies for several types of updates to Windows 10 devices:

- **Feature updates:** Previously referred to as "upgrades," feature updates contain not only security and quality revisions, but also significant feature additions and changes. Feature updates are released semi-annually in the fall and in the spring.
- **Quality updates:** Quality updates are traditional operating system updates, typically released on the second Tuesday of each month (though they can be released at any time). These include security, critical, and driver updates. Windows Update for Business also treats non-Windows updates (such as updates for Microsoft Office or Visual Studio) as quality updates. These non-Windows Updates are known as "Microsoft updates" and you can set devices to receive such updates (or not) along with their Windows updates.
- **Driver updates:** Updates for non-Microsoft drivers that are relevant to your devices. Driver updates are on by default, but you can use Windows Update for Business policies to turn them off if you prefer. 
- **Microsoft product updates**: Updates for other Microsoft products, such as versions of Office that are installed by using Windows Installer (MSI). Versions of Office that are installed by using Click-to-Run can't be updated by using Windows Update for Business. Product updates are off by default. You can turn them on by using Windows Update for Business policies.


## Offering
You can control when updates are applied, for example by deferring when an update is installed on a device or by pausing updates for a certain period.

### Manage when updates are offered
You can defer or pause the installation of updates for a set period of time.

#### Enroll in pre-release updates

The branch readiness level enables administrators to specify which channel of feature updates they want to receive. Today there are branch readiness level options for both pre-release and released updates:

- Windows Insider Fast
- Windows Insider Slow
- Windows Insider Release Preview
- Semi-Annual Channel

Prior to Windows 10, version 1903, there are two channels for released updates: Semi-Annual Channel and Semi-Annual Channel (Targeted). Deferral days are calculated against the release date of the chosen channel. Starting with Windows 10, version 1903 there is only the one release channel: Semi-Annual Channel. All deferral days are calculated against a release’s Semi-Annual Channel release date. For exact release dates, see [Windows Release Information](/windows/release-health/release-information). You can set the branch readiness level by using the **Select when Preview Builds and Feature Updates are Received** policy. To use this policy to manage pre-release builds, first enable preview builds by using the **Manage preview Builds** policy.

#### Defer an update

A Windows Update for Business administrator can defer the installation of both feature and quality updates from deploying to devices within a bounded range of time from when those updates are first made available on the Windows Update service. You can use this deferral to allow time to validate deployments as they are pushed to devices. Deferrals work by allowing you to specify the number of days after an update is released before it is offered to a device. That is, if you set a feature update deferral period of 365 days, the device will not install a feature update that has been released for less than 365 days. To defer feature updates, use the **Select when Preview Builds and Feature Updates are Received** policy.


|Category  |Maximum deferral period  |
|---------|---------|
|Feature updates     |  365 days       |
|Quality updates     | 30 days        |
|Non-deferrable     |   none      |

<!--Example: Using deferrals to deploy in waves
      [Insert graphic with the deferrals set to different values showing a feature update rollout)--> 

#### Pause an update

If you discover a problem while deploying a feature or quality update, the IT administrator can pause the update for 35 days from a specified start date to prevent other devices from installing it until the issue is mitigated.
If you pause a feature update, quality updates are still offered to devices to ensure they stay secure. The pause period for both feature and quality updates is calculated from a start date that you set.

To pause feature updates, use the **Select when Preview Builds and Feature Updates are Received** policy and to pause quality updates use the **Select when Quality Updates are Received** policy. For more information, see [Pause feature updates](waas-configure-wufb.md#pause-feature-updates) and [Pause quality updates](waas-configure-wufb.md#pause-quality-updates).

Built-in benefits:
When updating from Windows Update, you get the added benefits of built-in compatibility checks to prevent against a poor update experience for your device as well as a check to prevent repeated rollbacks.

### Recommendations

For the best experience with Windows Update, follow these guidelines: 

-	Use devices for at least 6 hours per month, including at least 2 hours of continuous use.
-	Keep devices regularly charged. Plugging in devices overnight enables them to automatically update outside of active hours.
-	Make sure that devices have at least 10 GB of free space.
-	Give devices unobstructed access to the Windows Update service.

### Manage the end-user experience when receiving Windows Updates

Windows Update for Business provides controls to help meet your organization’s security standards as well as provide a great end-user experience. We do this by enabling you to set automatic updates at times that work well for people in your organization and set deadlines for quality and feature updates. Because Windows Update includes built-in intelligence, it's better to use fewer controls to manage the user experience. 

#### Recommended experience settings

Features like the smart busy check (which ensure updates don't happen when a user is signed in) and active hours help provide the best experience for end users while keeping devices more secure and up to date. Follow these steps to take advantage of these features:

1.	Automatically download, install, and restart (default if no restart policies are set up or enabled)
2.	Use the default notifications 
3.	Set update deadlines

##### Setting deadlines 

A compliance deadline policy (released in June 2019) enables you to set separate deadlines and grace periods for feature and quality updates. 

This policy enables you to specify the number of days from an update's publication date that it must be installed on the device. The policy also includes a configurable grace period that specifies the number of days from when the update is installed on the device until the device is forced to restart. This approach is useful in a vacation scenario as it allows, for example, users who have been away to have a bit of time before being forced to restart their devices when they return from vacation.

#### Update Baseline
The large number of different policies offered for Windows 10 can be overwhelming. Update Baseline provides a clear list of recommended Windows update policy settings for IT administrators who want the best user experience while also meeting their update compliance goals. The Update Baseline for Windows 10 includes policy settings recommendations covering deadline configuration, restart behavior, power policies, and more.

The Update Baseline toolkit makes it easy by providing a single command for IT Admins to apply the Update Baseline to devices. You can get the Update Baseline toolkit from the [Download Center](https://www.microsoft.com/download/details.aspx?id=101056).

>[!NOTE]
>The Update Baseline toolkit is available only for Group Policy. Update Baseline does not affect your offering policies, whether you’re using deferrals or target version to manage which updates are offered to your devices when.

<!--

>[!NOTE]
> To use Windows Update for Business, you must allow devices to access the Windows Update service.

## Types of updates managed by Windows Update for Business

Windows Update for Business provides management policies for several types of updates to Windows 10 devices:

- **Feature updates:** previously referred to as upgrades, feature updates contain not only security and quality revisions, but also significant feature additions and changes; they are released semi-annually in the fall and in the spring.
- **Quality updates:** these are traditional operating system updates, typically released the second Tuesday of each month (though they can be released at any time). These include security, critical, and driver updates. Windows Update for Business also treats non-Windows updates (such as those for Microsoft Office or Visual Studio) as quality updates. These non-Windows Updates are known as "Microsoft updates" and can configure devices to receive or not receive such updates along with their Windows updates.
- **Driver updates:** these are non-Microsoft drivers that are applicable to your devices. Driver updates can be turned off by using Windows Update for Business policies. 
- **Microsoft product updates**: these are updates for other Microsoft products, such as Office. These updates can be enabled or disabled by using Windows Update for Business policy.



## Offering

You can control when updates are applied, for example by deferring when an update is installed on a device or by pausing updates for a certain period.

### Manage which updates are offered

Windows Update for Business offers you the ability to turn on or off both driver and Microsoft product updates.   

- Disable Drivers (on/off): When "on," this policy will not include drivers with Windows Update.
- Microsoft product updates (on/off): When "on" this policy will install updates for other Microsoft products.


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

#### Select branch readiness level for feature updates

The branch readiness level enables administrators to specify which channel of feature updates they want to receive. Today there are branch readiness level options for both pre-release and released updates:

- Windows Insider Program for Business pre-release updates
    - Windows Insider Fast 
    - Windows Insider Slow 
    - Windows Insider Release Preview 
    - Semi-Annual Channel for released updates
 
Prior to Windows 10, version 1903, there are two channels for released updates: Semi-Annual Channel and Semi-Annual Channel (Targeted). Deferral days are calculated against the release date of the chosen channel. Starting with Windows 10, version 1903 there is only the one release channel: Semi-Annual Channel. All deferral days will be calculated against a release's Semi-Annual Channel release date. To see release dates, visit [Windows Release Information](/windows/release-health/release-information). You can set the branch readiness level by using the **Select when Preview Builds and Feature Updates are Received** policy. In order to use this to manage pre-release builds, first enable preview builds by using the **Manage preview Builds** policy.

### Recommendations

For the best experience with Windows Update, follow these guidelines: 

-    Use devices for at least 6 hours per month, including at least 2 hours of continuous use.
-    Keep devices regularly charged. Plugging in devices overnight enables them to automatically update outside of active hours.
-    Make sure that devices have at least 10 GB of free space.
-    Give devices unobstructed access to the Windows Update service.


## Monitor Windows Updates by using Update Compliance

Update Compliance provides a holistic view of operating system update compliance, update deployment progress, and failure troubleshooting for Windows 10 devices. This  service uses diagnostic data including installation progress, Windows Update configuration, and other information to provide such insights, at no extra cost and without extra infrastructure requirements. Whether used with Windows Update for Business or other management tools, you can be assured that your devices are properly updated.

![Update Compliance Dashboard.](images/waas-wufb-update-compliance.png)

For more information about Update Compliance, see [Monitor Windows Updates using Update Compliance](update-compliance-monitor.md).


## Steps to manage updates for Windows 10

| | |
| --- | --- |
| ![done.](images/checklistdone.png) | [Learn about updates and servicing channels](waas-overview.md) |
| ![done.](images/checklistdone.png) | [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md) |
| ![done.](images/checklistdone.png) | [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md) |
| ![done.](images/checklistdone.png) | [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md) |
| ![done.](images/checklistdone.png) | [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md) |
| ![done.](images/checklistdone.png) | Deploy updates using Windows Update for Business (this topic) </br>or [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)</br>or [Deploy Windows 10 updates using Microsoft Endpoint Configuration Manager](/mem/configmgr/osd/deploy-use/manage-windows-as-a-service) |