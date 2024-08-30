---
title: Windows feature updates policies
description: This article describes Windows feature update policies used in Windows Autopatch
ms.date: 09/16/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: andredm7
ms.collection:
  - highpri
  - tier1
---

# Windows feature update policies

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

## Windows feature updates for Windows 10 and later

These policies control the minimum target version of Windows that a device is meant to accept. Throughout the rest of the article, these policies are referred to as DSS policies. There are four of these policies in your tenant with the following naming convention:

**`Modern Workplace DSS Policy [ring name]`**

### Windows feature update deployment settings

| Setting name | Test | First | Fast | Broad |
| ----- | ----- | ----- | ----- | ----- |
| Name | Current targeted version of Windows | Current targeted version of Windows | Current targeted version of Windows | Current targeted version of Windows |
| Rollout options | Immediate start | Immediate start | Immediate start | Immediate start |

### Windows feature update policy assignments

| Setting name | Test | First | Fast | Broad |
| ----- | ----- | ----- | ----- | ----- |
| Included groups | Modern Workplace Devices-Windows Autopatch-Test  | Modern Workplace Devices-Windows Autopatch-First | Modern Workplace Devices-Windows Autopatch-Fast | Modern Workplace Devices-Windows Autopatch-Broad |

## Default release policy configuration

You can see the following default policies created by the service in the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431):

| Policy name | Phase mapping | Feature update version | Rollout options | First deployment ring availability | Final deployment ring availability | Day between deployment rings | Support end date |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Windows Autopatch - DSS Policy [Test] | Phase 1 | Windows 10 21H2 | Make update available as soon as possible | May 9, 2023  | N/A | N/A | June 11, 2024 |
| Windows Autopatch - DSS Policy [First] | Phase 2 | Windows 10 21H2 | Make update available as soon as possible | May 16, 2023  | N/A | N/A | June 11, 2024 |
| Windows Autopatch - DSS Policy [Fast] | Phase 3 | Windows 10 21H2 | Make update available as soon as possible | May 23, 2023  | N/A | N/A | June 11, 2024 |
| Windows Autopatch - DSS Policy [Broad] | Phase 4 | Windows 10 21H2 | Make update available as soon as possible | May 30, 2023  | N/A | N/A | June 11, 2024 |

> [!NOTE]
> Gradual rollout settings aren't configured in the default Windows Update feature policy. If the date of the final group availability is changed to a past date, all remaining devices are offered the update as soon as possible. For more information, see [rollout options for Windows Updates in Microsoft Intune](/mem/intune/protect/windows-update-rollout-options#make-updates-available-gradually).

## Global release policy configuration

Windows Autopatch configures the values for its global Windows feature update policy. See the following default policies created by the service in the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431):

| Policy name | Feature update version | Rollout options | First deployment ring availability | Final deployment ring availability | Day between deployment rings | Support end date |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Windows Autopatch - Global DSS Policy [Test] | Windows 10 21H2 | Make update available as soon as possible | N/A  | N/A | N/A | June 11, 2024 |

> [!NOTE]
> Gradual rollout settings aren't configured in the default Windows Update feature policy. If the date of the final group availability is changed to be a past date, all remaining devices are offered the update as soon as possible. For more information, see [rollout options for Windows Updates in Microsoft Intune](/mem/intune/protect/windows-update-rollout-options#make-updates-available-gradually).

### Difference between the default and global update policies

> [!IMPORTANT]
> Once you create a custom Windows feature update release, both the global and the default Windows feature update policies are unassigned from Autopatch group's deployment rings behind the scenes.

The differences in between the global and the default Windows feature update policy values are:

| Default Windows feature update policy | Global Windows feature update policy |
| ----- | ----- |
| <ul><li>Set by default with an Autopatch group and assigned to Test, Ring1, Ring2, Ring3. The default policy isn't automatically assigned to the Last ring in an Autopatch group.</li><li>The Windows Autopatch service keeps its minimum Windows OS version updated following the recommendation of minimum Windows OS version [currently serviced by the Windows servicing channels](/windows/release-health/release-information?msclkid=ee885719baa511ecb838e1a689da96d2).</li></ul> | <ul><li>Set by default and assigned to all new deployment rings added as part of an Autopatch group customization</li><li>Set by default and assigned to all deployment rings created as part of Autopatch groups.</li></ul> |

## Windows Update ring policies

Feature update policies work with Windows Update rings policies. Windows Update rings policies are created for each deployment ring for the [Autopatch group](../deploy/windows-autopatch-groups-overview.md#key-benefits) based on the deployment settings you define. The policy name convention is **`Windows Autopatch Update Policy - <Autopatch group name> - <Deployment group name>`**.

The following table details the default Windows Update rings policy values that affect either the default or custom Windows feature updates releases:

| Policy name | Microsoft Entra group assignment | Quality updates deferral in days | Feature updates deferral in days | Feature updates uninstall window in days | Deadline for quality updates in days | Deadline for feature updates in days | Grace period | Auto restart before deadline |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Windows Autopatch Update Policy - Default - Test | Windows Autopatch - Test | 0 | 0 | 30 | 0 | 5 | 0 | Yes |
| Windows Autopatch Update Policy - Default - Ring1 | Windows Autopatch - Ring1 | 1 | 0 | 30 | 2 | 5 |2 | Yes |
| Windows Autopatch Update Policy - Default - Ring2 | Windows Autopatch - Ring2 | 6 | 0 | 30 | 2 | 5 | 2 | Yes |
| Windows Autopatch Update Policy - Default - Ring3 | Windows Autopatch - Ring3 | 9 | 0 | 30 | 5 | 5 | 2 | Yes |
| Windows Autopatch Update Policy - Default - Last | Windows Autopatch - Last | 11 | 0 | 30 | 3 | 5 | 2 | Yes |

> [!IMPORTANT]
> When you create a custom Windows feature update release, new Windows feature update policies are:<ul><li>Created corresponding to the settings you defined while creating the release.</li><li>Assigned to the Autopatch group's deployment rings you select to be included in the release.</li></ul>

## Phase policy configuration

Windows Autopatch creates one Windows feature update policy per phase using the following naming convention:

**`Windows Autopatch - DSS policy - <Release Name> - Phase <Phase Number>`**

These policies can be viewed in the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

The following table is an example of the Windows feature update policies that were created for phases within a release:

| Policy name | Feature update version | Rollout options | First deployment date| Final deployment date availability | Day between groups | Support end date |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Windows Autopatch - DSS Policy - My feature update release - Phase 1  | Windows 10 21H2 | Make update available as soon as possible | April 24, 2023 | April 24, 2023 | N/A | June 11, 2024 |
| Windows Autopatch - DSS Policy - My feature update release - Phase 2  | Windows 10 21H2 | Make update available as soon as possible | June 26, 2023 | July 17, 2023 | 7 | June 11, 2024 |
| Windows Autopatch - DSS Policy - My feature update release - Phase 3 | Windows 10 21H2 | Make update available as soon as possible | July 24, 2023 | August 14, 2023 | 7 | June 11, 2024 |
| Windows Autopatch - DSS Policy - My feature update release - Phase 4  | Windows 10 21H2 | Make update available as soon as possible | August 28, 2023 | September 10, 2023 | 7 | June 11, 2024 |
| Windows Autopatch - DSS Policy - My feature update release - Phase 5  | Windows 10 21H2 | Make update available as soon as possible | September 25, 2023 | October 16, 2023 | 7 | June 11, 2024 |

