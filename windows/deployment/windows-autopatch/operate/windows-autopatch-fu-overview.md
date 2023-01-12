---
title: Windows feature updates
description: This article explains how Windows feature updates are managed in Autopatch
ms.date: 07/11/2022
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# Windows feature updates

## Service level objective

Windows Autopatch aims to keep at least 99% of eligible devices on a supported version of Windows so that they can continue receiving Windows feature updates.

## Device eligibility

For a device to be eligible for Windows feature updates as a part of Windows Autopatch it must meet the following criteria:

| Criteria | Description |
| ----- | ----- |
| Activity | Devices must have at least six hours of usage, with at least two hours being continuous since the start of the update. |
| Intune sync | Devices must have checked with Intune within the last five days. |
| Storage space | Devices must have more than one GB (GigaBytes) of free storage space. |
| Deployed | Windows Autopatch doesn't update devices that haven't yet been deployed. |
| Internet connectivity | Devices must have a steady internet connection, and access to Windows [update endpoints](../prepare/windows-autopatch-configure-network.md). |
| Windows edition | Devices must be on a Windows edition supported by Windows Autopatch. For more information, see [Prerequisites](../prepare/windows-autopatch-prerequisites.md). |
| Mobile device management (MDM) policy conflict | Devices must not have deployed any policies that would prevent device management. For more information, see [Conflicting and unsupported policies](../operate/windows-autopatch-wqu-unsupported-policies.md). |
| Group policy conflict | Devices must not have group policies deployed which would prevent device management. For more information, see [Group policy](windows-autopatch-wqu-unsupported-policies.md#group-policy-and-other-policy-managers). |

## Windows feature update releases

When the service decides to move to a new version of Windows, the following update schedule is indicative of the minimum amount of time between rings during a rollout.

The final release schedule is communicated prior to release and may vary a little from the following schedule to account for business weeks or other scheduling considerations. For example, Autopatch may decide to release to the Fast Ring after 62 days instead of 60, if 60 days after the release start was a weekend.  

| Ring | Timeline |
| ----- | ----- |
| Test | Release start |
| First | Release start + 30 days |
| Fast | Release start + 60 days |
| Broad | Release start + 90 days |

:::image type="content" source="../media/windows-feature-release-process-timeline.png" alt-text="Windows feature release timeline" lightbox="../media/windows-feature-release-process-timeline.png":::

## New devices to Windows Autopatch

If a device is enrolled and it's below Autopatch's currently targeted Windows feature update, that device will update to the service's target version within five days of meeting eligibility criteria.  

If a device is enrolled and it's on, or above the currently targeted Windows feature update, there won't be any change to that device.  

## Feature update configuration

When releasing a feature update, there are two policies that are configured by the service to create the update schedule described in the previous section. You’ll see four of each of the following policies in your tenant, one for each ring:  

- **Modern Workplace DSS Policy**: This policy is used to control the target version of Windows.  
- **Modern Workplace Update Policy**: This policy is used to control deferrals and deadlines for feature and quality updates.  

| Ring | Target version (DSS) Policy | Feature update deferral | Feature update deadline | Feature update grace period |
| ----- | ----- | ----- | ----- | ----- |
| Test | 20H2 | 0 | 5 | 0 |
| First | 20H2 | 0 | 5 | 2 |
| Fast | 20H2 | 0 | 5 | 2 |
| Broad | 20H2 | 0 | 5 | 2 |

> [!NOTE]
> Customers are not able to select a target version for their tenant.

During a release, the service modifies the Modern Workplace DSS policy to change the target version for a specific ring in Intune. That change is deployed to devices and updates the devices prior to the update deadline.  

To understand how devices will react to the change in the Modern Workplace DSS policy, it's important to understand how deferral, deadline, and grace periods affect devices.

| Policy | Description |
| ----- | ----- |
| [Deferrals](/windows/client-management/mdm/policy-csp-update#update-deferqualityupdatesperiodindays) | The deferral policy determines how many days after a release the feature update is offered to a device. The service maximizes control over feature updates by creating individual DSS policies for each ring and modifying the ring's DSS policy to change the target update version. Therefore, the feature update deferral policy for all rings is set to zero days so that a change in the DSS policy is released as soon as possible.   |
| [Deadlines](/windows/client-management/mdm/policy-csp-update#update-autorestartdeadlineperiodindays)    | Before the deadline, restarts can be scheduled by users or automatically scheduled outside of active hours. After the deadline passes, restarts will occur regardless of active hours and users won't be able to reschedule. The deadline for a specific device is set to be the specified number of days after the update is offered to the device.  |
| [Grace periods](/windows/client-management/mdm/policy-csp-update#update-configuredeadlinegraceperiod) | This policy specifies a minimum number of days after an update is downloaded until the device is automatically restarted. This policy overrides the deadline policy so that if a user comes back from vacation, it prevents the device from forcing a restart to complete the update as soon as it comes online.  |

> [!IMPORTANT]
> Deploying deferral, deadline, or grace period policies which conflict with Autopatch's policies will render a device ineligible for management. Also, if any update related to group policy settings are detected, the device will also be ineligible for management.

## Windows 11 testing

To allow customers to test Windows 11 in their environment, there's a separate DSS policy that enables you to test Windows 11 before broadly adopting within your environment. When you add devices to the **Modern Workplace - Windows 11 Pre-Release Test Devices** group they'll update to Windows 11.  

> [!IMPORTANT]
> This group is intended for testing purposes only and shouldn't be used to broadly update to Windows 11 in your environment.

## Pausing and resuming a release

You can pause or resume a Windows feature update from the Release management tab in the [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

## Rollback

Windows Autopatch doesn't support the rollback of feature updates.

## Incidents and outages

If devices in your tenant don't meet the [service level objective](#service-level-objective) for Windows feature updates, Autopatch will raise an incident will be raised. The Windows Autopatch Service Engineering Team will work to bring those devices onto the latest version of Windows.

If you're experiencing other issues related to Windows feature updates, [submit a support request](../operate/windows-autopatch-support-request.md).
