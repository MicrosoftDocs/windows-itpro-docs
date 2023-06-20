---
title: Windows Hello for Business cloud Kerberos trust deployment
description: Learn how to deploy Windows Hello for Business in a cloud Kerberos trust scenario.
ms.date: 02/24/2023
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10, version 21H2 and later</a>
ms.topic: tutorial
---
# Cloud Kerberos trust deployment

[!INCLUDE [hello-hybrid-key-trust](./includes/hello-hybrid-cloudkerb-trust.md)]

Windows Hello for Business replaces password sign-in with strong authentication, using an asymmetric key pair. This deployment guide provides the information to deploy Windows Hello for Business in a *cloud Kerberos trust* scenario.

## Introduction to cloud Kerberos trust

The goal of Windows Hello for Business cloud Kerberos trust is to bring the simplified deployment experience of [*passwordless security key sign-in*][AZ-1] to Windows Hello for Business, and it can be used for new or existing Windows Hello for Business deployments.

Windows Hello for Business cloud Kerberos trust uses *Azure AD Kerberos*, which enables a simpler deployment when compared to the *key trust model*:

- No need to deploy a public key infrastructure (PKI) or to change an existing PKI
- No need to synchronize public keys between Azure AD and Active Directory for users to access on-premises resources. There isn't any delay between the user's Windows Hello for Business provisioning, and being able to authenticate to Active Directory
- [Passwordless security key sign-in][AZ-1] can be deployed with minimal extra setup

> [!NOTE]
> Windows Hello for Business cloud Kerberos trust is the recommended deployment model when compared to the *key trust model*. It is also the preferred deployment model if you do not need to support certificate authentication scenarios.

## Azure AD Kerberos and cloud Kerberos trust authentication

*Key trust* and *certificate trust* use certificate authentication-based Kerberos for requesting kerberos ticket-granting-tickets (TGTs) for on-premises authentication. This type of authentication requires a PKI for DC certificates, and requires end-user certificates for certificate trust.

Cloud Kerberos trust uses Azure AD Kerberos, which doesn't require a PKI to request TGTs.\
With Azure AD Kerberos, Azure AD can issue TGTs for one or more AD domains. Windows can request a TGT from Azure AD when authenticating with Windows Hello for Business, and use the returned TGT for sign-in or to access AD-based resources. The on-premises domain controllers are still responsible for Kerberos service tickets and authorization.

When Azure AD Kerberos is enabled in an Active Directory domain, an *AzureADKerberos* computer object is created in the domain. This object:

- Appears as a Read Only Domain Controller (RODC) object, but isn't associated with any physical servers
- Is only used by Azure AD to generate TGTs for the Active Directory domain

  > [!NOTE]
  > Similar rules and restrictions used for RODCs apply to the AzureADKerberos computer object. For example, users that are direct or indirect members of priviliged built-in security groups won't be able to use cloud Kerberos trust.

:::image type="content" source="images/azuread-kerberos-object.png" alt-text="Active Directory Users and Computers console, showing the computer object representing the Azure AD Kerberos server ":::

For more information about how Azure AD Kerberos enables access to on-premises resources, see [enabling passwordless security key sign-in to on-premises resources][AZ-1].\
For more information about how Azure AD Kerberos works with Windows Hello for Business cloud Kerberos trust, see [Windows Hello for Business authentication technical deep dive](hello-how-it-works-authentication.md#hybrid-azure-ad-join-authentication-using-cloud-kerberos-trust).

> [!IMPORTANT]
> When implementing the cloud Kerberos trust deployment model, you *must* ensure that you have an adequate number of *read-write domain controllers* in each Active Directory site where users will be authenticating with Windows Hello for Business. For more information, see [Capacity planning for Active Directory][SERV-1].

## Prerequisites

| Requirement | Notes |
| --- | --- |
| Multi-factor Authentication | This requirement can be met using [Azure AD multi-factor authentication](/azure/active-directory/authentication/howto-mfa-getstarted), multi-factor authentication provided through AD FS, or a comparable solution. |
| Windows 10, version 21H2 or Windows 11 and later | If you're using Windows 10 21H2, KB5010415 must be installed. If you're using Windows 11 21H2, KB5010414 must be installed. There's no Windows version support difference between Azure AD joined and Hybrid Azure AD-joined devices. |
| Windows Server 2016 or later Domain Controllers | If you're using Windows Server 2016, [KB3534307][SUP-1] must be installed. If you're using Server 2019, [KB4534321][SUP-2] must be installed. |
| Azure AD Kerberos PowerShell module | This module is used for enabling and managing Azure AD Kerberos. It's available through the [PowerShell Gallery](https://www.powershellgallery.com/packages/AzureADHybridAuthenticationManagement).|
| Device management | Windows Hello for Business cloud Kerberos trust can be managed with group policy or through mobile device management (MDM) policy. This feature is disabled by default and must be enabled using policy. |

### Unsupported scenarios

The following scenarios aren't supported using Windows Hello for Business cloud Kerberos trust:

- On-premises only deployments
- RDP/VDI scenarios using supplied credentials (RDP/VDI can be used with Remote Credential Guard or if a certificate is enrolled into the Windows Hello for Business container)
- Using cloud Kerberos trust for "Run as"
- Signing in with cloud Kerberos trust on a Hybrid Azure AD joined device without previously signing in with DC connectivity

> [!NOTE]
> The default *Password Replication Policy* configured on the AzureADKerberos computer object doesn't allow to sign high privilege accounts on to on-premises resources with cloud Kerberos trust or FIDO2 security keys.
>
> Due to possible attack vectors from Azure AD to Active Directory, it **isn't recommended** to unblock these accounts by relaxing the Password Replication Policy of the computer object `CN=AzureADKerberos,OU=Domain Controllers,<domain-DN>`.

## Next steps

Once the prerequisites are met, deploying Windows Hello for Business with a cloud Kerberos trust model consists of the following steps:

> [!div class="checklist"]
> * Deploy Azure AD Kerberos
> * Configure Windows Hello for Business settings
> * Provision Windows Hello for Business on Windows clients

> [!div class="nextstepaction"]
> [Next: configure and provision Windows Hello for Business >](hello-hybrid-cloud-kerberos-trust-provision.md)

<!--Links-->

[AZ-1]: /azure/active-directory/authentication/howto-authentication-passwordless-security-key-on-premises

[SERV-1]: /windows-server/administration/performance-tuning/role/active-directory-server/capacity-planning-for-active-directory-domain-services

[SUP-1]: https://support.microsoft.com/topic/january-23-2020-kb4534307-os-build-14393-3474-b181594e-2c6a-14ea-e75b-678efea9d27e
[SUP-2]: https://support.microsoft.com/topic/january-23-2020-kb4534321-os-build-17763-1012-023e84c3-f9aa-3b55-8aff-d512911c459f
