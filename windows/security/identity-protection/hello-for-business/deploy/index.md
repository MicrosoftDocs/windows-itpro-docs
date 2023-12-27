---
title: Plan a Windows Hello for Business Deployment
description: Learn about the role of each component within Windows Hello for Business and how certain deployment decisions affect other aspects of your infrastructure.
ms.date: 12/18/2023
ms.topic: overview
---

# Plan a Windows Hello for Business Deployment

This planning guide helps you understand the different topologies, architectures, and components that encompass a Windows Hello for Business infrastructure.

This guide explains the role of each component within Windows Hello for Business and how certain deployment decisions affect other aspects of the infrastructure.

> [!TIP]
> If you have a Microsoft Entra ID tenant, you can use our online, interactive Passwordless Wizard which walks through the same choices instead of using our manual guide below. The Passwordless Wizard is available in the [Microsoft 365 admin center](https://admin.microsoft.com/AdminPortal/Home#/modernonboarding/passwordlesssetup).

## Using this guide

There are many options from which you can choose when deploying Windows Hello for Business. Providing multiple options ensures nearly every organization can deploy Windows Hello for Business. Providing many options makes the deployment appear complex. However, most organization will realize they've already implemented most of the infrastructure on which the Windows Hello for Business deployment depends. It's important to understand that Windows Hello for Business is a distributed system and does take proper planning across multiple teams within an organization.

This guide removes the appearance of complexity by helping you make decisions on each aspect of your Windows Hello for Business deployment and the options you'll need to consider. Using this guide also identifies the information needed to help you make decisions about the deployment that best suits your environment.

### How to Proceed

Read this document and record your decisions. When finished, you should have all the necessary information to determine the next steps for your Windows Hello for Business deployment.

There are # major categories to consider when planning a Windows Hello for Business deployment:

- Deployment Options
- Client
- Management
- Active Directory
- Public Key Infrastructure
- Cloud

## Deployment Options

The goal of Windows Hello for Business is to enable deployments for all organizations of any size or scenario. To provide this type of granular deployment, Windows Hello for Business offers a diverse choice of deployment options.

### Deployment models

It's fundamentally important to understand which deployment model to use for a successful deployment. Some aspects of the deployment may have already been decided for you based on your current infrastructure.

There are three deployment models from which you can choose:

| :ballot_box_with_check: | Deployment model | Description |
|--|--|--|
| :black_square_button: | **Cloud-only** |For organizations that only have cloud identities and don't access on-premises resources. These organizations typically join their devices to the cloud and exclusively use resources in the cloud such as SharePoint Online, OneDrive, and others. Also, since the users don't use on-premises resources, they don't need certificates for things like VPN because everything they need is hosted in cloud services|
| :black_square_button: | **Hybrid** |For organizations that have identities synchronized from Active Directory to Microsoft Entra ID. These organizations use applications registered in Microsoft Entra ID, and want a sinlge sign-on (SSO) experience for both on-premises and Microsoft Entra resources|
| :black_square_button: | **On-premises** |For organizations that don't have cloud identities or use applications hosted in Microsoft Entra ID. These organizations use on-premises applications, integrated in Active Directory, and want a SSO user experiences when accessing them.|

>[!NOTE]
>
>- Main use case of On-Premises deployment is for "Enhanced Security Administrative Environments" also known as "Red Forests"
>- Migration from on-premise to hybrid deployment requires redeployment

### Trust types

A deployment's trust type defines how Windows Hello for Business clients **authenticate to Active Directory**. For this reason, the trust type isn't applicable to a cloud-only deployment model.

The trust type determines whether you issue authentication certificates to your users. One trust model isn't more secure than the other.

The deployment of certificates to users and Domain Controllers requires more configuration and infrastructure, which could also be a factor to consider in your decision. Additional infrastructure needed for certificate-trust deployments includes a certificate registration authority. In a federated environment, you must activate the Device Writeback option in Microsoft Entra Connect.

There are three trust types from which you can choose:

| :ballot_box_with_check: | Trust type | Description |
|--|--|--|
| :black_square_button: | **Cloud Kerberos trust**|  Users authenticate to Active Directory by requesting a TGT from Microsoft Entra ID, using Microsoft Entra Kerberos. The on-premises domain controllers are still responsible for Kerberos service tickets and authorization. Cloud Kerberos trust uses the same infrastructure required for FIDO2 security key sign-in, and it can be used for new or existing Windows Hello for Business deployments. |
| :black_square_button: | **Key trust**| Users authenticate to the on-premises Active Directory using a device-bound key (hardware or sofware) created during the Windows Hello provisioning experience. It requires to distribute certificates to domain controllers. |
| :black_square_button: | **Certificate trust**| The certificate trust type issues authentication certificates to users. Users authenticate using a certificate requested using a device-bound key (hardware or sofware) created during the Windows Hello provisioning experience. |

*Key trust* and *certificate trust* use certificate authentication-based Kerberos when requesting kerberos ticket-granting-tickets (TGTs) for on-premises authentication. This type of authentication requires a PKI for DC certificates, and requires end-user certificates for certificate trust.

The goal of Windows Hello for Business cloud Kerberos trust is to provide a simple deployment experience:

- No need to deploy a public key infrastructure (PKI) or to change an existing PKI
- No need to synchronize public keys between Microsoft Entra ID and Active Directory for users to access on-premises resources. There isn't any delay between the user's Windows Hello for Business provisioning, and being able to authenticate to Active Directory
- [FIDO2 security key sign-in][ENTRA-1] can be deployed with minimal extra setup

> [!TIP]
> Windows Hello for Business cloud Kerberos trust is the recommended deployment model when compared to the *key trust model*. It is also the preferred deployment model if you do not need to support certificate authentication scenarios.
>
> For more information about how Microsoft Entra Kerberos enables access to on-premises resources, see [enabling passwordless security key sign-in to on-premises resources][ENTRA-1].

### Authentication to Microsoft Entra ID

In cloud-only and hybrid deployments, all users and devices must authenticate to Microsoft Entra ID.

Authentication to Microsoft Entra ID can be configured with or without federation:

- For key trust, [Password hash synchronization][ENTRA-6] or [Microsoft Entra pass-through authentication][ENTRA-7] is required for non-federated environments
- Certificate trust doesn't support Microsoft Entra ID *Pass-through Authentication* (PTA) or *password hash sync* (PHS). Windows Hello for Business hybrid certificate trust requires Active Directory to be federated with Microsoft Entra ID using AD FS. Additionally, you need to configure your AD FS farm to support Azure registered devices
- Active Directory Federation Services (AD FS) or a third-party federation service is required for federated environments

### Device registration

All devices included in the Windows Hello for Business deployment must go through a process called *device registration*. Device registration enables devices to authenticate to identity providers:

- For cloud-only and hybrid deployment, the identity provider is Microsoft Entra ID
- For on-premises deployments, the identity provider is the on-premises server running the Active Directory Federation Services (AD FS) role

| :ballot_box_with_check:| Deployment model | Device registration options |
|-|-|-|-|
| :black_square_button:| Cloud-only | Microsoft Entra joined <br> Microsoft Entra registered |
| :black_square_button:|Hybrid| Microsoft Entra hybrid joined <br> Microsoft Entra joined <br> Microsoft Entra registered |
| :black_square_button:|On-premises | AD FS |

For *Microsoft Entra hybrid joined* devices, review the guidance on the [Plan your Microsoft Entra hybrid join implementation][ENTRA-5] page.

### Key registration

The built-in Windows Hello for Business provisioning experience creates a device-bound asymmetric key pair as the user's credentials. The private key is protected by the device's security modules. The credential is a *user key*, not a *device key*. The provisioning experience registers the user's public key with the identity provider:

- For cloud-only and hybrid deployments, the identity provider is Microsoft Entra ID
- For on-premises deployments, the identity provider is the on-premises server running the AD FS role

| :ballot_box_with_check:| Deployment model | Key registration IdP |
|-|-|-|-|
| :black_square_button:| Cloud-only | Microsoft Entra ID |
| :black_square_button:|Hybrid| Microsoft Entra ID |
| :black_square_button:|On-premises | AD FS |

### Directory synchronization

Hybrid and on-premises deployments use directory synchronization, however, each for a different purpose:

- Hybrid deployments use [Microsoft Entra Connect Sync][ENTRA-3] to synchronize Active Directory identities (users and devices) or credentials between itself and Microsoft Entra ID. During the Window Hello for Business provisioning process, users register the public portion of their Windows Hello for Business credential with Microsoft Entra ID. Microsoft Entra Connect Sync synchronizes the Windows Hello for Business public key to Active Directory. This synchronization enables SSO to Microsoft Entra ID and its federated components.
    > [!IMPORTANT]
    > Windows Hello for Business is tied between a user and a device. Both the user and device object must be synchronized between Microsoft Entra ID and Active Directory.
- On-premises deployments use directory synchronization to import users from Active Directory to the Azure MFA server, which sends data to the MFA cloud service to perform the verification

| :ballot_box_with_check:| Deployment model | Directory sync options |
|-|-|-|-|
| :black_square_button:| Cloud-only | n/a |
| :black_square_button:|Hybrid| Microsoft Entra Connect Sync|
| :black_square_button:|On-premises | Azure MFA server |

### Multifactor authentication

The goal of Windows Hello for Business is to move organizations away from passwords by providing them with a *strong credential* that enables easy two-factor authentication. The built-in provisioning experience accepts the user's weak credentials (username and password) as the first factor authentication. However, the user must provide a second factor of authentication before Windows provisions a strong credential:

- For cloud-only and hybrid deployments, ther are different choices for multifactor authentication, including [Microsoft Entra MFA][ENTRA-1]
- On-premises deployments must use a multifactor option that can integrate as an AD FS multifactor adapter. Organizations can choose from third-party options that offer an AD FS MFA adapter. For more infomration, see [Microsoft and third-party additional authentication methods][SER-2]

> [!IMPORTANT]
> As of July 1, 2019, Microsoft doesn't offer MFA Server for new deployments. New deployments that require multifactor authentication should use cloud-based Microsoft Entra multifactor authentication. Existing deployment where the MFA Server was activated prior to July 1, 2019 can download the latest version, future updates, and generate activation credentials. See [Getting started with the Azure Multi-Factor Authentication Server][ENTRA-2] for more details.

| :ballot_box_with_check:| Deployment model | MFA options |
|-|-|-|-|
| :black_square_button:| Cloud-only | :black_square_button: Microsoft Entra MFA <br> :black_square_button: Third-party MFA via Microsoft Entra ID custom controls or federation|
| :black_square_button:|Hybrid| :black_square_button:Microsoft Entra MFA <br> :black_square_button: Third-party MFA via Microsoft Entra ID custom controls or federation|
| :black_square_button:|On-premises | AD FS MFA adapter |

For more information how to configure Microsoft Entra multifactor authentication, see [Configure Microsoft Entra multifactor authentication settings][ENTRA-4].\
For more information how to configure AD FS to provide multifactor authentication, see [Configure Azure MFA as authentication provider with AD FS][SER-1].



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

### Device configuration

Windows Hello for Business provides organizations with a rich set of granular policy settings with which they can use to configure their devices. There are two main options to configure Windows Hello for Business: configuration service provider (CSP) and group policy (GPO).

- The CSP option is ideal for devices that are managed through a Mobile Device Management (MDM) solution, like Microsoft Intune
- GPO can be used to configure domain joined devices and where devices aren't managed via MDM

| :ballot_box_with_check:| Deployment model | Device configuration options |
|-|-|-|-|
| :black_square_button:| Cloud-only | CSP (MDM) or local GPO |
| :black_square_button:|Hybrid| CSP (MDM) or Active Directory GPOs |
| :black_square_button:|On-premises | Active Directory GPOs |

### Public Key Infrastructure (PKI)

While cloud Kerberos trust is the only hybrid deployment option that doesn't require the deployment of any certificates, the other hybrid and on-premises models depend on an enterprise PKI as a trust anchor for authentication:

- Domain controllers for hybrid and on-premises deployments need a certificate for Windows devices to trust the domain controller as legitimate
- Deployments using the certificate trust type require an enterprise PKI and a certificate registration authority (CRA) to issue authentication certificates to users. AD FS is used as a CRA
- Hybrid deployments might need to issue VPN certificates to users to enable connectivity on-premises resources

| :ballot_box_with_check:| Deployment model | PKI |
|-|-|-|-|
| :black_square_button:| Cloud-only | not required |
| :black_square_button:|Hybrid| :black_square_button: **Cloud Kerberos trust**: not required <br> :black_square_button: **Key trust**: required <br> :black_square_button: **Certificate trust**: required|
| :black_square_button:|On-premises | required |

### Licensing requirements for cloud services

Here are some considerations regarding licensing requirements for cloud services:

- Windows Hello for Business doesn't require a Microsoft Entra ID P1 or P2 subscription. However, some dependencies, such as [MDM automatic enrollment](/mem/intune/enrollment/quickstart-setup-auto-enrollment) and [Conditional Access](/azure/active-directory/conditional-access/overview) do
  - Devices managed via MDM don't require a Microsoft Entra ID P1 or P2 subscription. By forgoing the subscription, users must manually enroll devices in the MDM solution, such as Microsoft Intune or a supported third-party MDM
- You can deploy Windows Hello for Business using the Microsoft Entra ID Free tier. All Microsoft Entra ID Free accounts can use Microsoft Entra multifactor authentication for the Windows passwordless features
  - Some Microsoft Entra multifactor authentication features require a license. For more details, see [Features and licenses for Microsoft Entra multifactor authentication](/azure/active-directory/authentication/concept-mfa-licensing).
- Enrolling a certificate using the AD FS registration authority requires devices to authenticate to the AD FS server, which requires device write-back, a Microsoft Entra ID P1 or P2 feature

| :ballot_box_with_check:| Deployment model | Cloud services licenses (minimum) |
|-|-|-|-|
| :black_square_button: | Cloud-only | not required |
| :black_square_button: |Hybrid| :black_square_button: **Cloud Kerberos trust**: not required <br> :black_square_button: **Key trust**: not required <br> :black_square_button: **Certificate trust**: Microsoft Entra ID P1|
| :black_square_button: |On-premises | Azure MFA |

### Windows requirements

All supported Windows 10 and Windows 11 versions can be used with Windows Hello for Business. However, cloud Kerberos trust requires minimum versions:

| :ballot_box_with_check:| Deployment model | Windows version |
|-|-|-|-|
| :black_square_button:| Cloud-only | All supported versions |
| :black_square_button:|Hybrid| :black_square_button: **Cloud Kerberos trust**: Windows 10 21H2, with [KB5010415][KB-1] and later; Windows 11 21H2, with [KB5010414][KB-2] and later  <br> :black_square_button: **Key trust**: All supported versions <br> :black_square_button: **Certificate trust**: All supported versions|
| :black_square_button:|On-premises | All supported versions |

### Windows and Windows Server requirements

All supported Windows Server versions can be used with Windows Hello for Business as Domain Controller. However, cloud Kerberos trust requires minimum versions:

| :ballot_box_with_check:| Deployment model | Domain Controller OS version |
|-|-|-|-|
| :black_square_button:| Cloud-only | n/a |
| :black_square_button:|Hybrid| :black_square_button: **Cloud Kerberos trust**: Windows Server 2016, [KB3534307][KB-3]; Windows Server 2019, [KB4534321][KB-4], Windows Server 2022  <br> :black_square_button: **Key trust**: All supported versions <br> :black_square_button: **Certificate trust**: All supported versions|
| :black_square_button:|On-premises | All supported versions |

## Next steps

Now that you've read about the different deployment options and requirements, you can choose the implementation that best suits your organization.

> [!div class="op_multi_selector" title1="Deployment type:" title2="Trust type:"]
> To learn more about the deployment process, chose a deployment model and trust type from the following drop-down lists:
>
> - [(cloud-only|Microsoft Entra ID)](cloud.md)
> - [(hybrid | cloud Kerberos trust)](hybrid-cloud-kerberos-trust.md)
> - [(hybrid | key trust)](hybrid-key-trust.md)
> - [(hybrid | certificate trust)](hybrid-cert-trust.md)
> - [(on-premises | key trust)](on-premises-key-trust.md)
> - [(on-premises | certificate trust)](on-premises-cert-trust.md)

<!--
## Prepare users to use Windows Hello

When you set a policy to require Windows Hello for Business in the workplace, you will want to prepare people in your organization by explaining how to enroll and use Windows Hello.

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=36dc8679-0fcc-4abf-868d-97ec8b749da7]

