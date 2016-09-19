---
title: Event ID 300 - Windows Hello successfully created (Windows 10)
description: This event is created when a Windows Hello for Business is successfully created and registered with Azure Active Directory (Azure AD).
ms.assetid: 0DD59E75-1C5F-4CC6-BB0E-71C83884FF04
keywords: ngc
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: jdeckerMS
localizationpriority: high
---

# Event ID 300 - Windows Hello successfully created

**Applies to**
-   Windows 10
-   Windows 10 Mobile

This event is created when Windows Hello for Business is successfully created and registered with Azure Active Directory (Azure AD). Applications or services can trigger actions on this event. For example, a certificate provisioning service can listen to this event and trigger a certificate request.

## Event details
|              |                                                                                                                                                                                                                                                                                                               |
|--------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Product:** | Windows 10 operating system                                                                                                                                                                                                                                                                                   |
| **ID:**      | 300                                                                                                                                                                                                                                                                                                           |
| **Source:**  | Microsoft Azure Device Registration Service                                                                                                                                                                                                                                                                   |
| **Version:** | 10                                                                                                                                                                                                                                                                                                            |
| **Message:** | The NGC key was successfully registered. Key ID: {4476694e-8e3b-4ef8-8487-be21f95e6f07}. UPN:test@contoso.com. Attestation: ATT\_SOFT. Client request ID: . Server request ID: db2da6bd-3d70-4b9b-b26b-444f669902da. 
Server response: {"kid":"4476694e-8e3b-4ef8-8487-be21f95e6f07","upn":"test@contoso.com"} |
 
## Resolve

This is a normal condition. No further action is required.

## Related topics

[Manage identity verification using Windows Hello for Business](manage-identity-verification-using-microsoft-passport.md)

[Implement Windows Hello for Business in your organization](implement-microsoft-passport-in-your-organization.md)

[Enable phone sign-in to PC or VPN](enable-phone-signin-to-pc-and-vpn.md)

[Why a PIN is better than a password](why-a-pin-is-better-than-a-password.md)

[Prepare people to use Windows Hello](prepare-people-to-use-microsoft-passport.md)

[Windows Hello and password changes](microsoft-passport-and-password-changes.md)

[Windows Hello errors during PIN creation](microsoft-passport-errors-during-pin-creation.md)

[Event ID 300 - Windows Hello successfully created](passport-event-300.md)

[Windows Hello biometrics in the enterprise](windows-hello-in-enterprise.md)
