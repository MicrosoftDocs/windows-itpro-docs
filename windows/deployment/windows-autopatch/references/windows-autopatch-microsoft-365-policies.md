---
title: Microsoft 365 Apps for enterprise update policies
description: This article explains the Microsoft 365 Apps for enterprise policies in Windows Autopatch
ms.date: 07/11/2022
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
ms.reviewer: hathind
ms.collection:
  - tier2
---

# Microsoft 365 Apps for enterprise update policies

## Conflicting and unsupported policies

Deploying any of the following policies to a managed device makes that device ineligible for management since the device prevents us from delivering the service as designed.

### Update policies

Window Autopatch deploys mobile device management (MDM) policies to configure Microsoft 365 Apps and requires a specific configuration. If any [Microsoft 365 Apps update settings](/deployoffice/configure-update-settings-microsoft-365-apps) are deployed which conflict with our policies, then the device won't be eligible for management.

| Update setting | Value | Usage reason |
| ----- | ----- | ----- |
| Set updates to occur automatically | Enabled | Enable automatic updates |
| Specify a location to look for updates | Blank | Don't use this setting since it overwrites the update branch |
| Update channel | Monthly Enterprise | Supported channel for Windows Autopatch |
| Specify the version of Microsoft 365 Apps to update to | Variable | Used to roll back to a previous version if an error occurs |
| Set a deadline by when updates must be applied | 7 | Update deadline |
| Hide update notifications from users | Turned off | Users should be notified when Microsoft 365 Apps are being updated |
| Hide the option to turn on or off automatic Office updates | Turned on | Prevents users from disabling automatic updates |
