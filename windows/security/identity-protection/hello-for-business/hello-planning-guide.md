---
title: Planning a Windows Hello for Business Deployment
description: A guide to planning a Windows Hello for Business deployment 
keywords: identity, PIN, biometric, Hello, passport
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: conceptual
ms.date: 08/19/2018
---
# Planning a Windows Hello for Business Deployment

**Applies to**
-   Windows 10

> This guide only applies to Windows 10, version 1511 or higher.

Congratulations! You are taking the first step forward in helping move your organizations away from password to a two-factor, convenience authentication for Windows — Windows Hello for Business. This planning guide helps you understand the different topologies, architectures, and components that encompass a Windows Hello for Business infrastructure.
  
This guide explains the role of each component within Windows Hello for Business and how certain deployment decisions affect other aspects of the infrastructure. Armed with your planning worksheet, you’ll use that information to select the correct deployment guide for your needs.

## Using this guide

There are many options from which you can choose when deploying Windows Hello for Business. Providing multiple options ensures nearly every organization can deploy Windows Hello for Business. Providing many options makes the deployment appear complex, however, most organization will realize they’ve already implemented most of the infrastructure on which the Windows Hello for Business deployment depends. It is important to understand that Windows Hello for Business is a distributed system and does take proper planning across multiple teams within an organization.

