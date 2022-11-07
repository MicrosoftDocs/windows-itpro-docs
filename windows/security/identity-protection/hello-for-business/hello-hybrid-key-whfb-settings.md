---
title: Configure Hybrid Azure AD joined Windows Hello for Business key trust Settings
description: Begin the process of configuring your hybrid key trust environment for Windows Hello for Business. Start with your Active Directory configuration.
ms.prod: windows-client
author: paolomatarazzo
ms.author: paoloma
manager: aaroncz
ms.reviewer: prsriva
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 4/30/2021
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Hybrid deployment</b>
  - ✅ <b>Key trust</b>
---
# Configure Hybrid Azure AD joined Windows Hello for Business key trust settings

You are ready to configure your hybrid Azure AD joined key trust environment for Windows Hello for Business.
  
> [!IMPORTANT]
> Ensure your environment meets all the [prerequisites](hello-hybrid-key-trust-prereqs.md) before proceeding. Review the [New Installation baseline](hello-hybrid-key-new-install.md) section of this deployment document to learn how to prepare your environment for your Windows Hello for Business deployment.  

The configuration for Windows Hello for Business is grouped in four categories.  These categories are: 
* [Active Directory](hello-hybrid-key-whfb-settings-ad.md)
* [Azure AD Connect](hello-hybrid-key-whfb-settings-dir-sync.md)
* [Public Key Infrastructure](hello-hybrid-key-whfb-settings-pki.md)
* [Group Policy](hello-hybrid-key-whfb-settings-policy.md)

For the most efficient deployment, configure these technologies in order beginning with the Active Directory configuration

> [!div class="step-by-step"]
> [Configure Active Directory >](hello-hybrid-key-whfb-settings-ad.md)

## Follow the Windows Hello for Business hybrid key trust deployment guide

1. [Overview](hello-hybrid-key-trust.md)
2. [Prerequisites](hello-hybrid-key-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-key-new-install.md)
4. [Configure Directory Synchronization](hello-hybrid-key-trust-dirsync.md)
5. [Configure Azure Device Registration](hello-hybrid-key-trust-devreg.md)
6. Configure Windows Hello for Business settings (*You are here*)
7. [Sign-in and Provision](hello-hybrid-key-whfb-provision.md)
