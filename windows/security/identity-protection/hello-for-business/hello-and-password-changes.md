---
title: Windows Hello and password changes (Windows 10)
description: When you change your password on a device, you may need to sign in with a password on other devices to reset Hello.
ms.assetid: 83005FE4-8899-47A6-BEA9-C17CCA0B6B55
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2017
---
# Windows Hello and password changes

**Applies to**
-   Windows 10

When you set up Windows Hello, the PIN or biometric gesture that you use is specific to that device. You can set up Hello for the same account on multiple devices. If the PIN or biometric is configured as part of Windows Hello for Business, changing the account password will not impact sign-in or unlock with these gestures since it uses a key or certificate. However, if Windows Hello for Business is not deployed and the password for that account changes, you must provide the new password on each device to continue to use Hello.

## Example

Let's suppose that you have set up a PIN for your Microsoft account on **Device A**. You use your PIN to sign in on **Device A** and then change the password for your Microsoft account.
Because you were using **Device A** when you changed your password, the PIN on **Device A** will continue to work with no other action on your part.

Suppose instead that you sign in on **Device B** and change your password for your Microsoft account. The next time that you try to sign in on **Device A** using your PIN, sign-in will fail because the account credentials that Hello on **Device A** knows will be outdated.

>[!NOTE]
>This example also applies to an Active Directory account when [Windows Hello for Business is not implemented](hello-manage-in-organization.md).
 
## How to update Hello after you change your password on another device

1.  When you try to sign in using your PIN or biometric, you will see the following message: **Your password was changed on a different device. You must sign in to this device once with your new password, and then you can sign in with your PIN.**
2.  Click **OK.**
3.  Click **Sign-in options**.
4.  Click the **Password** button.
5.  Sign in with new password.
6.  The next time that you sign in, you can select **Sign-in options** and then select **PIN** to resume using your PIN.

## Related topics

- [Windows Hello for Business](hello-identity-verification.md)
- [How Windows Hello for Business works](hello-how-it-works.md)
- [Manage Windows Hello for Business in your organization](hello-manage-in-organization.md)
- [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
- [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
- [Windows Hello errors during PIN creation](hello-errors-during-pin-creation.md)
- [Event ID 300 - Windows Hello successfully created](hello-event-300.md)
- [Windows Hello biometrics in the enterprise](hello-biometrics-in-enterprise.md)
