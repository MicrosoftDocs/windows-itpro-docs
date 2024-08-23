---
title: Microsoft Teams
description: This article explains how Microsoft Teams updates are managed in Windows Autopatch
ms.date: 09/15/2023
ms.service: windows-client
ms.subservice: autopatch
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: hathind
ms.collection:
  - highpri
  - tier1
---

# Microsoft Teams

Windows Autopatch uses the [standard automatic update channel](/microsoftteams/teams-client-update#can-admins-deploy-updates-instead-of-teams-auto-updating) for Microsoft Teams.

## Device eligibility

For a device to be eligible for automated Teams updates as a part of Windows Autopatch they must meet the following criteria:

- Microsoft Teams must be installed on the device.
- The user must be signed into both the device and Teams.
- The device must be able to access the Teams update service [network endpoints](../prepare/windows-autopatch-configure-network.md).
- Once the update is downloaded, the user must be logged in with the device in an idle state for at least 40 minutes to ensure that Teams can automatically update.

## Update release schedule

The Teams desktop client updates are released once a month for all users, and twice a month for members of the Technology Adoption Program (TAP).

Updates undergo vigorous internal testing and are first released to members of TAP for validation. The update usually takes place on a Monday. If a critical update is needed, Teams will bypass this schedule and release the update as soon as it's available.

## End user experience

Teams will check for updates every few hours behind the scenes, download the updates, and then will wait for the computer to be idle for at least 40 minutes before automatically installing the update.

When an update is available, the following are required to be able to download the update:

- The user must be signed into both the device and Teams.
- The device must have an internet connection.
- The device must be able to access the required network endpoints to reach the Teams update service.

> [!NOTE]
> If a user is on a version of Teams that is out of date, Teams will force the user to update prior to allowing them to use the application.

## Pausing and resuming updates

Windows Autopatch can't pause or resume Teams updates.

## Incidents and outages

If you're experiencing issues related to Teams updates, [submit a support request](../operate/windows-autopatch-support-request.md).
