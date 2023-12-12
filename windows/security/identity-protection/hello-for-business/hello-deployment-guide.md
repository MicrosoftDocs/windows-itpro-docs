---
title: Windows Hello for Business Deployment Overview
description: Use this deployment guide to successfully deploy Windows Hello for Business in an existing environment.
ms.date: 02/15/2022
ms.topic: overview
appliesto:
---

# Windows Hello for Business Deployment Overview

Windows Hello for Business is the springboard to a world without passwords. It replaces username and password sign-in to Windows with strong user authentication based on an asymmetric key pair.

This deployment overview is to guide you through deploying Windows Hello for Business. Your first step should be to use the Passwordless Wizard in the [Microsoft 365 admin center](https://admin.microsoft.com/AdminPortal/Home#/modernonboarding/passwordlesssetup) or the [Planning a Windows Hello for Business Deployment](hello-planning-guide.md) guide to determine the right deployment model for your organization.

Once you've chosen a deployment model, the deployment guide for that model will provide you with the information needed to successfully deploy Windows Hello for Business in your environment. Read the [Windows Hello for Business Deployment Prerequisite Overview](hello-identity-verification.md) for a summary of the prerequisites for each different Windows Hello for Business deployment model.

## Requirements

This guide assumes that baseline infrastructure exists which meets the requirements for your deployment. For either hybrid or on-premises deployments, it is expected that you have:

- A well-connected, working network
- Internet access
- Multi-factor Authentication is required during Windows Hello for Business provisioning
- Proper name resolution, both internal and external names
- Active Directory and an adequate number of domain controllers per site to support authentication
- Active Directory Certificate Services 2012 or later (Note: certificate services aren't needed for cloud Kerberos trust deployments)
- One or more workstation computers running Windows 10, version 1703 or later

If you're installing a server role for the first time, ensure the appropriate server operating system is installed, updated with the latest patches, and joined to the domain. This document provides guidance to install and configure the specific roles on that server.  

Don't begin your deployment until the hosting servers and infrastructure (not roles) identified in your prerequisite worksheet are configured and properly working.

## Deployment and trust models

Windows Hello for Business has three deployment models: Microsoft Entra cloud only, hybrid, and on-premises. Hybrid has three trust models: *Key Trust*, *Certificate Trust*, and *cloud Kerberos trust*. On-premises deployment models only support *Key Trust* and *Certificate Trust*.

Hybrid deployments are for enterprises that use Microsoft Entra ID. On-premises deployments are for enterprises who exclusively use on-premises Active Directory. Remember that the environments that use Microsoft Entra ID must use the hybrid deployment model for all domains in that forest.

The trust model determines how you want users to authenticate to the on-premises Active Directory:

- The key-trust model is for enterprises who don't want to issue end-entity certificates to their users and have an adequate number of 2016 domain controllers in each site to support authentication. This still requires Active Directory Certificate Services for domain controller certificates.
- The cloud-trust model is also for hybrid enterprises who don't want to issue end-entity certificates to their users and have an adequate number of 2016 domain controllers in each site to support authentication. This trust model is simpler to deploy than key trust and doesn't require Active Directory Certificate Services. We recommend using **cloud Kerberos trust** instead of **Key Trust** if the clients in your enterprise support it.
- The certificate-trust model is for enterprises that *do* want to issue end-entity certificates to their users and have the benefits of certificate expiration and renewal, similar to how smart cards work today.
- The certificate trust model also supports enterprises, which aren't ready to deploy Windows Server 2016 Domain Controllers.

> [!NOTE]
> RDP does not support authentication with Windows Hello for Business Key Trust or cloud Kerberos trust deployments as a supplied credential. RDP is only supported with certificate trust deployments as a supplied credential at this time. Windows Hello for Business Key Trust and cloud Kerberos trust can be used with [Remote Credential Guard](../remote-credential-guard.md).

Following are the various deployment guides and models included in this topic:

- [Microsoft Entra hybrid joined cloud Kerberos trust Deployment](hello-hybrid-cloud-kerberos-trust.md)
- [Microsoft Entra hybrid joined Key Trust Deployment](hello-hybrid-key-trust.md)
- [Microsoft Entra hybrid joined Certificate Trust Deployment](hello-hybrid-cert-trust.md)
- [Microsoft Entra join Single Sign-on Deployment Guides](hello-hybrid-aadj-sso.md)
- [On Premises Key Trust Deployment](hello-deployment-key-trust.md)
- [On Premises Certificate Trust Deployment](hello-deployment-cert-trust.md)

For Windows Hello for Business hybrid [certificate trust prerequisites](/windows/security/identity-protection/hello-for-business/hello-hybrid-cert-trust#directory-synchronization) and [key trust prerequisites](/windows/security/identity-protection/hello-for-business/hello-hybrid-key-trust#directory-synchronization) deployments, you'll need Microsoft Entra Connect to synchronize user accounts in the on-premises Active Directory with Microsoft Entra ID. For on-premises deployments, both key and certificate trust, use the Azure MFA server where the credentials aren't synchronized to Microsoft Entra ID. Learn how to [deploy Multifactor Authentication Services (MFA) for key trust](hello-key-trust-validate-deploy-mfa.md) and [for certificate trust](hello-cert-trust-validate-deploy-mfa.md) deployments.

## Provisioning

Windows Hello for Business provisioning begins immediately after the user has signed in, after the user profile is loaded, but before the user receives their desktop. Windows only launches the provisioning experience if all the prerequisite checks pass. You can determine the status of the prerequisite checks by viewing the **User Device Registration** in the **Event Viewer** under **Applications and Services Logs\Microsoft\Windows**.

> [!NOTE]
> You must allow access to the URL `account.microsoft.com` to initiate Windows Hello for Business provisioning. This URL launches the subsequent steps in the provisioning process and is required to successfully complete Windows Hello for Business provisioning. This URL doesn't require any authentication and as such, doesn't collect any user data.
