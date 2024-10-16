---
title: Deactivate Windows Autopatch
description: This article explains what deactivation means for your organization and what actions you must take.
ms.date: 09/16/2024
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

# Deactivate Windows Autopatch

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

If you're looking to deactivate Windows Autopatch features, this article details what deactivation means for your organization and what actions you must take.

> [!IMPORTANT]
> You must be a Global Administrator to deactivate Windows Autopatch features.

Deactivating from Windows Autopatch requires manual actions from both you and from the Windows Autopatch Service Engineering Team. The Windows Autopatch Service Engineering Team:

- Removes Windows Autopatch access to your tenant.
    - We remove the [Modern Workplace Management application](../references/windows-autopatch-changes-made-at-feature-activation.md#windows-autopatch-enterprise-applications) from your tenant that is used to run the Windows Autopatch service on your tenant
- Excludes your devices from the Windows Autopatch service. Excluding your devices from Windows Autopatch doesn't remove your devices from Intune, Microsoft Entra ID or Configuration Manager. The Windows Autopatch Service Engineering Team follows the same process and principles as laid out in [Exclude a device](../manage/windows-autopatch-exclude-device.md).
- Deletes all data that we stored in the Windows Autopatch data storage.

> [!NOTE]
> We will **not** delete any of your customer or Intune data.

## Microsoft's responsibilities during deactivation

| Responsibility | Description |
| ----- | ----- |
| Windows Autopatch data | Windows Autopatch deletes user data that is within the Windows Autopatch service. We don't make changes to any other data. For more information about how data is used in Windows Autopatch, see [Privacy](../overview/windows-autopatch-privacy.md). |
| Excluding devices | Windows Autopatch excludes all devices previously registered with the service. Only the Windows Autopatch device record is deleted. We don't delete Microsoft Intune and/or Microsoft Entra device records. For more information, see [Exclude a device](../manage/windows-autopatch-exclude-device.md). |

## Your responsibilities after deactivating Windows Autopatch features

| Responsibility | Description |
| ----- | ----- |
| Updates | After the Windows Autopatch service is deactivated, we'll no longer provide updates to your devices.  You must ensure that your devices continue to receive updates through your own policies to ensure they're secure and up to date. |
| Optional Windows Autopatch configuration | Windows Autopatch doesn't remove the configuration policies or groups used to enable updates on your devices. You're responsible for these policies following tenant deactivation. If you don't wish to use these policies for your devices after deactivation, you can safely delete them. For more information, see [Changes made at feature activation](../references/windows-autopatch-changes-made-at-feature-activation.md). |
| Microsoft Intune roles | After deactivation, you can safely remove the Modern Workplace Intune Admin role. |

## To Deactivate Windows Autopatch features

**To deactivate Windows Autopatch features:**

1. [Submit a support request](../manage/windows-autopatch-support-request.md) and request to deactivate Windows Autopatch features.
1. The Windows Autopatch Service Engineering Team communicates with your IT Administrator to confirm your intent to deactivate Windows Autopatch features.
    1. You have 14 days to review and confirm the communication sent by the Windows Autopatch Service Engineering Team.
    2. The Windows Autopatch Service Engineering Team can proceed sooner than 14 days if your confirmation arrives sooner.
1. The Windows Autopatch Service Engineering Team proceeds with the removal of all items listed under [Microsoft's responsibilities during deactivation](#microsofts-responsibilities-during-deactivation).
1. The Windows Autopatch Service Engineering Team informs you when deactivation is complete.
1. You're responsible for the items listed under [Your responsibilities after deactivating Windows Autopatch features](#your-responsibilities-after-deactivating-windows-autopatch-features).
