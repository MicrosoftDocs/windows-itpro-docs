---
title: Windows Hello and password changes
description: Learn the impact of changing a password when using Windows Hello.
ms.date: 03/15/2023
ms.topic: conceptual
---
# Windows Hello and password changes

When you set up Windows Hello, the PIN or biometric gesture that you use is specific to that device. You can set up Hello for the same account on multiple devices. If Windows Hello for Business isn't deployed and the password for that account changes, you must provide the new password on each device to continue to use Hello.

> [!Note]
> This article doesn't apply to Windows Hello for Business. Change the account password will not affect sign-in or unlock, since Windows Hello for Business uses a key or certificate.

**Example 1**

Let's suppose that you have set up a PIN for your Microsoft account on **Device A**. You use your PIN to sign in on **Device A** and then change the password for your Microsoft account.
Since you were using **Device A** when you changed your password, the PIN on **Device A** will continue to work with no other action on your part.

**Example 2**

Suppose that you sign in on **Device B** and change your password for your Microsoft account. The next time that you try to sign in on **Device A** using your PIN, sign-in will fail because the account credentials that Hello on **Device A** knows will be outdated.

>[!NOTE]
>This example also applies to an Active Directory account when [Windows Hello for Business is not implemented](hello-manage-in-organization.md).

## How to update Hello after you change your password on another device

1. When you try to sign in using your PIN or biometric, you'll see the following message: **Your password was changed on a different device. You must sign in to this device once with your new password, and then you can sign in with your PIN.**
1. Select **OK**
1. Select **Sign-in options**
1. Select **Password**
1. Sign in with new password
1. The next time that you sign in, you can select **Sign-in options > PIN** to resume using your PIN.
