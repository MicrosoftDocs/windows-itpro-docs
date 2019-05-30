---
title: How Windows Hello for Business works - Techincal Deep Dive
description: Explains registration, authentication, key material, and infrastructure for Windows Hello for Business.
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, key-trust, works 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 08/19/2018
---
# Technical Deep Dive

**Applies to:**
-   Windows 10

Windows Hello for Business authentication works through collection of components and infrastructure working together.  You can group the infrastructure and components in three categories:
- [Registration](#Registration)
- [Provisioning](#Provisioning)
- [Authentication](#Authentication)

## Registration

Registration is a fundamental prerequisite for Windows Hello for Business.  Without registration, Windows Hello for Business provisioning cannot start.  Registration is where the device **registers** its identity with the identity provider.  For cloud and hybrid deployments, the identity provider is Azure Active Directory and the device registers with the Azure Device Registration Service (ADRS).  For on-premises deployments, the identity provider is Active Directory Federation Services (AD FS), and the device registers with the enterprise device registration service hosted on the federation servers (AD FS). 

[How Device Registration Works](hello-how-it-works-device-registration.md)


## Provisioning

Provisioning is when the user uses one form of authentication to request a new Windows Hello for Business credential.  Typically the user signs in to Windows using user name and password.  The provisioning flow requires a second factor of authentication before it will create a strong, two-factor Windows Hello for Business credential.<br>
After successfully completing the second factor of authentication, the user is asked to enroll biometrics (if available on the device) and create PIN as a backup gesture.  Windows then registers the public version of the Windows Hello for Business credential with the identity provider.<br>
For cloud and hybrid deployments, the identity provider is Azure Active Directory and the user registers their key with the Azure Device Registration Service (ADRS).  For on-premises deployments, the identity provider is Active Directory Federation Services (AD FS), and the user registers their key with the enterprise device registration service hosted on the federation servers.<br>
Provision can occur automatically through the out-of-box-experience (OOBE) on Azure Active Directory joined devices, or on hybrid Azure Active Directory joined devices where the user or device is influenced by Windows Hello for Business policy settings.  Users can start provisioning through **Add PIN** from Windows Settings.  Watch the [Windows Hello for Business enrollment experience](hello-videos.md#windows-hello-for-business-user-enrollment-experience) from our [Videos](hello-videos.md) page.

[How Windows Hello for Business provisioning works](hello-how-it-works-provisioning.md)

## Authentication

Authentication using Windows Hello for Business is the goal, and the first step in getting to a passwordless environment.  With the device registered, and provisioning complete. Users can sign-in to Windows 10 using biometrics or a PIN.  PIN is the most common gesture and is available on most computers and devices.  Regardless of the gesture used, authentication occurs using the private portion of the Windows Hello for Business credential.  The PIN nor the private portion of the credential are never sent to the identity provider, and the PIN is not stored on the device.  It is user provided entropy when performing operations that use the private portion of the credential.

[How Windows Hello for Business authentication works](hello-how-it-works-authentication.md)
