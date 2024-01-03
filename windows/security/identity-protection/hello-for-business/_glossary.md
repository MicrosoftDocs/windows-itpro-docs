---
title: Windows Hello for Business glossary
description: Explore technology and terms associated with Windows Hello for Business
ms.date: 01/03/2024
ms.topic: glossary
---

# Windows Hello for Business glossary

## Attestation identity keys

Because the endorsement certificate is unique for each device and doesn't change, the usage of it may present privacy concerns because it's theoretically possible to track a specific device. To avoid this privacy problem, Windows issues a derived attestation anchor based on the endorsement certificate. This intermediate key, which can be attested to an endorsement key, is the Attestation Identity Key (AIK) and the corresponding certificate is called the AIK certificate. This AIK certificate is issued by a Microsoft cloud service.

> [!NOTE]
> The AIK certificate must be provisioned in conjunction with a third-party service like the Microsoft Cloud CA service. After it is provisioned, the AIK private key can be used to report platform configuration. Windows creates a signature over the platform log state (and a monotonic counter value) at each boot by using the AIK.
> The AIK is an asymmetric (public/private) key pair that is used as a substitute for the EK as an identity for the TPM for privacy purposes. The private portion of an AIK is never revealed or used outside the TPM and can only be used inside the TPM for a limited set of operations. Furthermore, it can only be used for signing, and only for limited, TPM-defined operations.

Windows creates AIKs protected by the TPM, if available, that are 2048-bit RSA signing keys. Microsoft hosts a cloud service called Microsoft Cloud CA to establish cryptographically that it's communicating with a real TPM and that the TPM possesses the presented AIK. After the Microsoft Cloud CA service has established these facts, it will issue an AIK certificate to the Windows device.

Many existing devices that will upgrade to Windows 10 won't have a TPM, or the TPM won't contain an endorsement certificate. **To accommodate those devices, Windows 10 or Windows 11 allows the issuance of AIK certificates without the presence of an endorsement certificate.** Such AIK certificates aren't issued by Microsoft Cloud CA. This behavior isn't as trustworthy as an endorsement certificate that is burned into the device during manufacturing, but it will provide compatibility for advanced scenarios like Windows Hello for Business without TPM.

In the issued AIK certificate, a special OID is added to attest that endorsement certificate was used during the attestation process. This information can be used by a relying party to decide whether to reject devices that are attested using AIK certificates without an endorsement certificate or accept them. Another scenario can be to not allow access to high-value assets from devices that are attested by an AIK certificate that's not backed by an endorsement certificate.

## Cloud experience host

In Windows 10 and Windows 11, cloud experience host is an application used while joining the workplace environment or Microsoft Entra ID for rendering the experience when collecting your company-provided credentials. Once you enroll your device to your workplace environment or Microsoft Entra ID, your organization will be able to manage your PC and collect information about you (including your location). It might add or remove apps or content, change settings, disable features, prevent you from removing your company account, or reset your PC.

## Endorsement key

The TPM has an embedded unique cryptographic key called the endorsement key. The TPM endorsement key is a pair of asymmetric keys (RSA size 2048 bits).

The endorsement key public key is used for sending securely sensitive parameters, such as when taking possession of the TPM that contains the defining hash of the owner password. The EK private key is used when creating secondary keys like AIKs.

The endorsement key acts as an identity card for the TPM.

The endorsement key is often accompanied by one or two digital certificates:

