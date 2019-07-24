---
title: Hybrid Windows Hello for Business Prerequisites (Windows Hello for Business)
description: Prerequisites for Hybrid Windows Hello for Business Deployments
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, certificate-trust
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
ms.reviewer: 
---
# Hybrid Windows Hello for Business Prerequisites

**Applies to**
-   Windows 10, version 1703 or later
-   Hybrid deployment
-   Certificate trust


Hybrid environments are distributed systems that enable organizations to use on-premises and Azure-based identities and resources. Windows Hello for Business uses the existing distributed system as a foundation on which organizations can provide two-factor authentication that provides a single sign-in like experience to modern resources.

The distributed systems on which these technologies were built involved several pieces of on-premises and cloud infrastructure.  High-level pieces of the infrastructure include:
* [Directories](#directories)
* [Public Key Infrastructure](#public-key-infrastructure)
* [Directory Synchronization](#directory-synchronization)
* [Federation](#federation)
* [Multifactor Authentication](#multifactor-authentication)
* [Device Registration](#device-registration)
  
## Directories ##
Hybrid Windows Hello for Business needs two directories: on-premises Active Directory and a cloud Azure Active Directory.  The minimum required domain controller, domain functional level, and forest functional level for Windows Hello for Business deployment is Windows Server 2008 R2.

A hybrid Windows Hello for Business deployment needs an Azure Active Directory subscription.  Different deployment configurations are supported by different Azure subscriptions.  The hybrid-certificate trust deployment needs an Azure Active Directory premium subscription because it uses the device write-back synchronization feature.  Other deployments, such as the hybrid key-trust deployment, may not require Azure Active Directory premium subscription.

Windows Hello for Business can be deployed in any environment with Windows Server 2008 R2 or later domain controllers.  Azure device registration and Windows Hello for Business require the Windows Server 2016 Active Directory schema.
 
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
The Windows Hello for Business deployment depends on an enterprise public key infrastructure as trust anchor for authentication. Domain controllers for hybrid deployments need a certificate in order for Windows 10 devices to trust the domain controller.
 
Certificate trust deployments need an enterprise public key infrastructure and a certificate registration authority to issue authentication certificates to users.  When using Group Policy, hybrid certificate trust deployment uses the Windows Server 2016 Active Directory Federation Server (AD FS) as a certificate registration authority.

The minimum required enterprise certificate authority that can be used with Windows Hello for Business is Windows Server 2012.

### Section Review
> [!div class="checklist"]  
> * Windows Server 2012 Issuing Certificate Authority
> * Windows Server 2016 Active Directory Federation Services

<br>

## Directory Synchronization ##
The two directories used in hybrid deployments must be synchronized.  You need Azure Active Directory Connect to synchronize user accounts in the on-premises Active Directory with Azure Active Directory.
  
Organizations using older directory synchronization technology, such as DirSync or Azure AD sync, need to upgrade to Azure AD Connect. In case the schema of your local AD DS was changed since the last directory synchronization, you may need to [refresh directory schema](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-installation-wizard#refresh-directory-schema).
 
> [!NOTE]
> Windows Hello for Business is tied between a user and a device. Both the user and device need to be synchronized between Azure Active Directory and Active Directory.
 
### Section Review 
> [!div class="checklist"]
> * Azure Active Directory Connect directory synchronization
> * [Upgrade from DirSync](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-dirsync-upgrade-get-started)
> * [Upgrade from Azure AD Sync](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-upgrade-previous-version)

<br>

## Federation ##
Windows Hello for Business hybrid certificate trust requires Active Directory being federated with Azure Active Directory and needs Windows Server 2016 Active Directory Federation Services or newer. Windows Hello for Business hybrid certificate trust doesn’t support Managed Azure Active Directory using Pass-through authentication or password hash sync. All nodes in the AD FS farm must run the same version of AD FS. Additionally, you need to configure your AD FS farm to support Azure registered devices.

The AD FS farm used with Windows Hello for Business must be Windows Server 2016 with minimum update of [KB4088889 (14393.2155)](https://support.microsoft.com/help/4088889).  If your AD FS farm is not running the AD FS role with updates from Windows Server 2016, then read [Upgrading to AD FS in Windows Server 2016](https://docs.microsoft.com/windows-server/identity/ad-fs/deployment/upgrading-to-ad-fs-in-windows-server-2016)

### Section Review ###
> [!div class="checklist"]
> * Windows Server 2016 Active Directory Federation Services
> * Minimum update of [KB4088889 (14393.2155)](https://support.microsoft.com/help/4088889)

<br>

## Multifactor Authentication ##
Windows Hello for Business is a strong, two-factor credential the helps organizations reduce their dependency on passwords.  The provisioning process lets a user enroll in Windows Hello for Business using their username and password as one factor. but needs a second factor of authentication.

Hybrid Windows Hello for Business deployments can use Azure’s Multifactor Authentication service, or they can use multifactor authentication provides by Windows Server 2016 Active Directory Federation Services, which includes an adapter model that enables third parties to integrate their multifactor authentication into AD FS.

### Section Review 
> [!div class="checklist"]
> * Azure MFA Service
> * Windows Server 2016 AD FS and Azure
> * Windows Server 2016 AD FS and third party MFA Adapter

<br>

## Device Registration ##
Organizations wanting to deploy hybrid certificate trust need their domain joined devices to register to Azure Active Directory.  Just as a computer has an identity in Active Directory, that same computer has an identity in the cloud.  This ensures that only approved computers are used with that Azure Active Directory.  Each computer registers its identity in Azure Active Directory. 
 
Hybrid certificate trust deployments need the device write back feature.  Authentication to the Windows Server 2016 Active Directory Federation Services needs both the user and the computer to authenticate. Typically the users are synchronized, but not devices.  This prevents AD FS from authenticating the computer and results in Windows Hello for Business certificate enrollment failures.  For this reason, Windows Hello for Business deployments need device writeback, which is an Azure Active Directory premium feature.

> [!NOTE]
> Windows Hello for Business is tied between a user and a device. Both the user and device need to be synchronized between Azure Active Directory and Active Directory, and therefore the device writeback is used to update the msDS-KeyCredentialLink on the computer object.

### Section Checklist ###
> [!div class="checklist"]
> * Azure Active Directory Device writeback
> * Azure Active Directory Premium subscription

<br>

### Next Steps ###
Follow the Windows Hello for Business hybrid certificate trust deployment guide.  For proof-of-concepts, labs, and new installations, choose the **New Installation Baseline**.  

If your environment is already federated, but does not include Azure device registration, choose **Configure Azure Device Registration**. 

If your environment is already federated and supports Azure device registration, choose **Configure Windows Hello for Business settings**.

> [!div class="op_single_selector"]
> - [New Installation Baseline](hello-hybrid-cert-new-install.md)
> - [Configure Azure Device Registration](hello-hybrid-cert-trust-devreg.md)
> - [Configure Windows Hello for Business settings](hello-hybrid-cert-whfb-settings.md)

<br><br>

<hr>

## Follow the Windows Hello for Business hybrid certificate trust deployment guide
1. [Overview](hello-hybrid-cert-trust.md)
2. Prerequisites (*You are here*)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. [Configure Azure Device Registration](hello-hybrid-cert-trust-devreg.md)
5. [Configure Windows Hello for Business settings](hello-hybrid-cert-whfb-settings.md)
6. [Sign-in and Provision](hello-hybrid-cert-whfb-provision.md)
