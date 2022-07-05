---
title: WebAuthn APIs 
description: Learn how to use WebAuthn APIs to enable passwordless authentication for your sites and apps.
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: GitPrakhar13
ms.author: prsriva
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 02/15/2019
ms.reviewer: 
---
# WebAuthn APIs for passwordless authentication on Windows

Passwords leave your customers vulnerable. When you use the new WebAuthn APIs in your sites and apps, your customers can use passwordless authentication.

Microsoft has long been a proponent of passwordless authentication. While we work towards that goal, we'd like to introduce you to the latest Windows 10 (version 1903) W3C/FIDO2 Win32 WebAuthn platform APIs. 

## What does this mean?

Using these APIs, developer partners and the developer community can use [Windows Hello](./index.yml) or [FIDO2 Security Keys](./microsoft-compatible-security-key.md) to implement passwordless multi-factor authentication for their applications on Windows devices.

Users of these apps or sites can use any browser that supports WebAuthn Windows 10 APIs for passwordless authentication. The native Windows 10 WebAuthn APIs are currently supported by Microsoft Edge on Windows 10 1809 or later and on the latest versions of other browsers. No matter which browser they use, they'll have a familiar and consistent experience on Windows 10, no matter which browser they use.

Developers should use the new Windows 10 APIs to support FIDO2 authentication keys in a consistent way for users. Moreover, developers can use all the transports that are available per FIDO2 specifications (USB, NFC, and BLE) without having to deal with the interaction and management overhead.

> [!NOTE]  
> When these APIs are in use, Windows 10 browsers or apps don't have direct access to the FIDO2 transports for FIDO-related messaging.

## Where can developers learn more?

The new Windows 10 APIs are documented on [GitHub](https://github.com/Microsoft/webauthn)
