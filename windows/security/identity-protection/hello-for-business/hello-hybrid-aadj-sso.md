---
title: Azure Active Directory joined devices in a hybrid Deployment for on-premises single sign-on
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
# Windows Hello for Business Frequently Ask Questions

**Applies to**
-   Windows 10
-   Azure Active Directory joined
-   Hybrid deployment

Windows Hello for Business combined with Azure Active Directory joined devices make it easy for users to securely access cloud-based resources using a strong, two-factor credential.  Some resources may remain on-premises as enterprises transition resources to the cloud and Azure AD joined devices may need to access these resources.  With additional configurations to your current hybrid deployment, you can provide single sign-on to your on-premises resources for Azure Active Directory joined devices using Windows Hello for Business, in either key or certificate trust models.

- Configure Key trust authentication to Active Directory for Azure AD joined devices
- Configure Certificate trust authentication to Active Directory for Azure AD joined devices
 
## Key trust or Certificate trust
Enterprises can choose between key or certificate trust.  The trust type determines how the device authenticates to Active Directory. Also, the trust type for your Azure Active Directory joined devices does not need to be the same as the trust type used for your hybrid Azure Active Directory joined devices.  Your hybrid Azure AD joined devices can use a key-trust model while your hybrid Azure AD joined devices can use a certificate trust model, as long as the infrastructure supports both trust models.

Both trust types provide the same security; one is not more secure than the other.  The key trust model is simple and needs adequate distribution of Windows Server 2016 domain controllers relative to your existing authentication and the number of users included in your Windows Hello for Business deployment.  Read the [Planning an adequate number of Windows Server 2016 Domain Controllers for Windows Hello for Business deployments](hello-adequate-domain-controllers.md) to learn more.  The key trust deployment has fewer infrastructure requirements because it does not issue certificates to each user.

The certificate trust model works with Windows Server 2008 R2 and later domain controllers, which removes the Windows Server 2016 domain controller requirement.  However, it does require additional infrastructure as each user that provisions Windows Hello for Business receives a certificate issued by an enterprise issuing certificate authority.  Azure AD joined devices enroll certificates using Microsoft Intune or a compatible Mobile Device Management (MDM).  Microsoft Intune and Windows Hello for Business require the Network Device Enrollment Services (NDES) role and support Microsoft Intune connector.


