---
title: How Windows Hello for Business works
description: Learn how Windows Hello for Business works, and how it can help your users authenticate to services.
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
localizationpriority: medium
ms.date: 05/05/2018
ms.reviewer: 
---
# How Windows Hello for Business works

**Applies to**

- Windows 10

Windows Hello for Business is a modern, two-factor credential that is the more secure alternative to passwords. Whether you are cloud or on-premises, Windows Hello for Business has a deployment option for you. For cloud deployments, you can use Windows Hello for Business with Azure Active Directory joined, Hybrid Azure Active Directory joined, or Azure Active Directory registered devices. Windows Hello for Business also works for domain joined devices.

Watch this quick video where Pieter Wigleven gives a simple explanation of how Windows Hello for Business works and some of its supporting features.
> [!VIDEO https://www.youtube.com/embed/G-GJuDWbBE8]

## Technical Deep Dive

Windows Hello for Business is a distributed system that uses several components to accomplish device registration, provisioning, and authentication. Use this section to gain a better understanding of each of the categories and how they support Windows Hello for Business.

### Device Registration

Registration is a fundamental prerequisite for Windows Hello for Business.  Without registration, Windows Hello for Business provisioning cannot start. Registration is where the device **registers** its identity with the identity provider. For cloud and hybrid deployments, the identity provider is Azure Active Directory and the device registers with the Azure Device Registration Service (ADRS). For on-premises deployments, the identity provider is Active Directory Federation Services (AD FS), and the device registers with the enterprise device registration service hosted on the federation servers (AD FS).

For more information read [how device registration works](/azure/active-directory/devices/device-registration-how-it-works).

### Provisioning

Provisioning is when the user uses one form of authentication to request a new Windows Hello for Business credential. Typically the user signs in to Windows using user name and password. The provisioning flow requires a second factor of authentication before it will create a strong, two-factor Windows Hello for Business credential.

Watch Matthew Palko and Ravi Vennapusa explain how Windows Hello for Business provisioning works.

> [!VIDEO https://www.youtube.com/embed/RImGsIjSJ1s]

For more information read [how provisioning works](hello-how-it-works-provisioning.md).

### Authentication

With the device registered and provisioning complete, users can sign-in to Windows 10 using biometrics or a PIN. PIN is the most common gesture and is available on all computers unless restricted by policy requiring a TPM. Regardless of the gesture used, authentication occurs using the private portion of the Windows Hello for Business credential. Neither the PIN nor the private portion of the credential are ever sent to the identity provider, and the PIN is not stored on the device. It is user provided entropy when performing operations that use the private portion of the credential.

Watch Matthew Palko and Ravi Vennapusa explain how Windows Hello for Business authentication works.

> [!VIDEO https://www.youtube.com/embed/WPmzoP_vMek]

For more information read [how authentication works](hello-how-it-works-authentication.md).

## Related topics

- [Technology and Terminology](hello-how-it-works-technology.md)
- [Windows Hello for Business](hello-identity-verification.md)
- [Manage Windows Hello for Business in your organization](hello-manage-in-organization.md)
- [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
- [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
- [Windows Hello and password changes](hello-and-password-changes.md)
- [Windows Hello errors during PIN creation](hello-errors-during-pin-creation.md)
- [Event ID 300 - Windows Hello successfully created](hello-event-300.md)
- [Windows Hello biometrics in the enterprise](hello-biometrics-in-enterprise.md)
