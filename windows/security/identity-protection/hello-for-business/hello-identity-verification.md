---
title: Windows Hello for Business (Windows 10)
description: Windows Hello for Business replaces passwords with strong two-factor authentication on PCs and mobile devices. 
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
ms.date: 05/05/2018
---
# Windows Hello for Business

In Windows 10, Windows Hello for Business replaces passwords with strong two-factor authentication on PCs and mobile devices. This authentication consists of a new type of user credential that is tied to a device and uses a biometric or PIN.</br>
Windows Hello for Business lets user authenticate to an Active Directory or Azure Active Directory account.

Windows Hello addresses the following problems with passwords:
-   Strong passwords can be difficult to remember, and users often reuse passwords on multiple sites.
-   Server breaches can expose symmetric network credentials (passwords).
-   Passwords are subject to [replay attacks](https://go.microsoft.com/fwlink/p/?LinkId=615673).
-   Users can inadvertently expose their passwords due to [phishing attacks](https://go.microsoft.com/fwlink/p/?LinkId=615674).

>[!div class="mx-tdBreakAll"]
>| | | |
>| :---: | :---: | :---: |
>| [![Overview Icon](images/hello_filter.png)](hello-overview.md)</br>[Overview](hello-overview.md) | [![Why a PIN is better than a password Icon](images/hello_lock.png)](hello-why-pin-is-better-than-password.md)</br>[Why PIN is better than a password](hello-why-pin-is-better-than-password.md) | [![Manage Hello Icon](images/hello_gear.png)](hello-manage-in-organization.md)</br>[Manage Windows Hello in your Organization](hello-manage-in-organization.md) |

## Prerequisites 

### Cloud Only Deployment
* Windows 10, version 1511 or later
* Microsoft Azure Account
* Azure Active Directory
* Azure Multi-factor authentication
* Modern Management (Intune or supported third-party MDM), *optional*
* Azure AD Premium subscription - *optional*, needed for automatic MDM enrollment when the device joins Azure Active Directory

### Hybrid Deployments
The table shows the minimum requirements for each deployment. For key trust in a multi-domain/multi-forest deployment, the following requirements are applicable for each domain/forest that hosts Windows Hello for business components or is involved in the Kerberos referral process. 

| Key trust</br>Group Policy managed | Certificate trust</br>Mixed managed | Key trust</br>Modern managed | Certificate trust</br>Modern managed | 
| --- | --- | --- | --- |
| Windows 10, version 1511 or later| **Hybrid Azure AD Joined:**<br>  *Minimum:* Windows 10, version 1703<br>  *Best experience:* Windows 10, version 1709 or later (supports synchronous certificate enrollment).</br>**Azure AD Joined:**<br>  Windows 10, version 1511 or later| Windows 10, version 1511 or later | Windows 10, version 1511 or later |
| Windows Server 2016 Schema | Windows Server 2016 Schema | Windows Server 2016 Schema | Windows Server 2016 Schema |
| Windows Server 2008 R2 Domain/Forest functional level | Windows Server 2008 R2 Domain/Forest functional level| Windows Server 2008 R2 Domain/Forest functional level |Windows Server 2008 R2 Domain/Forest functional level |
| Windows Server 2016 or later Domain Controllers | Windows Server 2008 R2 or later Domain Controllers | Windows Server 2016 or later Domain Controllers | Windows Server 2008 R2 or later Domain Controllers | 
| Windows Server 2012 or later Certificate Authority | Windows Server 2012 or later Certificate Authority | Windows Server 2012 or later Certificate Authority | Windows Server 2012 or later Certificate Authority |
| N/A | Windows Server 2016 AD FS with [KB4088889 update](https://support.microsoft.com/help/4088889) (hybrid Azure AD joined clients),<br> and</br>Windows Server 2012 or later Network Device Enrollment Service (Azure AD joined) | N/A | Windows Server 2012 or later Network Device Enrollment Service |
| Azure MFA tenant, or</br>AD FS w/Azure MFA adapter, or</br>AD FS w/Azure MFA Server adapter, or</br>AD FS w/3rd Party MFA Adapter| Azure MFA tenant, or</br>AD FS w/Azure MFA adapter, or</br>AD FS w/Azure MFA Server adapter, or</br>AD FS w/3rd Party MFA Adapter | Azure MFA tenant, or</br>AD FS w/Azure MFA adapter, or</br>AD FS w/Azure MFA Server adapter, or</br>AD FS w/3rd Party MFA Adapter | Azure MFA tenant, or</br>AD FS w/Azure MFA adapter, or</br>AD FS w/Azure MFA Server adapter, or</br>AD FS w/3rd Party MFA Adapter |
| Azure Account | Azure Account | Azure Account | Azure Account |
| Azure Active Directory | Azure Active Directory | Azure Active Directory | Azure Active Directory |
| Azure AD Connect | Azure AD Connect | Azure AD Connect | Azure AD Connect | 
| Azure AD Premium, optional | Azure AD Premium, needed for device write-back | Azure AD Premium, optional for automatic MDM enrollment | Azure AD Premium, optional for automatic MDM enrollment |

### On-premises Deployments 
The table shows the minimum requirements for each deployment.

| Key trust </br> Group Policy managed | Certificate trust </br> Group Policy managed|
| --- | --- | 
| Windows 10, version 1703 or later | Windows 10, version 1703 or later |
| Windows Server 2016 Schema | Windows Server 2016 Schema|
| Windows Server 2008 R2 Domain/Forest functional level | Windows Server 2008 R2 Domain/Forest functional level |
| Windows Server 2016 or later Domain Controllers | Windows Server 2008 R2 or later Domain Controllers |
| Windows Server 2012 or later Certificate Authority | Windows Server 2012 or later Certificate Authority |
| Windows Server 2016 AD FS with [KB4088889 update](https://support.microsoft.com/help/4088889) | Windows Server 2016 AD FS with [KB4088889 update](https://support.microsoft.com/help/4088889) |
| AD FS with Azure MFA Server, or</br>AD FS with 3rd Party MFA Adapter | AD FS with Azure MFA Server, or</br>AD FS with 3rd Party MFA Adapter |
| Azure Account, optional for Azure MFA billing | Azure Account, optional for Azure MFA billing |
