---
title: WebAuthn APIs 
description: Enabling password-less authentication for your sites and apps
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 02/15/2019
ms.reviewer: 
---
# WebAuthn APIs for password-less authentication on Windows 10 


### Passwords leave your customers vulnerable. With the new WebAuthn APIs, your sites and apps can leverage password-less authentication.

Microsoft has long been a proponent to do away with passwords.
While working towards that goal, we'd like to introduce you to the latest Windows 10 (version 1903) W3C/FIDO2 Win32 WebAuthn platform APIs!
These APIs allow Microsoft developer partners and the developer community to leverage Windows Hello and FIDO2 security keys
as a password-less authentication mechanism for their applications on Windows 10 devices. 

#### What does this mean?
This opens opportunities for developers or relying parties (RPs) to enable password-less authentication.
They can now leverage [Windows Hello](https://aka.ms/whfb) or [FIDO2 Security Keys](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/microsoft-compatible-security-key)
as a password-less multi-factor credential for authentication.  
<br>
Users of these sites can use any browser that supports WebAuthn Windows 10 APIs for password-less authentication
 and will have a familiar and consistent experience on Windows 10, no matter which browser they use to get to the RPs site!
<br> <br>
The native Windows 10 WebAuthn APIs are currently supported by Microsoft Edge on Windows 10 1809 or later
 and latest versions of other browsers.
<br> <br>
Developers of FIDO2 authentication keys should use the new Windows 10 APIs, to enable these scenarios in a consistent way for users.
 Moreover, this enables the use of all the transports available per FIDO2 specifications - USB, NFC and BLE
 without having to deal with the interaction and management overhead. 
This also implies browsers or apps on Windows 10 will no longer have direct access to above transports for FIDO related messaging. 

#### Where can developers learn more?
The new Windows 10 APIs are documented on [GitHub](https://github.com/Microsoft/webauthn)


