---
title: Windows Hello for Business hybrid key trust deployment
description: Learn how to deploy Windows Hello for Business in a hybrid key trust scenario.
ms.date: 12/20/2022
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10 and later</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016 and later</a>
ms.topic: how-to
---
# Hybrid key trust deployment

[!INCLUDE [hello-hybrid-key-trust](../../includes/hello-hybrid-key-trust.md)]

Windows Hello for Business replaces password sign-in with strong authentication, using an asymmetric key pair. This deployment guide provides the information to deploy Windows Hello for Business in a hybrid key trust trust scenario.

Hybrid environments are distributed systems that enable organizations to use on-premises and Azure AD-based identities and resources. Windows Hello for Business uses the existing distributed system as a foundation on which organizations can provide two-factor authentication and single sign-on to modern resources.

> [!IMPORTANT]
> Windows Hello for Business *cloud Kerberos trust* is the recommended deployment model when compared to the *key trust model*. For more information see [cloud Kerberos trust deployment](hello-hybrid-cloud-kerberos-trust.md).

## Prerequisites

Review the following section to ensure that you have the required prerequisites for a hybrid key trust deployment.

### Directories and directory synchronization

Hybrid Windows Hello for Business needs two directories:

- an on-premises Active Directory
- an Azure Active Directory tenant

The two directories must be synchronized with [Azure AD Connect Sync][AZ-1], which synchronizes user accounts from the on-premises Active Directory to Azure AD.\
During the Window Hello for Business provisioning process, users register the public portion of their Windows Hello for Business credential with Azure AD. *Azure AD Connect Sync* synchronizes the Windows Hello for Business public key to Active Directory.

> [!NOTE]
> Windows Hello for Business Hybrid key trust is not supported if the users' on-premises UPN suffix cannot be added as a verified domain in Azure AD.

Ensure that you have [adequate Domain Controllers](/windows/security/identity-protection/hello-for-business/hello-adequate-domain-controllers) in each Active Directory site where users will be authenticating with Windows Hello for Business.

### Authentication to Azure AD

Authentication to Azure AD can be configured with or without federation:

- for non-federated environments, you must deploy [password hash synchronization](/azure/active-directory/hybrid/whatis-phs) or [Azure Active Directory Pass-through-Authentication](/azure/active-directory/connect/active-directory-aadconnect-pass-through-authentication)
- for federated environments, you can use Active Directory Federation Services (AD FS) or third-party federation services

### Device registration

The Windows client devices where Windows Hello for Business will be provisioned, must be registered in Azure AD. This ensures that only approved computers are used with that Azure AD tenant. You can *Azure AD join* or *hybrid Azure AD join* to register devices to Azure AD.\
For *hybrid Azure AD joined* devices, review the guidance on the [Plan your hybrid Azure Active Directory join implementation](/azure/active-directory/devices/hybrid-azuread-join-plan) page.

### Public Key Infrastructure

An enterprise PKI is required as *trust anchor* for authentication. Domain controllers require a certificate for Windows clients to trust them.

### Multi-factor authentication

The Windows Hello for Business provisioning process lets a user enroll in Windows Hello for Business using their user name and password as one factor, but requires a second factor of authentication.\
Hybrid deployments can use:

- [Azure AD Multi-Factor Authentication](/azure/multi-factor-authentication/multi-factor-authentication)
- A multi-factor authentication provided by AD FS, which includes an adapter model that enables third parties to integrate their MFA into AD FS

For more information how to configure Azure AD Multi-Factor Authentication, see [Configure Azure AD Multi-Factor Authentication settings](/azure/multi-factor-authentication/multi-factor-authentication-whats-next).\
For more information how to configure Active Directory Federation Services (AD FS) to provide additional multi-factor authentication, see [Configure Azure MFA as authentication provider with AD FS](/windows-server/identity/ad-fs/operations/configure-ad-fs-2016-and-azure-mfa).

### Device management

To configure Windows Hello for Business, devices can be configured through a mobile device management (MDM) solution like Intune, or via group policy.

## Deployment steps

Once the prerequisites are met, deploying Windows Hello for Business with a hybrid key trust model consists of the following steps:

- Configure and validate the PKI
- Configure Windows Hello for Business settings
- Provision Windows Hello for Business on Windows clients

> [!div class="nextstepaction"]
> [Next: configure and validate the Public Key Infrastructure >](hello-hybrid-key-trust-validate-pki.md)


<!--links-->
[AZ-1]: /azure/active-directory/hybrid/how-to-connect-sync-whatis
[AZ-4]: /azure/active-directory/devices/troubleshoot-device-dsregcmd
[AZ-5]: /azure/active-directory/connect/active-directory-aadconnectsync-feature-scheduler