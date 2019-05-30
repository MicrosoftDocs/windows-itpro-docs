---
title: Validate and Deploy Multifactor Authentication Services (MFA) (Windows Hello for Business)
description: How to Validate and Deploy Multifactor Authentication Services for Windows Hello for Business
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
localizationpriority: medium
ms.date: 08/19/2018
ms.reviewer: 
---
# Validate and Deploy Multifactor Authentication Services (MFA)

**Applies to**
-   Windows 10, version 1703 or later
-   On-premises deployment
-   Certificate trust


Windows Hello for Business requires all users perform multi-factor authentication prior to creating and registering a Windows Hello for Business credential.  Windows Hello for Business deployments use Azure Multi-Factor Authentication (Azure MFA) services for the secondary authentication.  On-Premises deployments use Azure MFA server, an on-premises implementation that do not require synchronizing Active Directory credentials to Azure Active Directory.

Azure Multi-Factor Authentication is an easy to use, scalable, and reliable solution that provides a second method of authentication so your users are always protected.
* **Easy to Use** - Azure Multi-Factor Authentication is simple to set up and use. The extra protection that comes with Azure Multi-Factor Authentication allows users to manage their own devices. Best of all, in many instances it can be set up with just a few simple clicks.
* **Scalable** - Azure Multi-Factor Authentication uses the power of the cloud and integrates with your on-premises AD and custom applications. This protection is even extended to your high-volume, mission-critical scenarios.
* **Always Protected** - Azure Multi-Factor Authentication provides strong authentication using the highest industry standards.
* **Reliable** - We guarantee 99.9% availability of Azure Multi-Factor Authentication. The service is considered unavailable when it is unable to receive or process verification requests for the two-step verification.

## On-Premises Azure MFA Server

On-premises deployments, both key and certificate trust, use the Azure MFA server where the credentials are not synchronized to Azure Active Directory.

### Infrastructure

A lab or proof-of-concept environment does not need high-availability or scalability.  However, a production environment needs both of these.  Ensure your environment considers and incorporates these factors, as necessary. All production environments should have a minimum of two MFA servers—one primary and one secondary server. The environment should have a minimum of two User Portal Servers that are load balanced using hardware or Windows Network Load Balancing.

Please follow [Download the Azure Multi-Factor Authentication Server](https://docs.microsoft.com/azure/multi-factor-authentication/multi-factor-authentication-get-started-server#download-the-azure-multi-factor-authentication-server) to download Azure MFA server. 

>[!IMPORTANT]
>Make sure to validate the requirements for Azure MFA server, as outlined in [Install and Configure the Azure Multi-Factor Authentication Server](https://docs.microsoft.com/azure/multi-factor-authentication/multi-factor-authentication-get-started-server#install-and-configure-the-azure-multi-factor-authentication-server) before proceeding. Do not use installation instructions provided in the article.

Once you have validated all the requirements, please proceed to [Configure or Deploy Multifactor Authentication Services](hello-cert-trust-deploy-mfa.md).

## Follow the Windows Hello for Business on premises certificate trust deployment guide
1. [Validate Active Directory prerequisites](hello-cert-trust-validate-ad-prereq.md)
2. [Validate and Configure Public Key Infrastructure](hello-cert-trust-validate-pki.md)
3. [Prepare and Deploy Windows Server 2016 Active Directory Federation Services](hello-cert-trust-adfs.md)
4. Validate and Deploy Multifactor Authentication Services (MFA) (*You are here*)
5. [Configure Windows Hello for Business Policy settings](hello-cert-trust-policy-settings.md)
