---
title: Configure Device Registration for Hybrid key trust Windows Hello for Business
description: Azure Device Registration for Hybrid Certificate Key Deployment (Windows Hello for Business)
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, key-trust, device, registration
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 08/19/2018
ms.reviewer: 
---
# Configure Device Registration for Hybrid key trust Windows Hello for Business

**Applies to**
-  Windows 10, version 1703 or later
-  Hybrid deployment
-  Key trust

 
You are ready to configure device registration for your hybrid environment. Hybrid Windows Hello for Business deployment needs device registration to enable proper device authentication.   

> [!NOTE]
> Before proceeding, you should familiarize yourself with device registration concepts such as:
> * Azure AD registered devices
> * Azure AD joined devices
> * Hybrid Azure AD joined devices
>
> You can learn about this and more by reading [Introduction to Device Management in Azure Active Directory.](https://docs.microsoft.com/azure/active-directory/device-management-introduction)

## Configure Azure for Device Registration
Begin configuring device registration to support Hybrid Windows Hello for Business by configuring device registration capabilities in Azure AD. 

To do this, follow the **Configure device settings** steps under [Setting up Azure AD Join in your organization](https://azure.microsoft.com/documentation/articles/active-directory-azureadjoin-setup/)  

Next, follow the guidance on the [How to configure hybrid Azure Active Directory joined devices](https://docs.microsoft.com/azure/active-directory/device-management-hybrid-azuread-joined-devices-setup) page.  In the **Configuration steps** section, identify your configuration at the top of the table (either **Windows current and password hash sync** or **Windows current and federation**) and perform only the steps identified with a check mark.


<br><br>

<hr>

## Follow the Windows Hello for Business hybrid key trust deployment guide
1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequisites](hello-hybrid-cert-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. [Configure Directory Synchronization](hello-hybrid-key-trust-dirsync.md)
5. Configure Azure Device Registration (*You are here*)
6. [Configure Windows Hello for Business settings](hello-hybrid-key-whfb-settings.md)
7. [Sign-in and Provision](hello-hybrid-key-whfb-provision.md)
