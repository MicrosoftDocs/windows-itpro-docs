---
title: Hybrid Key trust Windows Hello for Business Prerequisites (Windows Hello for Business)
description: Prerequisites for Hybrid Windows Hello for Business Deployments
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, key-trust
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
ms.date: 08/20/2018
ms.reviewer: 
---
# Hybrid Key trust Windows Hello for Business Prerequisites

**Applies to**
-   Windows 10, version 1703 or later
-   Hybrid deployment
-   Key trust


Hybrid environments are distributed systems that enable organizations to use on-premises and Azure-based identities and resources. Windows Hello for Business uses the existing distributed system as a foundation on which organizations can provide two-factor authentication that provides a single sign-in like experience to modern resources.

The distributed systems on which these technologies were built involved several pieces of on-premises and cloud infrastructure.  High-level pieces of the infrastructure include:
* [Directories](#directories)
* [Public Key Infrastructure](#public-key-infrastructure)
* [Directory Synchronization](#directory-synchronization)
* [Federation](#federation-with-azure)
* [MultiFactor Authentication](#multifactor-authentication)
* [Device Registration](#device-registration)
  
## Directories

Hybrid Windows Hello for Business needs two directories: on-premises Active Directory and a cloud Azure Active Directory.  The minimum required domain functional and forest functional levels for Windows Hello for Business deployment is Windows Server 2008 R2.  

A hybrid Windows Hello for Business deployment needs an Azure Active Directory subscription.  The hybrid key trust deployment, does not need a premium Azure Active Directory subscription.

You can deploy Windows Hello for Business in any environment with Windows Server 2008 R2 or later domain controllers.  However, the key trust deployment needs an ***adequate*** number of Windows Server 2016 domain controllers at each site where users authenticate using Windows Hello for Business.  Read the [Planning an adequate number of Windows Server 2016 Domain Controllers for Windows Hello for Business deployments](hello-adequate-domain-controllers.md) to learn more.
 
Review these requirements and those from the Windows Hello for Business planning guide and worksheet.  Based on your deployment decisions you may need to upgrade your on-premises Active Directory or your Azure Active Directory subscription to meet your needs.

### Section Review

> [!div class="checklist"]
> * Active Directory Domain Functional Level
> * Active Directory Forest Functional Level
> * Domain Controller version
> * Azure Active Directory subscription
> * Correct subscription for desired features and outcomes  

<br>

## Public Key Infrastructure
The Windows Hello for Business deployment depends on an enterprise public key infrastructure as trust anchor for authentication. Domain controllers for hybrid deployments need a certificate in order for Windows 10 devices to trust the domain controller.

Key trust deployments do not need client issued certificates for on-premises authentication.  Active Directory user accounts are automatically configured for public key mapping by Azure AD Connect synchronizing the public key of the registered Windows Hello for Business credential to an attribute on the user's Active Directory object.

The minimum required enterprise certificate authority that can be used with Windows Hello for Business is Windows Server 2012, but you can also use a third-party enterprise certification authority. The detailed requirements for the Domain Controller certificate are shown below.

* The certificate must have a Certificate Revocation List (CRL) distribution point extension that points to a valid CRL.
* Optionally, the certificate Subject section should contain the directory path of the server object (the distinguished name).
* The certificate Key Usage section must contain Digital Signature and Key Encipherment.
* Optionally, the certificate Basic Constraints section should contain: [Subject Type=End Entity, Path Length Constraint=None].
* The certificate Enhanced Key Usage section must contain Client Authentication (1.3.6.1.5.5.7.3.2), Server Authentication (1.3.6.1.5.5.7.3.1), and KDC Authentication (1.3.6.1.5.2.3.5).
* The certificate Subject Alternative Name section must contain the Domain Name System (DNS) name.  
* The certificate template must have an extension that has the BMP data value "DomainController".
* The domain controller certificate must be installed in the local computer's certificate store.

 

> [!IMPORTANT]
> For Azure AD joined device to authenticate to and use on-premises resources, ensure you:
> * Install the root certificate authority certificate for your organization in the user's trusted root certificate store.
> * Publish your certificate revocation list to a location that is available to Azure AD joined devices, such as a web-based url.

### Section Review
> [!div class="checklist"]  
> * Windows Server 2012 Issuing Certificate Authority

<br>

## Directory Synchronization

The two directories used in hybrid deployments must be synchronized.  You need Azure Active Directory Connect to synchronize user accounts in the on-premises Active Directory with Azure Active Directory.
  
Organizations using older directory synchronization technology, such as DirSync or Azure AD sync need to upgrade to Azure AD Connect.
 
### Section Review 
> [!div class="checklist"]
> * Azure Active Directory Connect directory synchronization
> * [Upgrade from DirSync](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-dirsync-upgrade-get-started)
> * [Upgrade from Azure AD Sync](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-upgrade-previous-version)

<br>


## Federation with Azure ##
You can deploy Windows Hello for Business key trust in non-federated and federated environments.  For non-federated environments, key trust deployments work in environments that have deployed [Password Synchronization with Azure AD Connect](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnectsync-implement-password-synchronization) or [Azure Active Directory Pass-through-Authentication](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-pass-through-authentication).  For federated environments, you can deploy Windows Hello for Business key trust using Active Directory Federation Services (AD FS) 2012 R2 or later. 

> [!div class="checklist"]
> * Non-federated environments
> * Federated environments 

<br>

## Multifactor Authentication

Windows Hello for Business is a strong, two-factor credential the helps organizations reduce their dependency on passwords.  The provisioning process lets a user enroll in Windows Hello for Business using their user name and password as one factor, but needs a second factor of authentication.

Hybrid Windows Hello for Business deployments can use Azure’s Multifactor Authentication (MFA) service or they can use multifactor authentication provided by AD FS beginning with Windows Server 2012 R2, which includes an adapter model that enables third parties to integrate their MFA into AD FS. The MFA enabled by an Office 365 license is sufficient for Azure AD.

### Section Review 
> [!div class="checklist"]
> * Azure MFA Service
> * Windows Server 2016 AD FS and Azure (optional, if federated)
> * Windows Server 2016 AD FS and third party MFA Adapter (optional, if federated)

<br>

## Device Registration

Organizations wanting to deploy hybrid key trust need their domain joined devices to register to Azure Active Directory.  Just as a computer has an identity in Active Directory, that same computer has an identity in the cloud.  This ensures that only approved computers are used with that Azure Active Directory.  Each computer registers its identity in Azure Active Directory. 
 

### Section Checklist

> [!div class="checklist"]
> * Device Registration with Azure Device Registration 

<br>

### Next Steps

Follow the Windows Hello for Business hybrid key trust deployment guide.  For proof-of-concepts, labs, and new installations, choose the **New Installation Baseline**.  

For environments transitioning from on-premises to hybrid, start with  **Configure Azure Directory Synchronization**. 

For federated and non-federated environments, start with **Configure Windows Hello for Business settings**.

> [!div class="op_single_selector"]
> - [New Installation Baseline](hello-hybrid-key-new-install.md)
> - [Configure Directory Synchronization](hello-hybrid-key-trust-dirsync.md)
> - [Configure Windows Hello for Business settings](hello-hybrid-key-whfb-settings.md)

<br><br>

<hr>

## Follow the Windows Hello for Business hybrid key trust deployment guide
1. [Overview](hello-hybrid-key-trust.md)
2. Prerequisites (*You are here*)
3. [New Installation Baseline](hello-hybrid-key-new-install.md)
4. [Configure Directory Synchronization](hello-hybrid-key-trust-dirsync.md)
5. [Configure Azure Device Registration](hello-hybrid-key-trust-devreg.md)
6. [Configure Windows Hello for Business settings](hello-hybrid-key-whfb-settings.md)
7. [Sign-in and Provision](hello-hybrid-key-whfb-provision.md)
