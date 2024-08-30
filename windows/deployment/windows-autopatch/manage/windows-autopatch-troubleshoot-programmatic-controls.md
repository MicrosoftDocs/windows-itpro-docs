---
title: Troubleshoot programmatic controls
titleSuffix: Windows Autopatch
description: Solutions to commonly encountered problems when using Windows Autopatch API.
ms.service: windows-client
ms.subservice: autopatch
ms.topic: troubleshooting
ms.author: tiaraquan
author: tiaraquan
manager: aaroncz
ms.collection:
  - tier1
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 09/16/2024
---

# Troubleshoot programmatic controls

This troubleshooting guide addresses the most common issues that IT administrators face when using Windows Autopatch API. For a general troubleshooting guide for Windows Update, see [Windows Update troubleshooting](/troubleshoot/windows-client/deployment/windows-update-issues-troubleshooting?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json).

## The device isn't receiving an update that I deployed

- Check that the device doesn't have updates of the relevant category paused. See [Pause feature updates](/windows/deployment/update/waas-configure-wufb) and [Pause quality updates](/windows/deployment/update/waas-configure-wufb).
- **Feature updates only**: The device might have a safeguard hold applied for the given feature update version. For more about safeguard holds, see [Safeguard holds](/windows/deployment/update/safeguard-holds) and [Opt out of safeguard holds](/windows/deployment/update/safeguard-opt-out).
- Check that the deployment to which the device is assigned has the state *offering*. Deployments that have the states *paused* or *scheduled* doesn't deploy content to devices.
- Check that the device was scanned for updates and is scanning the Windows Update service. To learn more about scanning for updates, see [Scanning updates](/windows/deployment/update/how-windows-update-works#scanning-updates).
- **Feature updates only**: Check that the device is successfully enrolled in feature update management. A device that is successfully enrolled will be represented by a Microsoft Entra device resource with an update management enrollment for feature updates and have no Microsoft Entra device registration errors.
- **Expedited quality updates only**: Check that the device has the Update Health Tools installed (available for Windows 10 version 1809 or later in the update described in [KB 4023057 - Update for Windows 10 Update Service components](https://support.microsoft.com/topic/kb4023057-update-for-windows-10-update-service-components-fccad0ca-dc10-2e46-9ed1-7e392450fb3a), or a more recent quality update). The Update Health Tools are required for a device to receive an expedited quality update. On a device, the program can be located at **C:\\Program Files\\Microsoft Update Health Tools**. You can verify its presence by reviewing **Add or Remove Programs** or using the following PowerShell script: `Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -match "Microsoft Update Health Tools"}`.

## The device is receiving an update that I didn't deploy

- Check that the device is scanning the Windows Update service and not a different endpoint. If the device is scanning for updates from a WSUS endpoint, for example, it might receive different updates. To learn more about scanning for updates, see [Scanning updates](/windows/deployment/update/how-windows-update-works#scanning-updates).
- **Feature updates only**: Check that the device is successfully enrolled in feature update management. A device that isn't successfully enrolled might receive different updates according to its feature update deferral period, for example. A device that is successfully enrolled will be represented by a Microsoft Entra device resource with an update management enrollment for feature updates and have no Microsoft Entra device registration errors.

### The device installed a newer update than the expedited update I deployed

There are some scenarios when a deployment to expedite an update results in the installation of a more recent update than specified in policy. This result occurs when the newer update includes and surpasses the specified update, and that newer update is available before a device checks in to install the update that's specified in the expedited update policy.

Installing the most recent quality update reduces disruptions to the device and user while applying the benefits of the intended update. This avoids having to install multiple updates, which each might require separate reboots.

A more recent update is deployed when the following conditions are met:

- The device isn't targeted with a deferral policy that blocks installation of a more recent update. In this case, the most recently available update that isn't deferred is the update that might install.

- During the process to expedite an update, the device runs a new scan that detects the newer update. This can occur due to the timing of:
  - When the device restarts to complete installation
  - When the device runs its daily scan
  - When a new update becomes available

  When a scan identifies a newer update, Windows Update attempts to stop installation of the original update, cancel the restart, and then starts the download and installation of the more recent update.

While expedite update deployments override an update deferral for the update version that's specified, they don't override deferrals that are in place for any other update version.

<!--Using include for Update Health Tools log location-->
[!INCLUDE [Windows Autopatch Update Health Tools](../includes/windows-autopatch-update-health-tools-logs.md)]

## Policy considerations for drivers

<!--Using include for Policy considerations for drivers-->
[!INCLUDE [Windows Autopatch driver policy considerations](../includes/windows-autopatch-driver-policy-considerations.md)]
