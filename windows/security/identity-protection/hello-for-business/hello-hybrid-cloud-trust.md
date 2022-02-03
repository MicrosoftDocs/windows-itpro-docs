---
title: Hybrid Cloud Trust Deployment (Windows Hello for Business)
description: Learn the information you need to successfully deploy Windows Hello for Business in a hybrid cloud trust scenario.
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, cert-trust
ms.prod: m365-security
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
ms.date: 1/05/2022
ms.reviewer: 
---
# Hybrid Cloud Trust Deployment

Applies to

- Windows 10, version 21H2
- Windows 11 and later

Windows Hello for Business replaces username and password sign-in to Windows with strong user authentication based on asymmetric key pair. The following deployment guide provides the information needed to successfully deploy Windows Hello for Business in a hybrid cloud trust scenario.

## Introduction to Cloud Trust

The goal of the Windows Hello for Business cloud trust deployment model is to bring the benefits of the simplified deployment experience of [on-premises SSO with passwordless security keys](/azure/active-directory/authentication/howto-authentication-passwordless-security-key-on-premises) to Windows Hello for Business. This deployment model can be used for new Windows Hello for Business deployments or existing deployments can move to this model using policy controls.

Windows Hello for Business cloud trust uses Azure Active Directory (AD) Kerberos to address pain points of the key trust deployment model:

- Windows Hello for Business cloud trust provides a simpler deployment experience because it does not require the deployment of public key infrastructure (PKI) or changes to existing PKI.
- Cloud trust does not require syncing of public keys between Azure AD and on-premises domain controllers (DCs) for users to access on-premises resources and applications. This means there isn't a delay between the user provisioning and being able to authenticate.
- Deploying Windows Hello for Business cloud trust enables you to also deploy passwordless security keys with minimal additional setup.

Windows Hello for Business cloud trust is recommended instead of key trust if you meet the prerequisites to deploy cloud trust. Cloud trust is the preferred deployment model if you do not need to support certificate authentication scenarios.

## Azure Active Directory Kerberos and Cloud Trust Authentication

Key trust and certificate trust authentication use kerberos based smart card/certificate authentication for requesting kerberos ticket-granting-tickets (TGTs) from a domain controller for on-premises authentication. This type of authentication requires PKI for domain controller certificates, and requires end-user certificates for certificate trust. For single sign-on (SSO) to on-premises resources from Azure AD joined devices, additional PKI configuration is needed to publish a certificate revocation list (CRL) to a public endpoint. Cloud trust uses Azure AD Kerberos which does not require any of the above PKI to get the user a TGT.

With Azure AD Kerberos, Azure AD can issue TGTs for one or more of your AD domains. Using this functionality, Windows can request a TGT from Azure AD when authenticating with Windows Hello for Business and then use the returned TGT for logon or to access traditional AD-based resources. Kerberos service tickets and authorization continue to be controlled by your on-premises AD DCs.

When you enable Azure AD Kerberos in a domain, an Azure AD Kerberos Server object is created in your on-premises AD. This object will appear as a Read Only Domain Controller (RODC) object but is not associated with any physical servers. This resource is only used by Azure Active Directory to generate TGTs for your Active Directory Domain. The same rules and restrictions used for RODCs apply to the Azure AD Kerberos Server object.

More details on how Azure AD Kerberos enables access to on-premises resources are available in our documentation on [enabling passwordless security key sign-in to on-premises resources](/azure/active-directory/authentication/howto-authentication-passwordless-security-key-on-premises). There is also additional information on how this works with Windows Hello for Business cloud trust in the [Windows Hello for Business authentication technical deep dive](hello-how-it-works-authentication.md#hybrid-azure-ad-join-authentication-using-azure-ad-kerberos-cloud-trust).

## Prerequisites

| Requirement | Notes |
| --- | --- |
| Multi-factor Authentication | This requirement can be met using [Azure AD Multi-Factor Authentication](/azure/active-directory/authentication/howto-mfa-getstarted.md), multi-factor authentication provided through AD FS, or a comparable solution. |
| Windows 10 version 21H2 or Windows 11 and later | There is no Windows version support difference between Azure AD joined and Hybrid Azure AD joined devices. |
| Windows Server 2016 or later Domain Controllers | These should be fully patched to support updates needed for Azure AD Kerberos.|
| Azure AD Connect version 1.4.32.0 or later | This version packages the tools for setting up Azure AD Kerberos. Alternatively the required tools can be installed from powershell gallery. |
| Device management | Windows Hello for Business cloud trust can be managed with group policy or through Microsoft Intune. |

### Unsupported Scenarios

The following scenarios are not supported using Windows Hello for Business cloud trust.

-

## Deployment Instructions

Deploying Windows Hello for Business cloud trust consists of two steps:

1. Azure AD Kerberos in your hybrid environment. 
1. Configure Windows Hello for Business policy and deploy it to devices you wish to use Windows Hello for Business.

### Deploy Azure AD Kerberos

If you have already deployed [on-premises SSO for passwordless security key sign-in](/azure/active-directory/authentication/howto-authentication-passwordless-security-key-on-premises), then you have already deployed Azure AD Kerberos in your hybrid environment. You do not need to re-deploy or change your existing Azure AD Kerberos deployment to support Windows Hello for Business and you can skip this section.

If you have 

### Configure Windows Hello for Business

## Windows Hello Provisioning

DSREG CMD and Event logs