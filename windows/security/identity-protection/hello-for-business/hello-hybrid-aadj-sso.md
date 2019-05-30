---
title: Azure AD Join Single Sign-on Deployment Guides
description: Azure Active Directory joined devices in a hybrid Deployment for on-premises single sign-on
keywords: identity, PIN, biometric, Hello, passport, AADJ, SSO, 
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
ms.date: 08/19/2018
---
# Azure AD Join Single Sign-on Deployment Guides

**Applies to**
-   Windows 10
-   Azure Active Directory joined
-   Hybrid deployment

Windows Hello for Business combined with Azure Active Directory joined devices makes it easy for users to securely access cloud-based resources using a strong, two-factor credential.  Some resources may remain on-premises as enterprises transition resources to the cloud and Azure AD joined devices may need to access these resources.  With additional configurations to your current hybrid deployment, you can provide single sign-on to your on-premises resources for Azure Active Directory joined devices using Windows Hello for Business, using a key or a certificate.
 
## Key vs. Certificate

Enterprises can use either a key or a certificate to provide single-sign on for on-premises resources.  Both types of authentication provide the same security; one is not more secure than the other.  

When using a key, the on-premises environment needs an adequate distribution of Windows Server 2016 domain controllers relative to your existing authentication and the number of users included in your Windows Hello for Business deployment.  Read the [Planning an adequate number of Windows Server 2016 Domain Controllers for Windows Hello for Business deployments](hello-adequate-domain-controllers.md) to learn more.

When using a certificate, the on-premises environment can use Windows Server 2008 R2 and later domain controllers, which removes the Windows Server 2016 domain controller requirement.  However, single-sign on using a certificate requires additional infrastructure to issue a certificate when the user enrolls for Windows Hello for Business.  Azure AD joined devices enroll certificates using Microsoft Intune or a compatible Mobile Device Management (MDM).  Microsoft Intune and Windows Hello for Business use the Network Device Enrollment Services (NDES) role and support Microsoft Intune connector.

To deploy single sign-on for Azure AD joined devices using keys, read and follow [Configure Azure AD joined devices for On-premises Single-Sign On using Windows Hello for Business](hello-hybrid-aadj-sso-base.md).
To deploy single sign-on for Azure AD joined devices using certificates, read and follow [Configure Azure AD joined devices for On-premises Single-Sign On using Windows Hello for Business](hello-hybrid-aadj-sso-base.md) and then [Using Certificates for AADJ On-premises Single-sign On](hello-hybrid-aadj-sso-cert.md).

## Related topics

- [Windows Hello for Business](hello-identity-verification.md)
- [How Windows Hello for Business works](hello-how-it-works.md)
- [Manage Windows Hello for Business in your organization](hello-manage-in-organization.md)
- [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
- [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
- [Windows Hello errors during PIN creation](hello-errors-during-pin-creation.md)
- [Event ID 300 - Windows Hello successfully created](hello-event-300.md)
- [Windows Hello biometrics in the enterprise](hello-biometrics-in-enterprise.md)


