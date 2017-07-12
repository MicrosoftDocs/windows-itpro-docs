---
title: Windows Hello for Business (Windows 10)
description: Windows Hello for Business replaces passwords with strong two-factor authentication on PCs and mobile devices. 
ms.assetid: 5BF09642-8CF5-4FBC-AC9A-5CA51E19387E
keywords: identity, PIN, biometric, Hello, passport
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
author: DaniHalfin
localizationpriority: high
ms.author: daniha
ms.date: 07/07/2017
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
* Azure Multifactor authentication
* Modern Management (Intune or supported third-party MDM), *optional*
* Azure AD Premium subscription - *optional*, needed for automatic MDM enrollment when the device joins Azure Active Directory

### Hybrid Deployments
The table shows the minimum requirements for each deployment.

| Key trust</br>Group Policy managed | Certificate trust</br>Mixed managed | Key trust</br>Modern managed | Certificate trust</br>Modern managed | 
| --- | --- | --- | --- |
| Windows 10, version 1511 or later| Windows 10, version 1703 or later (domain joined)</br>Windows 10, version 1511 or later (cloud joined) | Windows 10, version 1511 or later | Windows 10, version 1511 or later |
| Windows Server 2016 Schema | Windows Server 2016 Schema | Windows Server 2016 Schema | Windows Server 2016 Schema |
| Windows Server 2008 R2 Domain/Forest functional level | Windows Server 2008 R2 Domain/Forest functional level| Windows Server 2008 R2 Domain/Forest functional level |Windows Server 2008 R2 Domain/Forest functional level |
| Windows Server 2016 Domain Controllers | Windows Server 2008 R2 or later Domain Controllers | Windows Server 2016 Domain Controllers | Windows Server 2008 R2 or later Domain Controllers | 
| Windows Server 2012 or later Certificate Authority | Windows Server 2012 or later Certificate Authority | Windows Server 2012 or later Certificate Authority | Windows Server 2012 or later Certificate Authority |
| N/A | Windows Server 2016 AD FS with KB4022723 update (domain joined), and</br>Windows Server 2012 or later Network Device Enrollment Service (cloud joined) | N/A | Windows Server 2012 or later Network Device Enrollment Service |
| Azure MFA tenant, or</br>AD FS w/Azure MFA adapter, or</br>AD FS w/Azure MFA Server adapter, or</br>AD FS w/3rd Party MFA Adapter| Azure MFA tenant, or</br>AD FS w/Azure MFA adapter, or</br>AD FS w/Azure MFA Server adapter, or</br>AD FS w/3rd Party MFA Adapter | Azure MFA tenant, or</br>AD FS w/Azure MFA adapter, or</br>AD FS w/Azure MFA Server adapter, or</br>AD FS w/3rd Party MFA Adapter | Azure MFA tenant, or</br>AD FS w/Azure MFA adapter, or</br>AD FS w/Azure MFA Server adapter, or</br>AD FS w/3rd Party MFA Adapter |
| Azure Account | Azure Account | Azure Account | Azure Account |
| Azure Active Directory | Azure Active Directory | Azure Active Directory | Azure Active Directory |
| Azure AD Connect | Azure AD Connect | Azure AD Connect | Azure AD Connect | 
| Azure AD Premium, optional | Azure AD Premium, needed for device writeback | Azure AD Premium, optional for automatic MDM enrollment | Azure AD Premium, optional for automatic MDM enrollment |

### On-premises Deployments 
The table shows the minimum requirements for each deployment.

