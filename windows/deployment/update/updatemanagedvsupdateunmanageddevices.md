---
title: IT managed versus unmanaged devices
description: This article provides clarity on the terminology and practices involved in managing Windows updates for both managed and unmanaged devices.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: overview
author: mikolding
ms.author: v-mikolding
ms.reviewer: mstewart,thtrombl,v-fvalentyna,arcarley
manager: aaroncz
ms.localizationpriority: medium
appliesto:
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ms.date: 06/25/2024
---

# Managing Windows Updates: IT Managed vs. Unmanaged Devices

For IT administrators, understanding the differences between managed and unmanaged devices is crucial for effective Windows update management. This article provides clarity on the terminology and practices involved in managing Windows updates for both types of devices.

## What are Update-Managed Windows Devices?

Update-managed devices are those where an IT administrator or organization controls Windows updates through a management tool (such as Microsoft Intune) or by directly setting policies (for example, Group Policy (GPO), Configuration Service Provider (CSP) policy, or Graph).

**Note:** This is true even if you directly set registry keys, although this is not recommended as registry keys can be easily overwritten.

Managed devices can include desktops, laptops, tablets, servers, and manufacturing equipment. These devices are secured and configured according to your organization's standards and policies.

### IT-Managed: Windows Update Offering

Devices are considered Windows update-managed if you manage the update offering in the following ways:

- Configuring policies to manage which updates are offered to the specific device.
- Setting when your organization should receive feature, quality, and driver updates, among others.
- Using Group Policy (GP), Cloud Solution Provider (CSP), or Graph to configure these offerings.

### IT-Managed: Windows Update Experience

Devices are considered Windows update-managed if you use policies (GP, CSP, or Graph) to manage device behavior when taking Windows updates.

Examples of controllable device behavior include active hours, update grace periods and deadlines, update notifications, update scheduling, and more. Consult the complete list at [Update Policy CSP - Windows Client Management](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update).

## Examples of Update-Managed Windows Devices

Here are a few examples of update-managed devices:

- **Company-owned devices:** Devices provisioned by your IT department with corporate credentials, configurations, and policies.
- **Employee-owned devices in BYOD programs:** Personally owned devices enrolled in the company's device management system to securely access corporate resources.
- **Devices managed through Windows Autopilot:** Devices set up and preconfigured to be business-ready right out of the box.
- **Mandated security settings:** Devices with health requirements such as device encryption, PIN or strong password, specific inactivity timeout periods, and up-to-date operating systems.
- **Intune-enrolled devices:** Devices enrolled in Microsoft Intune for network access and enforced security policies.
- **Third-party managed devices:** Devices enrolled in third-party management tools with configured Windows update policies via GPO, CSP, or registry key.

## What are Update-Unmanaged Windows Devices?

Unlike update-managed devices, unmanaged devices are not controlled through policies, management tools, or software. These devices aren't enrolled in tools like Microsoft Intune or Configuration Manager. If you only configure the Settings page to control overall device behavior when taking updates, it is considered an unmanaged device.

**Note:** The term "Microsoft managed devices" used to refer to what we now call "update unmanaged Windows devices." Based on feedback, we have updated our terminology for clarity.

## Examples of Update-Unmanaged Windows Devices

Examples of update-unmanaged devices include:

- **Personal devices:** Devices owned by individuals at your organization that are not enrolled in any corporate management system.
- **BYOD devices not enrolled in management programs:** Devices used for work but not part of an organizational BYOD program.
- **Peripheral devices:** Devices like printers, IP phones, and uninterruptible power supplies (UPS) that cannot accept centrally managed administrative credentials.

For more information on managed and unmanaged devices, check out [Secure managed and unmanaged devices](https://docs.microsoft.com/mem/intune/protect/protect-devices).

## Recommendations

| SEO Keywords                                                                                              | Suggested Additions                                                                  | Links to Update                                                                                                                                                                                                                    | Issues/Concerns                                                    |
|-----------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
| Windows update management, IT managed devices, unmanaged devices, Windows updates, Intune managed devices | Add detailed steps for configuring GPO, CSP, and Graph policies for managing updates | [Update Policy CSP - Windows Client Management](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update), [Secure managed and unmanaged devices](https://docs.microsoft.com/mem/intune/protect/protect-devices) | Ensure all links are up to date and point to the correct resources |
