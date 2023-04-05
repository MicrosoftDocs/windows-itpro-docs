---
title: Automatic MDM enrollment in the Intune admin center
description: Automatic MDM enrollment in the Intune admin center
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 04/05/2023
ms.reviewer:
manager: aaroncz
appliesto:
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Automatic MDM enrollment in the Intune admin center

Windows devices can be enrolled in to Intune automatically when they join or register with Azure Active Directory. Automatic enrollment can be configured in Azure Portal.

1. Go to your Azure AD Blade.

1. Select **Mobility (MDM and MAM)**, and find the Microsoft Intune app.

1. Select **Microsoft Intune** and configure the blade. You can specify settings to allow **All** users to enroll a device, or choose to allow **Some** users (and specify a group).

   ![Configure the Blade.](images/azure-intune-configure-scope.png)

1. Select **Save** to configure MDM auto-enrollment for Azure AD joined devices and bring-your-own-device scenarios.