This guide removes the appearance of complexity by helping you make decisions on each aspect of your Windows Hello for Business deployment and the options you’ll need to consider. Using this guide also identifies the information needed to help you make decisions about the deployment that best suits your environment. Download the [Windows Hello for Business planning worksheet](https://go.microsoft.com/fwlink/?linkid=852514) from the Microsoft Download Center to help track your progress and make your planning easier.

### How to Proceed

Read this document and record your decisions on the worksheet. When finished, your worksheet has all the necessary information for your Windows Hello for Business deployment.

There are six major categories you need to consider for a Windows Hello for Business deployment.  Those categories are:
*	Deployment Options
*   Client
*   Management
*   Active Directory
*   Public Key Infrastructure
*   Cloud

### Baseline Prerequisites

Windows Hello for Business has a few baseline prerequisites with which you can begin.  These baseline prerequisites are provided in the worksheet. 

### Deployment Options

The goal of Windows Hello for Business is to enable deployments for all organizations of any size or scenario. To provide this type of granular deployment, Windows Hello for Business offers a diverse choice of deployment options.

#### Deployment models

There are three deployment models from which you can choose: cloud only, hybrid, and on-premises.

##### Cloud only
The cloud only deployment model is for organizations who only have cloud identities and do not access on-premises resources.  These organizations typically join their devices to the cloud and exclusively use resources in the cloud such as SharePoint, OneDrive, and others.  Also, because these users do not use on-premises resources, they do not need certificates for things like VPN because everything they need is hosted in Azure.

##### Hybrid
The hybrid deployment model is for organizations that: 
* Are federated with Azure Active Directory
* Have identities synchronized to Azure Active Directory using Azure Active Directory Connect
* Use applications hosted in Azure Active Directory, and want a single sign-in user experience for both on-premises and Azure Active Directory resources

##### On-premises
The on-premises deployment model is for organizations that do not have cloud identities or use applications hosted in Azure Active Directory.


It’s fundamentally important to understand which deployment model to use for a successful deployment.  Some of aspects of the deployment may already be decided for you based on your current infrastructure.

#### Trust types

A deployment's trust type defines how each Windows Hello for Business client authenticates to the on-premises Active Directory.  There are two trust types: key trust and certificate trust. 
  
The key trust type does not require issuing authentication certificates to end users. Users authenticate using a hardware-bound key created during the built-in provisioning experience. This requires an adequate distribution of Windows Server 2016 domain controllers relative to your existing authentication and the number of users included in your Windows Hello for Business deployment. Read the [Planning an adequate number of Windows Server 2016 Domain Controllers for Windows Hello for Business deployments](hello-adequate-domain-controllers.md) to learn more.

The certificate trust type issues authentication certificates to end users.  Users authenticate using a certificate requested using a hardware-bound key created during the built-in provisioning experience.  Unlike key trust, certificate trust does not require Windows Server 2016 domain controllers (but still requires [Windows Server 2016 Active Directory schema](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-hybrid-cert-trust-prereqs#directories)).  Users can use their certificate to authenticate to any Windows Server 2008 R2, or later, domain controller.

#### Device registration

All devices included in the Windows Hello for Business deployment must go through device registration.  Device registration enables devices to authenticate to identity providers.  For cloud only and hybrid deployment, the identity provider is Azure Active Directory.  For on-premises deployments, the identity provider is the on-premises server running the Windows Server 2016 Active Directory Federation Services (AD FS) role.

#### Key registration

The built-in Windows Hello for Business provisioning experience creates a hardware bound asymmetric key pair as their user’s credentials. The private key is protected by the device’s security modules; however, the credential is a user key (not a device key).  The provisioning experience registers the user’s public key with the identity provider.  For cloud only and hybrid deployments, the identity provider is Azure Active Directory.  For on-premises deployments, the identity provider is the on-premises server running Windows Server 2016 Active Directory Federation Services (AD FS) role.

#### Multifactor authentication

The goal of Windows Hello for Business is to move organizations away from passwords by providing them a strong credential that provides easy two-factor authentication.  The built-in provisioning experience accepts the user’s weak credentials (username and password) as the first factor authentication; however, the user must provide a second factor of authentication before Windows provisions a strong credential.  

Cloud only and hybrid deployments provide many choices for multi-factor authentication.  On-premises deployments must use a multi-factor authentication that provides an AD FS multi-factor adapter to be used in conjunction with the on-premises Windows Server 2016 AD FS server role. Organizations can use the on-premises Azure Multi-factor Authentication server, or choose from several third parties (Read [Microsoft and third-party additional authentication methods](https://docs.microsoft.com/windows-server/identity/ad-fs/operations/configure-additional-authentication-methods-for-ad-fs#microsoft-and-third-party-additional-authentication-methods) for more information).
>[!NOTE]
> Azure Multi-Factor Authentication is available through:
>* Microsoft Enterprise Agreement
>* Open Volume License Program
>* Cloud Solution Providers program
>* Bundled with
>    * Azure Active Directory Premium
>    * Enterprise Mobility Suite
>    * Enterprise Cloud Suite

#### Directory synchronization

Hybrid and on-premises deployments use directory synchronization, however, each for a different purpose.  Hybrid deployments use Azure Active Directory Connect to synchronize Active Directory identities or credentials between itself and Azure Active Directory. This helps enable single sign-on to Azure Active Directory and its federated components. On-premises deployments use directory synchronization to import users from Active Directory to the Azure MFA Server, which sends data to the Azure MFA cloud service to perform the verification.

### Management

Windows Hello for Business provides organizations with a rich set of granular policy settings with which they can use to manage their devices and users.  There are three ways in which you can manage Windows Hello for Business: Group Policy, Modern Management, and Mixed.

#### Group Policy

Group Policy is the easiest and most popular way to manage Windows Hello for Business on domain joined devices.  Simply create a Group Policy object with the settings you desire. Link the Group Policy object high in your Active Directory and use security group filtering to target specific sets of computers or users.  Or, link the GPO directly to the organizational units.  

#### Modern management

Modern management is an emerging device management paradigm that leverages the cloud for managing domain joined and non-domain joined devices.   Organizations can unify their device management into one platform and apply policy settings using a single platform

### Client

Windows Hello for Business is an exclusive Windows 10 feature.  As part of the Windows as a Service strategy, Microsoft has improved the deployment, management, and user experience with each new release of Windows 10 and introduced support for new scenarios.

Most deployment scenarios require a minimum of Windows 10, version 1511, also known as the November Update.  The client requirement may change based on different components in your existing infrastructure, or other infrastructure choices made later in planning your deployment.  Those components and choices may require a minimum client running Windows 10, version 1703, also known as the Creators Update.


### Active Directory

Hybrid and on-premises deployments include Active Directory as part of their infrastructure.  Most of the Active Directory requirements, such as schema, and domain and forest functional levels are predetermined.  However, your trust type choice for authentication determines the version of domain controller needed for the deployment.

### Public Key Infrastructure

The Windows Hello for Business deployment depends on an enterprise public key infrastructure as a trust anchor for authentication. Domain controllers for hybrid and on-premises deployments need a certificate in order for Windows 10 devices to trust the domain controller as legitimate. Deployments using the certificate trust type need an enterprise public key infrastructure and a certificate registration authority to issue authentication certificates to users.  Hybrid deployments may need to issue VPN certificates to users to enable connectivity on-premises resources.

### Cloud

Some deployment combinations require an Azure account, and some require Azure Active Directory for user identities.  These cloud requirements may only need an Azure account while other features need an Azure Active Directory Premium subscription. The planning process identifies and differentiates the components that are needed from the those that are optional.

## Planning a Deployment

Planning your Windows Hello for Business deployment begins with choosing a deployment type.  Like all distributed systems, Windows Hello for Business depends on multiple components within your organization’s infrastructure.

Use the remainder of this guide to help with planning your deployment.  As you make decisions, write the results of those decisions in your planning worksheet.  When finished, you’ll have all the information needed to complete the planning process and the appropriate deployment guide that best helps you with your deployment.

### Deployment Model

Choose the deployment model based on the resources your users access.  Use the following guidance to make your decision.

If your organization does not have on-premises resources, write **Cloud Only** in box **1a** on your planning worksheet.

If your organization is federated with Azure or uses any online service, such as Office365 or OneDrive, or your users' access cloud and on-premises resources, write **Hybrid** in box **1a** on your planning worksheet.

If your organization does not have cloud resources, write **On-Premises** in box **1a** on your planning worksheet.
>[!NOTE]
>If you’re unsure if your organization is federated, run the following Active Directory Windows PowerShell command from an elevated Windows PowerShell prompt and evaluate the results.  
>```Get-AdObject “CN=62a0ff2e-97b9-4513-943f-0d221bd30080,CN=Device Registration Configuration,CN=Services,CN=Configuration,DC=corp,DC=[forest_root_CN_name],DC=com" -Properties keywords```
>* If the command returns an error stating it could not find the object, then you have yet to configured AAD Connect or on-premises Device Registration Services using AD FS.  Ensure the name is accurate and validate the object does not exist with another Active Directory Management tool such as **ADSIEdit.msc**.  If the object truly does not exist, then your environment does not bind you to a specific deployment or require changes to accommodate the desired deployment type.
>* If the command returns a value, compare that value with the values below.  The value indicates the deployment model you should implement
>    * If the value begins with **azureADName:**  – write **Hybrid** in box **1a**on your planning worksheet.
 >   * If the value begins with **enterpriseDrsName:** – write **On-Premises** in box **1a** on your planning worksheet.

### Trust type

Choose a trust type that is best suited for your organizations.  Remember, the trust type determines two things. Whether you issue authentication certificates to your users and if your deployment needs Windows Server 2016 domain controllers.

One trust model is not more secure than the other. The major difference is based on the organization comfort with deploying Windows Server 2016 domain controllers and not enrolling users with end entity certificates (key-trust) against using existing domain controllers (Windows Server 2008R2 or later) and needing to enroll certificates for all their users (certificate trust).  

Because the certificate trust types issues certificates, there is more configuration and infrastructure needed to accommodate user certificate enrollment, which could also be a factor to consider in your decision.  Additional infrastructure needed for certificate-trust deployments includes a certificate registration authority.  Hybrid Azure AD joined devices managed by Group Policy need the Windows Server 2016 AD FS role to issue certificates.  Hybrid Azure AD joined devices and Azure AD joined devices managed by Intune or a compatible MDM need the Windows Server NDES server role to issue certificates.  

If your organization wants to use the key trust type, write **key trust** in box **1b** on your planning worksheet. Write **Windows Server 2016** in box **4d**. Write **N/A** in box **5b**.

If your organization wants to use the certificate trust type, write **certificate trust** in box **1b** on your planning worksheet.  Write **Windows Server 2008 R2 or later** in box **4d**.  In box **5c**, write **smart card logon** under the **Template Name** column and write **users** under the **Issued To** column on your planning worksheet.

### Device Registration

A successful Windows Hello for Business requires all devices to register with the identity provider.  The identity provider depends on the deployment model.

If box **1a** on your planning worksheet reads **cloud only** or **hybrid**, write **Azure** in box **1c** on your planning worksheet.

If box **1a** on your planning worksheet reads **on-premises**, write **AD FS** in box **1c** on your planning worksheet.

### Key Registration

All users provisioning Windows Hello for Business have their public key registered with the identity provider.  The identity provider depends on the deployment model.

If box **1a** on your planning worksheet reads **cloud only** or **hybrid**, write **Azure** in box **1d** on your planning worksheet.

If box **1a** on your planning worksheet reads **on-premises**, write **AD FS** in box **1d** on your planning worksheet.

### Directory Synchronization

Windows Hello for Business is strong user authentication, which usually means there is an identity (a user or username) and a credential (typically a key pair).  Some operations require writing or reading user data to or from the directory. For example, reading the user’s phone number to perform multi-factor authentication during provisioning or writing the user’s public key.

If box **1a** on your planning worksheet reads **cloud only**, write **N/A** in box **1e**.  User information is written directly to Azure Active Directory and there is not another directory with which the information must be synchronized.

If box **1a** on your planning worksheet reads **hybrid**, then write **Azure AD Connect** in box **1e** on your planning worksheet.

If box **1a** on your planning worksheet reads **on-premises**, then write **Azure MFA Server**.  This deployment exclusively uses Active Directory for user information with the exception of the multi-factor authentication.  The on-premises Azure MFA server synchronizes a subset of the user information, such as phone number, to provide multi-factor authentication while the user’s credentials remain on the on-premises network.

### Multifactor Authentication

The goal of Windows Hello for Business is to move user authentication away from passwords to a strong, key-based user authentication.  Passwords are weak credentials and cannot be trusted by themselves as an attacker with a stolen password could be attempting to enroll in Windows Hello for Business.  To keep the transition from a weak to a strong credential secure, Windows Hello for Business relies on multi-factor authentication during provisioning to have some assurances that the user identity provisioning a Windows Hello for Business credential is the proper identity.

If box **1a** on your planning worksheet reads **cloud only**, then your only option is to use the Azure MFA cloud service.  Write **Azure MFA** in box **1f** on your planning worksheet.

If box **1a** on your planning worksheet reads **hybrid**, then you have a few options, some of which depend on your directory synchronization configuration. The options from which you may choose include:
* Directly use Azure MFA cloud service
* Use AD FS w/Azure MFA cloud service adapter
* Use AD FS w/Azure MFA Server adapter
* Use AD FS w/3rd Party MFA Adapter

You can directly use the Azure MFA cloud service for the second factor of authentication. Users contacting the service must authenticate to Azure prior to using the service.
  
If your Azure AD Connect is configured to synchronize identities (usernames only), then your users are redirected to your local on-premises federation server for authentication and then redirected back to the Azure MFA cloud service.  Otherwise, your Azure AD Connect is configured to synchronize credentials (username and passwords), which enables your users to authenticate to Azure Active Directory and use the Azure MFA cloud service.  If you choose to use the Azure MFA cloud service directly, write **Azure MFA** in box **1f** on your planning worksheet.

You can configure your on-premises Windows Server 2016 AD FS role to use the Azure MFA service adapter. In this configuration, users are redirected to the on premises AD FS server (synchronizing identities only). The AD FS server uses the MFA adapter to communicate to the Azure MFA service to perform the second factor of authentication.  If you choose to use AD FS with the Azure MFA cloud service adapter, write **AD FS with Azure MFA cloud adapter** in box **1f** on your planning worksheet.

Alternatively, you can use AD FS with an on-premises Azure MFA server adapter. Rather than AD FS communicating directly with the Azure MFA cloud service, it communicates with an on-premises Azure MFA server that synchronizes user information with the on-premises Active Directory.  The Azure MFA server communicates with Azure MFA cloud services to perform the second factor of authentication.  If you choose to use AD FS with the Azure MFA server adapter, write **AD FS with Azure MFA server adapter** in box **1f** on your planning worksheet.

The last option is for you to use AD FS with a third-party adapter as the second factor of authentication.  If you choose to use AD FS with a third-party MFA adapter, write **AD FS with third party** in box **1f** on your planning worksheet.

If box **1a** on your planning worksheet reads **on-premises**, then you have two second factor authentication options.  You must use Windows Server 2016 AD FS with your choice of the on-premises Azure MFA server or with a third-party MFA adapter. 

If you choose to use AD FS with the Azure MFA server adapter, write **AD FS with Azure MFA server adapter** in box **1f** on your planning worksheet. If you choose to use AD FS with a third-party MFA adapter, write **AD FS with third party** in box **1f** on your planning worksheet.

### Management 

Windows Hello for Business provides organizations with many policy settings and granular control on how these settings may be applied to both computers and users.  The type of policy management you can use depends on your selected deployment and trust models.

If box **1a** on your planning worksheet reads **cloud only**, write **N/A** in box **2a** on your planning worksheet.  You have the option to manage non-domain joined devices.  If you choose to manage Azure Active Directory joined devices, write **modern management** in box **2b** on your planning worksheet.  Otherwise, write** N/A** in box **2b**.

>[!NOTE]
> Azure Active Directory joined devices without modern management automatically enroll in Windows Hello for Business using the default policy settings.  Use modern management to adjust policy settings to match the business needs of your organization.

If box **1a** on your planning worksheet reads **on-prem**, write **GP** in box **2a** on your planning worksheet. Write **N/A** in box **2b** on your worksheet.

Managing hybrid deployments includes two categories of devices to consider for your Windows Hello for Business deployment—domain joined and non-domain joined.  All devices are registered, however, not all devices are domain joined.  You have the option of using Group Policy for domain joined devices and modern management for non-domain joined devices. Or, you can use modern management for both domain and non-domain joined devices.  

If you use Group Policy to manage your domain joined devices, write **GP** in box **2a** on your planning worksheet. Write **modern management** in box **2b** if you decide to manage non-domain joined devices; otherwise, write **N/A**.  

If you use modern management for both domain and non-domain joined devices, write **modern management** in box **2a** and **2b** on your planning worksheet.

### Client

Windows Hello for Business is a feature exclusive to Windows 10.   Some deployments and features are available using earlier versions of Windows 10.  Others need the latest versions.

If box **1a** on your planning worksheet reads **cloud only**, write **N/A** in box **3a** on your planning worksheet.  Optionally, you may write **1511 or later** in box **3b** on your planning worksheet if you plan to manage non-domain joined devices.
>[!NOTE] 
>Azure Active Directory joined devices without modern management automatically enroll in Windows Hello for Business using the default policy settings.  Use modern management to adjust policy settings to match the business needs of your organization.

Write **1511 or later** in box **3a** on your planning worksheet if any of the following are true. 
* Box **2a** on your planning worksheet read **modern management**. 
    * Optionally, you may write **1511 or later** in box **3b** on your planning worksheet if you plan to manage non-domain joined devices.
* Box **1a** on your planning worksheet reads **hybrid**, box **1b** reads **key trust**, and box **2a** reads **GP**.
    *Optionally, you may write **1511 or later** in box **3b** on your planning worksheet if you plan to manage non-domain joined devices.

Write **1703 or later** in box **3a** on your planning worksheet if any of the following are true.
* Box **1a** on your planning worksheet reads **on-premises**.  
  Write **N/A** in box **3b** on your planning worksheet.
* Box **1a** on your planning worksheet reads **hybrid**, box **1b** reads **certificate trust**, and box **2a** reads **GP**.
    * Optionally, you may write **1511 or later** in box **3b** on your planning worksheet if you plan to manage non-domain joined devices.

### Active Directory

The Active Directory portion of the planning guide should be complete.  Most of the conditions are baseline prerequisites except for your domain controllers.  The domain controllers used in your deployment are decided by the chosen trust type. 

Review the trust type portion of this section if box **4d** on your planning worksheet remains empty.

### Public Key Infrastructure

Public key infrastructure prerequisites already exist in your planning worksheet. These conditions are the minimum requirements for any hybrid or on-premises deployment.  Additional conditions may be needed based on your trust type.

If box **1a** on your planning worksheet reads **cloud only**, ignore the public key infrastructure section of your planning worksheet.  Cloud only deployments do not use a public key infrastructure.

If box **1b** on your planning worksheet reads **key trust**, write **N/A** in box **5b** on your planning worksheet. Key trust doesn't require any change in public key infrastructure, skip this part and go to **Cloud** section.

The registration authority only relates to certificate trust deployments and the management used for domain and non-domain joined devices.  Hybrid Azure AD joined devices managed by Group Policy need the Windows Server 2016 AD FS role to issue certificates.  Hybrid Azure AD joined devices and Azure AD joined devices managed by Intune or a compatible MDM need the Windows Server NDES server role to issue certificates. 

If box **2a** reads **GP** and box **2b** reads **modern management**, write **AD FS RA and NDES** in box **5b** on your planning worksheet.  In box **5c**, write the following certificate templates names and issuances:

| Certificate Template Name | Issued To |
| --- | --- |
| Exchange Enrollment Agent | AD FS RA | 
| Web Server | AD FS RA | 
| Exchange Enrollment Agent | NDES |
| Web Server | NDES |
| CEP Encryption | NDES |

If box **2a** reads **GP** and box **2b** reads **N/A**, write **AD FS RA** in box **5b** and write the following certificate template names and issuances in box **5c** on your planning worksheet.

| Certificate Template Name | Issued To |
| --- | --- |
| Exchange Enrollment Agent | AD FS RA | 
| Web Server | AD FS RA | 

If box **2a** or **2b** reads modern management, write **NDES** in box **5b** and write the following certificate template names and issuances in box 5c on your planning worksheet.

| Certificate Template Name | Issued To |
| --- | --- |
| Exchange Enrollment Agent | NDES |
| Web Server | NDES |
| CEP Encryption | NDES |

### Cloud

Nearly all deployments of Windows Hello for Business require an Azure account.

If box **1a** on your planning worksheet reads **cloud only** or **hybrid**, write **Yes** in boxes **6a** and **6b** on your planning worksheet.

If box **1a** on your planning worksheet reads **on-premises**, and box **1f** reads **AD FS with third party**, write **No** in box **6a** on your planning worksheet. Otherwise, write **Yes** in box **6a** as you need an Azure account for per-consumption MFA billing. Write **No** in box **6b** on your planning worksheet—on-premises deployments do not use the cloud directory.

Windows Hello for Business does not require an Azure AD premium subscription.  However, some dependencies do.

If box **1a** on your planning worksheet reads **on-premises**, write **No** in box **6c** on your planning worksheet.

If box **1a** on your planning worksheet reads **hybrid** and box **1b** reads **key trust**, write **No** in box **6c** on your planning worksheet.  You can deploy Windows Hello for Business using the free Azure Active Directory account (additional costs needed for multi-factor authentication).

If box **5b** on your planning worksheet reads **AD FS RA**, write **Yes** in box **6c** on your planning worksheet.  Enrolling a certificate using the AD FS registration authority requires devices to authenticate to the AD FS server, which requires device write-back, an Azure AD Premium feature.

Modern managed devices do not require an Azure AD premium subscription.  By forgoing the subscription, your users must manually enroll devices in the modern management software, such as Intune or a supported third-party MDM.

If boxes **2a** or **2b** read **modern management** and you want devices to automatically enroll in your modern management software, write **Yes** in box **6c** on your planning worksheet.  Otherwise, write **No** in box **6c**.

## Congratulations, You’re Done

Your Windows Hello for Business planning worksheet should be complete.  This guide provided understanding of the components used in the Windows Hello for Business infrastructure and rationalization of why they are used.  The worksheet gives you an overview of the requirements needed to continue the next phase of the deployment.  With this worksheet, you’ll be able to identify key elements of your Windows Hello for Business deployment.
