---
title: Troubleshooting the Windows Update for Business deployment service
description: Solutions to common problems
ms.custom: seo-marvel-apr2020
ms.prod: w10
ms.mktglfcycl: manage
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.reviewer:
manager: laurawi
ms.topic: article
---

> Applies to: Windows 10

# Troubleshooting the Windows Update for Business deployment service

This troubleshooting guide addresses the most common issues that IT administrators face when using the Windows Update for Business [deployment service](deployment-service-overview.md). For a general troubleshooting guide for Windows Update, see [Windows Update troubleshooting](windows-update-troubleshooting.md).

## The device isn't receiving an update that I deployed

- Check that the device doesn't have updates of the relevant category paused. See [Pause feature updates](waas-configure-wufb.md#pause-feature-updates) and [Pause quality updates](waas-configure-wufb.md#pause-quality-updates).
- **Feature updates only**: The device might have a safeguard hold applied for the given feature update version. For more about safeguard holds, see [Safeguard holds](safeguard-holds.md) and [Opt out of safeguard holds](safeguard-opt-out.md).
- Check that the deployment to which the device is assigned has the state *offering*. Deployments that have the states *paused* or *scheduled* won't deploy content to devices.
- Check that the device has scanned for updates and is scanning the Windows Update service. To learn more about scanning for updates, see [Scanning updates](how-windows-update-works.md#scanning-updates).
- **Feature updates only**: Check that the device is successfully enrolled in feature update management by the deployment service. A device that is successfully enrolled will be represented by an Azure AD device resource with an update management enrollment for feature updates and have no Azure AD device registration errors.
-  **Expedited quality updates only**: Check that the device has the Update Health Tools installed (available for Windows 10 version 1809 or later in the update described in [KB 4023057 - Update for Windows 10 Update Service components](https://support.microsoft.com/topic/kb4023057-update-for-windows-10-update-service-components-fccad0ca-dc10-2e46-9ed1-7e392450fb3a), or a more recent quality update). The Update Health Tools are required for a device to receive an expedited quality update. On a device, the program can be located at **C:\\Program Files\\Microsoft Update Health Tools**. You can verify its presence by reviewing **Add or Remove Programs** or using the following PowerShell script: `Get-WmiObject -Class Win32\_Product \| Where-Object {$\_.Name -amatch "Microsoft Update Health Tools"}`.

## The device is receiving an update that I didn't deploy

- Check that the device is scanning the Windows Update service and not a different endpoint. If the device is scanning for updates from a WSUS endpoint, for example, it might receive different updates. To learn more about scanning for updates, see [Scanning updates](how-windows-update-works.md#scanning-updates).
- **Feature updates only***: Check that the device is successfully enrolled in feature update management by the deployment service. A device that is not successfully enrolled might receive different updates according to its feature update deferral period, for example. A device that is successfully enrolled will be represented by an Azure AD device resource with an update management enrollment for feature updates and have no Azure AD device registration errors.
