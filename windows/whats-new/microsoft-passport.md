---
title: Microsoft Passport overview (Windows 10)
description: In Windows 10, Microsoft Passport replaces passwords with strong two-factor authentication.
ms.assetid: 292F3BE9-3651-4B20-B83F-85560631EF5B
keywords: password, hello, fingerprint, iris, biometric
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: jdeckerMS
---

# Microsoft Passport overview
**Applies to**
-   Windows 10
-   Windows 10 Mobile

In Windows 10, Microsoft Passport replaces passwords with strong two-factor authentication that consists of an enrolled device and a Windows Hello (biometric) or PIN.

Microsoft Passport lets users authenticate to a Microsoft account, an Active Directory account, a Microsoft Azure Active Directory (AD) account, or non-Microsoft service that supports [Fast ID Online (FIDO)](http://go.microsoft.com/fwlink/p/?LinkId=533889) authentication. After an initial two-step verification during Microsoft Passport enrollment, a Microsoft Passport is set up on the user's device and the user sets a gesture, which can be Windows Hello or a PIN. The user provides the gesture to verify identity; Windows then uses Microsoft Passport to authenticate users and help them to access protected resources and services.
Microsoft Passport also enables Windows 10 Mobile devices to be used as a remote credential when signing into Windows 10 PCs. During the sign-in process, the Windows 10 PC can connect using Bluetooth to access Microsoft Passport on the user’s Windows 10 Mobile device. Because users carry their phone with them, Microsoft Passport makes implementing two-factor authentication across the enterprise less costly and complex than other solutions

## Benefits of Microsoft Passport

-   **User convenience**. The employee provides credentials (such as account and password, or other credentials), and is then guided to set up Microsoft Passport and Hello. From that point on, the employee can access enterprise resources by providing a gesture.
-   **Security**. Microsoft Passport helps protect user identities and user credentials. Because no passwords are used, it helps circumvent phishing and brute force attacks. It also helps prevent server breaches because Microsoft 

Passport credentials are an asymmetric key pair, which helps prevent replay attacks when these keys are generated within isolated environments of Trusted Platform Modules (TPMs).
[Learn how to implement and manage Microsoft Passport in your organization.](../keep-secure/implement-microsoft-passport-in-your-organization.md)

## Learn more

[Why a PIN is better than a password](../keep-secure/why-a-pin-is-better-than-a-password.md)
[Windows 10: Disrupting the Revolution of Cyber-Threats with Revolutionary Security!](http://go.microsoft.com/fwlink/p/?LinkId=533890)
[Windows 10: The End Game for Passwords and Credential Theft?](http://go.microsoft.com/fwlink/p/?LinkId=533891)

## Related topics
[Device management](device-management.md)
 
 