| Key trust </br> Group Policy managed | Certificate trust </br> Group Policy managed|
| --- | --- | 
| Windows 10, version 1703 or later | Windows 10, version 1703 or later |
| Windows Server 2016 Schema | Windows Server 2016 Schema|
| Windows Server 2008 R2 Domain/Forest functional level | Windows Server 2008 R2 Domain/Forest functional level |
| Windows Server 2016 Domain Controllers | Windows Server 2008 R2 or later Domain Controllers |
| Windows Server 2012 or later Certificate Authority | Windows Server 2012 or later Certificate Authority |
| N/A | Windows Server 2016 AD FS with [KB4022723 update](https://support.microsoft.com/en-us/help/4022723) |
| AD FS with Azure MFA Server, or</br>AD FS with 3rd Party MFA Adapter | AD FS with Azure MFA Server, or</br>AD FS with 3rd Party MFA Adapter |
| Azure Account, optional for Azure MFA billing | Azure Account, optional for Azure MFA billing |

## Frequently Asked Questions

### Do I need Windows Server 2016 domain controllers?
There are many deployment options from which to choose. Some of those options require an adequate number of Windows Server 2016 domain controllers in the site where you have deployed Windows Hello for Business. There are other deployment options that use existing Windows Server 2008 R2 or later domain controllers. Choose the deployment option that best suits your environment

### Is Windows Hello for Business multifactor authentication?
Windows Hello for Business is two-factor authentication based the observed authentication factors of: something you have, something you know, and something part of you.  Windows Hello for Business incorporates two of these factors: something you have (the user's private key protected by the device's security module) and something you know (your PIN). With the proper hardware, you can enhance the user experience by introducing biometrics. Using biometrics, you can replace the "something you know" authentication factor with the "something that is part of you" factor, with the assurances that users can fall back to the "something you know factor".

### Can I use PIN and biometrics to unlock my device?
No. Windows Hello for Business provides two-factor authentication. However, we are investigating the ability to unlock the device with multiple factors.

### What is the difference between Windows Hello and Windows Hello for Business
Windows Hello represents the biometric framework provided in Windows 10.  Windows Hello enables users to use biometrics to sign into their devices by securely storing their username and password and releasing it for authentication when the user successfully identifies themselves using biometrics.  Windows Hello for Business uses asymmetric keys protected by the device's security module that requires a user gesture (PIN or biometrics) to authenticate.

### I have extended Active Directory to Azure Active Directory.  Can I use the on-prem deployment model?
No. If your organization is federated or using online services, such as Office 365 or OneDrive, then you must use a hybrid deployment model.  On-premises deployments are exclusive to organization who need more time before moving to the cloud and exclusively use Active Directory.

### Does Windows Hello for Business work with third party federation servers?
Windows Hello for Business can work with any third-party federation servers that support the protocols used during provisioning experience.  Interested third-parties can inquiry at [whfbfeedback@microsoft.com](mailto:whfbfeedback@microsoft.com?subject=collaboration)

| Protocol | Description |
| :---: | :--- |
| [[MS-KPP]: Key Provisioning Protocol](https://msdn.microsoft.com/en-us/library/mt739755.aspx) | Specifies the Key Provisioning Protocol, which defines a mechanism for a client to register a set of cryptographic keys on a user and device pair. |
| [[MS-OAPX]: OAuth 2.0 Protocol Extensions](https://msdn.microsoft.com/en-us/library/dn392779.aspx)| Specifies the OAuth 2.0 Protocol Extensions, which are used to extend the OAuth 2.0 Authorization Framework. These extensions enable authorization features such as resource specification, request identifiers, and login hints. |  
| [[MS-OAPXBC]: OAuth 2.0 Protocol Extensions for Broker Clients](https://msdn.microsoft.com/en-us/library/mt590278.aspx) | Specifies the OAuth 2.0 Protocol Extensions for Broker Clients, extensions to RFC6749 (The OAuth 2.0 Authorization Framework) that allow a broker client to obtain access tokens on behalf of calling clients. |
| [[MS-OIDCE]: OpenID Connect 1.0 Protocol Extensions](https://msdn.microsoft.com/en-us/library/mt766592.aspx) | Specifies the OpenID Connect 1.0 Protocol Extensions. These extensions define additional claims to carry information about the end user, including the user principal name, a locally unique identifier, a time for password expiration, and a URL for password change. These extensions also define additional provider metadata that enable the discovery of the issuer of access tokens and give additional information about provider capabilities. |

### Does Windows Hello for Business work with Mac and Linux clients?
Windows Hello for Business is a feature of Windows 10. At this time, Microsoft is not developing clients for other platforms.  However, Microsoft is open to third parties who are interested in moving these platforms away from passwords.  Interested third parties can inqury at [whfbfeedback@microsoft.com](mailto:whfbfeedback@microsoft.com?subject=collaboration)
