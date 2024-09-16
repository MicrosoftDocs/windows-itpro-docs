---
title: Microsoft 365 Apps for enterprise update policies
description: This article explains the Microsoft 365 Apps for enterprise policies in Windows Autopatch
ms.date: 09/16/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: concept-article
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: hathind
ms.collection:
  - tier2
---

# Microsoft 365 Apps for enterprise update policies

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

## Conflicting and unsupported policies

Deploying any of the following policies to a managed device makes that device ineligible for management since the device prevents us from delivering the service as designed.

### Update policies

Window Autopatch deploys mobile device management (MDM) policies to configure Microsoft 365 Apps and requires a specific configuration. If any [Microsoft 365 Apps update settings](/deployoffice/configure-update-settings-microsoft-365-apps) are deployed which conflict with our policies, then the device isn't eligible for management.

| Setting name | Test | First | Fast | Broad | Usage reason |
| ----- | ----- | ----- | ----- | ----- | ----- |
| Set updates to occur automatically | Turned on | Turned on | Turned on | Turned on | Turn on automatic updates |
| Specify a location to look for updates | Blank | Blank | Blank | Blank | Don't use this setting because it overwrites the update branch |
| Specify the version of Microsoft Apps to update to | Variable | Variable | Variable | Variable | Used to roll back to a previous version if an error occurs |
| Set a deadline when updates must be applied | 7 | 7 | 7 | 7 | Updates must be applied by the specified deadline |
| Sets the Office update deferral | 0 | 0 | 3 | 7| Delay downloading and installing updates for Office |
| Hide update notifications from end users | Turned off | Turned off |  Turned off |  Turned off | End users should be notified when Microsoft 365 Apps are being updated |
| Hide the option to turn on or off automatic Office updates | Turned on | Turned on | Turned on | Turned on | Prevents end users from turning off automatic updates |
