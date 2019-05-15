---
title: Configure Directory Synchronization for Hybrid key trust Windows Hello for Business
description: Azure Directory Syncrhonization for Hybrid Certificate Key Deployment (Windows Hello for Business)
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, key-trust, directory, syncrhonization, AADConnect
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
# Configure Directory Synchronization for Hybrid key trust Windows Hello for Business

**Applies to**
-  Windows 10, version 1703 or later
-  Hybrid deployment
-  Key trust

 
You are ready to configure directory synchronization for your hybrid environment. Hybrid Windows Hello for Business deployment needs both a cloud and an on-premises identity to authenticate and access resources in the cloud or on-premises.    

## Deploy Azure AD Connect
Next, you need to synchronize the on-premises Active Directory with Azure Active Directory.  To do this, first review the [Integrating on-prem directories with Azure Active Directory](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect) and [hardware and prerequisites](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-prerequisites) needed and then [download the software](http://go.microsoft.com/fwlink/?LinkId=615771).


> [!NOTE]
> If you installed Azure AD Connect prior to upgrading the schema, you will need to re-run the Azure AD Connect installation and refresh the on-premises AD schema to ensure the synchronization rule for msDS-KeyCredentialLink is configured.

<br>

<hr>

## Follow the Windows Hello for Business hybrid key trust deployment guide
1. [Overview](hello-hybrid-key-trust.md)
2. [Prerequisites](hello-hybrid-key-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-key-new-install.md)
4. Configure Directory Synchronization (*You are here*)
5. [Configure Azure Device Registration](hello-hybrid-key-trust-devreg.md)
6. [Configure Windows Hello for Business settings](hello-hybrid-key-whfb-settings.md)
7. [Sign-in and Provision](hello-hybrid-key-whfb-provision.md)
