---
title: Single-sign on using Windows Hello for Business on Azure Active Directory joined devices
description: Azure Active Directory joined devices in a hybrid Deployment for on-premises single sign-on
keywords: identity, PIN, biometric, Hello, passport, AADJ, SSO, 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
author: mikestephens-MS
ms.author: mstephen
localizationpriority: high
ms.date: 05/05/2018
---
# Single-sign on using Windows Hello for Business on Azure Active Directory joined devices

**Applies to**
-   Windows 10
-   Azure Active Directory joined
-   Hybrid deployment

Windows Hello for Business combined with Azure Active Directory joined devices makes it easy for users to securely access cloud-based resources using a strong, two-factor credential.  Some resources may remain on-premises as enterprises transition resources to the cloud and Azure AD joined devices may need to access these resources.  With additional configurations to your current hybrid deployment, you can provide single sign-on to your on-premises resources for Azure Active Directory joined devices using Windows Hello for Business, using a key or a certificate.
 
## Key vs. Certificate

Enterprises can use either a key or a certificate to provide single-sign on for on-premises resources.  Both types of authentication provide the same security; one is not more secure than the other.  

When using a key, the on-premises environment needs an adequate distribution of Windows Server 2016 domain controllers relative to your existing authentication and the number of users included in your Windows Hello for Business deployment.  Read the [Planning an adequate number of Windows Server 2016 Domain Controllers for Windows Hello for Business deployments](hello-adequate-domain-controllers.md) to learn more.

When using a certificate, the on-premises environment can use Windows Server 2008 R2 and later domain controllers, which removes the Windows Server 2016 domain controller requirement.  However, single-sign on using a key require additional infrastructure to issue certificate when the user enrolls for Windows Hello for Business.  Azure AD joined devices enroll certificates using Microsoft Intune or a compatible Mobile Device Management (MDM).  Microsoft Intune and Windows Hello for Business use the Network Device Enrollment Services (NDES) role and support Microsoft Intune connector.


