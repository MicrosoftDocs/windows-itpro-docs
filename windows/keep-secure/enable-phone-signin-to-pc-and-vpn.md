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

In Windows 10, Version 1607, your network users can use Windows Phone with Windows Hello to sign in to a PC, connect to VPN, and sign in to Office 365 in a browser. Phone sign-in uses Bluetooth, which means no need to wait for a phone call -- just unlock the phone and tap the app.

 (add screenshot when I can get the app working)

You can create a Group Policy or mobile device management (MDM) policy that will allow users to sign in to a work PC or their company's VPN using the credentials stored on their Windows 10 phone.

 ## Prerequisites
 
 - Both phone and PC must be running Windows 10, Version 1607.
 - The PC must be running Windows 10 Pro, Enterprise, or Education
 - Both phone and PC must have Bluetooth.
 - The PC must be joined to an Active Directory domain that is connected to an Azure Active Directory (Azure AD) domain, or the PC must be joined to Azure AD.
 - The phone must be joined to Azure AD or have a work account added.
 - VPN configuration profile must use certificate-based authentication.
 
## Set policies and get the app

To enable phone sign-in, you must enable the following policies using Group Policy or MDM.

-  Group Policy: **Computer Configuration** or **User Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business**
    - Enable **Use Windows Hello for Business**
    - Enable **Phone Sign-in**
- MDM: 
    - Set **UsePassportForWork** to **True**
    - Set **Remote\UseRemotePassport** to **True**

Everyone can get the **Microsoft Authenticator** app from the Windows Store. If you want to distribute the **Microsoft Authenticator** app, your organization must have set up Windows Store for Business, with Microsoft added as a Line of Business (LOB) publisher.

[Tell people how to sign in using their phone.](prepare-people-to-use-microsoft-passport.md#bmk-remote)




## Related topics

[Manage identity verification using Windows Hello for Business](manage-identity-verification-using-microsoft-passport.md)

[Implement Windows Hello for Business in your organization](implement-microsoft-passport-in-your-organization.md)

[Why a PIN is better than a password](why-a-pin-is-better-than-a-password.md)

[Prepare people to use Windows Hello](prepare-people-to-use-microsoft-passport.md)

[Windows Hello and password changes](microsoft-passport-and-password-changes.md)

[Windows Hello errors during PIN creation](microsoft-passport-errors-during-pin-creation.md)

[Event ID 300 - Windows Hello successfully created](passport-event-300.md)

[Windows Hello biometrics in the enterprise](windows-hello-in-enterprise.md)


 

 





