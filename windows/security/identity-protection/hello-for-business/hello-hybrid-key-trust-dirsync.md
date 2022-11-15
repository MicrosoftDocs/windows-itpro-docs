---
title: Configure Directory Synchronization for Hybrid Azure AD joined key trust Windows Hello for Business
description: Azure Directory Synchronization for Hybrid Certificate Key Deployment (Windows Hello for Business)
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
ms.technology: itpro-security
---
# Configure Directory Synchronization for Hybrid Azure AD joined key trust Windows Hello for Business

You are ready to configure directory synchronization for your hybrid environment. Hybrid Windows Hello for Business deployment needs both a cloud and an on-premises identity to authenticate and access resources in the cloud or on-premises.

## Deploy Azure AD Connect

Next, you need to synchronize the on-premises Active Directory with Azure Active Directory.  To do this, first review the [Integrating on-prem directories with Azure Active Directory](/azure/active-directory/connect/active-directory-aadconnect) and [hardware and prerequisites](/azure/active-directory/connect/active-directory-aadconnect-prerequisites) needed and then [download the software](https://go.microsoft.com/fwlink/?LinkId=615771).

> [!NOTE]
> If you installed Azure AD Connect prior to upgrading the schema, you will need to re-run the Azure AD Connect installation and refresh the on-premises AD schema to ensure the synchronization rule for msDS-KeyCredentialLink is configured.

<br>

If the user principal name (UPN) in your on-premises Active Directory is different from the UPN in Azure AD, you also need to complete the following steps:
- Configure Azure AD Connect to sync the user's on-premises UPN to the onPremisesUserPrincipalName attribute in Azure AD.
- Add the domain name of the on-premises UPN as a [verified domain](/azure/active-directory/fundamentals/add-custom-domain) in Azure AD. 

> [!NOTE]
> Windows Hello for Business Hybrid key trust is not supported if your users' on-premises domain cannot be added as a verified domain in Azure AD.

<hr>

## Follow the Windows Hello for Business hybrid key trust deployment guide

1. [Overview](hello-hybrid-key-trust.md)
2. [Prerequisites](hello-hybrid-key-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-key-new-install.md)
4. Configure Directory Synchronization (*You are here*)
5. [Configure Azure Device Registration](hello-hybrid-key-trust-devreg.md)
6. [Configure Windows Hello for Business settings](hello-hybrid-key-whfb-settings.md)
7. [Sign-in and Provision](hello-hybrid-key-whfb-provision.md)
