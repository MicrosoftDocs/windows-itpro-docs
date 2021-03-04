---
title: Windows Hello for Business Deployment Prerequisite Overview
description: Overview of all the different infrastructure requirements for Windows Hello for Business deployment models
ms.assetid: 5BF09642-8CF5-4FBC-AC9A-5CA51E19387E
ms.reviewer: 
keywords: identity, PIN, biometric, Hello, passport
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
ms.date: 1/22/2021
---

# Windows Hello for Business Deployment Prerequisite Overview

This article lists the infrastructure requirements for the different deployment models for Windows Hello for Business.

## Cloud Only Deployment

* Windows 10, version 1511 or later
* Microsoft Azure Account
* Azure Active Directory
* Azure AD Multi-Factor Authentication
* Modern Management (Intune or supported third-party MDM), *optional*
* Azure AD Premium subscription - *optional*, needed for automatic MDM enrollment when the device joins Azure Active Directory

## Hybrid Deployments

The table shows the minimum requirements for each deployment. For key trust in a multi-domain/multi-forest deployment, the following requirements are applicable for each domain/forest that hosts Windows Hello for business components or is involved in the Kerberos referral process.

| Key trust</br>Group Policy managed | Certificate trust</br>Mixed managed | Key trust</br>Modern managed | Certificate trust</br>Modern managed | 
| --- | --- | --- | --- |
| Windows 10, version 1511 or later| **Hybrid Azure AD Joined:**<br>  *Minimum:* Windows 10, version 1703<br>  *Best experience:* Windows 10, version 1709 or later (supports synchronous certificate enrollment).</br>**Azure AD Joined:**<br>  Windows 10, version 1511 or later| Windows 10, version 1511 or later | Windows 10, version 1511 or later |
| Windows Server 2016 or later Schema | Windows Server 2016 or later Schema | Windows Server 2016 or later Schema | Windows Server 2016 or later Schema |
| Windows Server 2008 R2 Domain/Forest functional level | Windows Server 2008 R2 Domain/Forest functional level| Windows Server 2008 R2 Domain/Forest functional level |Windows Server 2008 R2 Domain/Forest functional level |
| Windows Server 2016 or later Domain Controllers | Windows Server 2008 R2 or later Domain Controllers | Windows Server 2016 or later Domain Controllers | Windows Server 2008 R2 or later Domain Controllers | 
| Windows Server 2012 or later Certificate Authority | Windows Server 2012 or later Certificate Authority | Windows Server 2012 or later Certificate Authority | Windows Server 2012 or later Certificate Authority |
| N/A | Windows Server 2016 AD FS with [KB4088889 update](https://support.microsoft.com/help/4088889) (hybrid Azure AD joined clients),<br> and</br>Windows Server 2012 or later Network Device Enrollment Service (Azure AD joined) | N/A | Windows Server 2012 or later Network Device Enrollment Service |
| Azure MFA tenant, or</br>AD FS w/Azure MFA adapter, or</br>AD FS w/Azure MFA Server adapter, or</br>AD FS w/3rd Party MFA Adapter | Azure MFA tenant, or</br>AD FS w/Azure MFA adapter, or</br>AD FS w/Azure MFA Server adapter, or</br>AD FS w/3rd Party MFA Adapter | Azure MFA tenant, or</br>AD FS w/Azure MFA adapter, or</br>AD FS w/Azure MFA Server adapter, or</br>AD FS w/3rd Party MFA Adapter | Azure MFA tenant, or</br>AD FS w/Azure MFA adapter, or</br>AD FS w/Azure MFA Server adapter, or</br>AD FS w/3rd Party MFA Adapter |
| Azure Account | Azure Account | Azure Account | Azure Account |
| Azure Active Directory | Azure Active Directory | Azure Active Directory | Azure Active Directory |
| Azure AD Connect | Azure AD Connect | Azure AD Connect | Azure AD Connect | 
| Azure AD Premium, optional | Azure AD Premium, needed for device write-back | Azure AD Premium, optional for automatic MDM enrollment | Azure AD Premium, optional for automatic MDM enrollment |

> [!Important]
> 1. Hybrid deployments support non-destructive PIN reset that works with both the certificate trust and key trust models. </br> 
> **Requirements:**</br>
> Microsoft PIN Reset Service - Windows 10, versions 1709 to 1809, Enterprise Edition. There is no licensing requirement for this service since version 1903</br>
> Reset above lock screen (_I forgot my PIN_ link) - Windows 10, version 1903
>
> 2. On-premises deployments support destructive PIN reset that works with both the certificate trust and the key trust models.</br>
> **Requirements:**</br>
> Reset from settings - Windows 10, version 1703, Professional</br>
> Reset above lock screen - Windows 10, version 1709, Professional</br>
> Reset above lock screen (_I forgot my PIN_ link) - Windows 10, version 1903

## On-premises Deployments

The table shows the minimum requirements for each deployment.

| Key trust </br> Group Policy managed | Certificate trust </br> Group Policy managed|
| --- | --- |
| Windows 10, version 1703 or later | Windows 10, version 1703 or later |
| Windows Server 2016 Schema | Windows Server 2016 Schema|
| Windows Server 2008 R2 Domain/Forest functional level | Windows Server 2008 R2 Domain/Forest functional level |
| Windows Server 2016 or later Domain Controllers | Windows Server 2008 R2 or later Domain Controllers |
| Windows Server 2012 or later Certificate Authority | Windows Server 2012 or later Certificate Authority |
| Windows Server 2016 AD FS with [KB4088889 update](https://support.microsoft.com/help/4088889) | Windows Server 2016 AD FS with [KB4088889 update](https://support.microsoft.com/help/4088889) |
| AD FS with 3rd Party MFA Adapter | AD FS with 3rd Party MFA Adapter |
| Azure Account, optional for Azure MFA billing | Azure Account, optional for Azure MFA billing |

> [!IMPORTANT]
> For Windows Hello for Business key trust deployments, if you have several domains, at least one Windows Server Domain Controller 2016 or newer is required for each domain. For more information, see the [planning guide](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-adequate-domain-controllers).
