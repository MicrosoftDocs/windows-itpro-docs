---
title: Configure Device Registration for Hybrid Azure AD joined key trust Windows Hello for Business
description: Azure Device Registration for Hybrid Certificate Key Deployment (Windows Hello for Business)
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, key-trust, device, registration
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
ms.date: 4/30/2021
ms.reviewer: 
---
# Configure Device Registration for Hybrid Azure AD joined key trust Windows Hello for Business

**Applies to**
-  Windows 10, version 1703 or later
-  Windows 11
-  Hybrid deployment
-  Key trust

 
You are ready to configure device registration for your hybrid environment. Hybrid Windows Hello for Business deployment needs device registration to enable proper device authentication.   

> [!NOTE]
> Before proceeding, you should familiarize yourself with device registration concepts such as:
> * Azure AD registered devices
> * Azure AD joined devices
> * Hybrid Azure AD joined devices
>
> You can learn about this and more by reading [What is a device identity](/azure/active-directory/devices/overview)

## Configure Hybrid Azure AD join
Begin configuring device registration to support Hybrid Windows Hello for Business by configuring device registration capabilities in Azure AD. 

Follow the guidance on the [How to configure hybrid Azure Active Directory joined devices](/azure/active-directory/devices/hybrid-azuread-join-plan) page. In the **Select your scenario based on your identity infrastructure** section, identify your configuration (either **Managed environment** or **Federated environment**) and perform only the steps applicable to your environment.

<br>

If the user principal name (UPN) in your on-premises Active Directory is different from the UPN in Azure AD, you also need to complete the following steps:
- Configure Azure AD Connect to sync the user's on-premises UPN to the onPremisesUserPrincipalName attribute in Azure AD.
- Add the domain name of the on-premises UPN as a [verified domain](/azure/active-directory/fundamentals/add-custom-domain) in Azure AD. 

You can learn more about this scenario by reading [Review on-premises UPN support for Hybrid Azure Ad join](azure/active-directory/devices/hybrid-azuread-join-plan#review-on-premises-ad-users-upn-support-for-hybrid-azure-ad-join).

> [!NOTE]
> Windows Hello for Business Hybrid key trust is not supported if your users' on-premises domain cannot be added as a verified domain in Azure AD.


<br>

<hr>

## Follow the Windows Hello for Business hybrid key trust deployment guide
1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequisites](hello-hybrid-cert-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-key-new-install.md)
4. [Configure Directory Synchronization](hello-hybrid-key-trust-dirsync.md)
5. Configure Azure Device Registration (*You are here*)
6. [Configure Windows Hello for Business settings](hello-hybrid-key-whfb-settings.md)
7. [Sign-in and Provision](hello-hybrid-key-whfb-provision.md)
