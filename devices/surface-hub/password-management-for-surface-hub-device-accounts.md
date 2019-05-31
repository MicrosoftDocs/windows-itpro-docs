---
title: Password management (Surface Hub)
description: Every Microsoft Surface Hub device account requires a password to authenticate and enable features on the device.
ms.assetid: 0FBFB546-05F0-430E-905E-87111046E4B8
ms.reviewer: 
manager: dansimp
keywords: password, password management, password rotation, device account
ms.prod: surface-hub
ms.sitesec: library
author: levinec
ms.author: ellevin
ms.topic: article
ms.date: 07/27/2017
ms.localizationpriority: medium
---

# Password management (Surface Hub)

Every Microsoft Surface Hub device account requires a password to authenticate and enable features on the device. For security reasons, you may want to change (or "rotate") this password regularly. However, if the device account’s password changes, the password that was previously stored on the Surface Hub will be invalid, and all features that depend on the device account will be disabled. You will need to update the device account’s password on the Surface Hub from the Settings app to re-enable these features.

To simplify password management for your Surface Hub device accounts, there are two options:

1.  Turn off password expiration for the device account.
2.  Allow the Surface Hub to automatically rotate the device account’s password.


## Turn off password rotation for the device account

Set the device account’s **PasswordNeverExpires** property to True. You should verify whether this meets your organization’s security requirements.


## Allow the Surface Hub to automatically rotate the device account’s password

The Surface Hub can manage a device account’s password by changing it frequently without requiring you to manually update the device account’s information. You can enable this feature in **Settings**. Once enabled, the device account's password will change weekly during maintenance hours.

Note that when the device account’s password is changed, you will not be shown the new password. If you need to sign in to the account, or to provide the password again (for example, if you want to change the device account settings on the Surface Hub), then you'll need use Active Directory or the Office 365 admin portal to reset the password.

> [!IMPORTANT]
> If your organization uses a hybrid topology (some services are hosted on-premises and some are hosted online through Office 365), you must setup the device account in **domain\username** format. Otherwise, password rotation will not work.
