---
title: Plan a Windows Hello for Business Deployment
description: Learn about the role of each component within Windows Hello for Business and how certain deployment decisions affect other aspects of your infrastructure.
ms.date: 12/18/2023
ms.topic: overview
---

# Plan a Windows Hello for Business deployment

This planning guide helps you understand the different topologies, architectures, and components that encompass a Windows Hello for Business infrastructure.

This guide explains the role of each component within Windows Hello for Business and how certain deployment decisions affect other aspects of the infrastructure.

> [!TIP]
> If you have a Microsoft Entra ID tenant, you can use our online, interactive Passwordless Wizard which walks through the same choices instead of using our manual guide below. The Passwordless Wizard is available in the [Microsoft 365 admin center](https://admin.microsoft.com/AdminPortal/Home#/modernonboarding/passwordlesssetup).

## Using this guide

There are many options from which you can choose when deploying Windows Hello for Business. Providing multiple options ensures nearly every organization can deploy Windows Hello for Business. Providing many options makes the deployment appear complex. However, most organization will realize they've already implemented most of the infrastructure on which the Windows Hello for Business deployment depends. It's important to understand that Windows Hello for Business is a distributed system and does take proper planning across multiple teams within an organization.

This guide removes the appearance of complexity by helping you make decisions on each aspect of your Windows Hello for Business deployment and the options you need to consider. Using this guide also identifies the information needed to help you make decisions about the deployment that best suits your environment.

### How to proceed

Read this document and record your decisions. When finished, you should have all the necessary information to evaluate the available options and to determine requirements for your Windows Hello for Business deployment.

There are eight major categories to consider when planning a Windows Hello for Business deployment:

> [!div class="checklist"]
>
> - [Deployment options](#deployment-options)
> - [Public Key Infrastructure](#public-key-infrastructure-pki)
> - [Authentication](#authentication)
> - [Device configuration](#device-configuration)
> - [Licensing for cloud services](#licensing-for-cloud-services)
> - [Windows requirements](#windows-requirements)
> - [Windows Server requirements](#windows-server-requirements)
> - [Prepare users to use Windows Hello](#prepare-users-to-use-windows-hello)

## Deployment options

The goal of Windows Hello for Business is to enable deployments for all organizations of any size or scenario. To provide this type of granular deployment, Windows Hello for Business offers a diverse choice of deployment options.

### Deployment models

It's fundamentally important to understand which deployment model to use for a successful deployment. Some aspects of the deployment might have already been decided for you based on your current infrastructure.

There are three deployment models from which you can choose:

| :ballot_box_with_check: | Deployment model | Description |
|--|--|--|
| :black_square_button: | **Cloud-only** |For organizations that only have cloud identities and don't access on-premises resources. These organizations typically join their devices to the cloud and exclusively use resources in the cloud such as SharePoint Online, OneDrive, and others. Also, since the users don't use on-premises resources, they don't need certificates for things like VPN because everything they need is hosted in cloud services|
| :black_square_button: | **Hybrid** |For organizations that have identities synchronized from Active Directory to Microsoft Entra ID. These organizations use applications registered in Microsoft Entra ID, and want a single sign-on (SSO) experience for both on-premises and Microsoft Entra resources|
| :black_square_button: | **On-premises** |For organizations that don't have cloud identities or use applications hosted in Microsoft Entra ID. These organizations use on-premises applications, integrated in Active Directory, and want an SSO user experiences when accessing them.|

>[!NOTE]
>
>- Main use case of On-Premises deployment is for "Enhanced Security Administrative Environments" also known as "Red Forests"
>- Migration from on-premise to hybrid deployment requires redeployment

### Trust types

A deployment's trust type defines how Windows Hello for Business clients **authenticate to Active Directory**. For this reason, the trust type isn't applicable to a cloud-only deployment model.

The trust type determines whether you issue authentication certificates to your users. One trust model isn't more secure than the other.

The deployment of certificates to users and Domain Controllers requires more configuration and infrastructure, which could also be a factor to consider in your decision. More infrastructure needed for certificate-trust deployments includes a certificate registration authority. In a federated environment, you must activate the Device Writeback option in Microsoft Entra Connect.

There are three trust types from which you can choose:

| :ballot_box_with_check: | Trust type | Description |
|--|--|--|
| :black_square_button: | **Cloud Kerberos trust**|  Users authenticate to Active Directory by requesting a TGT from Microsoft Entra ID, using Microsoft Entra Kerberos. The on-premises domain controllers are still responsible for Kerberos service tickets and authorization. Cloud Kerberos trust uses the same infrastructure required for FIDO2 security key sign-in, and it can be used for new or existing Windows Hello for Business deployments. |
| :black_square_button: | **Key trust**| Users authenticate to the on-premises Active Directory using a device-bound key (hardware or software) created during the Windows Hello provisioning experience. It requires to distribute certificates to domain controllers. |
| :black_square_button: | **Certificate trust**| The certificate trust type issues authentication certificates to users. Users authenticate using a certificate requested using a device-bound key (hardware or software) created during the Windows Hello provisioning experience. |

*Key trust* and *certificate trust* use certificate authentication-based Kerberos when requesting kerberos ticket-granting-tickets (TGTs) for on-premises authentication. This type of authentication requires a PKI for DC certificates, and requires end-user certificates for certificate trust.

The goal of Windows Hello for Business cloud Kerberos trust is to provide a simpler deployment experience, when compared to the other trust types:

- No need to deploy a public key infrastructure (PKI) or to change an existing PKI
- No need to synchronize public keys between Microsoft Entra ID and Active Directory for users to access on-premises resources. There isn't any delay between the user's Windows Hello for Business provisioning, and being able to authenticate to Active Directory
- [FIDO2 security key sign-in][ENTRA-1] can be deployed with minimal extra setup

> [!TIP]
> Windows Hello for Business cloud Kerberos trust is the recommended deployment model when compared to the *key trust model*. It is also the preferred deployment model if you do not need to support certificate authentication scenarios.

Cloud Kerberos trust requires the deployment of Microsoft Entra Kerberos. For more information about how Microsoft Entra Kerberos enables access to on-premises resources, see [enabling passwordless security key sign-in to on-premises resources][ENTRA-1].

## Public Key Infrastructure (PKI)

Cloud Kerberos trust is the only hybrid deployment option that doesn't require the deployment of any certificates. The other hybrid and on-premises models depend on an enterprise PKI as a trust anchor for authentication:

- Domain controllers for hybrid and on-premises deployments need a certificate for Windows devices to trust the domain controller as legitimate
- Deployments using the certificate trust type require an enterprise PKI and a certificate registration authority (CRA) to issue authentication certificates to users. AD FS is used as a CRA
- Hybrid deployments might need to issue VPN certificates to users to enable connectivity on-premises resources

| Deployment model | PKI |
|-|-|
| **Cloud-only** | not required |
| **Hybrid** | :black_square_button: **Cloud Kerberos trust**: not required <br> :black_square_button: **Key trust**: required <br> :black_square_button: **Certificate trust**: required|
| **On-premises** | required |

## Authentication

For cloud-only and hybrid deployments, users and devices must authenticate to Microsoft Entra ID. Authentication to Microsoft Entra ID can use federation to enable single sign-on (SSO) from another identity provider.

For on-premises deployments, the identity provider is the on-premises server running the Active Directory Federation Services (AD FS) role.

Here's a list of requirements for federated and nonfederated deployments.

| Deployment model | Authentication options |
|--|--| 
| **Cloud-only** | :black_square_button: **Non-federated**<br> :black_square_button: **Federated**: federated authentication requires a third-party federation service |
| **Hybrid** | :black_square_button: **Non-federated**:<br>&emsp; :black_square_button: **Key trust** requires [password hash synchronization (PHS)][ENTRA-6] or [pass-through authentication (PTA)][ENTRA-7]<br><br> :black_square_button: **Federated**: federated authentication requires AD FS or a third-party federation service<br>&emsp; :black_square_button: **Certificate trust** doesn't support [PTA][ENTRA-7] or [PHS][ENTRA-6]. Active Directory must be federated with Microsoft Entra ID using AD FS. Additionally, you must configure your AD FS farm to support Microsoft Entra registered devices |
| **On-premises** | AD FS |

### Device registration

All devices included in the Windows Hello for Business deployment must go through a process called *device registration*. Device registration enables devices to authenticate to identity providers:

| Deployment model | Device registration IdP |
|-|-|
| **Cloud-only** |Microsoft Entra ID |
| **Hybrid** |Microsoft Entra ID|
| **On-premises** | AD FS |

For *Microsoft Entra hybrid joined* devices, review the guidance on the [Plan your Microsoft Entra hybrid join implementation][ENTRA-5] page.

### Key registration

The built-in Windows Hello for Business provisioning experience creates a device-bound asymmetric key pair as the user's credentials. The private key is protected by the device's security modules. The credential is a *user key*, not a *device key*. The provisioning experience registers the user's public key with the identity provider:

| Deployment model | Key registration IdP |
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

### Multifactor authentication

The goal of Windows Hello for Business is to move organizations away from passwords by providing them with a *strong credential* that enables easy two-factor authentication. The built-in provisioning experience accepts the user's weak credentials (username and password) as the first factor authentication. However, the user must provide a second factor of authentication before Windows provisions a strong credential:

- For cloud-only and hybrid deployments, there are different choices for multifactor authentication, including [Microsoft Entra MFA][ENTRA-1]
- On-premises deployments must use a multifactor option that can integrate as an AD FS multifactor adapter. Organizations can choose from third-party options that offer an AD FS MFA adapter. For more information, see [Microsoft and third-party additional authentication methods][SER-2]

> [!IMPORTANT]
> As of July 1, 2019, Microsoft doesn't offer MFA Server for new deployments. New deployments that require multifactor authentication should use cloud-based Microsoft Entra multifactor authentication. Existing deployment where the MFA Server was activated prior to July 1, 2019 can download the latest version, future updates, and generate activation credentials. For more information, see [Getting started with the Azure Multi-Factor Authentication Server][ENTRA-2].

| Deployment model | MFA options |
|-|-|
| **Cloud-only** | :black_square_button: Microsoft Entra MFA <br> :black_square_button: Third-party MFA via Microsoft Entra ID custom controls or federation|
| **Hybrid** | :black_square_button: Microsoft Entra MFA <br> :black_square_button: Third-party MFA via Microsoft Entra ID custom controls or federation <br><br> For more information how to configure Microsoft Entra multifactor authentication, see [Configure Microsoft Entra multifactor authentication settings][ENTRA-4].|
| **On-premises** | AD FS MFA adapter <br><br> For more information how to configure AD FS to provide multifactor authentication, see [Configure Azure MFA as authentication provider with AD FS][SER-1]. |

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

## Device configuration

Windows Hello for Business provides organizations with a rich set of granular policy settings with which they can use to configure their devices. There are two main options to configure Windows Hello for Business: configuration service provider (CSP) and group policy (GPO).

- The CSP option is ideal for devices that are managed through a Mobile Device Management (MDM) solution, like Microsoft Intune
- GPO can be used to configure domain joined devices and where devices aren't managed via MDM

| Deployment model | Device configuration options |
|-|-|
| **Cloud-only** | CSP (MDM) <br> GPO (local) |
| **Hybrid** | CSP (MDM) <br> GPO (Active Directory or local) |
| **On-premises** | GPO (Active Directory or local)|

## Licensing for cloud services

Here are some considerations regarding licensing requirements for cloud services:

- Windows Hello for Business doesn't require a Microsoft Entra ID P1 or P2 subscription. However, some dependencies, such as [MDM automatic enrollment](/mem/intune/enrollment/quickstart-setup-auto-enrollment) and [Conditional Access](/azure/active-directory/conditional-access/overview) do
  - Devices managed via MDM don't require a Microsoft Entra ID P1 or P2 subscription. By forgoing the subscription, users must manually enroll devices in the MDM solution, such as Microsoft Intune or a supported third-party MDM
- You can deploy Windows Hello for Business using the Microsoft Entra ID Free tier. All Microsoft Entra ID Free accounts can use Microsoft Entra multifactor authentication for the Windows passwordless features
  - Some Microsoft Entra multifactor authentication features require a license. For more information, see [Features and licenses for Microsoft Entra multifactor authentication](/azure/active-directory/authentication/concept-mfa-licensing).
- Enrolling a certificate using the AD FS registration authority requires devices to authenticate to the AD FS server, which requires device write-back, a Microsoft Entra ID P1 or P2 feature

| Deployment model | Cloud services licenses (minimum) |
|--|--|
| **Cloud-only** | not required |
| **Hybrid** | :black_square_button: **Cloud Kerberos trust**: not required <br> :black_square_button: **Key trust**: not required <br> :black_square_button: **Certificate trust**: Microsoft Entra ID P1 |
| **On-premises** | Azure MFA, if used as MFA solution |

## Windows requirements

All supported Windows 10 and Windows 11 versions can be used with Windows Hello for Business. However, cloud Kerberos trust requires minimum versions:

| Deployment model | Windows version |
|--|--|
| **Cloud-only** | All supported versions |
| **Hybrid** | :black_square_button: **Cloud Kerberos trust**: Windows 10 21H2, with [KB5010415][KB-1] and later; Windows 11 21H2, with [KB5010414][KB-2] and later  <br> :black_square_button: **Key trust**: All supported versions <br> :black_square_button: **Certificate trust**: All supported versions |
| **On-premises** | All supported versions |

## Windows Server requirements

All supported Windows Server versions can be used with Windows Hello for Business as Domain Controller. However, cloud Kerberos trust requires minimum versions:

| Deployment model | Domain Controller OS version |
|-|-|-|
| **Cloud-only** | n/a |
| **Hybrid** | :black_square_button: **Cloud Kerberos trust**: Windows Server 2016, [KB3534307][KB-3]; Windows Server 2019, [KB4534321][KB-4], Windows Server 2022  <br> :black_square_button: **Key trust**: All supported versions <br> :black_square_button: **Certificate trust**: All supported versions|
| **On-premises** | All supported versions |

## Prepare users to use Windows Hello

When you enable Windows Hello for Business in your organization, make sure to prepare the users by explaining how to enroll and use Windows Hello.

Ensure you have a strategy in place to ensure the users have an MFA option that is easy to use during enrollment.

Depending on the hardware, users might be prompted to register their fingerprint or face.

The next video shows the Windows Hello for Business enrollment experience after a user signs in with a password:

1. Since the device supports biometric authentication, the user is prompted to set up a biometric gesture. This gesture can be used to unlock the device and authenticate to resources that require Windows Hello for Business. The user can skip this step if they don't want to set up a biometric gesture
1. The user is prompted to use Windows Hello with the organization account. The user selects **OK**
1. The provisioning flow proceeds to the multi-factor authentication portion of the enrollment. Provisioning informs the user that it's actively attempting to contact the user through their configured form of MFA. The provisioning process doesn't proceed until authentication succeeds, fails or times out. A failed or timeout MFA results in an error and asks the user to retry
1. After a successful MFA, the provisioning flow asks the user to create and validate a PIN. This PIN must observe any PIN complexity policies configured on the device

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=36dc8679-0fcc-4abf-868d-97ec8b749da7 alt-text="Video showing the Windows Hello for Business enrollment steps after signing in with a password."]

After enrollment in Windows Hello, users should use their gesture (such as a PIN or fingerprint) for access to their devices and corporate resources. The unlock gesture is valid only on the enrolled device.

> [!IMPORTANT]
> Although the organization might require users to change their Active Directory or Microsoft Entra account password at regular intervals, changes to their passwords have no effect on Hello.

The next video shows the Windows Hello for Business enrollment experience as part of the out-of-box-experience (OOBE) process:

1. The user joins the device to Microsoft Entra ID and is prompted for MFA during the join process
1. The device is Managed by Microsoft Intune and applies Windows Hello for Business policy settings
1. After the user profile is loaded, but before the access to the Desktop is granted, the user must enroll in Windows Hello

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=44c16430-756f-490a-9fc1-80e2724fef8d alt-text="Video showing the Windows Hello for Business enrollment steps after the out-of-box-experience process."]

## Next steps

Now that you've read about the different deployment options and requirements, you can choose the implementation that best suits your organization.

> [!div class="op_multi_selector" title1="Deployment model:" title2="Trust type:"]
> To learn more about the deployment process, chose a deployment model and trust type from the following drop-down lists:
>
> - [(cloud-only|Microsoft Entra ID)](cloud-only.md)
> - [(hybrid | cloud Kerberos trust)](hybrid-cloud-kerberos-trust.md)
> - [(hybrid | key trust)](hybrid-key-trust.md)
> - [(hybrid | certificate trust)](hybrid-cert-trust.md)
> - [(on-premises | key trust)](on-premises-key-trust.md)
> - [(on-premises | certificate trust)](on-premises-cert-trust.md)

<!--links-->

[ENTRA-1]: /entra/identity/authentication/concept-mfa-howitworks
[ENTRA-2]: /entra/identity/authentication/howto-mfaserver-deploy
[ENTRA-3]: /entra/identity/hybrid/connect/how-to-connect-sync-whatis
[ENTRA-4]: /entra/identity/authentication/howto-mfa-mfasettings
[ENTRA-5]: /entra/identity/devices/hybrid-join-plan
[ENTRA-6]: /entra/identity/hybrid/connect/whatis-phs
[ENTRA-7]: /entra/identity/hybrid/connect/how-to-connect-pta

[SER-1]: /windows-server/identity/ad-fs/operations/configure-ad-fs-2016-and-azure-mfa
[SER-2]: /windows-server/identity/ad-fs/operations/configure-additional-authentication-methods-for-ad-fs#microsoft-and-third-party-additional-authentication-methods

[KB-1]: https://support.microsoft.com/topic/5010415
[KB-2]: https://support.microsoft.com/topic/5010414
[KB-3]: https://support.microsoft.com/topic/4534307
[KB-4]: https://support.microsoft.com/topic/4534321
