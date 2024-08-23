---
title: Windows update policies
description: This article explains Windows update policies in Windows Autopatch
ms.date: 07/08/2024
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

# Windows update policies

## Deployment rings for Windows 10 and later

The following policies contain settings that apply to both Windows quality and feature updates. After onboarding there will be four of these policies in your tenant with the following naming convention:

**Modern Workplace Update Policy [ring name] - [Windows Autopatch]**

### Windows 10 and later update settings

| Setting name | Test | First | Fast | Broad |
| ----- | ----- | ----- | ----- | ----- |
| Microsoft product updates | Allow | Allow | Allow | Allow |
| Windows drivers | Allow | Allow | Allow | Allow |
| Windows quality update deferral period | 0 | 1 | 6 | 9 |
| Windows feature update deferral period | 0 | 0 | 0 | 0 |
| Upgrade Windows 10 to latest Windows 11 release | No | No | No | No |
| Set Windows feature update uninstall period | 30 days | 30 days | 30 days | 30 days |
| Servicing channel | General availability |  General availability |  General availability |  General availability |

### Windows 10 and later user experience settings

| Setting name | Test | First | Fast | Broad |
| ----- | ----- | ----- | ----- | ----- |
| Automatic update behavior | Reset to default | Reset to default | Reset to default | Reset to default |
| Restart checks | Allow | Allow | Allow | Allow |
| Option to pause updates | Disable | Disable | Disable | Disable |
| Option to check for Windows updates | Default |  Default | Default | Default |
| Change notification update level | Default | Default |  Default | Default |
| Deadline for Windows feature updates | 5 | 5 | 5 | 5 |
| Deadline for Windows quality updates | 0 | 2 | 2 | 5 |
| Grace period | 0 | 2 | 2 | 2 |
| Auto restart before deadline | Yes | Yes | Yes | Yes |

### Windows 10 and later assignments

| Setting name | Test | First | Fast | Broad |
| ----- | ----- | ----- | ----- | ----- |
| Included groups | Modern Workplace Devices-Windows Autopatch-Test | Modern Workplace Devices-Windows Autopatch-First | Modern Workplace Devices-Windows Autopatch-Fast | Modern Workplace Devices-Windows Autopatch-Broad |
| Excluded groups | None | None | None | None |

## Windows feature update policies

The service deploys policies using Microsoft Intune to control how Windows feature updates are deployed to devices.

### Windows feature updates for Windows 10 and later

These policies control the minimum target version of Windows that a device is meant to accept. Throughout the rest of the article, these policies are referred to as DSS policies. After onboarding, there will be four of these policies in your tenant with the following naming convention:

**Modern Workplace DSS Policy [ring name]**

#### Windows feature update deployment settings

| Setting name | Test | First | Fast | Broad |
| ----- | ----- | ----- | ----- | ----- |
| Name | Current targeted version of Windows | Current targeted version of Windows | Current targeted version of Windows | Current targeted version of Windows |
| Rollout options | Immediate start | Immediate start | Immediate start | Immediate start |

#### Windows feature update policy assignments

| Setting name | Test | First | Fast | Broad |
| ----- | ----- | ----- | ----- | ----- |
| Included groups | Modern Workplace Devices-Windows Autopatch-Test  | Modern Workplace Devices-Windows Autopatch-First | Modern Workplace Devices-Windows Autopatch-Fast | Modern Workplace Devices-Windows Autopatch-Broad |
| Excluded groups | Modern Workplace - Windows 11 Pre-Release Test Devices | Modern Workplace - Windows 11 Pre-Release Test Devices | Modern Workplace - Windows 11 Pre-Release Test Devices | Modern Workplace - Windows 11 Pre-Release Test Devices |

## Conflicting and unsupported policies

Deploying any of the following policies to a Windows Autopatch device makes that device ineligible for management since the device prevents us from delivering the service as designed.

### Update policies

Window Autopatch deploys mobile device management (MDM) policies to configure devices and requires a specific configuration. If any policies from the [Update Policy CSP](/windows/client-management/mdm/policy-csp-update) are deployed to devices that aren't on the permitted list, those devices are excluded from management.

| Allowed policy | Policy CSP | Description |
| ----- | ----- | ----- |
| [Active hours start](/windows/client-management/mdm/policy-csp-update#update-activehoursstart) | Update/ActiveHoursStart | This policy controls the end of the protected window where devices won't restart.<p><p>Supported values are from zero through to 23, where zero is 12∶00AM, representing the hours of the day in local time on that device. This value can be no more than 12 hours after the time set in active hours start. |
| [Active hours end](/windows/client-management/mdm/policy-csp-update#update-activehoursend) | Update/ActiveHoursEnd | This policy controls the end of the protected window where devices won't restart.<p><p>Supported values are from zero through to 23, where zero is 12∶00AM, representing the hours of the day in local time on that device. This value can be no more than 12 hours after the time set in active hours start. |
| [Active hours max range](/windows/client-management/mdm/policy-csp-update#update-activehoursmaxrange) | Update/ActiveHoursMaxRange | Allows the IT admin to specify the max active hours range.<p><p>This value sets the maximum number of active hours from the start time. Supported values are from eight through to 18. |

### Group policy and other policy managers

Group policy and other policy managers can take precedence over mobile device management (MDM) policies. For Windows quality updates, if any policies or configurations are detected which modify the following hives in the registry, the device could become ineligible for management:

- `HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\PolicyState`
- `HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate`
