---
title: Autopatch group policies
description: This article describes Autopatch group policies
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

# Autopatch group policies

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

The following Autopatch group policies are only created when you create an Autopatch group.

## Update rings policy for Windows 10 and later

Update rings policy for Windows 10 and later

Autopatch groups set up the [Update rings policy for Windows 10 and later](/mem/intune/protect/windows-10-update-rings) for each of its deployment rings in the Default Autopatch group. See the following default policy values:

| Policy name | Quality updates deferral in days | Feature updates deferral in days | Feature updates uninstall window in days | Deadline for quality updates in days | Deadline for feature updates in days | Grace period | Auto restart before deadline |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Test | 0 | 0 | 30 | 0 | 5 | 0 | Yes |
| Ring 1 | 1 | 0 | 30 | 2 | 5 |2 | Yes |
| Ring 2 | 6 | 0 | 30 | 2 | 5 | 2 | Yes |
| Ring 3 | 9 | 0 | 30 | 5 | 5 | 2 | Yes |
| Last | 11 | 0 | 30 | 3 | 5 | 2 | Yes |

## Feature update policy for Windows 10 and later

Autopatch groups set up the [feature updates for Windows 10 and later policies](/mem/intune/protect/windows-10-feature-updates) for each of its deployment rings in the Default Autopatch group, see the following default policy values:

| Policy name |Feature update version | Rollout options | First deployment ring availability | Final deployment ring availability | Day between deployment rings | Support end date |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Autopatch group name - DSS Policy [Test]| Windows 10 21H2 | Make update available as soon as possible | N/A | N/A | N/A | June 11, 2024 |
| Autopatch group name - DSS Policy [Ring1] | Windows 10 21H2 | Make update available as soon as possible | N/A | N/A | N/A | June 11, 2024 |
| Autopatch group name - DSS Policy [Ring2] | Windows 10 21H2 | Make update available as soon as possible | December 14, 2022 | December 21, 2022 | 1 | June 11, 2024 |
| Autopatch group name - DSS Policy [Ring3] | Windows 10 21H2 | Make update available as soon as possible | December 15, 2022 | December 29, 2022 | 1 | June 11, 2024 |
| Autopatch group name - DSS Policy [Last] | Windows 10 21H2 | Make update available as soon as possible | December 15, 2022 | December 29, 2022 | 1 | June 11, 2024 |
