---
title: Validate and Deploy MFA for Windows Hello for Business with certificate trust
description: How to Validate and Deploy Multi-factor Authentication (MFA) Services for Windows Hello for Business with certificate trust
ms.prod: windows-client
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 08/19/2018
author: paolomatarazzo
ms.author: paoloma
ms.reviewer: prsriva
manager: aaroncz
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>On-premises deployments</b>
  - ✅ <b>Certificate trust</b>
ms.technology: itpro-security
---
# Validate and Deploy Multi-Factor Authentication feature

Windows Hello for Business requires all users perform multi-factor authentication prior to creating and registering a Windows Hello for Business credential. On-premises deployments can use certificates, third-party authentication providers for AD FS, or a custom authentication provider for AD FS as an on-premises MFA option.

For information on available third-party authentication methods, see [Configure Additional Authentication Methods for AD FS](/windows-server/identity/ad-fs/operations/configure-additional-authentication-methods-for-ad-fs). For creating a custom authentication method, see [Build a Custom Authentication Method for AD FS in Windows Server](/windows-server/identity/ad-fs/development/ad-fs-build-custom-auth-method)

Follow the integration and deployment guide for the authentication provider you select to integrate and deploy it to AD FS. Make sure that the authentication provider is selected as a multi-factor authentication option in the AD FS authentication policy. For information on configuring AD FS authentication policies, see [Configure Authentication Policies](/windows-server/identity/ad-fs/operations/configure-authentication-policies).

## Follow the Windows Hello for Business on premises certificate trust deployment guide
1. [Validate Active Directory prerequisites](hello-cert-trust-validate-ad-prereq.md)
2. [Validate and Configure Public Key Infrastructure](hello-cert-trust-validate-pki.md)
3. [Prepare and Deploy Windows Server 2016 Active Directory Federation Services](hello-cert-trust-adfs.md)
4. Validate and Deploy Multi-factor Authentication Services (MFA) (*You're here*)
5. [Configure Windows Hello for Business Policy settings](hello-cert-trust-policy-settings.md)