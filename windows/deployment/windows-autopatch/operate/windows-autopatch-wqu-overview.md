---
title: Windows quality updates
description: This article explains how Windows quality updates are managed in Autopatch
ms.date: 08/08/2022
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# Windows quality updates

## Service level objective

Windows Autopatch aims to keep at least 95% of eligible devices on the latest Windows quality update 21 days after release.

## Device eligibility

For a device to be eligible for Windows quality updates as a part of Windows Autopatch they must meet the following criteria:

| Criteria | Description |
| ----- | ----- |
| Activity | Devices must have at least six hours of usage, with at least two hours being continuous. |
| Intune sync | Devices must have checked with Intune within the last five days. |
| Storage space | Devices must have more than one GB (GigaBytes) of free storage space. |
| Deployed | Windows Autopatch doesn't update devices that haven't yet been deployed. |
| Internet connectivity | Devices must have a steady internet connection, and access to Windows [update endpoints](../prepare/windows-autopatch-configure-network.md). |
| Windows edition | Devices must be on a Windows edition supported by Windows Autopatch. For more information, see [Prerequisites](../prepare/windows-autopatch-prerequisites.md). |
| Mobile device management (MDM) policy conflict | Devices must not have deployed any policies that would prevent device management. For more information, see [Conflicting and unsupported policies](../operate/windows-autopatch-wqu-unsupported-policies.md). |
| Group policy conflict | Devices must not have group policies deployed which would prevent device management. For more information, see [Group policy](windows-autopatch-wqu-unsupported-policies.md#group-policy-and-other-policy-managers) |

## Windows quality update releases

Windows Autopatch deploys the [B release of Windows quality updates](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/windows-quality-updates-primer/ba-p/2569385) that are released on the second Tuesday of each month.

To release updates to devices in a gradual manner, Windows Autopatch deploys a set of mobile device management (MDM) policies to each update deployment ring to control the rollout. There are three primary policies that are used to control Windows quality updates:

| Policy | Description |
| ----- | ----- |
| [Deferrals](/windows/client-management/mdm/policy-csp-update#update-deferqualityupdatesperiodindays) | Deferral policies delay the time the update is offered to the device by a specific number of days. The "offer" date for Windows quality updates is equal to the number of days specified in the deferral policy after the second Tuesday of each month. |
| [Deadlines](/windows/client-management/mdm/policy-csp-update#update-autorestartdeadlineperiodindays)    | Before the deadline, restarts can be scheduled by users or automatically scheduled outside of active hours. After the deadline passes, restarts will occur regardless of active hours and users won't be able to reschedule. The deadline for a specific device is set to be the specified number of days after the update is offered to the device. |
| [Grace periods](/windows/client-management/mdm/policy-csp-update#update-configuredeadlinegraceperiod) | This policy specifies a minimum number of days after an update is downloaded until the device is automatically restarted. This policy overrides the deadline policy so that if a user comes back from vacation, it prevents the device from forcing a restart to complete the update as soon as it comes online. |

> [!IMPORTANT]
> Deploying deferral, deadline, or grace period policies which conflict with Autopatch's policies will cause a device to be considered ineligible for management, it will still receive policies from Windows Autopatch that are not in conflict, but may not function as designed.  These devices will be marked as ineligible in our device reporting and will not count towards our [service level objective](#service-level-objective).

Windows Autopatch configures these policies differently across update rings to gradually release the update to devices in your estate. Devices in the Test ring receive changes first and devices in the Broad ring receive changes last. For more information, see [Windows Autopatch deployment rings](../operate/windows-autopatch-update-management.md#windows-autopatch-deployment-rings).

:::image type="content" source="../media/release-process-timeline.png" alt-text="Release process timeline" lightbox="../media/release-process-timeline.png":::

## Expedited releases

Threat and vulnerability information about a new revision of Windows becomes available on the second Tuesday of each month. Windows Autopatch assesses that information shortly afterwards. If the service determines that it's critical to security, it may be expedited. The quality update is also evaluated on an ongoing basis throughout the release and Windows Autopatch may choose to expedite at any time during the release.

When running an expedited release, the regular goal of 95% of devices in 21 days no longer applies. Instead, Windows Autopatch greatly accelerates the release schedule of the release to update the environment more quickly. This approach requires an updated schedule for all devices outside of the Test ring since those devices are already getting the update as quickly.

Windows Autopatch provides the option to opt out of service driven quality updates expedite. To opt out of service driven expedite, customers can go to Release Management blade under Windows Autopatch section under Tenant Administration on [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431). On the release management blade, the Expedited Quality Updates setting on the Release Settings tab can be used to change the expedite behavior. 

| Release type | Group | Deferral | Deadline | Grace period |
| ----- | ----- | ----- | ----- | ----- |
| Standard release | Test<p>First<p>Fast<p>Broad | 0<p>1<p>6<p>9 | 0<p>2<p>2<p>5 | 0<p>2<p>2<p>2 |
| Expedited release | All devices | 0 | 1 | 1 |

> [!NOTE]
> Windows Autopatch doesn't allow customers to request expedited releases.

## Pausing and resuming a release

If Windows Autopatch detects a [significant issue with a release](../operate/windows-autopatch-wqu-signals.md), we may decide to pause that release.

If we pause the release, a policy will be deployed which prevents devices from updating while the issue is investigated. Once the issue is resolved, the release will be resumed.

You can pause or resume a Windows quality update from the Release management tab in the [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

## Incidents and outages

If devices in your tenant aren't meeting the [service level objective](../operate/windows-autopatch-wqu-overview.md#service-level-objective) for Windows quality updates, an incident will be raised, and the Windows Autopatch Service Engineering Team will work to bring the devices back into compliance.

If you're experiencing other issues related to Windows quality updates, [submit a support request](../operate/windows-autopatch-support-request.md).
