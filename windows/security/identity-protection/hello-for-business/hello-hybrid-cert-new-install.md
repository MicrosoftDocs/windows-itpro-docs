---
title: Windows Hello for Business Trust New Installation (Windows Hello for Business)
description: Windows Hello for Business Hybrid baseline deployment
keywords: identity, PIN, biometric, Hello, passport, WHFB
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
# Windows Hello for Business Certificate Trust New Installation

**Applies to**
-   Windows 10, version 1703 or later
-   Hybrid deployment
-   Certificate trust


Windows Hello for Business involves configuring distributed technologies that may or may not exist in your current infrastructure.  Hybrid certificate trust deployments of Windows Hello for Business rely on these technologies

* [Active Directory](#active-directory)
* [Public Key Infrastructure](#public-key-infrastructure)
* [Azure Active Directory](#azure-active-directory)
* [Multifactor Authentication Services](#multifactor-authentication-services)


New installations are considerably more involved than existing implementations because you are building the entire infrastructure.  Microsoft recommends you review the new installation baseline to validate your existing environment has all the needed configurations to support your hybrid certificate trust Windows Hello for Business deployment.  If your environment meets these needs, you can read the [Configure Azure Device Registration](hello-hybrid-cert-trust-devreg.md) section to prepare your Windows Hello for Business deployment by configuring Azure device registration.

The new installation baseline begins with a basic Active Directory deployment and enterprise PKI.  This document expects you have Active Directory deployed using Windows Server 2008 R2 or later domain controllers.

## Active Directory ##   
Production environments should follow Active Directory best practices regarding the number and placement of domain controllers to ensure adequate authentication throughout the organization.
  
Lab environments and isolated proof of concepts may want to limit the number of domain controllers.  The purpose of these environments is to experiment and learn.  Reducing the number of domain controllers can prevent troubleshooting issue, such as Active Directory replication, which is unrelated to activity's goal.

### Section Review

> [!div class="checklist"]
> * Minimum Windows Server 2008 R2 domain controllers
> * Minimum Windows Server 2008 R2 domain and forest functional level
> * Functional networking, name resolution, and Active Directory replication
 
## Public Key Infrastructure

Windows Hello for Business must have a public key infrastructure regardless of the deployment or trust model.  All trust models depend on the domain controllers having a certificate.  The certificate serves as a root of trust for clients to ensure they are not communicating with a rogue domain controller.  The certificate trust model extends certificate issuance to client computers.  During Windows Hello for Business provisioning, the user receives a sign-in certificate.

This guide assumes most enterprises have an existing public key infrastructure.  Windows Hello for Business depends on a Windows enterprise public key infrastructure running the Active Directory Certificate Services role from Windows Server 2012 or later.

### Lab-based public key infrastructure

The following instructions may be used to deploy simple public key infrastructure that is suitable for a lab environment.

Sign-in using _Enterprise Admin_ equivalent credentials on Windows Server 2012 or later server where you want the certificate authority installed.

>[!NOTE]
>Never install a certificate authority on a domain controller in a production environment.

1. Open an elevated Windows PowerShell prompt.
2. Use the following command to install the Active Directory Certificate Services role.   
    ```PowerShell
    Add-WindowsFeature Adcs-Cert-Authority -IncludeManageTools
    ```

3. Use the following command to configure the Certificate Authority using a basic certificate authority configuration.   
    ```PowerShell
    Install-AdcsCertificateAuthority
    ```   
    
### Configure a Production Public Key Infrastructure

If you do have an existing public key infrastructure, please review [Certification Authority Guidance](https://technet.microsoft.com/library/hh831574.aspx) from Microsoft TechNet to properly design your infrastructure.   Then, consult the [Test Lab Guide: Deploying an AD CS Two-Tier PKI Hierarchy](https://technet.microsoft.com/library/hh831348.aspx) for instructions on how to configure your public key infrastructure using the information from your design session.

### Section Review ###

> [!div class="checklist"]
> *  Minimum Windows Server 2012 Certificate Authority.
> *  Enterprise Certificate Authority.
> *  Functioning public key infrastructure.
  
## Azure Active Directory ##
You’ve prepared your Active Directory.  Hybrid Windows Hello for Business deployment needs Azure Active Directory to host your cloud-based identities. 

The next step of the deployment is to follow the [Creating an Azure AD tenant](https://docs.microsoft.com/azure/active-directory/develop/active-directory-howto-tenant) process to provision an Azure tenant for your organization.

### Section Review

> [!div class="checklist"]
> * Review the different ways to establish an Azure Active Directory tenant.
> * Create an Azure Active Directory Tenant.
> * Purchase the appropriate Azure Active Directory subscription or licenses, if necessary.
   
## Multifactor Authentication Services
Windows Hello for Business uses multi-factor authentication during provisioning and during user initiated PIN reset scenarios, such as when a user forgets their PIN.  There are two preferred multi-factor authentication configurations with hybrid deployments—Azure MFA and AD FS using Azure MFA

Review the [What is Azure Multi-Factor Authentication](https://docs.microsoft.com/azure/multi-factor-authentication/multi-factor-authentication) topic to familiarize yourself its purpose and how it works.

### Azure Multi-Factor Authentication (MFA) Cloud ###
> [!IMPORTANT]
As long as your users have licenses that include Azure Multi-Factor Authentication, there's nothing that you need to do to turn on Azure MFA. You can start requiring two-step verification on an individual user basis. The licenses that enable Azure MFA are:
> * Azure Multi-Factor Authentication
> * Azure Active Directory Premium
> * Enterprise Mobility + Security
>
> If you have one of these subscriptions or licenses, skip the Azure MFA Adapter section. 

#### Azure MFA Provider #### 
If your organization uses Azure MFA on a per-consumption model (no licenses), then review the [Create a Multifactor Authentication Provider](https://docs.microsoft.com/azure/multi-factor-authentication/multi-factor-authentication-get-started-auth-provider) section to create an Azure MFA Authentication provider and associate it with your Azure tenant. 

#### Configure Azure MFA Settings ####
Once you have created your Azure MFA authentication provider and associated it with an Azure tenant, you need to configure the multi-factor authentication settings.  Review the [Configure Azure Multi-Factor Authentication settings](https://docs.microsoft.com/azure/multi-factor-authentication/multi-factor-authentication-whats-next) section to configure your settings.

#### Azure MFA User States ####
After you have completed configuring your Azure MFA settings, you want to review configure [User States](https://docs.microsoft.com/azure/multi-factor-authentication/multi-factor-authentication-get-started-user-states) to understand user states.  User states determine how you enable Azure MFA for your users.

### Azure MFA via ADFS 2016 ###
Alternatively, you can configure Windows Server 2016 Active Directory Federation Services (AD FS) to provide additional multi-factor authentication. To configure, read the [Configure AD FS 2016 and Azure MFA](https://docs.microsoft.com/windows-server/identity/ad-fs/operations/configure-ad-fs-2016-and-azure-mfa) section

### Section Review

> [!div class="checklist"]
> * Review the overview and uses of Azure Multifactor Authentication.
> * Review your Azure Active Directory subscription for Azure Multifactor Authentication.
> * Create an Azure Multifactor Authentication Provider, if necessary.
> * Configure Azure Multifactor Authentication features and settings.
> * Understand the different User States and their effect on Azure Multifactor Authentication.
> * Consider using Azure Multifactor Authentication or a third-party multifactor authentication provider with Windows Server 2016 Active Directory Federation Services, if necessary.

> [!div class="nextstepaction"]
> [Configure Azure Device Registration](hello-hybrid-cert-trust-devreg.md)

<br><br>

<hr>

## Follow the Windows Hello for Business hybrid certificate trust deployment guide
1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequisites](hello-hybrid-cert-trust-prereqs.md)
3. New Installation Baseline (*You are here*)
4. [Configure Azure Device Registration](hello-hybrid-cert-trust-devreg.md)
5. [Configure Windows Hello for Business settings](hello-hybrid-cert-whfb-settings.md)
6. [Sign-in and Provision](hello-hybrid-cert-whfb-provision.md)
