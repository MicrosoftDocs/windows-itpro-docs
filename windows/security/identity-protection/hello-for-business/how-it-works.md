---
title: How Windows Hello for Business works
description: Learn how Windows Hello for Business works, and how it can help your users authenticate to services.
ms.date: 01/03/2024
ms.topic: overview
---

# How Windows Hello for Business works

Windows Hello for Business is a two-factor credential that is a more secure alternative to passwords.
Windows Hello lets your employees use fingerprint, facial recognition, or iris recognition as an alternative method to unlocking a device. With Windows Hello, authentication happens when the employee provides his or her unique biometric identifier while accessing the device-specific Windows Hello credentials.

The Windows Hello authenticator works to authenticate and allow employees onto your enterprise network. Authentication doesn't roam among devices, isn't shared with a server, and can't easily be extracted from a device. If multiple employees share a device, each employee will use his or her own biometric data on the device.

Windows Hello provides many benefits, including:

- It helps to strengthen your protections against credential theft. Because an attacker must have both the device and the biometric info or PIN, it's much more difficult to gain access without the employee's knowledge.
- Employees get a simple authentication method (backed up with a PIN) that's always with them, so there's nothing to lose. No more forgetting passwords!
- Support for Windows Hello is built into the operating system so you can add additional biometric devices and policies as part of a coordinated rollout or to individual employees or groups using Group Policy or Mobile Device Management (MDM) configurations service provider (CSP) policies.<br>For more info about the available Group Policies and MDM CSPs, see the [Implement Windows Hello for Business in your organization](configure.md) topic.


Windows Hello for Business is two-factor authentication based on the observed authentication factors of: *something you have*, *something you know*, and *something that's part of you*. Windows Hello for Business incorporates two of these factors: something you have (the user's private key protected by the device's security module) and something you know (your PIN). With the proper hardware, you can enhance the user experience by introducing biometrics. By using biometrics, you can replace the "something you know" authentication factor with the "something that is part of you" factor, with the assurances that users can fall back to the "something you know factor".

When using Windows Hello for Business, the PIN isn't a symmetric key, whereas the password is a symmetric key. With passwords, there's a server that has some representation of the password. With Windows Hello for Business, the PIN is user-provided entropy used to load the private key in the Trusted Platform Module (TPM). The server doesn't have a copy of the PIN. For that matter, the Windows client doesn't have a copy of the current PIN either. The user must provide the entropy, the TPM-protected key, and the TPM that generated that key in order to successfully access the private key.
The statement *PIN is stronger than Password* is not directed at the strength of the entropy used by the PIN. It's about the difference between providing entropy versus continuing the use of a symmetric key (the password). The TPM has anti-hammering features that thwart brute-force PIN attacks (an attacker's continuous attempt to try all combination of PINs). Some organizations may worry about shoulder surfing. For those organizations, rather than increase the complexity of the PIN, implement the [Multifactor Unlock](multifactor-unlock.md) feature.

