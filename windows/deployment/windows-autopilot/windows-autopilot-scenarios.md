---
title: Windows Autopilot scenarios and capabilities
ms.reviewer: 
manager: dansimp
description: Listing of Autopilot scenarios
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
author: dulcemontemayor
ms.author: dolmont
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot scenarios and capabilities

**Applies to: Windows 10**

## Scenarios

Windows Autopilot includes support for a growing list of scenarios, designed to support common organization needs which can vary based on the type of organization and their progress moving to Windows 10 and [transitioning to modern management](https://docs.microsoft.com/windows/client-management/manage-windows-10-in-your-organization-modern-management).

For details about these scenarios, see these additional topics:

- [Windows Autopilot for existing devices](existing-devices.md), to deploy Windows 10 on an existing Windows 7 or 8.1 device.
- [Windows Autopilot user-driven mode](user-driven.md), for devices that will be set up by a member of the organization and configured for that person.
- [Windows Autopilot self-deploying mode](self-deploying.md), for devices that will be automatically configured for shared use, as a kiosk, or as a digital signage device.
- [Windows Autopilot Reset](windows-autopilot-reset.md), to re-deploy a device in a business-ready state.

## Capabilities

### Windows Autopilot is self-updating during OOBE:

Starting with the Windows 10, version 1903, Autopilot functional and critical updates will begin downloading automatically during OOBE after a device gets connected to a network and the [critical driver and Windows zero-day patch (ZDP) updates](https://docs.microsoft.com/windows-hardware/customize/desktop/windows-updates-during-oobe) have completed. The user or IT admin cannot opt-out of these Autopilot updates; they are required for Windows Autopilot deployment to operate properly.  Windows will alert the user that the device is checking for, downloading and installing the updates.

### Cortana voiceover and speech recognition during OOBE

In Windows 10, version 1903 and later Cortana voiceover and speech recognition during OOBE is DISABLED by default for all Windows 10 Pro, Education and Enterprise SKUs.

If desired, you can enable Cortana voiceover and speech recognition during OOBE by creating the following registry key. This key does not exist by default.

HKLM\Software\Microsoft\Windows\CurrentVersion\OOBE\EnableVoiceForAllEditions

The key value is a DWORD with  **0** = disabled and **1** = enabled.

| Value | Description |
| --- | --- |
| 0 | Cortana voiceover is disabled |
| 1 | Cortana voiceover is enabled |
| No value | Device will fall back to default behavior of the edition |

To change this key value, use WCD tool to create as PPKG as documented [here](https://docs.microsoft.com/windows/configuration/wcd/wcd-oobe#nforce).

### Bitlocker encryption

With Windows Autopilot, you can configure the BitLocker encryption settings to be applied before automatic encryption is started. For more information, see [Setting the BitLocker encryption algorithm for Autopilot devices](bitlocker.md)

## Related topics

[Windows Autopilot Enrollment Status page](enrollment-status.md)
