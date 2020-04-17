---
title: Manage when Windows Update for Business updates are offered
ms.reviewer: 
manager: laurawi
description: Windows Update for Business lets you manage when devices received updates from Windows Update.
ms.prod: w10
ms.mktglfcycl: manage
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.topic: article
---

# Manage when updates are offered

By grouping devices into different deployment groups, you can control the deployment of updates in waves by setting up different branch readiness levels and update deferral policies for each group. All updates from Windows Update include built-in compatibility checks to prevent against a poor update experience for your devices as well as a check to prevent repeated rollbacks.

## Enroll in a pre-release branch

You control which release channel for feature updates by setting the branch readiness level. Today, you can only select pre-release branches for feature updates.

Currently there are four branch readiness levels:

- Windows Insider Program for Business (for pre-release updates) 
- Windows Insider Fast
- Windows Insider Slow
- Windows Insider Release Preview {isn't this also pre-release by definition?}
- Semi-annual Channel


> [!NOTE]
> Prior to Windows 10, version 1903, there were two channels for released updates: Semi-annual Channel and Semi-annual Channel (Targeted). Starting with Windows 10, version 1903 there is only the one release channel: Semi-annual Channel.

You can set the branch readiness level by using the **Select when Preview Builds and Feature Updates are Received** policy. In order to use this to manage pre-release builds, first enable preview builds by using the **Manage preview Builds** policy.

## Defer an update

A Windows Update for Business administrator {is this a formal role name?} can defer the installation of both feature and quality updates on devices within a bounded range of time from when those updates are first made available on the Windows Update service. You can use this deferral to allow time to validate deployments before they are installed on devices. Deferrals work by allowing you to specify the number of days after an update is released before it is offered to a device. For example, if you set a feature update deferral period of 365 days, the device will not install a feature update that has been released for less than 365 days. To defer feature updates use the **Select when Preview Builds and Feature Updates are Received** policy. The maximum deferral period differs by the type of update. Certain updates cannot be deferred. {can we give any examples of those?}


|Update type  |Maximum deferral  |
|---------|---------|
|Feature updates     |  365 days       |
|Quality updates     |  30 days       |
|Non-deferrable updates     |  none       |

All deferral days are calculated from the date a release is offered in the Semi-annual Channel. See [Windows Release Information](https://docs.microsoft.com/windows/release-information/) for these dates.
 
{Example: Using deferrals to deploy in waves
      [Insert graphic with the deferrals set to different values showing a feature update rollout)}

## Pause an update

If you discover a problem while deploying a feature or quality update, the IT administrator can pause the update for 35 days from a specified start date to prevent other devices from installing it until the issue is mitigated.
If you pause a feature update, quality updates are still offered to devices to ensure they stay secure. The pause period for both feature and quality updates is calculated from a start date that you set.


