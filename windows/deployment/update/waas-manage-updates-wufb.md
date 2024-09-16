---
title: Windows Update for Business
manager: aaroncz
description: Learn how Windows Update for Business lets you manage when devices receive updates from Windows Update.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: overview
author: mestew
ms.author: mstewart
ms.collection:
  - highpri
  - tier2
ms.localizationpriority: medium
appliesto:
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 05/16/2024
---

# What is Windows Update for Business?

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq)

Windows Update for Business is a free service that is available for the following editions of Windows 10 and Windows 11:

- Pro, including Pro for Workstations
- Education
- Enterprise, including Enterprise LTSC, IoT Enterprise, and IoT Enterprise LTSC

Windows Update for Business enables IT administrators to keep their organization's Windows client devices always up to date with the latest security updates  and Windows features by directly connecting these systems to the Windows Update service. You can use Group Policy or Mobile Device Management (MDM) solutions, such as Microsoft Intune, to configure the Windows Update for Business settings that control how and when devices are updated.

Specifically, Windows Update for Business lets you control update offerings and experiences to allow for reliability and performance testing on a subset of devices before deploying updates across the organization. It also provides a positive update experience for people in your organization.

## What can I do with Windows Update for Business?

Windows Update for Business enables commercial customers to manage which Windows Updates are received along with the experience a device has when it receives them.

You can control Windows Update for Business policies by using either MDM tools or Group Policy management, such as local group policy or the Group Policy Management Console (GPMC), and various other non-Microsoft management tools. MDMs use Configuration Service Provider (CSP) policies instead of Group Policy. Intune additionally uses Cloud Policies. Not all policies are available in all formats (CSP, Group Policy, or Cloud Policy).

### Manage deployment of Windows Updates

By using Windows Update for Business, you can:
- Control the types of Windows Updates are offered to devices in your organization
- Control when updates are applied to the devices
- Deploy updates to devices in your organization in waves

### Manage which updates are offered

Windows Update for Business enables an IT administrator to receive and manage various types of Windows Updates.

## Types of updates managed by Windows Update for Business

Windows Update for Business provides management policies for several types of updates to Windows 10 devices:

- **Feature updates:** Previously referred to as upgrades, feature updates contain not only security and quality revisions, but also significant feature additions and changes. Feature updates are released as soon as they become available. Feature updates aren't available for LTSC devices.
- **Quality updates:** Quality updates are traditional operating system updates. Typically quality updates are released on the second Tuesday of each month, though they can be released at any time. These include security, critical, and driver updates.
- **Driver updates:** Updates for non-Microsoft drivers that are relevant to your devices. Driver updates are on by default, but you can use Windows Update for Business policies to turn them off if you prefer.
- **Microsoft product updates**: Updates for other Microsoft products, such as versions of Office that are installed by using Windows Installer (MSI). Versions of Office that are installed by using Click-to-Run can't be updated by using Windows Update for Business. Product updates are off by default. You can turn them on by using Windows Update for Business policies.

## Offering

You can control when updates are applied. For example, you can defer when an update is installed on a device or by pausing updates for a certain period.

### Manage when updates are offered

You can defer or pause the installation of updates for a set period of time.

#### Enroll in prerelease updates

The branch readiness level enables administrators to specify which channel of feature updates they want to receive. Today there are branch readiness level options for both prerelease and released updates:

- Windows Insider Canary channel
- Windows Insider Dev channel
- Windows Insider Beta channel
- Windows Insider Release Preview channel


#### Defer an update

An administrator can defer the installation of both feature and quality updates from deploying to devices within a range of time based on when those updates are first made available on the Windows Update service. You can use this deferral to allow time to validate deployments as they're pushed to devices. Deferrals work by allowing you to specify the number of days after an update is released before it's offered to a device. That is, if you set a feature update deferral period of 365 days, the device won't install a feature update that has been released for less than 365 days. To defer feature updates, use the **Select when Preview Builds and feature updates are Received** policy.

