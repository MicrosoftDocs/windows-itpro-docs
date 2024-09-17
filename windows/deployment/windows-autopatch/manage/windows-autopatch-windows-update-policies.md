---
title: Windows quality update policies
description: This article explains Windows quality update policies in Windows Autopatch
ms.date: 09/16/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: concept-article
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: adnich
ms.collection:
  - tier2
---

# Windows quality update policies

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

## Conflicting and unsupported policies

Deploying any of the following policies to a Windows Autopatch device makes that device ineligible for management since the device prevents us from delivering the service as designed.

### Update policies

Window Autopatch deploys mobile device management (MDM) policies to configure devices and requires a specific configuration. If any policies from the [Update Policy CSP](/windows/client-management/mdm/policy-csp-update) are deployed to devices that aren't on the permitted list, those devices are excluded from management.

| Allowed policy | Policy CSP | Description |
| ----- | ----- | ----- |
| [Active hours start](/windows/client-management/mdm/policy-csp-update#update-activehoursstart) | Update/ActiveHoursStart | This policy controls the end of the protected window where devices don't restart.<p><p>Supported values are from zero through to 23, where zero is 12∶00AM, representing the hours of the day in local time on that device. This value can be no more than 12 hours after the time set in active hours start. |
| [Active hours end](/windows/client-management/mdm/policy-csp-update#update-activehoursend) | Update/ActiveHoursEnd | This policy controls the end of the protected window where devices don't restart.<p><p>Supported values are from zero through to 23, where zero is 12∶00AM, representing the hours of the day in local time on that device. This value can be no more than 12 hours after the time set in active hours start. |
| [Active hours max range](/windows/client-management/mdm/policy-csp-update#update-activehoursmaxrange) | Update/ActiveHoursMaxRange | Allows the IT admin to specify the max active hours range.<p><p>This value sets the maximum number of active hours from the start time. Supported values are from eight through to 18. |

### Group policy and other policy managers

Group policy and other policy managers can take precedence over mobile device management (MDM) policies. For Windows quality updates, if any policies or configurations are detected which modify the following hives in the registry, the device could become ineligible for management:

- `HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\PolicyState`
- `HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate`
