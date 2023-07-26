---
title: How Windows Hello for Business works - technology and terms
description: Explore technology and terms associated with Windows Hello for Business. Learn how Windows Hello for Business works.
ms.date: 10/08/2018
ms.topic: article
---

# Technology and terms

## Attestation identity keys

Because the endorsement certificate is unique for each device and doesn't change, the usage of it may present privacy concerns because it's theoretically possible to track a specific device. To avoid this privacy problem, Windows issues a derived attestation anchor based on the endorsement certificate. This intermediate key, which can be attested to an endorsement key, is the Attestation Identity Key (AIK) and the corresponding certificate is called the AIK certificate. This AIK certificate is issued by a Microsoft cloud service.

> [!NOTE]
> The AIK certificate must be provisioned in conjunction with a third-party service like the Microsoft Cloud CA service. After it is provisioned, the AIK private key can be used to report platform configuration. Windows creates a signature over the platform log state (and a monotonic counter value) at each boot by using the AIK.
> The AIK is an asymmetric (public/private) key pair that is used as a substitute for the EK as an identity for the TPM for privacy purposes. The private portion of an AIK is never revealed or used outside the TPM and can only be used inside the TPM for a limited set of operations. Furthermore, it can only be used for signing, and only for limited, TPM-defined operations.

Windows creates AIKs protected by the TPM, if available, that are 2048-bit RSA signing keys. Microsoft hosts a cloud service called Microsoft Cloud CA to establish cryptographically that it's communicating with a real TPM and that the TPM possesses the presented AIK. After the Microsoft Cloud CA service has established these facts, it will issue an AIK certificate to the Windows device.

Many existing devices that will upgrade to Windows 10 won't have a TPM, or the TPM won't contain an endorsement certificate. **To accommodate those devices, Windows 10 or Windows 11 allows the issuance of AIK certificates without the presence of an endorsement certificate.** Such AIK certificates aren't issued by Microsoft Cloud CA. This behavior isn't as trustworthy as an endorsement certificate that is burned into the device during manufacturing, but it will provide compatibility for advanced scenarios like Windows Hello for Business without TPM.

In the issued AIK certificate, a special OID is added to attest that endorsement certificate was used during the attestation process. This information can be used by a relying party to decide whether to reject devices that are attested using AIK certificates without an endorsement certificate or accept them. Another scenario can be to not allow access to high-value assets from devices that are attested by an AIK certificate that's not backed by an endorsement certificate.

### Related to attestation identity keys