- One certificate is produced by the TPM manufacturer and is called the **endorsement certificate**. The endorsement certificate is used to prove the authenticity of the TPM (for example, that it's a real TPM manufactured by a specific chip maker) to local processes, applications, or cloud services. The endorsement certificate is created during manufacturing or the first time the TPM is initialized by communicating with an online service.
- The other certificate is produced by the platform builder and is called the **platform certificate** to indicate that a specific TPM is integrated with a certain device.

For certain devices that use firmware-based TPM produced by Intel or Qualcomm, the endorsement certificate is created when the TPM is initialized during Windows OOBE.

## Join type

Join type is how devices are associated with Microsoft Entra ID. For a device to authenticate to Microsoft Entra it must be registered or joined.

Registering a device to Microsoft Entra ID enables you to manage a device's identity. When a device is registered, Microsoft Entra device registration provides the device with an identity that is used to authenticate the device when a user signs-in to Microsoft Entra ID. You can use the identity to enable or disable a device.

When combined with a mobile device management (MDM) solution such as Microsoft Intune, the device attributes in Microsoft Entra ID are updated with additional information about the device. This behavior allows you to create conditional access rules that enforce access from devices to meet your standards for security and compliance. For more information on enrolling devices in Microsoft Intune, see Enroll devices for management in Intune.

Joining a device is an extension to registering a device. This method provides you with all the benefits of registering a device, and changes the local state of a device. Changing the local state enables your users to sign-in to a device using an organizational work or school account instead of a personal account.

## Managed environment

Managed environments are for non-federated environments where Microsoft Entra ID manages the authentication using technologies such as Password Hash Synchronization and Pass-through Authentication rather than a federation service such as Active Directory Federation Services (ADFS).

## Pass-through authentication

Pass-through authentication provides a simple password validation for Microsoft Entra authentication services. It uses a software agent that runs on one or more on-premises servers to validate the users directly with your on-premises Active Directory. With pass-through authentication (PTA), you synchronize on-premises Active Directory user account objects with Microsoft Entra ID and manage your users on-premises. Allows your users to sign in to both on-premises and Microsoft cloud resources and applications using their on-premises account and password. This configuration validates users' passwords directly against your on-premises Active Directory without sending password hashes to Microsoft Entra ID. Companies with a security requirement to immediately enforce on-premises user account states, password policies, and sign-in hours would use this authentication method. With seamless single sign-on, users are automatically signed in to Microsoft Entra ID when they are on their corporate devices and connected to your corporate network.

## Password hash sync

Password hash sync is the simplest way to enable authentication for on-premises directory objects in Microsoft Entra ID. With password hash sync (PHS), you synchronize your on-premises Active Directory user account objects with Microsoft Entra ID and manage your users on-premises. Hashes of user passwords are synchronized from your on-premises Active Directory to Microsoft Entra ID so that the users have the same password on-premises and in the cloud. When passwords are changed or reset on-premises, the new password hashes are synchronized to Microsoft Entra ID so that your users can always use the same password for cloud resources and on-premises resources. The passwords are never sent to Microsoft Entra ID or stored in Microsoft Entra ID in clear text. Some premium features of Microsoft Entra ID, such as Identity Protection, require PHS regardless of which authentication method is selected. With seamless single sign-on, users are automatically signed in to Microsoft Entra ID when they are on their corporate devices and connected to your corporate network.

## Primary refresh token

Single sign on (SSO) relies on special tokens obtained for each of the types of applications above. These special tokens are then used to obtain access tokens to specific applications. In the traditional Windows Integrated authentication case using Kerberos, this token is a Kerberos TGT (ticket-granting ticket). For Microsoft Entra ID and AD FS applications, this token is a _primary refresh token_ (PRT). It's a [JSON Web Token](https://openid.net/specs/draft-jones-json-web-token-07.html) that contains claims about both the user and the device.

The PRT is initially obtained during Windows user sign-in or unlock in a similar way the Kerberos TGT is obtained. This behavior is true for both Microsoft Entra joined and Microsoft Entra hybrid joined devices. For personal devices registered with Microsoft Entra ID, the PRT is initially obtained upon Add Work or School Account. For a personal device the account to unlock the device isn't the work account, but a consumer account. For example, hotmail.com, live.com, or outlook.com.

The PRT is needed for SSO. Without it, the user will be prompted for credentials when accessing applications every time. The PRT also contains information about the device. If you have any [device-based conditional access](/azure/active-directory/conditional-access/concept-conditional-access-grant) policy set on an application, without the PRT, access will be denied.

## Storage root key

The storage root key (SRK) is also an asymmetric key pair (RSA with a minimum of 2048-bits length). The SRK has a major role and is used to protect TPM keys, so that these keys can't be used without the TPM. The SRK key is created when the ownership of the TPM is taken.

