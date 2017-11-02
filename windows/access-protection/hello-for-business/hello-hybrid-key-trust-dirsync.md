---
title: Configure Directory Synchronization for Hybrid key trust Windows Hello for Business
description: Azure Directory Syncrhonization for Hybrid Certificate Key Deployment (Windows Hello for Business)
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, key-trust, directory, syncrhonization, AADConnect
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
author: mikestephens-MS
ms.author: mstephen
localizationpriority: high
ms.date: 10/20/2017
---
# Configure Directory Synchronization for Hybrid key trust Windows Hello for Business

**Applies to**
-  Windows 10

>This guide only applies to Hybrid deployments for Windows 10, version 1703 or higher.
 
You are ready to configure directory synchronization for your hybrid environment. Hybrid Windows Hello for Business deployment needs both a cloud and an on-premises identity to authenticate and access resources in the cloud or on-premises.    

## Deploy Azure AD Connect
Next, you need to synchronizes the on-premises Active Directory with Azure Active Directory.  To do this, first review the [Integrating on-prem directories with Azure Active Directory](https://docs.microsoft.com/en-us/azure/active-directory/connect/active-directory-aadconnect) and [hardware and prerequisites](https://docs.microsoft.com/en-us/azure/active-directory/connect/active-directory-aadconnect-prerequisites) needed and then [download the software](http://go.microsoft.com/fwlink/?LinkId=615771).

<br><br>

<hr>

## Follow the Windows Hello for Business hybrid key trust deployment guide
1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequistes](hello-hybrid-cert-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. Configure Directory Synchronization (*You are here*)
5. [Configure Azure Device Registration](hello-hybrid-key-trust-devreg.md)
6. [Configure Windows Hello for Business settings](hello-hybrid-key-whfb-settings.md)
7. [Sign-in and Provision](hello-hybrid-key-whfb-provision.md)