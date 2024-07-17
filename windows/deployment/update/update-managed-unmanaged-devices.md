---
title: Defining Windows update-managed devices
description: This article provides clarity on the terminology and practices involved in managing Windows updates for both managed and unmanaged devices.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: overview
ms.date: 06/25/2024
author: mikolding
ms.author: v-mikolding
ms.reviewer: mstewart,thtrombl,v-fvalentyna,arcarley
manager: aaroncz
ms.localizationpriority: medium
appliesto:
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
---

# Defining Windows update-managed devices

As an IT administrator, understanding the differences between managed and unmanaged devices is crucial for effective Windows update management. This article provides clarity on the terminology and practices involved in managing Windows updates for both types of devices.

## What are update-managed Windows devices?

Update-managed devices are those where an IT administrator or organization controls Windows updates through a management tool, such as Microsoft Intune, or by directly setting policies. You can directly set policies with group policy objects (GPO), configuration service provider (CSP) policies, or Microsoft Graph.

> [!NOTE]
> This definition is true even if you directly set registry keys. However, we don't recommended doing this action because registry keys can be easily overwritten.

Managed devices can include desktops, laptops, tablets, servers, and manufacturing equipment. These devices are secured and configured according to your organization's standards and policies.

### IT-managed: Windows update offering

Devices are considered Windows update-managed if you manage the update offering in the following ways:

- You configure policies to manage which updates are offered to the specific device.
- You set when your organization should receive feature, quality, and driver updates, among others.
- You use [group policy objects (GPO)](/windows/deployment/update/waas-wufb-group-policy), [configuration service provider (CSP)](/windows/client-management/mdm/policy-csp-update#update-allowupdateservice), or [Microsoft Graph](/windows/deployment/update/deployment-service-overview) to configure these offerings.

### IT-managed: Windows update experience

Devices are considered Windows update-managed if you use policies (GPO, CSP, or Microsoft Graph) to manage device behavior when taking Windows updates.

Examples of controllable device behavior include active hours, update grace periods and deadlines, update notifications, update scheduling, and more. Consult the complete list at [Update Policy CSP](/windows/client-management/mdm/policy-csp-update).

## Examples of update-managed Windows devices

Here are a few examples of update-managed devices:

- **Company-owned devices:** Devices provisioned by your IT department with corporate credentials, configurations, and policies.
- **Employee-owned devices in BYOD programs:** Personally owned devices that are enrolled in the company's device management system to securely access corporate resources.
- **Devices provisioned through Windows Autopilot:** Devices that are set up and preconfigured to be business-ready right out of the box.
- **Mandated security settings:** Devices with health requirements such as device encryption, PIN or strong password, specific inactivity timeout periods, and up-to-date operating systems.
- **Intune-enrolled devices:** Devices enrolled in Microsoft Intune for network access and enforced security policies.
- **Third-party managed devices:** Devices enrolled in non-Microsoft management tools with configured Windows update policies via GPO, CSP, or registry key.

## What are update-unmanaged Windows devices?

Unlike update-managed devices, unmanaged devices aren't controlled through policies, management tools, or software. These devices aren't enrolled in tools like Microsoft Intune or Configuration Manager. If you only configure the Settings page to control overall device behavior when taking updates, it's considered an unmanaged device.

> [!NOTE]
> The term "Microsoft managed devices" used to refer to what we now call "update unmanaged Windows devices." Based on feedback, we have updated our terminology for clarity.

## Examples of update-unmanaged Windows devices

Examples of update-unmanaged devices include:

- **Personal devices:** Devices owned by individuals at your organization that aren't enrolled in any corporate management system.
- **BYOD devices not enrolled in management programs:** Devices used for work but not part of an organizational bring your own device (BYOD) program.
- **Peripheral devices:** Devices like printers, IP phones, and uninterruptible power supplies (UPS) that can't accept centrally managed administrative credentials.

For more information on managed and unmanaged devices, see [Secure managed and unmanaged devices](/microsoft-365/business-premium/m365bp-managed-unmanaged-devices).
