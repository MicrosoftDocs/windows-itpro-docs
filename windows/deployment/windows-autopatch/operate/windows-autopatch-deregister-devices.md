---
title: Deregister a device
description:  This article explains how to deregister devices
ms.date: 05/31/2022
ms.prod: w11
ms.technology: windows
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: andredm7
---

# Deregister a device

To avoid end-user disruption, device de-registration in Windows Autopatch only deletes the Windows Autopatch device record itself. Device de-registration can't delete Microsoft Intune and/or the Azure Active Directory device records. Microsoft assumes you'll keep managing those devices yourself in some capacity.

**To deregister a device:**

1. Sign into the [Microsoft Endpoint Manager](https://endpoint.microsoft.com/).
1. Select **Windows Autopatch** in the left navigation menu.
1. Select **Devices**.
1. In either **Ready** or **Not ready** tab, select the device(s) you want to deregister.
1. Once a device or multiple devices are selected, select **Device actions**, then select **Deregister device**.

## Excluded devices

When you deregister a device from the Windows Autopatch service, the device is flagged as "excluded" so Windows Autopatch doesn't try to re-register the device into the service again, since the de-registration command doesn't trigger device membership removal from the **Windows Autopatch Device Registration** Azure Active Directory group. 

> [!IMPORTANT]
> The Azure AD team doesn't recommend appending query statements to remove specific device from a dynamic query due to dynamic query performance issues.

If you want to re-register a device that was previously deregistered from Windows Autopatch, you must [submit a support request](../operate/windows-autopatch-support-request.md) with the Windows Autopatch Service Engineering Team to request the removal of the "excluded" flag set during the de-registration process. After the Windows Autopatch Service Engineering Team removes the flag, you can re-register a device or a group of devices.  

## Hiding unregistered devices

You can hide unregistered devices you don't expect to be remediated anytime soon.

**To hide unregistered devices:**

1. Sign into the [Microsoft Endpoint Manager](https://endpoint.microsoft.com/).
1. Select **Windows Autopatch** in the left navigation menu.
1. Select **Devices**.
1. In the **Not ready** tab, select an unregistered device or a group of unregistered devices you want to hide then select **Status == All**.
1. Unselect the **Registration failed** status checkbox from the list.
