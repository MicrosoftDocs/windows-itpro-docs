---
title: Plan a Windows Hello for Business Deployment
description: Learn about the role of each component within Windows Hello for Business and how certain deployment decisions affect other aspects of your infrastructure.
ms.date: 05/16/2024
ms.topic: concept-article
---

# Plan a Windows Hello for Business deployment

This planning guide helps you understand the different topologies, architectures, and components that encompass a Windows Hello for Business infrastructure.

This guide explains the role of each component within Windows Hello for Business and how certain deployment decisions affect other aspects of the infrastructure.

> [!TIP]
> If you have a Microsoft Entra ID tenant, you can use our online, interactive Passwordless Wizard which walks through the same choices instead of using our manual guide below. The Passwordless Wizard is available in the [Microsoft 365 admin center](https://admin.microsoft.com/AdminPortal/Home#/modernonboarding/passwordlesssetup).

## Using this guide

There are many options available for deploying Windows Hello for Business, ensuring compatibility with various organizational infrastructures. While the deployment process may appear complex, most organizations will find that they have already implemented the necessary infrastructure. It is important to note that Windows Hello for Business is a distributed system and requires proper planning across multiple teams within an organization.

This guide aims to simplify the deployment process by helping you make informed decisions about each aspect of your Windows Hello for Business deployment. It provides information on the options available and assists in selecting the deployment approach that best suits your environment.

### How to proceed

Read this document and record your decisions. When finished, you should have all the necessary information to evaluate the available options and to determine requirements for your Windows Hello for Business deployment.

There are seven main areas to consider when planning a Windows Hello for Business deployment:

> [!div class="checklist"]
>
> - [Deployment options](#deployment-options)
> - [Public Key Infrastructure (PKI) requirements](#pki-requirements)
> - [Authentication to Microsoft Entra ID requirements](#authentication-to-microsoft-entra-id)
> - [Device configuration options](#device-configuration-options)
> - [Licensing for cloud services requirements](#licensing-for-cloud-services-requirements)
> - [Operating System requirements](#operating-system-requirements)
> - [Prepare users](#prepare-users)

## Deployment options

The goal of Windows Hello for Business is to enable deployments for all organizations of any size or scenario. To provide this type of granular deployment, Windows Hello for Business offers a diverse choice of deployment options.

### Deployment models

It's fundamentally important to understand which deployment model to use for a successful deployment. Some aspects of the deployment might have already been decided for you based on your current infrastructure.

There are three deployment models from which you can choose:

|  | Deployment model | Description |
|--|--|--|
| **🔲** | **Cloud-only** | For organizations that only have cloud identities and don't access on-premises resources. These organizations typically join their devices to the cloud and exclusively use resources in the cloud such as SharePoint Online, OneDrive, and others. Also, since the users don't use on-premises resources, they don't need certificates for things like VPN because everything they need is hosted in cloud services. |
| **🔲** | **Hybrid** | For organizations that have identities synchronized from Active Directory to Microsoft Entra ID. These organizations use applications registered in Microsoft Entra ID, and want a single sign-on (SSO) experience for both on-premises and Microsoft Entra resources. |
| **🔲** | **On-premises** | For organizations that don't have cloud identities or use applications hosted in Microsoft Entra ID. These organizations use on-premises applications, integrated in Active Directory, and want an SSO user experiences when accessing them. |

>[!NOTE]
>
>- Main use case of On-Premises deployment is for "Enhanced Security Administrative Environments" also known as "Red Forests"
>- Migration from on-premise to hybrid deployment requires redeployment

### Trust types

A deployment's trust type defines how Windows Hello for Business clients **authenticate to Active Directory**. The trust type doesn't affect authentication to Microsoft Entra ID. For this reason, the trust type isn't applicable to a cloud-only deployment model.

Windows Hello for Business authentication to Microsoft Entra ID always uses the key, not a certificate (excluding smart card authentication in a federated environment).

The trust type determines whether you issue authentication certificates to your users. One trust model isn't more secure than the other.

The deployment of certificates to users and Domain Controllers requires more configuration and infrastructure, which could also be a factor to consider in your decision. More infrastructure needed for certificate-trust deployments includes a certificate registration authority. In a federated environment, you must activate the Device Writeback option in Microsoft Entra Connect.

There are three trust types from which you can choose:

|| Trust type | Description |
|--|--|--|
| **🔲**| **Cloud Kerberos**| Users authenticate to Active Directory by requesting a TGT from Microsoft Entra ID, using Microsoft Entra Kerberos. The on-premises domain controllers are still responsible for Kerberos service tickets and authorization. Cloud Kerberos trust uses the same infrastructure required for FIDO2 security key sign-in, and it can be used for new or existing Windows Hello for Business deployments. |
| **🔲**| **Key**| Users authenticate to the on-premises Active Directory using a device-bound key (hardware or software) created during the Windows Hello provisioning experience. It requires to distribute certificates to domain controllers. |
| **🔲**| **Certificate**| The certificate trust type issues authentication certificates to users. Users authenticate using a certificate requested using a device-bound key (hardware or software) created during the Windows Hello provisioning experience. |

*Key trust* and *certificate trust* use certificate authentication-based Kerberos when requesting kerberos ticket-granting-tickets (TGTs) for on-premises authentication. This type of authentication requires a PKI for DC certificates, and requires end-user certificates for certificate trust.

The goal of Windows Hello for Business cloud Kerberos trust is to provide a simpler deployment experience, when compared to the other trust types:

- No need to deploy a public key infrastructure (PKI) or to change an existing PKI
- No need to synchronize public keys between Microsoft Entra ID and Active Directory for users to access on-premises resources. There isn't any delay between the user's Windows Hello for Business provisioning, and being able to authenticate to Active Directory
- [FIDO2 security key sign-in][ENTRA-1] can be deployed with minimal extra setup

> [!TIP]
> Windows Hello for Business cloud Kerberos trust is the recommended deployment model when compared to the *key trust model*. It is also the preferred deployment model if you do not need to support certificate authentication scenarios.

Cloud Kerberos trust requires the deployment of Microsoft Entra Kerberos. For more information about how Microsoft Entra Kerberos enables access to on-premises resources, see [enabling passwordless security key sign-in to on-premises resources][ENTRA-1].

## PKI requirements

Cloud Kerberos trust is the only hybrid deployment option that doesn't require the deployment of any certificates. The other hybrid and on-premises models depend on an enterprise PKI as a trust anchor for authentication:

- Domain controllers for hybrid and on-premises deployments need a certificate for Windows devices to trust the domain controller as legitimate
- Deployments using the certificate trust type require an enterprise PKI and a certificate registration authority (CRA) to issue authentication certificates to users. AD FS is used as a CRA
- Hybrid deployments might need to issue VPN certificates to users to enable connectivity on-premises resources

|  | Deployment model | Trust type | PKI required? |
|--|--|--|--|
| **🔲** | **Cloud-only** | n/a | no |
| **🔲** | **Hybrid** | Cloud Kerberos | no |
| **🔲** | **Hybrid** | Key | yes |
| **🔲** | **Hybrid** | Certificate | yes |
| **🔲** | **On-premises** | Key | yes |
| **🔲** | **On-premises** | Certificate | yes |

## Authentication to Microsoft Entra ID

Users can authenticate to Microsoft Entra ID using federated authentication or cloud (nonfederated) authentication. Requirements vary based on trust type:

|  | Deployment model | Trust type | Authentication to Microsoft Entra ID | Requirements |
|--|--|--|--|--|
| **🔲** | **Cloud-only** | n/a | Cloud authentication | n/a |
| **🔲** | **Cloud-only** | n/a | Federated authentication | Non-Microsoft federation service |
| **🔲** | **Hybrid** | Cloud Kerberos trust | Cloud authentication | Password hash sync (PHS) or Pass-through authentication (PTA) |
| **🔲** | **Hybrid** | Cloud Kerberos trust | Federated authentication | AD FS or non-Microsoft federation service |
| **🔲** | **Hybrid** | Key trust | Cloud authentication | Password hash sync (PHS) or Pass-through authentication (PTA) |
| **🔲** | **Hybrid** | Key trust | Federated authentication | AD FS or non-Microsoft federation service |
| **🔲** | **Hybrid** | Certificate trust | Federated authentication | This deployment model doesn't support PTA or PHS. Active Directory must be federated with Microsoft Entra ID using AD FS|

To learn more:

- [Federation with Microsoft Entra ID][ENTRA-10]
- [Password hash synchronization (PHS)][ENTRA-6]
- [Pass-through authentication (PTA)][ENTRA-7]

### Device registration

For on-premises deployments, the server running the Active Directory Federation Services (AD FS) role is responsible for device registration. For cloud-only and hybrid deployments, devices must register in Microsoft Entra ID.

| Deployment model | Supported join type | Device registration service provider |
|-|-|-|
| **Cloud-only** |Microsoft Entra joined<br>Microsoft Entra registered|Microsoft Entra ID |
| **Hybrid** |Microsoft Entra joined<br>Microsoft Entra hybrid joined<br>Microsoft Entra registered|Microsoft Entra ID|
| **On-premises** | Active Directory domain joined | AD FS |

> [!IMPORTANT]
> For *Microsoft Entra hybrid joined* guidance, review [Plan your Microsoft Entra hybrid join implementation][ENTRA-5].

### Multifactor authentication

The goal of Windows Hello for Business is to move organizations away from passwords by providing them with a *strong credential* that enables easy two-factor authentication. The built-in provisioning experience accepts the user's weak credentials (username and password) as the first factor authentication. However, the user must provide a second factor of authentication before Windows provisions a strong credential:

- For cloud-only and hybrid deployments, there are different choices for multifactor authentication, including [Microsoft Entra MFA][ENTRA-1]
- On-premises deployments must use a multifactor option that can integrate as an AD FS multifactor adapter. Organizations can choose from non-Microsoft options that offer an AD FS MFA adapter. For more information, see [Microsoft and non-Microsoft additional authentication methods][SER-2]

> [!IMPORTANT]
> Beginning July 1, 2019, Microsoft doesn't offer MFA Server for new deployments. New deployments that require multifactor authentication should use cloud-based Microsoft Entra multifactor authentication.
>
>Beginning September 30, 2024, Azure Multi-Factor Authentication Server deployments will no longer service MFA requests. To ensure uninterrupted authentication services and to remain in a supported state, organizations should [migrate their users' authentication data](/entra/identity/authentication/how-to-migrate-mfa-server-to-mfa-user-authentication) to the cloud-based Azure MFA.

|| Deployment model | MFA options |
|--|--|--|
| **🔲** | **Cloud-only** | Microsoft Entra MFA |
| **🔲** | **Cloud-only** | Non-Microsoft MFA, via external authentication method in Microsoft Entra ID or federation |
| **🔲** | **Hybrid** | Microsoft Entra MFA |
| **🔲** | **Hybrid** | Non-Microsoft MFA, via external authentication method in Microsoft Entra ID or federation|
| **🔲** | **On-premises** | AD FS MFA adapter |

For more information:

- [Configure Microsoft Entra multifactor authentication settings][ENTRA-4]
- [Manage an external authentication method in Microsoft Entra ID][ENTRA-11]

#### MFA and federated authentication

It's possible for federated domains to configure the *FederatedIdpMfaBehavior* flag. The flag instructs Microsoft Entra ID to accept, enforce, or reject the MFA challenge from the federated IdP. For more information, see [federatedIdpMfaBehavior values](/graph/api/resources/internaldomainfederation#federatedidpmfabehavior-values). To check this setting, use the following PowerShell command:

```powershell
Connect-MgGraph
$DomainId = "<your federated domain name>"
Get-MgDomainFederationConfiguration -DomainId $DomainId |fl
```

To reject the MFA claim from the federated IdP, use the following command. This change impacts all MFA scenarios for the federated domain:

```powershell
Update-MgDomainFederationConfiguration -DomainId $DomainId -FederatedIdpMfaBehavior rejectMfaByFederatedIdp
```

If you configure the flag with a value of either `acceptIfMfaDoneByFederatedIdp` (default) or `enforceMfaByFederatedIdp`, you must verify that your federated IDP is correctly configured and working with the MFA adapter and provider used by your IdP.

### Key registration

The built-in Windows Hello for Business provisioning experience creates a device-bound asymmetric key pair as the user's credentials. The private key is protected by the device's security modules. The credential is a *user key*, not a *device key*. The provisioning experience registers the user's public key with the identity provider:

| Deployment model | Key registration service provider |
|-|-|
| **Cloud-only** | Microsoft Entra ID |
| **Hybrid** | Microsoft Entra ID |
| **On-premises** | AD FS |

### Directory synchronization

Hybrid and on-premises deployments use directory synchronization, however, each for a different purpose:

- Hybrid deployments use [Microsoft Entra Connect Sync][ENTRA-3] to synchronize Active Directory identities (users and devices) or credentials between itself and Microsoft Entra ID. During the Window Hello for Business provisioning process, users register the public portion of their Windows Hello for Business credential with Microsoft Entra ID. Microsoft Entra Connect Sync synchronizes the Windows Hello for Business public key to Active Directory. This synchronization enables SSO to Microsoft Entra ID and its federated components.
    > [!IMPORTANT]
    > Windows Hello for Business is tied between a user and a device. Both the user and device object must be synchronized between Microsoft Entra ID and Active Directory.
- On-premises deployments use directory synchronization to import users from Active Directory to the Azure MFA server, which sends data to the MFA cloud service to perform the verification

| Deployment model | Directory sync options |
|-|-|
| **Cloud-only** | n/a |
| **Hybrid** | Microsoft Entra Connect Sync|
| **On-premises** | Azure MFA server |

> [!IMPORTANT]
>Beginning September 30, 2024, Azure Multi-Factor Authentication Server deployments will no longer service MFA requests. To ensure uninterrupted authentication services and to remain in a supported state, organizations should [migrate their users' authentication data](/entra/identity/authentication/how-to-migrate-mfa-server-to-mfa-user-authentication) to the cloud-based Azure MFA.

## Device configuration options

Windows Hello for Business provides a rich set of granular policy settings. There are two main options to configure Windows Hello for Business: configuration service provider (CSP) and group policy (GPO).

- The CSP option is ideal for devices that are managed through a Mobile Device Management (MDM) solution, like Microsoft Intune. CSPs can also be configured with [provisioning packages][WIN-1]
- GPO can be used to configure domain joined devices and where devices aren't managed via MDM

|| Deployment model | Device configuration options|
|--|--|--|
| **🔲** | **Cloud-only** | CSP |
| **🔲** | **Cloud-only** | GPO (local) |
| **🔲** | **Hybrid** | CSP |
| **🔲** | **Hybrid** | GPO (Active Directory or local) |
| **🔲** | **On-premises** | CSP |
| **🔲** | **On-premises** | GPO (Active Directory or local) |

## Licensing for cloud services requirements

Here are some considerations regarding licensing requirements for cloud services:

- Windows Hello for Business doesn't require a Microsoft Entra ID P1 or P2 subscription. However, some dependencies, such as [MDM automatic enrollment][MEM-1] and [Conditional Access][ENTRA-8] do
  - Devices managed via MDM don't require a Microsoft Entra ID P1 or P2 subscription. By forgoing the subscription, users must manually enroll devices in the MDM solution, such as Microsoft Intune or a supported non-Microsoft MDM
- You can deploy Windows Hello for Business using the Microsoft Entra ID Free tier. All Microsoft Entra ID Free accounts can use Microsoft Entra multifactor authentication for the Windows passwordless features
  - Some Microsoft Entra multifactor authentication features require a license. For more information, see [Features and licenses for Microsoft Entra multifactor authentication][ENTRA-9].
- Enrolling a certificate using the AD FS registration authority requires devices to authenticate to the AD FS server, which requires device write-back, a Microsoft Entra ID P1 or P2 feature

|| Deployment model | Trust type | Cloud services licenses (minimum)|
|--|--|--|--|
| **🔲** | **Cloud-only** | n/a | not required |
| **🔲** | **Hybrid** | Cloud Kerberos | not required |
| **🔲** | **Hybrid** | Key| not required |
| **🔲** | **Hybrid** | Certificate | Microsoft Entra ID P1 |
| **🔲** | **On-premises** | Key | Azure MFA, if used as MFA solution |
| **🔲** | **On-premises** | Certificate | Azure MFA, if used as MFA solution |

> [!IMPORTANT]
>Beginning September 30, 2024, Azure Multi-Factor Authentication Server deployments will no longer service MFA requests. To ensure uninterrupted authentication services and to remain in a supported state, organizations should [migrate their users' authentication data](/entra/identity/authentication/how-to-migrate-mfa-server-to-mfa-user-authentication) to the cloud-based Azure MFA.

## Operating System requirements

### Windows requirements

All supported Windows versions can be used with Windows Hello for Business. However, cloud Kerberos trust requires minimum versions:

|| Deployment model | Trust type | Windows version|
|--|--|--|--|
| **🔲** | **Cloud-only** | n/a | All supported versions |
| **🔲** | **Hybrid** | Cloud Kerberos | - Windows 10 21H2, with [KB5010415][KB-1] and later<br>- Windows 11 21H2, with [KB5010414][KB-2] and later |
| **🔲** | **Hybrid** | Key | All supported versions |
| **🔲** | **Hybrid** | Certificate | All supported versions |
| **🔲** | **On-premises** | Key| All supported versions |
| **🔲** | **On-premises** | Certificate | All supported versions |

### Windows Server requirements

All supported Windows Server versions can be used with Windows Hello for Business as Domain Controller. However, cloud Kerberos trust requires minimum versions:

|  | Deployment model | Trust type | Domain Controller OS version |
|--|--|--|--|
| **🔲** | **Cloud-only** | n/a | All supported versions |
| **🔲** | **Hybrid** | Cloud Kerberos | - Windows Server 2016, with [KB3534307][KB-3] and later<br>- Windows Server 2019, with [KB4534321][KB-4] and later<br>- Windows Server 2022 |
| **🔲** | **Hybrid** | Key | All supported versions |
| **🔲** | **Hybrid** | Certificate | All supported versions |
| **🔲** | **On-premises** | Key | All supported versions |
| **🔲** | **On-premises** | Certificate | All supported versions |

## Prepare users

When you are ready to enable Windows Hello for Business in your organization, make sure to prepare the users by explaining how to provision and use Windows Hello.

To learn more, see [Prepare users](prepare-users.md).

## Next steps

Now that you've read about the different deployment options and requirements, you can choose the implementation that best suits your organization.

> [!div class="op_multi_selector" title1="Deployment model:" title2="Trust type:"]
> To learn more about the deployment process, chose a deployment model and trust type from the following drop-down lists:
>
> - [(cloud-only|n/a)](cloud-only.md)
> - [(hybrid | cloud Kerberos trust)](hybrid-cloud-kerberos-trust.md)
> - [(hybrid | key trust)](hybrid-key-trust.md)
> - [(hybrid | certificate trust)](hybrid-cert-trust.md)
> - [(on-premises | key trust)](on-premises-key-trust.md)
> - [(on-premises | certificate trust)](on-premises-cert-trust.md)

<!--links-->

[ENTRA-1]: /entra/identity/authentication/concept-mfa-howitworks
[ENTRA-3]: /entra/identity/hybrid/connect/how-to-connect-sync-whatis
[ENTRA-4]: /entra/identity/authentication/howto-mfa-mfasettings
[ENTRA-5]: /entra/identity/devices/hybrid-join-plan
[ENTRA-6]: /entra/identity/hybrid/connect/whatis-phs
[ENTRA-7]: /entra/identity/hybrid/connect/how-to-connect-pta
[ENTRA-8]: /entra/identity/conditional-access/overview
[ENTRA-9]: /entra/identity/authentication/concept-mfa-licensing
[ENTRA-10]: /entra/identity/hybrid/connect/whatis-fed
[ENTRA-11]: /entra/identity/authentication/how-to-authentication-external-method-manage

[SER-2]: /windows-server/identity/ad-fs/operations/configure-additional-authentication-methods-for-ad-fs#microsoft-and-third-party-additional-authentication-methods

[KB-1]: https://support.microsoft.com/topic/5010415
[KB-2]: https://support.microsoft.com/topic/5010414
[KB-3]: https://support.microsoft.com/topic/4534307
[KB-4]: https://support.microsoft.com/topic/4534321
[MEM-1]: /mem/intune/enrollment/quickstart-setup-auto-enrollment
[WIN-1]: /windows/configuration/provisioning-packages/how-it-pros-can-use-configuration-service-providers#csps-in-windows-configuration-designer