- [Endorsement key](#endorsement-key)
- [Storage root key](#storage-root-key)
- [Trusted platform module](#trusted-platform-module)

### More information about attestation identity keys

- [Windows client certificate enrollment protocol: glossary](/openspecs/windows_protocols/ms-wcce/719b890d-62e6-4322-b9b1-1f34d11535b4#gt_70efa425-6b46-462f-911d-d399404529ab)
- [TPM library specification](https://trustedcomputinggroup.org/resource/tpm-library-specification/)

## Azure Active Directory join

Azure Active Directory (Azure AD) join is intended for organizations that desire to be cloud-first or cloud-only. There's no restriction on the size or type of organizations that can deploy Azure AD join. Azure AD join also works in a hybrid environment and can enable access to on-premises applications and resources.

### Related to Azure AD join

- [Join type](#join-type)
- [Hybrid Azure AD join](#hybrid-azure-ad-join)

### More information about Azure AD join

[Introduction to device identity in Azure AD](/azure/active-directory/devices/overview).

## Azure AD registration

The goal of Azure AD-registered devices is to provide you with support for the _bring your own device_ (BYOD) scenario. In this scenario, a user can access your organization's Azure AD-controlled resources using a personal device.

### Related to Azure AD registration

- [Azure AD join](#azure-active-directory-join)
- [Hybrid Azure AD join](#hybrid-azure-ad-join)
- [Join type](#join-type)

### More information about Azure AD registration

[Introduction to device identity in Azure AD](/azure/active-directory/devices/overview).

## Certificate trust

The certificate trust model uses a securely issued certificate based on the user's Windows Hello for Business identity to authenticate to on-premises Active Directory. The certificate trust model is supported in hybrid and on-premises deployments and is compatible with Windows Server 2008 R2 and later domain controllers.

### Related to certificate trust

- [Deployment type](#deployment-type)
- [Hybrid Azure AD join](#hybrid-azure-ad-join)
- [Hybrid deployment](#hybrid-deployment)
- [Cloud Kerberos trust](#cloud-kerberos-trust)
- [Key trust](#key-trust)
- [On-premises deployment](#on-premises-deployment)
- [Trust type](#trust-type)

### More information about certificate trust

[Windows Hello for Business planning guide](hello-planning-guide.md)

## Cloud deployment

The Windows Hello for Business cloud deployment is exclusively for organizations using cloud-based identities and resources. Device management is accomplished using Intune or a modern management alternative. Cloud deployments use Azure AD-joined or Azure AD-registered devices.

### Related to cloud deployment

- [Azure AD join](#azure-active-directory-join)
- [Azure AD registration](#azure-ad-registration)
- [Deployment type](#deployment-type)
- [Join type](#join-type)

## Cloud experience host

In Windows 10 and Windows 11, cloud experience host is an application used while joining the workplace environment or Azure AD for rendering the experience when collecting your company-provided credentials. Once you enroll your device to your workplace environment or Azure AD, your organization will be able to manage your PC and collect information about you (including your location). It might add or remove apps or content, change settings, disable features, prevent you from removing your company account, or reset your PC.

### Related to cloud experience host

- [Windows Hello for Business](hello-identity-verification.md)
- [Managed Windows Hello in organization](hello-manage-in-organization.md)

### More information on cloud experience host

[Windows Hello for Business and device registration](/azure/active-directory/devices/device-registration-how-it-works)

## Cloud Kerberos trust

The cloud Kerberos trust model offers a simplified deployment experience, when compared to the other trust types.\
With cloud Kerberos trust, there's no need to deploy certificates to the users or to the domain controllers, which is ideal for environments without an existing PKI.

Giving the simplicity offered by this model, cloud Kerberos trust is the recommended model when compared to the key trust model. It is also the preferred deployment model if you do not need to support certificate authentication scenarios.

### Related to cloud Kerberos trust

- [Deployment type](#deployment-type)
- [Hybrid Azure AD join](#hybrid-azure-ad-join)
- [Hybrid deployment](#hybrid-deployment)
- [Key trust](#key-trust)
- [On-premises deployment](#on-premises-deployment)
- [Trust type](#trust-type)

### More information about cloud Kerberos trust

[Cloud Kerberos trust deployment](hello-hybrid-cloud-kerberos-trust.md)

## Deployment type

Windows Hello for Business has three deployment models to accommodate the needs of different organizations. The three deployment models include:

- Cloud
- Hybrid
- On-premises

### Related to deployment type

- [Cloud deployment](#cloud-deployment)
- [Hybrid deployment](#hybrid-deployment)
- [On-premises deployment](#on-premises-deployment)

### More information about deployment type

[Windows Hello for Business planning guide](hello-planning-guide.md)

## Endorsement key

The TPM has an embedded unique cryptographic key called the endorsement key. The TPM endorsement key is a pair of asymmetric keys (RSA size 2048 bits).

The endorsement key public key is used for sending securely sensitive parameters, such as when taking possession of the TPM that contains the defining hash of the owner password. The EK private key is used when creating secondary keys like AIKs.

The endorsement key acts as an identity card for the TPM.

The endorsement key is often accompanied by one or two digital certificates:

- One certificate is produced by the TPM manufacturer and is called the **endorsement certificate**. The endorsement certificate is used to prove the authenticity of the TPM (for example, that it's a real TPM manufactured by a specific chip maker) to local processes, applications, or cloud services. The endorsement certificate is created during manufacturing or the first time the TPM is initialized by communicating with an online service.

- The other certificate is produced by the platform builder and is called the **platform certificate** to indicate that a specific TPM is integrated with a certain device.

For certain devices that use firmware-based TPM produced by Intel or Qualcomm, the endorsement certificate is created when the TPM is initialized during the OOBE of Windows 10 and Windows 11.

### Related to endorsement key

- [Attestation identity keys](#attestation-identity-keys)
- [Storage root key](#storage-root-key)
- [Trusted platform module](#trusted-platform-module)

### More information about endorsement key

- [Understand the TPM endorsement key](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc770443(v=ws.11))
- [TPM library specification](https://trustedcomputinggroup.org/resource/tpm-library-specification/)

## Federated environment

Primarily for large enterprise organizations with more complex authentication requirements, on-premises directory objects are synchronized with Azure AD and users accounts are managed on-premises. With AD FS, users have the same password on-premises and in the cloud and they don't have to sign in again to use Microsoft cloud services. This federated authentication model can provide extra authentication requirements, such as smart card-based authentication or a third-party multi-factor authentication and is typically required when organizations have an authentication requirement not natively supported by Azure AD.

### Related to federated environment

- [Hybrid deployment](#hybrid-deployment)
- [Managed environment](#managed-environment)
- [Pass-through authentication](#pass-through-authentication)
- [Password hash sync](#password-hash-sync)

### More information about federated environment

[Choose the right authentication method for your Azure AD hybrid identity solution](/azure/active-directory/hybrid/choose-ad-authn)

## Hybrid Azure AD join

For more than a decade, many organizations have used the domain join to their on-premises Active Directory to enable:

- IT departments to manage work-owned devices from a central location.
- Users to sign in to their devices with their Active Directory work or school accounts.

Typically, organizations with an on-premises footprint rely on imaging methods to provision devices, and they often use or group policy to manage them.

If your environment has an on-premises AD footprint and you also want benefit from the capabilities provided by Azure AD, you can implement hybrid Azure AD-joined devices. These devices are joined to both your on-premises Active Directory and your Azure AD.

### Related to hybrid Azure AD join

- [Azure AD join](#azure-active-directory-join)
- [Azure AD registration](#azure-ad-registration)
- [Hybrid deployment](#hybrid-deployment)

### More information about hybrid Azure AD join

[Introduction to device identity in Azure AD](/azure/active-directory/devices/overview)

## Hybrid deployment

The Windows Hello for Business hybrid deployment is for organizations that have both on-premises and cloud resources that are accessed using a managed or federated identity that's synchronized with Azure AD. Hybrid deployments support devices that are Azure AD-registered, Azure AD-joined, and hybrid Azure AD-joined. The Hybrid deployment model supports three trust types for on-premises authentication: cloud Kerberos trust, key trust and certificate trust.

### Related to hybrid deployment

- [Azure AD join](#azure-active-directory-join)
- [Azure AD registration](#azure-ad-registration)
- [Hybrid Azure AD join](#hybrid-azure-ad-join)

### More information about hybrid deployment

[Windows Hello for Business planning guide](hello-planning-guide.md)

## Join type

Join type is how devices are associated with Azure AD. For a device to authenticate to Azure AD it must be registered or joined.

Registering a device to Azure AD enables you to manage a device's identity. When a device is registered, Azure AD device registration provides the device with an identity that is used to authenticate the device when a user signs-in to Azure AD. You can use the identity to enable or disable a device.

When combined with a mobile device management (MDM) solution such as Microsoft Intune, the device attributes in Azure AD are updated with additional information about the device. This behavior allows you to create conditional access rules that enforce access from devices to meet your standards for security and compliance. For more information on enrolling devices in Microsoft Intune, see Enroll devices for management in Intune.

Joining a device is an extension to registering a device. This method provides you with all the benefits of registering a device, and changes the local state of a device. Changing the local state enables your users to sign-in to a device using an organizational work or school account instead of a personal account.

### Related to join type

- [Azure AD join](#azure-active-directory-join)
- [Azure AD registration](#azure-ad-registration)
- [Hybrid Azure AD join](#hybrid-azure-ad-join)

### More information about join type

[Introduction to device identity in Azure AD](/azure/active-directory/devices/overview)

## Key trust

The key trust model uses the user's Windows Hello for Business identity to authenticate to on-premises Active Directory. The key trust model is supported in hybrid and on-premises deployments and requires Windows Server 2016 domain controllers.

### Related to key trust

- [Cloud Kerberos trust](#cloud-kerberos-trust)
- [Certificate trust](#certificate-trust)
- [Deployment type](#deployment-type)
- [Hybrid Azure AD join](#hybrid-azure-ad-join)
- [Hybrid deployment](#hybrid-deployment)
- [On-premises deployment](#on-premises-deployment)
- [Trust type](#trust-type)

### More information about key trust

[Windows Hello for Business planning guide](hello-planning-guide.md)

## Managed environment

Managed environments are for non-federated environments where Azure AD manages the authentication using technologies such as Password Hash Synchronization and Pass-through Authentication rather than a federation service such as Active Directory Federation Services (ADFS).

### Related to managed environment

- [Federated environment](#federated-environment)
- [Pass-through authentication](#pass-through-authentication)
- [Password hash synchronization](#password-hash-sync)

## On-premises deployment

The Windows Hello for Business on-premises deployment is for organizations that exclusively have on-premises resources that are accessed using Active Directory identities. On-premises deployments support domain joined devices. The on-premises deployment model supports two authentication trust types, key trust and certificate trust.

### Related to on-premises deployment

- [Cloud deployment](#cloud-deployment)
- [Deployment type](#deployment-type)
- [Hybrid deployment](#hybrid-deployment)

### More information about on-premises deployment

[Windows Hello for Business planning guide](hello-planning-guide.md)

## Pass-through authentication

Pass-through authentication provides a simple password validation for Azure AD authentication services. It uses a software agent that runs on one or more on-premises servers to validate the users directly with your on-premises Active Directory. With pass-through authentication (PTA), you synchronize on-premises Active Directory user account objects with Azure AD and manage your users on-premises. Allows your users to sign in to both on-premises and Microsoft cloud resources and applications using their on-premises account and password. This configuration validates users' passwords directly against your on-premises Active Directory without sending password hashes to Azure AD. Companies with a security requirement to immediately enforce on-premises user account states, password policies, and sign-in hours would use this authentication method. With seamless single sign-on, users are automatically signed in to Azure AD when they are on their corporate devices and connected to your corporate network.

### Related to pass-through authentication

- [Federated environment](#federated-environment)
- [Managed environment](#managed-environment)
- [Password hash synchronization](#password-hash-sync)

### More information about pass-through authentication

[Choose the right authentication method for your Azure AD hybrid identity solution](/azure/active-directory/hybrid/choose-ad-authn)

## Password hash sync

Password hash sync is the simplest way to enable authentication for on-premises directory objects in Azure AD. With password hash sync (PHS), you synchronize your on-premises Active Directory user account objects with Azure AD and manage your users on-premises. Hashes of user passwords are synchronized from your on-premises Active Directory to Azure AD so that the users have the same password on-premises and in the cloud. When passwords are changed or reset on-premises, the new password hashes are synchronized to Azure AD so that your users can always use the same password for cloud resources and on-premises resources. The passwords are never sent to Azure AD or stored in Azure AD in clear text. Some premium features of Azure AD, such as Identity Protection, require PHS regardless of which authentication method is selected. With seamless single sign-on, users are automatically signed in to Azure AD when they are on their corporate devices and connected to your corporate network.

### Related to password hash sync

- [Federated environment](#federated-environment)
- [Managed environment](#managed-environment)
- [Pass-through authentication](#pass-through-authentication)

### More information about password hash sync

[Choose the right authentication method for your Azure AD hybrid identity solution](/azure/active-directory/hybrid/choose-ad-authn)

## Primary refresh token

Single sign on (SSO) relies on special tokens obtained for each of the types of applications above. These special tokens are then used to obtain access tokens to specific applications. In the traditional Windows Integrated authentication case using Kerberos, this token is a Kerberos TGT (ticket-granting ticket). For Azure AD and AD FS applications, this token is a _primary refresh token_ (PRT). It's a [JSON Web Token](https://openid.net/specs/draft-jones-json-web-token-07.html) that contains claims about both the user and the device.

The PRT is initially obtained during Windows user sign-in or unlock in a similar way the Kerberos TGT is obtained. This behavior is true for both Azure AD joined and hybrid Azure AD-joined devices. For personal devices registered with Azure AD, the PRT is initially obtained upon Add Work or School Account. For a personal device the account to unlock the device isn't the work account, but a consumer account. For example, hotmail.com, live.com, or outlook.com.

The PRT is needed for SSO. Without it, the user will be prompted for credentials when accessing applications every time. The PRT also contains information about the device. If you have any [device-based conditional access](/azure/active-directory/conditional-access/concept-conditional-access-grant) policy set on an application, without the PRT, access will be denied.

## Storage root key

The storage root key (SRK) is also an asymmetric key pair (RSA with a minimum of 2048-bits length). The SRK has a major role and is used to protect TPM keys, so that these keys can't be used without the TPM. The SRK key is created when the ownership of the TPM is taken.

### Related to storage root key

- [Attestation identity keys](#attestation-identity-keys)
- [Endorsement key](#endorsement-key)
- [Trusted platform module](#trusted-platform-module)

### More information about storage root key

[TPM library specification](https://trustedcomputinggroup.org/resource/tpm-library-specification/)

## Trust type

The trust type determines how a user authenticates to the Active Directory to access on-premises resources. There are two trust types, key trust and certificate trust. The hybrid and on-premises deployment models support both trust types. The trust type doesn't affect authentication to Azure AD. Windows Hello for Business authentication to Azure AD always uses the key, not a certificate (excluding smart card authentication in a federated environment).

### Related to trust type

- [Cloud Kerberos trust](#cloud-kerberos-trust)
- [Certificate trust](#certificate-trust)
- [Hybrid deployment](#hybrid-deployment)
- [Key trust](#key-trust)
- [On-premises deployment](#on-premises-deployment)

### More information about trust type

[Windows Hello for Business planning guide](hello-planning-guide.md)

## Trusted platform module

A trusted platform module (TPM) is a hardware component that provides unique security features.

Windows uses security characteristics of a TPM for the following functions:

- Measuring boot integrity sequence. Based on that sequence, it automatically unlocks BitLocker-protected drives
- Protecting credentials
- Health attestation

A TPM implements controls that meet the specification described by the Trusted Computing Group (TCG). There are currently two versions of the TPM specification produced by TCG that aren't compatible with each other:

- The first TPM specification, version 1.2, was published in February 2005 by the TCG and standardized under ISO / IEC 11889 standard.
- The latest TPM specification, referred to as TPM 2.0, was released in April 2014 and has been approved by the ISO/IEC Joint Technical Committee (JTC) as ISO/IEC 11889:2015.

Windows 10 and Windows 11 use the TPM for cryptographic calculations as part of health attestation and to protect the keys for BitLocker, Windows Hello, virtual smart cards, and other public key certificates. For more information, see [TPM requirements in Windows](../../information-protection/tpm/tpm-recommendations.md).

Windows recognizes versions 1.2 and 2.0 TPM specifications produced by the TCG. For the most recent and modern security features, Windows 10 and Windows 11 support only TPM 2.0.

TPM 2.0 provides a major revision to the capabilities over TPM 1.2:

- Update cryptography strength to meet modern security needs
  - Support for SHA-256 for PCRs
  - Support for HMAC command
- Cryptographic algorithms flexibility to support government needs
  - TPM 1.2 is severely restricted in terms of what algorithms it can support
  - TPM 2.0 can support arbitrary algorithms with minor updates to the TCG specification documents
- Consistency across implementations
  - The TPM 1.2 specification allows vendors wide latitude when choosing implementation details
  - TPM 2.0 standardizes much of this behavior

In a simplified manner, the TPM is a passive component with limited resources. It can calculate random numbers, RSA keys, decrypt short data, store hashes taken when booting the device. A TPM incorporates in a single component:

- An RSA 2048-bit key generator
- A random number generator
- Nonvolatile memory for storing EK, SRK, and AIK keys
- A cryptographic engine to encrypt, decrypt, and sign
- Volatile memory for storing the PCRs and RSA keys

### Related to trusted platform module

- [Attestation identity keys](#attestation-identity-keys)
- [Endorsement key](#endorsement-key)
- [Storage root key](#storage-root-key)

### More information about trusted platform module

[TPM library specification](https://trustedcomputinggroup.org/resource/tpm-library-specification/)
