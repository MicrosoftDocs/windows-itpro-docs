---
title: Windows Hello for Business (Windows 10)
description: Windows Hello for Business replaces passwords with strong two-factor authentication on PCs and mobile devices. 
ms.assetid: 5BF09642-8CF5-4FBC-AC9A-5CA51E19387E
keywords: identity, PIN, biometric, Hello, passport
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
author: mikestephens-MS
ms.author: mstephen
localizationpriority: high
ms.date: 12/04/2017
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
| Windows Server 2016 AD FS with [KB4022723 update](https://support.microsoft.com/en-us/help/4022723) | Windows Server 2016 AD FS with [KB4022723 update](https://support.microsoft.com/en-us/help/4022723) |
| AD FS with Azure MFA Server, or</br>AD FS with 3rd Party MFA Adapter | AD FS with Azure MFA Server, or</br>AD FS with 3rd Party MFA Adapter |
| Azure Account, optional for Azure MFA billing | Azure Account, optional for Azure MFA billing |

## Frequently Asked Questions

### What is the password-less strategy?

Watch Senior Program Manager Karanbir Singh's Ignite 2017 presentation **Microsoft's guide for going password-less**

> [!VIDEO https://www.youtube.com/embed/mXJS615IGLM]

### What is the user experience for Windows Hello for Business?
The user experience for Windows Hello for Business occurs after user sign-in, after you deploy Windows Hello for Business policy settings to your environment.

> [!VIDEO https://www.youtube.com/embed/FJqHPTZTpNM]
 
</br>

> [!VIDEO https://www.youtube.com/embed/etXJsZb8Fso]




### What happens when my user forgets their PIN?

If the user can sign-in with a password, they can reset their PIN by clicking the "I forgot my PIN" link in settings.  Beginning with the Fall Creators Update, users can reset their PIN above the lock screen by clicking the "I forgot my PIN" link on the PIN credential provider.

> [!VIDEO https://www.youtube.com/embed/KcVTq8lTlkI]

For on-premises deployments, devices must be well connected to their on-premises network (domain controllers and/or certificate authority) to reset their PINs.  Hybrid customers can onboard their Azure tenant to use the Windows Hello for Business PIN reset service to reset their PINs without access to their corporate network.

### Do I need Windows Server 2016 domain controllers?
There are many deployment options from which to choose. Some of those options require an adequate number of Windows Server 2016 domain controllers in the site where you have deployed Windows Hello for Business. There are other deployment options that use existing Windows Server 2008 R2 or later domain controllers. Choose the deployment option that best suits your environment

### Is Windows Hello for Business multifactor authentication?
Windows Hello for Business is two-factor authentication based the observed authentication factors of: something you have, something you know, and something part of you.  Windows Hello for Business incorporates two of these factors: something you have (the user's private key protected by the device's security module) and something you know (your PIN). With the proper hardware, you can enhance the user experience by introducing biometrics. Using biometrics, you can replace the "something you know" authentication factor with the "something that is part of you" factor, with the assurances that users can fall back to the "something you know factor".

### Can I use PIN and biometrics to unlock my device?
Starting in Windows 10, version 1709, you can use multifactor unlock to require the user to provide an additional factor to unlock the device.  Authentication remains two-factor, but another factor is required before Windows allows the user to reach the desktop.  Read more about [multifactor unlock](https://docs.microsoft.com/en-us/windows/access-protection/hello-for-business/hello-features#multifactor-unlock) in [Windows Hello for Business Features](#hello-features.md)

### What is the difference between Windows Hello and Windows Hello for Business
Windows Hello represents the biometric framework provided in Windows 10.  Windows Hello enables users to use biometrics to sign into their devices by securely storing their username and password and releasing it for authentication when the user successfully identifies themselves using biometrics.  Windows Hello for Business uses asymmetric keys protected by the device's security module that requires a user gesture (PIN or biometrics) to authenticate.

### I have extended Active Directory to Azure Active Directory.  Can I use the on-prem deployment model?
No. If your organization is federated or using online services, such as Office 365 or OneDrive, then you must use a hybrid deployment model.  On-premises deployments are exclusive to organization who need more time before moving to the cloud and exclusively use Active Directory.

### Does Windows Hello for Business prevent the use of simple PINs?
Yes. Our simple PIN algorithm looks for and disallows any PIN that has a constant delta from one digit to the next.  This prevents repeating numbers, sequential numbers and simple patterns.
So, for example:
* 1111 has a constant delta of 0, so it is not allowed
* 1234 has a constant delta of 1, so it is not allowed
* 1357 has a constant delta of 2, so it is not allowed
* 9630 has a constant delta of -3, so it is not allowed
* 1231 does not have a constant delta, so it is okay
* 1593 does not have a constant delta, so it is okay

This algorithm does not apply to alphanumeric PINs.

### How does PIN caching work with Windows Hello for Business?
Windows Hello for Business provides a PIN caching user experience using a ticketing system. Rather than caching a PIN, processes cache a ticket they can use to request private key operations.  Azure AD and Active Directory sign-in keys are cached under lock.  This means the keys remain available for use without prompting as long as the user is interactively signed-in.  Microsoft Account sign-in keys are considered transactional keys, which means the user is always prompted when accessing the key.  

Beginning with Windows 10, Fall Creators Update, Windows Hello for Business used as a smart card (smart card emulation that is enabled by default) provides the same user experience of default smart card PIN caching.  Each process requesting a private key operation will prompt the user for the PIN on first use.  Subsequent private key operations will not prompt the user for the PIN.  

The smart card emulation feature of Windows Hello for Business verifies the PIN and then discards the PIN in exchange for a ticket.  The process does not receive the PIN, but rather the ticket that grants them private key operations.  Windows 10 does not provide any Group Policy settings to adjust this caching.

### Can I disable the PIN while using Windows Hello for Business?
No. The movement away from passwords is accomplished by gradually reducing the use of the password.  In the occurence where you cannot authenticate with biometrics, you need a fall back mechansim that is not a password.  The PIN is the fall back mechansim.  Disabling or hiding the PIN credential provider disabled the use of biometrics.

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

