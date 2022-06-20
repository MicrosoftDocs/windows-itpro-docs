---
title: Conflicting and unsupported policies
description:  This article explains the conflicting and unsupported policies in Windows quality updates
ms.date: 05/30/2022
ms.prod: w11
ms.technology: windows
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# Conflicting and unsupported policies

Deploying any of the following policies to a Windows Autopatch device will make that device ineligible for management since the device will prevent us from delivering the service as designed.

## Update policies

Window Autopatch deploys mobile device management (MDM) policies to configure devices and requires a specific configuration. If any policies from the [Update Policy CSP](/windows/client-management/mdm/policy-csp-update) are deployed to devices that aren't on the permitted list, those devices will be excluded from management.

| Allowed policy | Policy CSP | Description |
| ----- | ----- | ----- |
| [Active hours start](/windows/client-management/mdm/policy-csp-update#update-activehoursstart) | Update/ActiveHoursStart | This policy controls the end of the protected window where devices won't reboot.<p><p>Supported values are from zero through to 23, where zero is 12∶00AM, representing the hours of the day in local time on that device. This value can be no more than 12 hours after the time set in active hours start. |
| [Active hours end](/windows/client-management/mdm/policy-csp-update#update-activehoursend) | Update/ActiveHoursEnd | This policy controls the end of the protected window where devices won't reboot.<p><p>Supported values are from zero through to 23, where zero is 12∶00AM, representing the hours of the day in local time on that device. This value can be no more than 12 hours after the time set in active hours start. |
| [Active hours max range](/windows/client-management/mdm/policy-csp-update#update-activehoursmaxrange) | Update/ActiveHoursMaxRange | Allows the IT admin to specify the max active hours range.<p><p>This value sets the maximum number of active hours from the start time. Supported values are from eight through to 18. |

## Group policy

Group policy takes precedence over mobile device management (MDM) policies. For Windows quality updates, if any group policies are detected which modify the following hive in the registry, the device will be ineligible for management:

`Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\PolicyState`
