---
title: Opt out of safeguard holds
description: How to install an update in your organization even when a safeguard hold for a known issue has been applied to it. 
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
author: mestew
ms.author: mstewart
manager: aaroncz
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 10/21/2020
---

# Opt out of safeguard holds

Safeguard holds prevent a device with a known compatibility issue from being offered a new Windows client feature update by using Windows Update. We use safeguard holds to protect the device and user from a failed or poor update experience. We renew the offering once a fix is issued and is verified on an affected device. For more information about safeguard holds, see [Safeguard holds](safeguard-holds.md).

## How can I opt out of safeguard holds?

IT admins can, if necessary, opt devices out of safeguard protections by using the disable safeguards policy. In a Mobile Device Management (MDM) tool, use the **Update/DisableWUfBSafeguards** CSP. In Group Policy, use the **Disable safeguards for Feature Updates** Group Policy. This policy is available to Windows Update for Business devices running the following operating systems:
- Windows 11 
- Windows 10, version 1809, or later, with the October 2020 security update.

> [!CAUTION]
> Opting out of a safeguard hold can put devices at risk from known performance issues. 

We recommend opting out only in an IT environment and for validation purposes. You can also validate an upcoming Windows client feature update version without the safeguards being applied by using the Release Preview channel of the Windows Insider Program for Business.

Disabling safeguards doesn't guarantee your device will be able to successfully update. The update might still fail and will likely result in a bad experience since you're bypassing the protection against known issues. 

> [!NOTE]
> After a device installs a new Windows client version, the **Disable safeguards for Feature Updates** Group Policy will revert to **Not configured** even if it was previously enabled. We do this to ensure the admin is consciously disabling Microsoft's default protection from known issues for each new feature update.  
