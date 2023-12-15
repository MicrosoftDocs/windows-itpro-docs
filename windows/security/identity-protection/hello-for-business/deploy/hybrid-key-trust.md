---
title: Windows Hello for Business hybrid key trust deployment
description: Learn how to deploy Windows Hello for Business in a hybrid key trust scenario.
ms.date: 12/28/2022
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2022</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2019</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016</a>
ms.topic: how-to
---
# Hybrid key trust deployment

[!INCLUDE [apply-to-hybrid-key-trust](includes/apply-to-hybrid-key-trust.md)]

Hybrid environments are distributed systems that enable organizations to use on-premises and Microsoft Entra protected resources. Windows Hello for Business uses the existing distributed system as a foundation on which organizations can provide two-factor authentication and single sign-on to modern resources.

This deployment guide describes how to deploy Windows Hello for Business in a hybrid key trust scenario.

> [!IMPORTANT]
> Windows Hello for Business *cloud Kerberos trust* is the recommended deployment model when compared to the *key trust model*. For more information, see [cloud Kerberos trust deployment](hybrid-clud-kerberos-trust.md).

It is recommended that you review the [Windows Hello for Business planning guide](hello-planning-guide.md) prior to using the deployment guide. The planning guide helps you make decisions by explaining the available options with each aspect of the deployment and explains the potential outcomes based on each of these decisions.

## Prerequisites

The following prerequisites must be met for a hybrid key trust deployment:

> [!div class="checklist"]
> * Directories and directory synchronization
> * Authentication to Microsoft Entra ID
> * Device registration
> * Public Key Infrastructure
> * Multifactor authentication
> * Device management

### Directories and directory synchronization

Hybrid Windows Hello for Business needs two directories:

- An on-premises Active Directory
- A Microsoft Entra tenant

The two directories must be synchronized with [Microsoft Entra Connect Sync][AZ-1], which synchronizes user accounts from the on-premises Active Directory to Microsoft Entra ID.\
During the Window Hello for Business provisioning process, users register the public portion of their Windows Hello for Business credential with Microsoft Entra ID. *Microsoft Entra Connect Sync* synchronizes the Windows Hello for Business public key to Active Directory.

> [!NOTE]
> Windows Hello for Business hybrid key trust is not supported if the users' on-premises UPN suffix cannot be added as a verified domain in Microsoft Entra ID.

<a name='authentication-to-azure-ad'></a>

### Authentication to Microsoft Entra ID

Authentication to Microsoft Entra ID can be configured with or without federation:

- [Password hash synchronization][AZ-6] or [Microsoft Entra pass-through authentication][AZ-7] is required for non-federated environments
- Active Directory Federation Services (AD FS) or a third-party federation service is required for federated environments

### Device registration

The Windows devices must be registered in Microsoft Entra ID. Devices can be registered in Microsoft Entra ID using either *Microsoft Entra join* or *Microsoft Entra hybrid join*.\
For *Microsoft Entra hybrid joined* devices, review the guidance on the [Plan your Microsoft Entra hybrid join implementation][AZ-8] page.

### Public Key Infrastructure

An enterprise PKI is required as *trust anchor* for authentication. Domain controllers require a certificate for Windows clients to trust them.

<a name='multi-factor-authentication'></a>

### Multifactor authentication

The Windows Hello for Business provisioning process lets a user enroll in Windows Hello for Business using their user name and password as one factor, but requires a second factor of authentication.\
Hybrid deployments can use:

- [Microsoft Entra multifactor authentication][AZ-2]
- A multifactor authentication provided by AD FS, which includes an adapter model that enables third parties to integrate their MFA into AD FS

For more information how to configure Microsoft Entra multifactor authentication, see [Configure Microsoft Entra multifactor authentication settings][AZ-3].\
For more information how to configure AD FS to provide multifactor authentication, see [Configure Azure MFA as authentication provider with AD FS][SER-1].

### Device management

To configure Windows Hello for Business, devices can be configured through a mobile device management (MDM) solution like Intune, or via group policy.

## Next steps

Once the prerequisites are met, deploying Windows Hello for Business with a hybrid key trust model consists of the following steps:

> [!div class="checklist"]
> * Configure and validate the PKI
> * Configure Windows Hello for Business settings
> * Provision Windows Hello for Business on Windows clients
> * Configure single sign-on (SSO) for Microsoft Entra joined devices

> [!div class="nextstepaction"]
> [Next: configure and validate the Public Key Infrastructure >](hybrid-key-trust-pki.md)

<!--links-->
[AZ-1]: /azure/active-directory/hybrid/how-to-connect-sync-whatis
[AZ-2]: /azure/multi-factor-authentication/multi-factor-authentication
[AZ-3]: /azure/multi-factor-authentication/multi-factor-authentication-whats-next
[AZ-4]: /azure/active-directory/devices/troubleshoot-device-dsregcmd
[AZ-5]: /azure/active-directory/connect/active-directory-aadconnectsync-feature-scheduler
[AZ-6]: /azure/active-directory/hybrid/whatis-phs
[AZ-7]: /azure/active-directory/connect/active-directory-aadconnect-pass-through-authentication
[AZ-8]: /azure/active-directory/devices/hybrid-azuread-join-plan

[SER-1]: /windows-server/identity/ad-fs/operations/configure-ad-fs-2016-and-azure-mfa
