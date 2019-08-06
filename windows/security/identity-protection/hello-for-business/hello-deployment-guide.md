---
title: Windows Hello for Business Deployment Guide
description: A guide to Windows Hello for Business deployment 
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
ms.date: 08/29/2018
ms.reviewer: 
---
# Windows Hello for Business Deployment Guide

**Applies to**
-   Windows 10, version 1703 or later

Windows Hello for Business is the springboard to a world without passwords. It replaces username and password sign-in to Windows with strong user authentication based on an asymmetric key pair.

This deployment guide is to guide you through deploying Windows Hello for Business, based on the planning decisions made using the Planning a Windows Hello for Business Deployment Guide. It provides you with the information needed to successfully deploy Windows Hello for Business in an existing environment.

> [!NOTE]
> Two Azure AD Connect synchronisations are required in order for WHfB to begin working.
> For more features, see [Windows Hello for Business Features](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-features#remote-desktop-with-biometrics).

## Assumptions

This guide assumes that baseline infrastructure exists which meets the requirements for your deployment. For either hybrid or on-premises deployments, it is expected that you have: 
* A well-connected, working network
* Internet access
* Multifactor Authentication Server to support MFA during Windows Hello for Business provisioning
* Proper name resolution, both internal and external names
* Active Directory and an adequate number of domain controllers per site to support authentication
* Active Directory Certificate Services 2012 or later
* One or more workstation computers running Windows 10, version 1703

If you are installing a server role for the first time, ensure the appropriate server operating system is installed, updated with the latest patches, and joined to the domain. This document provides guidance to install and configure the specific roles on that server.  

Do not begin your deployment until the hosting servers and infrastructure (not roles) identified in your prerequisite worksheet are configured and properly working.

## Deployment and trust models

> [!IMPORTANT]
> The remote desktop with biometrics feature only works with certificate trust deployments.  The feature takes advantage of the redirected smart card capabilities of the remote desktop protocol.  Microsoft continues to investigate supporting this feature for key trust deployments. 

Windows Hello for Business has two deployment models: Hybrid and On-premises. Each deployment model has two trust models: *Key trust* or *certificate trust*.

Hybrid deployments are for enterprises that use Azure Active Directory. On-premises deployments are for enterprises who exclusively use on-premises Active Directory. Remember that the environments that use Azure Active Directory must use the hybrid deployment model for all domains in that forest.

The trust model determines how you want users to authenticate to the on-premises Active Directory: 
* The key-trust model is for enterprises who do not want to issue end-entity certificates to their users and have an adequate number of 2016 domain controllers in each site to support authentication. 
* The certificate-trust model is for enterprise that *do* want to issue end-entity certificates to their users and have the benefits of certificate expiration and renewal, similar to how smart cards work today. 
* The certificate trust model also supports enterprises which are not ready to deploy Windows Server 2016 Domain Controllers.

For additional information regarding directory sync, including hybrid deployments (Azure Active Directory) using cert and key trusts models see [Hybrid Windows Hello for Business Prerequisites](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-hybrid-cert-trust-prereqs#directory-synchronization) and [Hybrid Key trust Windows Hello for Business Prerequisites](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-hybrid-key-trust-prereqs#directory-synchronization).

>[!NOTE]
>RDP does not support authentication with Windows Hello for business key trust deployments. RDP is only supported with certificate trust deployments at this time. 

Following are the various deployment guides and models included in this topic:
- [Hybrid Azure AD Joined Key Trust Deployment](hello-hybrid-key-trust.md)
- [Hybrid Azure AD Joined Certificate Trust Deployment](hello-hybrid-cert-trust.md)
- [Azure AD Join Single Sign-on Deployment Guides](hello-hybrid-aadj-sso.md)
- [On Premises Key Trust Deployment](hello-deployment-key-trust.md)
- [On Premises Certificate Trust Deployment](hello-deployment-cert-trust.md)

> [!NOTE]
> This article covers all deployment models including on-premises. On-premises deployments, both key and certificate trust, use the Azure MFA server where the credentials are not synchronized to Azure Active Directory. For more information see [Validate and Deploy Multifactor Authentication Services (MFA)](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-key-trust-validate-deploy-mfa) and [Validate and Deploy Multifactor Authentication Services (MFA)](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-cert-trust-validate-deploy-mfa).

## Provisioning

Windows Hello for Business provisioning begins immediately after the user has signed in, after the user profile is loaded, but before the user receives their desktop. Windows only launches the provisioning experience if all the prerequisite checks pass. You can determine the status of the prerequisite checks by viewing the **User Device Registration** in the **Event Viewer** under **Applications and Services Logs\Microsoft\Windows**.