|Category  |Maximum deferral period  |
|---------|---------|
|Feature updates     |  365 days       |
|Quality updates     | 30 days        |
|Nondeferrable     |   none      |

<!--Example: Using deferrals to deploy in waves
      [Insert graphic with the deferrals set to different values showing a feature update rollout)-->

#### Pause an update

If you discover a problem while deploying a feature or quality update, you can pause the update for 35 days from a specified start date to prevent other devices from installing it until the issue is mitigated. If you pause a feature update, quality updates are still offered to devices to ensure they stay secure. The pause period for both feature and quality updates is calculated from a start date that you set.

To pause feature updates, use the **Select when Preview Builds and feature updates are Received** policy and to pause quality updates use the **Select when Quality Updates are Received** policy. For more information, see [Pause feature updates](waas-configure-wufb.md#pause-feature-updates) and [Pause quality updates](waas-configure-wufb.md#pause-quality-updates).

Built-in benefits:
When updating from Windows Update, you get the added benefits of built-in compatibility checks to prevent against a poor update experience for your device and a check to prevent repeated rollbacks.

### Recommendations

For the best experience with Windows Update, follow these guidelines:

- Use devices for at least 6 hours per month, including at least 2 hours of continuous use.
- Keep devices regularly charged. Plugging in devices overnight enables them to automatically update outside of active hours.
- Make sure that devices have at least 10 GB of free space.
- Give devices unobstructed access to the Windows Update service.

### Manage the end-user experience when receiving Windows Updates

Windows Update for Business provides controls to help meet your organization's security standards and provide a great end-user experience. We do this by enabling you to set automatic updates at times that work well for people in your organization and set deadlines for quality and feature updates. Because Windows Update includes built-in intelligence, it's better to use fewer controls to manage the user experience.

#### Recommended experience settings

Features like active hours help provide the best experience for end users while keeping devices more secure and up to date. Follow these steps to take advantage of these features:

1. Automatically download, install, and restart (default if no restart policies are set up or enabled).
1. Use the default notifications.
1. Set update deadlines.

##### Setting deadlines

A compliance deadline policy enables you to set separate deadlines and grace periods for feature and quality updates.

This policy enables you to specify the number of days from an update's publication date that it must be installed on the device. The policy also includes a configurable grace period that specifies the number of days from when the update is installed on the device until the device is forced to restart. This approach is useful in a vacation scenario as it allows, for example, users who have been away to have a bit of time before being forced to restart their devices when they return from vacation.

#### Update Baseline

> [!NOTE]
> The Update Baseline toolkit is available only for Group Policy. Update Baseline does not affect your offering policies, whether you're using deferrals or target version to manage which updates are offered to your devices when. Update Baseline is not currently supported for Windows 11.

The large number of different policies offered can be overwhelming. Update Baseline provides a clear list of recommended Windows update policy settings for IT administrators who want the best user experience while also meeting their update compliance goals. The Update Baseline for Windows 10 includes policy settings recommendations covering deadline configuration, restart behavior, power policies, and more.

The Update Baseline toolkit makes it easy by providing a single command for IT Admins to apply the Update Baseline to devices. You can get the Update Baseline toolkit from the [Download Center](https://www.microsoft.com/download/details.aspx?id=101056).

## Other Windows Update for Business services

The following services are part of the Windows Update for Business product family:

- [Windows Update for Business reports](wufb-reports-overview.md) is a cloud-based solution that provides information about your Microsoft Entra joined devices' compliance with Windows updates. Windows Update for Business reports is offered through the Azure portal. Windows Update for Business reports helps you:
    - Monitor security, quality, driver, and feature updates for Windows 11 and Windows 10 devices
    - Report on devices with update compliance issues
    - Analyze and display your data in multiple ways

- [Windows Autopatch](/windows/deployment/windows-autopatch/overview/windows-autopatch-overview) is a cloud service designed to work with your existing Windows Update for Business policies. Windows Autopatch provides additional control over the approval, scheduling, and safeguarding of updates delivered from Windows Update to managed devices.
