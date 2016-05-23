---
title: Enable phone sign-in to PC or VPN (Windows 10)
description: You can set policies to allow your users to sign in to a PC or VPN using their Windows 10 phone.
keywords: ["identity", "PIN", "biometric", "Hello"]
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
---

# Enable phone sign-in to PC or VPN


**Applies to**

-   Windows 10
-   Windows 10 Mobile

In Windows 10, Version 1607, your network users can use Windows Phone with Windows Hello to sign in to a PC, connect to VPN, and sign in to Office 365 in a browser. Phone sign-in uses Bluetooth, which means no need to wait for a phone call. 

You can create a Group Policy or mobile device management (MDM) policy that will allow users to sign in to a work PC or their company's VPN using the credentials stored on their Windows 10 phone.

 ## Prerequisites
 
 - Both phone and PC must be running Windows 10, Version 1607.
 - Both phone and PC must have Bluetooth.
 - The PC must be joined to an Active Directory domain that is connected to an Azure Active Directory (Azure AD) domain, or the PC must be joined to Azure AD.
 - The phone must be joined to Azure AD or have a work account added.
 - VPN configuration profile must use certificate-based authentication.
 
## Set policies and get the app

To enable phone sign-in, you must enable the following policies using Group Policy or MDM.

-  Group Policy: **Computer Configuration** or **User Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Microsoft Passport for Work**
    - Enable **Use Microsoft Passport for Work**
    - Enable **Remote Passport**
- MDM: 
    - Set **UsePassportForWork** to **True**
    - Set **Remote\UseRemotePassport** to **True**

To distribute the **Phone Sign-in** app, your organization must have set up Windows Store for Business, with Microsoft added as a Line of Business (LOB) publisher.
 - The **Phone Sign-in** app must be added to Windows Store for Business for your organization.
 - Users must install the **Phone sign-in** app on the phone.


[Tell people how to sign in using their phone.](prepare-people-to-use-microsoft-passport.md#bmk-remote)

## Related topics

[Manage identity verification using Microsoft Passport](manage-identity-verification-using-microsoft-passport.md)

[Implement Microsoft Passport in your organization](implement-microsoft-passport-in-your-organization.md)

[Why a PIN is better than a password](why-a-pin-is-better-than-a-password.md)

[Prepare people to use Microsoft Passport](prepare-people-to-use-microsoft-passport.md)

[Microsoft Passport and password changes](microsoft-passport-and-password-changes.md)

[Microsoft Passport errors during PIN creation](microsoft-passport-errors-during-pin-creation.md)

[Event ID 300 - Passport successfully created](passport-event-300.md)


 

 