> [!TIP]
> The Windows Hello for Business key meets Microsoft Entra multifactor authentication (MFA) requirements and reduces the number of MFA prompts users will see when accessing resources.
>
> For more information, see [What is a Primary Refresh Token](/azure/active-directory/devices/concept-primary-refresh-token#when-does-a-prt-get-an-mfa-claim).

## Windows Hello data storage

The biometric data used to support Windows Hello is stored on the local device only. It doesn't roam and is never sent to external devices or servers. This separation helps to stop potential attackers by providing no single collection point that an attacker could potentially compromise to steal biometric data. Additionally, even if an attacker was actually able to get the biometric data from a device, it cannot be converted back into a raw biometric sample that could be recognized by the biometric sensor.

> [!NOTE]
>Each sensor on a device will have its own biometric database file where template data is stored. Each database has a unique, randomly generated key that is encrypted to the system. The template data for the sensor will be encrypted with this per-database key using AES with CBC chaining mode. The hash is SHA256. Some fingerprint sensors have the capability to complete matching on the fingerprint sensor module instead of in the OS. These sensors will store biometric data on the fingerprint module instead of in the database file.

> C:\WINDOWS\System32\WinBioDatabase

## Technical Deep Dive

Windows Hello for Business is a distributed system that uses several components to accomplish device registration, provisioning, and authentication. Use this section to gain a better understanding of each of the categories and how they support Windows Hello for Business.

## Device Registration

Registration is a fundamental prerequisite for Windows Hello for Business.  Without registration, Windows Hello for Business provisioning cannot start. Registration is where the device **registers** its identity with the identity provider. For cloud and hybrid deployments, the identity provider is Microsoft Entra ID and the device registers with the Device Registration Service. For on-premises deployments, the identity provider is Active Directory Federation Services (AD FS), and the device registers with the enterprise device registration service hosted on the federation servers (AD FS).

All devices included in the Windows Hello for Business deployment must go through a process called *device registration*. Device registration enables devices to be associated and to authentiticate to an identity provider (IdP). Device registration is identified by the *join type*.

- Registering a device to Microsoft Entra ID enables you to manage a device's identity. When a device is registered, Microsoft Entra provides the device with an identity that is used to authenticate the device when a user signs-in to Microsoft Entra ID. You can use the identity to enable or disable a device. When combined with a mobile device management (MDM) solution such as Microsoft Intune, the device attributes in Microsoft Entra ID are updated with additional information about the device. This behavior allows you to create conditional access rules that enforce access from devices to meet your standards for security and compliance
- Joining a device to Microsoft Entra ID is an extension to registering a device. This method provides you with all the benefits of registering a device, and changes the local state of a device. Changing the local state enables your users to sign-in to a device using an organizational work or school account, instead of a personal account

For more information, read [how device registration works](/azure/active-directory/devices/device-registration-how-it-works).

## Provisioning

Provisioning is when the user uses one form of authentication to request a new Windows Hello for Business credential. Typically the user signs in to Windows using user name and password. The provisioning flow requires a second factor of authentication before it can create a strong, two-factor Windows Hello for Business credential.

:::row:::
    :::column:::
        Windows Hello generates a new public-private key pair on the device. The TPM generates and protects this private key; if the device doesn't have a TPM, the private key is encrypted and stored in software. This initial key is referred to as the *protector key*. It's associated only with a single gesture; in other words, if a user registers a PIN, a fingerprint, and a face on the same device, each of those gestures will have a unique protector key. **Each unique gesture generates a unique protector key**. The protector key securely wraps the *authentication key*. The container has only one authentication key, but there can be multiple copies of that key wrapped with different unique protector keys. Windows Hello also generates an administrative key that the user or administrator can use to reset credentials, when necessary (for example, when using the PIN reset service). In addition to the protector key, TPM-enabled devices generate a block of data that contains attestations from the TPM.
    :::column-end:::
    :::column:::
        :::image type="content" source="images/hello-container.png" alt-text="Diagram of the Windows Hello container.":::
    :::column-end:::
:::row-end:::

At this point, the user has a PIN gesture defined on the device and an associated protector key for that PIN gesture. That means the user is able to securely sign in to the device with the PIN and thus be able to establish a trusted session with the device to add support for a biometric gesture as an alternative for the PIN. When you add a biometric gesture, it follows the same basic sequence: the user authenticates to the system by using the PIN, and then registers the new biometric, after which Windows generates a unique key pair and stores it securely. Future sign-ins can then use either the PIN or the registered biometric gestures.

For more information, read [how provisioning works](how-it-works-provisioning.md).

### Attestation identity keys

Because the endorsement certificate is unique for each device and doesn't change, the usage of it may present privacy concerns because it's theoretically possible to track a specific device. To avoid this privacy problem, Windows issues a derived attestation anchor based on the endorsement certificate. This intermediate key, which can be attested to an endorsement key, is the Attestation Identity Key (AIK) and the corresponding certificate is called the AIK certificate. This AIK certificate is issued by a Microsoft cloud service.

> [!NOTE]
> The AIK certificate must be provisioned in conjunction with a third-party service like the Microsoft Cloud CA service. After it is provisioned, the AIK private key can be used to report platform configuration. Windows creates a signature over the platform log state (and a monotonic counter value) at each boot by using the AIK.
> The AIK is an asymmetric (public/private) key pair that is used as a substitute for the EK as an identity for the TPM for privacy purposes. The private portion of an AIK is never revealed or used outside the TPM and can only be used inside the TPM for a limited set of operations. Furthermore, it can only be used for signing, and only for limited, TPM-defined operations.

Windows creates AIKs protected by the TPM, if available, that are 2048-bit RSA signing keys. Microsoft hosts a cloud service called Microsoft Cloud CA to establish cryptographically that it's communicating with a real TPM and that the TPM possesses the presented AIK. After the Microsoft Cloud CA service has established these facts, it will issue an AIK certificate to the Windows device.

Many existing devices that will upgrade to Windows 10 won't have a TPM, or the TPM won't contain an endorsement certificate. **To accommodate those devices, Windows 10 or Windows 11 allows the issuance of AIK certificates without the presence of an endorsement certificate.** Such AIK certificates aren't issued by Microsoft Cloud CA. This behavior isn't as trustworthy as an endorsement certificate that is burned into the device during manufacturing, but it will provide compatibility for advanced scenarios like Windows Hello for Business without TPM.

In the issued AIK certificate, a special OID is added to attest that endorsement certificate was used during the attestation process. This information can be used by a relying party to decide whether to reject devices that are attested using AIK certificates without an endorsement certificate or accept them. Another scenario can be to not allow access to high-value assets from devices that are attested by an AIK certificate that's not backed by an endorsement certificate.

### Endorsement key

The TPM has an embedded unique cryptographic key called the endorsement key. The TPM endorsement key is a pair of asymmetric keys (RSA size 2048 bits).

The endorsement key public key is used for sending securely sensitive parameters, such as when taking possession of the TPM that contains the defining hash of the owner password. The EK private key is used when creating secondary keys like AIKs.

The endorsement key acts as an identity card for the TPM.

The endorsement key is often accompanied by one or two digital certificates:

- One certificate is produced by the TPM manufacturer and is called the **endorsement certificate**. The endorsement certificate is used to prove the authenticity of the TPM (for example, that it's a real TPM manufactured by a specific chip maker) to local processes, applications, or cloud services. The endorsement certificate is created during manufacturing or the first time the TPM is initialized by communicating with an online service.
- The other certificate is produced by the platform builder and is called the **platform certificate** to indicate that a specific TPM is integrated with a certain device.

For certain devices that use firmware-based TPM produced by Intel or Qualcomm, the endorsement certificate is created when the TPM is initialized during Windows OOBE.

### Storage root key

The storage root key (SRK) is also an asymmetric key pair (RSA with a minimum of 2048-bits length). The SRK has a major role and is used to protect TPM keys, so that these keys can't be used without the TPM. The SRK key is created when the ownership of the TPM is taken.

## Authentication

With the device registered and provisioning complete, users can sign-in to Windows using biometrics or a PIN. PIN is the most common gesture and is available on all computers unless restricted by policy requiring a TPM. Regardless of the gesture used, authentication occurs using the private portion of the Windows Hello for Business credential. Neither the PIN nor the private portion of the credential are ever sent to the identity provider, and the PIN is not stored on the device. It is user provided entropy when performing operations that use the private portion of the credential.

When a user wants to access protected key material, the authentication process begins with the user entering a PIN or biometric gesture to unlock the device, a process sometimes called releasing the key. Think of it like using a physical key to unlock a door: before you can unlock the door, you need to remove the key from your pocket or purse. The user's PIN unlocks the protector key for the container on the device. When that container is unlocked, applications (and thus the user) can use whatever IDP keys reside inside the container.
These keys are used to sign requests that are sent to the IDP, requesting access to specified resources. It's important to understand that although the keys are unlocked, applications cannot use them at will. Applications can use specific APIs to request operations that require key material for particular actions (for example, decrypt an email message or sign in to a website). Access through these APIs doesn't require explicit validation through a user gesture, and the key material isn't exposed to the requesting application. Rather, the application asks for authentication, encryption, or decryption, and the Windows Hello layer handles the actual work and returns the results. Where appropriate, an application can request a forced authentication even on an unlocked device. Windows prompts the user to reenter the PIN or perform an authentication gesture, which adds an extra level of protection for sensitive data or actions. For example, you can configure an application to require re-authentication anytime a specific operation is performed, even though the same account and PIN or gesture were already used to unlock the device.

For more information read [how authentication works](how-it-works-authentication.md).

### Primary refresh token

Single sign on (SSO) relies on special tokens obtained for each of the types of applications above. These special tokens are then used to obtain access tokens to specific applications. In the traditional Windows Integrated authentication case using Kerberos, this token is a Kerberos TGT (ticket-granting ticket). For Microsoft Entra ID and AD FS applications, this token is a _primary refresh token_ (PRT). It's a [JSON Web Token](https://openid.net/specs/draft-jones-json-web-token-07.html) that contains claims about both the user and the device.

The PRT is initially obtained during Windows user sign-in or unlock in a similar way the Kerberos TGT is obtained. This behavior is true for both Microsoft Entra joined and Microsoft Entra hybrid joined devices. For personal devices registered with Microsoft Entra ID, the PRT is initially obtained upon Add Work or School Account. For a personal device the account to unlock the device isn't the work account, but a consumer account. For example, hotmail.com, live.com, or outlook.com.

The PRT is needed for SSO. Without it, the user will be prompted for credentials when accessing applications every time. The PRT also contains information about the device. If you have any [device-based conditional access](/azure/active-directory/conditional-access/concept-conditional-access-grant) policy set on an application, without the PRT, access will be denied.


### Windows Hello for Business and password changes

Changes to a user account password doesn't affect sign-in or unlock, since Windows Hello for Business uses a key or certificate.

## How Windows Hello for Business works: key points

- Windows Hello credentials are based on certificate or asymmetrical key pair. Windows Hello credentials can be bound to the device, and the token that is obtained using the credential is also bound to the device.
- An identity provider validates the user identity and maps the Windows Hello public key to a user account during the registration step. Example providers are Active Directory, Microsoft Entra ID, or a Microsoft account.
- Keys can be generated in hardware (TPM 1.2 or 2.0 for enterprises, and TPM 2.0 for consumers) or software, based on the policy. To guarantee that keys are generated in hardware, you must set policy.
- Authentication is the two-factor authentication with the combination of a key or certificate tied to a device and something that the person knows (a PIN) or something that the person is (biometrics). The Windows Hello gesture doesn't roam between devices and isn't shared with the server. Biometrics templates are stored locally on a device. The PIN is never stored or shared.
- The private key never leaves a device when using TPM. The authenticating server has a public key that is mapped to the user account during the registration process.
- PIN entry and biometric gesture both trigger Windows 10 and later to use the private key to cryptographically sign data that is sent to the identity provider. The identity provider verifies the user's identity and authenticates the user.
- Personal (Microsoft account) and corporate (Active Directory or Microsoft Entra ID) accounts use a single container for keys. All keys are separated by identity providers' domains to help ensure user privacy.
- Certificate private keys can be protected by the Windows Hello container and the Windows Hello gesture.

## Next steps

> [!div class="nextstepaction"]
> Whether you have have a cloud-only deployment, hybrid, or on-premises, Windows Hello for Business has a deployment option for you. To learn more, see [Plan a Windows Hello for Business Deployment](deploy/index.md).
>
> [Plan a Windows Hello for Business Deploymen](deploy/index.md)


<!--








-->