After enrollment in Hello, users should use their gesture (such as a PIN or fingerprint) for access to corporate resources. Their gesture is only valid on the enrolled device.

Although the organization may require users to change their Active Directory or Microsoft Entra account password at regular intervals, changes to their passwords have no effect on Hello.

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=44c16430-756f-490a-9fc1-80e2724fef8d]

## On devices owned by the organization

When someone sets up a new device, they are prompted to choose who owns the device. For corporate devices, they select **This device belongs to my organization**.

Next, they select a way to connect. Tell the people in your enterprise which option they should pick here.

They sign in, and are then asked to verify their identity. People have options to choose from a text message, phone call, or the authentication application. After verification, they create their PIN. The **Create a PIN** screen displays any complexity requirements that you have set, such as minimum length.

After Hello is set up, people use their PIN to unlock the device, and that will automatically log them on.

## On personal devices

People who want to access work resources on their personal devices can add a work or school account in **Settings** > **Accounts** > **Work or school**, and then sign in with work credentials. The person selects the method for receiving the verification code, such as text message or email. The verification code is sent and the person then enters the verification code. After verification, the person enters and confirms new PIN. The person can access any token-based resource using this device without being asked for credentials. 

People can go to **Settings** > **Accounts** > **Work or school**, select the work account, and then select **Unjoin** to remove the account from their device.
-->

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
