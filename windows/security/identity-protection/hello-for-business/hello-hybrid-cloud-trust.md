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
- Windows 11

Windows Hello for Business replaces username and password sign-in to Windows with strong user authentication based on asymmetric key pair. The following deployment guide provides the information needed to successfully deploy Windows Hello for Business in a hybrid cloud trust scenario.

## Introduction to Cloud Trust

The goal of the Windows Hello for Business cloud trust deployment model is to bring the benefits of the simplified deployment experience of [on-premises SSO with passwordless security keys](/azure/active-directory/authentication/howto-authentication-passwordless-security-key-on-premises) to Windows Hello for Business. This deployment model can be used for new Windows Hello for Business deployments or existing deployments can move to this model using policy controls.

Windows Hello for Business cloud trust uses Azure Active Directory (AD) Kerberos to address pain points of the key trust deployment model:

- Windows Hello for Business cloud trust provides a simpler deployment experience because it does not require the deployment or modification of public key infrastructure.
- Deploying Windows Hello for Business cloud trust enables you to also deploy passwordless security keys with minimal additional setup.
- Cloud trust does not require syncing of public keys between Azure AD and on-premises domain controllers (DCs) before users can use their Windows Hello for Business credential on-premises.

Windows Hello for Business cloud trust is recommended instead of key trust if you meet the prerequisites to deploy cloud trust. Cloud trust is the preferred deployment model if you do not need to support certificate authentication scenarios.

## Azure Active Directory Kerberos and Cloud Trust Authentication

With Azure AD Kerberos, Azure AD can issue Kerberos ticket-granting-tickets (TGTs) for one or more of your AD domains. Using this functionality, Windows can request TGTs from Azure AD when authenticating using Windows Hello for Business and then use them for logon or to access traditional Active Directory-based resources. Kerberos Service Tickets and authorization continue to be controlled by your on-premises Active Directory DCs.

For more details on how Authentication with Windows Hello for Business Cloud Trust works see the [Windows Hello for Business Authentication technical deep dive](hello-how-it-works-authentication.md#hybrid-azure-ad-join-authentication-using-azure-ad-kerberos).

## Prerequisites

| Requirement | Notes |
| --- | --- |
| Multi-factor Authentication | This requirement can be met using [Azure AD Multi-Factor Authentication](howto-mfa-getstarted.md), multi-factor authentication provided through AD FS, or a comparable solution |
| Windows 10 version 21H2 or higher | There is no Windows version support difference between Azure AD joined and Hybrid Azure AD joined devices. |
| Windows Server 2016 or later Domain Controllers | These should be fully patched to support updates needed for Azure AD Kerberos. |
| Azure AD Connect version 1.4.32.0 or later | This version packages the tools for setting up Azure AD Kerberos |
| Device management | Windows Hello for Business cloud trust can be managed with group policy or through Microsoft Intune. |

### Unsupported Scenarios

## Deployment Instructions

Deploying Windows Hello for Business cloud trust consists of two steps. First, you will need to deploy Azure AD Kerberos in your hybrid environment. Second, you will need to configure Windows Hello for Business policy and deploy that devices you wish to use Windows Hello for Business.

If you have already deployed [on-premises SSO for passwordless security key sign-in](/azure/active-directory/authentication/howto-authentication-passwordless-security-key-on-premises), then you will have already deployed Azure AD Kerberos in your hybrid environment. You do not need to re-deploy or change your existing Azure AD Kerberos deployment to support Windows Hello for Business.

### Deploy Azure AD Kerberos



### Configure Windows Hello for Business

## Windows Hello Provisioning

DSREG CMD and Event logs