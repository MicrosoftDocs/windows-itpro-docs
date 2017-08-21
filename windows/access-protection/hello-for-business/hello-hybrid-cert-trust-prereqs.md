---
title: Validate Public Key Infrastructure (Windows Hello for Business)
description: How to Validate Public Key Infrastructure for Windows Hello for Business
keywords: identity, PIN, biometric, Hello, passport
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
author: DaniHalfin
ms.author: mstephen
localizationpriority: high
---
# Hybrid Certificate Trust Prerequisites

**Applies to**
-   Windows 10


> This guide only applies to Windows 10, version 1703 or higher.

Hybrid environments are distributed systems that enable organizations to use on-premises and Azure resources. Windows Hello for Business uses the existing distributed system as a foundation on which organizations can provide two-factor authentication that provides a single sign-in like experience to modern resources.

The distributed systems on which these technologies were built involved several pieces of on-premises and cloud infrastructure.  Specific pieces of the infrastructure include:
* [Directories](#directories)
* [Public Key Infrastucture](#public-key-infastructure)
* [Directory Synchronization](#directory-synchronization)
* [Federation](#federation)
* [MultiFactor Authetication](#multifactor-authentication)
* [Device Registration](#device-registration)
  
## Directories ##
Hybrid Windows Hello for Business needs two directories—and on-premises Active Directory and a cloud Azure Active Directory.  The minimum required domain controller, domain functional level, and forest functional level for Windows Hello for Business deployment is Windows Server 2008 R2.

A hybrid Windows Hello for Busines deployment needs Azure Active Directory subscription.  Different deployment configurations are supported by different Azure subscriptions.  The hybrid-certificate trust deployment needs an Azure Active Directory premium subscription because it uses the device write-back synchronization feature.  Other deployments, such as the hybrid key-trust deployment, do not require Azure Active Directory premium subscription.

Windows Hello for Business can be deployed in any environment with Windows Server 2008 R2 or later domain controllers.  However, it does requires the Windows Server 2016 Active Directory schema.
 
Review these requirements and those from the Windows Hello for Business planning guide and worksheet.  Based on your deployment decisions you may need to upgrade your on-premises Active Directory or your Azure Active Directory subscription to meet your needs.

### Section Review ###
> [!div class="checklist"]
> * Active Directory Domain Functional Level
> * Active Directory Forest Functional Level
> * Domain Controller version
> * Windows Server 2016 Schema 
> * Azure Active Directory subscription
> * Correct subscription for desired features and outcomes  

<br>

## Public Key Infrastructure ##
The Windows Hello for Business deployment depends on an enterprise public key infrastructure as trust anchor for authentication. Domain controllers for hybrid deployments need a certificate in order for Windows 10 devices to trust the domain controller as legitimate.
 
Certificate trust deployments need an enterprise public key infrastructure and a certificate registration authority to issue authentication certificates to users.  When using Group Policy, hybrid certificate trust deployment use the Windows Server 2016 Active Directory Federation Server (AS FS) as a certificate registration authority.

The minimum required enterprise certificate authority that can be used with Windows Hello for Business is Windows Server 2012.

### Section Review
> [!div class="checklist"]  
> * Windows Server 2012 Issuing Certificate Authority
> * Windows Server 2016 Active Directory Federation Services

<br>

## Directory Synchronization ##
The two directories used in hybrid deployments must be synchronized.  You need Azure Active Directory Connect to synchronize user accounts in the on-premises Active Directory with Azure Active Directory.
  
Organizations using older directory synchronization technology, such as DirSync or Azure AD sync need to upgrade to Azure AD Connect
 
### Section Review 
> [!div class="checklist"]
> * Azure Active Directory Connect directory synchronization
> * [Upgrade from DirSync](https://docs.microsoft.com/en-us/azure/active-directory/connect/active-directory-aadconnect-dirsync-upgrade-get-started)
> * [Upgrade from Azure AD Sync](https://docs.microsoft.com/en-us/azure/active-directory/connect/active-directory-aadconnect-upgrade-previous-version)

<br>

## Federation ##
Federating your on-premises Active Directory with Azure Active Directory ensures all identities have access to all resources regardless if they reside in cloud or on-premises.  Windows Hello for Business hybrid certificate trust needs Windows Server 2016 Active Directory Federation Services.  All nodes in the AD FS farm must run the same version of AD FS. 

### Section Review ###
> [!div class="checklist"]
> * Windows Server 2016 Active Directory Federation Services

<br>

## Multifactor Authentication ##
Windows Hello for Business is a strong, two-factor credential the helps organizations reduce their dependency on passwords.  The provisioning process lets a user enroll in Windows Hello for Business using their username and password as one factor and a second factor of authentication.

Hybrid Windows Hello for Business deployments can use Azure’s Multifactor Authentication service or they can use multifactor authentication provides by Windows Server 2016 Active Directory Federation Services, which includes an adapter model that enables third parties to integrate their multifactor authentication into AD FS.

### Section Review 
> [!div class="checklist"]
> * Azure MFA Service
> * Windows Server 2016 AD FS and Azure
> * Windows Server 2016 AD FS and third party MFA Adapter

<br>

## Device Registration ##
Hybrid organizations register their devices with their cloud.  This is analogous with joining an on-premises computer to the Active Directory domain.  Just as a computer has an identity in Active Directory, that same computer has an identity in the cloud.  This ensures that only approved computers are used with that Azure Active Directory.  Each computer registers its identity in Azure Active Directory. Some configurations require this device registration to be synchronized back to the on-premises Active Directory.
 
Hybrid certificate trust deployments need the device write back feature.  Authentication to the Windows Server 2016 Active Directory Federation Services needs both the user and the computer to authenticate. Typically the users are synchronized, but not devices.  This prevents AD FS from authenticating the computer and results in Windows Hello for Business certificate enrollment failures.  For this reason, Windows Hello for Business deployments need device writeback, which is an Azure Active Directory premium feature.

### Review Checklist ###
> [!div class="checklist"]
> * Azure Active Directory Device writeback
> * Azure Active Directory Premium subscription

<br>

### Next Steps ###
Follow the Windows Hello for Business hybrid certificate trust deployment guide.  For proof-of-concepts, labs, and new installations, choose the New Installation Basline.  Choose Configure Windows Hello for Business if your envirionment is already federated with Azure and/or Office 365
<br><br>

<hr>

## Follow the Windows Hello for Business hybrid certificate trust deployment guide
1. [Overview](hello-hybrid-cert-trust-overview.md)
2. Prerequistes (*You are here*)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. [Configure Windows Hello for Business settings](hello-hybrid-cert-whfb-settings.md)
5. Sign-in and Provision