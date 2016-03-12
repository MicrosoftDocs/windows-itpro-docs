---
title: Microsoft Passport and password changes (Windows 10)
description: When you set up Microsoft Passport the PIN or biometric (Windows Hello) gesture that you use is specific to that device.
MSHAttr: PreferredLib /library
ms.assetid: 83005FE4-8899-47A6-BEA9-C17CCA0B6B55
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Microsoft Passport and password changes


**Applies to**

-   Windows 10
-   Windows 10 Mobile

When you set up Microsoft Passport, the PIN or biometric (Windows Hello) gesture that you use is specific to that device. You can set up Passport for the same account on multiple devices. If the PIN or biometric is configured as part of a Microsoft Passport for Work, changing the account password will not impact sign-in or unlock with these gestures since it uses a key or certificate. However, if Microsoft Passport for Work is not deployed and the password for that account changes, you must provide the new password on each device to continue to use Passport.

## Example


Let's suppose that you have set up a PIN for your Microsoft account on **Device A**. You use your PIN to sign in on **Device A** and then change the password for your Microsoft account.

Because you were using **Device A** when you changed your password, the PIN on **Device A** will continue to work with no other action on your part.

Suppose instead that you sign in on **Device B** and change your password for your Microsoft account. The next time that you try to sign in on **Device A** using your PIN, sign-in will fail because the account credentials that Passport on **Device A** knows will be outdated.

**Note**  
This example also applies to an Active Directory account when [Passport for Work is not implemented](implement-microsoft-passport-in-your-organization.md).

 

## How to update Passport after you change your password on another device


1.  When you try to sign in using your PIN or biometric, you will see the following message: **Your password was changed on a different device. You must sign in to this device once with your new password, and then you can sign in with your PIN.**

2.  Click **OK.**

3.  Click **Sign-in options**.

4.  Click the **Password** button.

5.  Sign in with new password.

6.  The next time that you sign in, you can select **Sign-in options** and then select **PIN** to resume using your PIN.

## Related topics


[Manage identity verification using Microsoft Passport](manage-identity-verification-using-microsoft-passport.md)

[Implement Microsoft Passport in your organization](implement-microsoft-passport-in-your-organization.md)

[Why a PIN is better than a password](why-a-pin-is-better-than-a-password.md)

[Prepare people to use Microsoft Passport](prepare-people-to-use-microsoft-passport.md)

[Microsoft Passport errors during PIN creation](microsoft-passport-errors-during-pin-creation.md)

[Event ID 300 - Passport successfully created](microsoft-passport-event-id-200.md)

 

 





