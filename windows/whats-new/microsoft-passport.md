---
title: Windows Hello overview (Windows 10)
description: In Windows 10, Windows Hello replaces passwords with strong two-factor authentication.
ms.assetid: 292F3BE9-3651-4B20-B83F-85560631EF5B
keywords: password, hello, fingerprint, iris, biometric, passport
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: mobile, security
author: jdeckerMS
---

# Windows Hello overview
**Applies to**
-   Windows 10
-   Windows 10 Mobile

> **Note:** When Windows 10 first shipped, it included Microsoft Passport and Windows Hello, which worked together to provide multi-factor authentication. To simplify deployment and improve supportability, Microsoft has combined these technologies into a single solution under the Windows Hello name in Windows 10, version 1607. Customers who have already deployed these technologies will not experience any change in functionality. Customers who have yet to evaluate Windows Hello will find it easier to deploy due to simplified policies, documentation, and semantics. 

In Windows 10, Windows Hello replaces passwords with strong two-factor authentication that consists of an enrolled device and a Windows Hello (biometric) or PIN.

Windows Hello lets users authenticate to a Microsoft account, an Active Directory account, a Microsoft Azure Active Directory (AD) account, or non-Microsoft service that supports [Fast ID Online (FIDO)](http://go.microsoft.com/fwlink/p/?LinkId=533889) authentication. After an initial two-step verification during Hello enrollment, Hello is set up on the user's device and the user sets a gesture, which can be biometric such as a fingerprint or a PIN. The user provides the gesture to verify identity; Windows then uses Hello to authenticate users and help them to access protected resources and services.
Hello also enables Windows 10 Mobile devices to be used as a remote credential when signing into Windows 10 PCs. During the sign-in process, the Windows 10 PC can connect using Bluetooth to access Hello on the user’s Windows 10 Mobile device. Because users carry their phone with them, Hello makes implementing two-factor authentication across the enterprise less costly and complex than other solutions

## Benefits of Windows Hello

-   **User convenience**. The employee provides credentials (such as account and password, or other credentials), and is then guided to set up Windows Hello. From that point on, the employee can access enterprise resources by providing a gesture.
-   **Security**. Hello helps protect user identities and user credentials. Because no passwords are used, it helps circumvent phishing and brute force attacks. It also helps prevent server breaches because Microsoft 

Passport credentials are an asymmetric key pair, which helps prevent replay attacks when these keys are generated within isolated environments of Trusted Platform Modules (TPMs).
[Learn how to implement and manage Windows Hello for Business in your organization.](../keep-secure/implement-microsoft-passport-in-your-organization.md)

## Learn more

[Why a PIN is better than a password](../keep-secure/why-a-pin-is-better-than-a-password.md)
[Windows 10: Disrupting the Revolution of Cyber-Threats with Revolutionary Security!](http://go.microsoft.com/fwlink/p/?LinkId=533890)
[Windows 10: The End Game for Passwords and Credential Theft?](http://go.microsoft.com/fwlink/p/?LinkId=533891)

## Related topics
[Device management](device-management.md)
 
 
