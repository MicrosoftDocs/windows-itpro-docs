---
title: Windows Autopilot device guidelines
ms.reviewer: 
manager: laurawi
description: Windows Autopilot deployment
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot device guidelines

**Applies to**

- Windows 10

## Hardware and firmware best practice guidelines for Windows Autopilot

All devices used with Windows Autopilot should meet the [minimum hardware requirements](https://docs.microsoft.com/windows-hardware/design/minimum/minimum-hardware-requirements-overview) for Windows 10.  

The following additional best practices ensure that devices can easily be provisioned by organizations as part of the Windows Autopilot deployment process: 
- Ensure that the TPM 2.0 is enabled and in a good state (not in Reduced Functionality Mode) by default on devices intended for Windows Autopilot self-deploying mode.
- The OEM provisions unique tuple info (SmbiosSystemManufacturer, SmbiosSystemProductName, SmbiosSystemSerialNumber) or PKID + SmbiosSystemSerialNumber into the [SMBIOS fields](https://docs.microsoft.com/windows-hardware/drivers/bringup/smbios) per Microsoft specification (Manufacturer, Product Name and Serial Number stored in SMBIOS Type 1 04h, Type 1 05h and Type 1 07h).
- The OEM uploads 4K Hardware Hashes obtained using OA3 Tool RS3+ run in Audit mode on full OS to Microsoft via CBR report prior to shipping devices to an Autopilot customer or channel partner.
- As a best practice, Microsoft requires that OEM shipping drivers are published to Windows Update within 30 days of the CBR being submitted, and system firmware and driver updates are published to Windows Update within 14 days
- The OEM ensures that the PKID provisioned in the SMBIOS is passed on to the channel.

## Software best practice guidelines for Windows Autopilot

- The Windows Autopilot device should be preinstalled with only a Windows 10 base image plus drivers and Office 365 Pro Plus Retail (C2R).
- Unless explicitly requested by the customer, no other preinstalled software should be included.
  - Per OEM Policy, Windows 10 features, including built-in apps, should not be disabled or removed.

## Related topics

[Windows Autopilot customer consent](registration-auth.md)<br>
[Motherboard replacement scenario guidance](autopilot-mbr.md)<br>
