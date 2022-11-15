---
title: Windows Hello for Business Hybrid Azure AD joined Key Trust New Installation
description: Learn how to configure a hybrid key trust deployment of Windows Hello for Business for systems with no previous installations.
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
# Windows Hello for Business Hybrid Azure AD joined Key Trust New Installation

Windows Hello for Business involves configuring distributed technologies that may or may not exist in your current infrastructure.  Hybrid key trust deployments of Windows Hello for Business rely on these technologies

- [Active Directory](#active-directory)
- [Public Key Infrastructure](#public-key-infrastructure)
- [Azure Active Directory](#azure-active-directory)
- [Multifactor Authentication Services](#multifactor-authentication-services)

New installations are considerably more involved than existing implementations because you are building the entire infrastructure.  Microsoft recommends you review the new installation baseline to validate your existing environment has all the needed configurations to support your hybrid certificate trust Windows Hello for Business deployment.  If your environment meets these needs, you can read the [Configure Directory Synchronization](hello-hybrid-key-trust-dirsync.md) section to prepare your Windows Hello for Business deployment by configuring directory synchronization.

The new installation baseline begins with a basic Active Directory deployment and enterprise PKI.  

## Active Directory
This document expects you have Active Directory deployed with an _adequate_ number of Windows Server 2016 or later domain controllers for each site.  Read the [Planning an adequate number of Windows Server 2016 Domain Controllers for Windows Hello for Business deployments](hello-adequate-domain-controllers.md) to learn more.

> [!NOTE]
>There was an issue with key trust authentication on Windows Server 2019. If you are planning to use Windows Server 2019 domain controllers refer to [KB4487044](https://support.microsoft.com/en-us/help/4487044/windows-10-update-kb4487044) to fix this issue.
 
Lab environments and isolated proof of concepts may want to limit the number of domain controllers.  The purpose of these environments is to experiment and learn.  Reducing the number of domain controllers can prevent troubleshooting issue, such as Active Directory replication, which is unrelated to activity's goal.

### Section Review

> [!div class="checklist"]
> * An adequate number of Windows Server 2016 domain controllers
> * Minimum Windows Server 2008 R2 domain and forest functional level
> * Functional networking, name resolution, and Active Directory replication
 
## Public Key Infrastructure

Windows Hello for Business must have a public key infrastructure regardless of the deployment or trust model.  All trust models depend on the domain controllers having a certificate.  The certificate serves as a root of trust for clients to ensure they are not communicating with a rogue domain controller.

This guide assumes most enterprises have an existing public key infrastructure.  Windows Hello for Business depends on a Windows enterprise public key infrastructure running the Active Directory Certificate Services role from Windows Server 2012 or later.

### Lab-based public key infrastructure

The following instructions may be used to deploy simple public key infrastructure that is suitable for a lab environment.

Sign-in using _Enterprise Admin_ equivalent credentials on Windows Server 2012 or later server where you want the certificate authority installed.

>[!NOTE]
>Never install a certificate authority on a domain controller in a production environment.

1. Open an elevated Windows PowerShell prompt.
2. Use the following command to install the Active Directory Certificate Services role.   
    ```PowerShell
    add-windowsfeature adcs-cert-authority -IncludeManagementTools
    ```

3. Use the following command to configure the Certificate Authority using a basic certificate authority configuration.   
    ```PowerShell
    Install-AdcsCertificationAuthority
    ```   
    
## Configure a Production Public Key Infrastructure

If you do not have an existing public key infrastructure, please review [Certification Authority Guidance](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831574(v=ws.11)) from Microsoft TechNet to properly design your infrastructure.   Then, consult the [Test Lab Guide: Deploying an AD CS Two-Tier PKI Hierarchy](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831348(v=ws.11)) for instructions on how to configure your public key infrastructure using the information from your design session.

> [!IMPORTANT]
> For Azure AD joined device to authenticate to and use on-premises resources, ensure you:
> * Install the root certificate authority certificate for your organization in the user's trusted root certificate store.
> * Publish your certificate revocation list to a location that is available to Azure AD-joined devices, such as a web-based URL.

### Section Review

> [!div class="checklist"]
> *  Minimum Windows Server 2012 Certificate Authority.
> *  Enterprise Certificate Authority.
> *  Functioning public key infrastructure.
> *  Root certificate authority certificate (Azure AD Joined devices).
> *  Highly available certificate revocation list (Azure AD Joined devices).
  
## Azure Active Directory
You've prepared your Active Directory.  Hybrid Windows Hello for Business deployment needs Azure Active Directory to host your cloud-based identities. 

The next step of the deployment is to follow the [Creating an Azure AD tenant](/azure/active-directory/develop/active-directory-howto-tenant) process to provision an Azure tenant for your organization.

### Section Review

> [!div class="checklist"]
> * Review the different ways to establish an Azure Active Directory tenant.
> * Create an Azure Active Directory Tenant.
> * Purchase the appropriate Azure Active Directory subscription or licenses, if necessary.
   
## Multifactor Authentication Services
Windows Hello for Business uses multifactor authentication during provisioning and during user initiated PIN reset scenarios, such as when a user forgets their PIN.  There are two preferred multifactor authentication configurations with hybrid deployments—Azure MFA and AD FS using Azure MFA or a third-party MFA adapter

Review the [What is Azure AD Multi-Factor Authentication](/azure/multi-factor-authentication/multi-factor-authentication) topic to familiarize yourself its purpose and how it works.

### Azure AD Multi-Factor Authentication (MFA) Cloud

> [!IMPORTANT]
> As long as your users have licenses that include Azure AD Multi-Factor Authentication, there's nothing that you need to do to turn on Azure MFA. You can start requiring two-step verification on an individual user basis. The licenses that enable Azure MFA are:
> * Azure AD Multi-Factor Authentication
> * Azure Active Directory Premium
> * Enterprise Mobility + Security
> 
> If you have one of these subscriptions or licenses, skip the Azure MFA Adapter section. 


#### Configure Azure MFA Settings
Review the [Configure Azure AD Multi-Factor Authentication settings](/azure/multi-factor-authentication/multi-factor-authentication-whats-next) section to configure your settings.

#### Azure MFA User States
After you have completed configuring your Azure MFA settings, you want to review [How to require two-step verification for a user](/azure/multi-factor-authentication/multi-factor-authentication-get-started-user-states) to understand user states. User states determine how you enable Azure MFA for your users.

### Azure MFA via ADFS
Alternatively, you can configure Windows Server 2016 Active Directory Federation Services (AD FS) to provide additional multi-factor authentication. To configure, read the [Configure AD FS 2016 and Azure MFA](/windows-server/identity/ad-fs/operations/configure-ad-fs-2016-and-azure-mfa) section.

### Section Review

> [!div class="checklist"]
> * Review the overview and uses of Azure AD Multi-Factor Authentication.
> * Review your Azure Active Directory subscription for Azure AD Multi-Factor Authentication.
> * Create an Azure AD Multi-Factor Authentication Provider, if necessary.
> * Configure Azure AD Multi-Factor Authentication features and settings.
> * Understand the different User States and their effect on Azure AD Multi-Factor Authentication.
> * Consider using Azure AD Multi-Factor Authentication or a third-party multifactor authentication provider with Windows Server Active Directory Federation Services, if necessary.

> [!div class="nextstepaction"]
> [Configure Azure Device Registration](hello-hybrid-key-trust-devreg.md)

<br><br>

<hr>

## Follow the Windows Hello for Business hybrid key trust deployment guide
1. [Overview](hello-hybrid-key-trust.md)
2. [Prerequisites](hello-hybrid-key-trust-prereqs.md)
3. New Installation Baseline (*You are here*)
4. [Configure Directory Synchronization](hello-hybrid-key-trust-dirsync.md)
5. [Configure Azure Device Registration](hello-hybrid-key-trust-devreg.md)
6. [Configure Windows Hello for Business settings](hello-hybrid-key-whfb-settings.md)
7. [Sign-in and Provision](hello-hybrid-key-whfb-provision.md)