---
title: How Windows Hello for Business works
description: Learn how Windows Hello for Business works, and how it can help your users authenticate to services.
ms.date: 01/03/2024
ms.topic: overview
---

# How Windows Hello for Business works

<!--

## How Windows Hello for Business works: key points

- Windows Hello credentials are based on certificate or asymmetrical key pair. Windows Hello credentials can be bound to the device, and the token that is obtained using the credential is also bound to the device.
- 
- Keys can be generated in hardware (TPM 1.2 or 2.0 for enterprises, and TPM 2.0 for consumers) or software, based on the policy. To guarantee that keys are generated in hardware, you must set policy.
- Authentication is the two-factor authentication with the combination of a key or certificate tied to a device and something that the person knows (a PIN) or something that the person is (biometrics). The Windows Hello gesture doesn't roam between devices and isn't shared with the server. Biometrics templates are stored locally on a device. The PIN is never stored or shared.
- The private key never leaves a device when using TPM. The authenticating server has a public key that is mapped to the user account during the registration process.
- Certificate private keys can be protected by the Windows Hello container and the Windows Hello gesture.
-->

Windows Hello for Business is a distributed system that requires multiple technologies to work together. To simplify the explanation of how Windows Hello for Business works, it can be broken down into 5 phases. 2 of these phases are required only for specific deplyoment types.

:::row:::
    :::column span="":::
    **Device Registration**
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    :::image type="content" source="images/howitworks/device-registration.png" alt-text="Icon representing the device registration phase." border="false":::
    :::column-end:::
    :::column span="3":::
    Registration is a prerequisite for Windows Hello for Business. Without device registration, Windows Hello for Business provisioning cannot start.
    
    During device registration, the device registers its identity with the identity provider (IdP), so that it can be associated and authenticate to the IdP. The IdP can be Active Directory or Microsoft Entra ID.
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="":::
    **Provisioning**
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    :::image type="content" source="images/howitworks/provisioning.png" alt-text="Icon representing the provisioning phase." border="false":::
    :::column-end:::
    :::column span="3":::
    During this phase, the user authenticates using one form of authentication (typically, username/password) to request a new Windows Hello for Business credential. The provisioning flow requires a second factor of authentication before it can create a strong, two-factor Windows Hello for Business credential.

    After multi-factor authentication (MFA), the provisioning process generates a key pair bound to the Trusted Platform Module (TPM), if available, or in software:
    - the private key is protected by the TPM and can't be exported
    - the public key is registered with the IdP and the private key is stored in the TPM
    
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="":::
    **Key Registration**
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    :::image type="content" source="images/howitworks/synchronization.png" alt-text="Icon representing the synchronization phase." border="false":::
    :::column-end:::
    :::column span="3":::
        In this phase, applicable only to hybrid deploments, the user's public key is synchronized from Microsoft Entra ID to Active Directory.
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="":::
    **Certificate enrollment**
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    :::image type="content" source="images/howitworks/certificate-enrollment.png" alt-text="Icon representing the certificate enrollment phase." border="false":::
    :::column-end:::
    :::column span="3":::
    This phase occurs only in certificate trust deployments. A user certificate is issued by an internal PKI and the public key stored in the Windows Hello container 
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="":::
    **Authentication**
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    :::image type="content" source="images/howitworks/authentication.png" alt-text="Icon representing the authentication phase." border="false":::
    :::column-end:::
    :::column span="3":::
    In this last phase, users can sign-in to Windows using biometrics or a PIN. Regardless of the gesture used, authentication occurs using the private portion of the Windows Hello for Business credential.

    The user provides a gesture and the IdP validates the user identity by mapping the user account to the public key used during the key registration phase.

    :::column-end:::
:::row-end:::

The following sections provide deeper insight into each of these components.

## Device Registration

All devices included in the Windows Hello for Business deployment must go through a process called *device registration*. Device registration enables devices to be associated and to authentiticate to an IdP:

- For cloud and hybrid deployments, the identity provider is Microsoft Entra ID and the device registers with the *Device Registration Service*
- For on-premises deployments, the identity provider is Active Directory Federation Services (AD FS), and the device registers with the *Enterprise Device Registration Service* hosted on AD FS

When a device is registered, the IdP provides the device with an identity that is used to authenticate the device when a user signs-in.

Device registration is identified by the *join type*. For more information, see [how device registration works](/entra/identity/devices/device-registration-how-it-works).

## Provisioning

The IdP validates the user identity and maps the Windows Hello public key to a user account during the registration step.

<!--
The provisioning phase begins once device registration completes, and after the device receives a policy that enables Windows Hello for Business.
1. When the policy is received, if all the prerequisites are met, the user will be able to configure WHfB
        > [!TIP]
        > The `dsregcmd.exe` tool is critical to solve registration and provisioning issues
    1. The device receives a policy that enables WHfB and passes all the pre-requisites (based on  the deployment type). A user provisions, or *enrolls*, Windows Hello by authenticating to the IdP with MFA.
    1. After successful MFA, the user must provide a gesture and PIN which will trigger a key pair generation in TPM    
    1. 
    1. 
    1. 
    1. 
    1. 


 Access to these keys and obtaining a signature to validate user possession of the private key is enabled only by the PIN or biometric gesture. The two-step verification that takes place during Windows Hello enrollment creates a trusted relationship between the identity provider and the user when the public portion of the public/private key pair is sent to an identity provider and associated with a user account. When a user enters the gesture on the device, the identity provider knows that it's a verified identity, because of the combination of Windows Hello keys and gestures. It then provides an authentication token that allows Windows to access resources and services.

### Use gesture and key generation in TPM

#### Attestation identity keys

Because the endorsement certificate is unique for each device and doesn't change, the usage of it may present privacy concerns because it's theoretically possible to track a specific device. To avoid this privacy problem, Windows issues a derived attestation anchor based on the endorsement certificate. This intermediate key, which can be attested to an endorsement key, is the Attestation Identity Key (AIK) and the corresponding certificate is called the AIK certificate. This AIK certificate is issued by a Microsoft cloud service.

> [!NOTE]
> The AIK certificate must be provisioned in conjunction with a third-party service like the Microsoft Cloud CA service. After it is provisioned, the AIK private key can be used to report platform configuration. Windows creates a signature over the platform log state (and a monotonic counter value) at each boot by using the AIK.
> The AIK is an asymmetric (public/private) key pair that is used as a substitute for the EK as an identity for the TPM for privacy purposes. The private portion of an AIK is never revealed or used outside the TPM and can only be used inside the TPM for a limited set of operations. Furthermore, it can only be used for signing, and only for limited, TPM-defined operations.

Windows creates AIKs protected by the TPM, if available, that are 2048-bit RSA signing keys. Microsoft hosts a cloud service called Microsoft Cloud CA to establish cryptographically that it's communicating with a real TPM and that the TPM possesses the presented AIK. After the Microsoft Cloud CA service has established these facts, it will issue an AIK certificate to the Windows device.

Many existing devices that will upgrade to Windows 10 won't have a TPM, or the TPM won't contain an endorsement certificate. **To accommodate those devices, Windows 10 or Windows 11 allows the issuance of AIK certificates without the presence of an endorsement certificate.** Such AIK certificates aren't issued by Microsoft Cloud CA. This behavior isn't as trustworthy as an endorsement certificate that is burned into the device during manufacturing, but it will provide compatibility for advanced scenarios like Windows Hello for Business without TPM.

In the issued AIK certificate, a special OID is added to attest that endorsement certificate was used during the attestation process. This information can be used by a relying party to decide whether to reject devices that are attested using AIK certificates without an endorsement certificate or accept them. Another scenario can be to not allow access to high-value assets from devices that are attested by an AIK certificate that's not backed by an endorsement certificate.

#### Endorsement key

The TPM has an embedded unique cryptographic key called the endorsement key. The TPM endorsement key is a pair of asymmetric keys (RSA size 2048 bits).

The endorsement key public key is used for sending securely sensitive parameters, such as when taking possession of the TPM that contains the defining hash of the owner password. The EK private key is used when creating secondary keys like AIKs.

The endorsement key acts as an identity card for the TPM.

The endorsement key is often accompanied by one or two digital certificates:

- One certificate is produced by the TPM manufacturer and is called the **endorsement certificate**. The endorsement certificate is used to prove the authenticity of the TPM (for example, that it's a real TPM manufactured by a specific chip maker) to local processes, applications, or cloud services. The endorsement certificate is created during manufacturing or the first time the TPM is initialized by communicating with an online service.
- The other certificate is produced by the platform builder and is called the **platform certificate** to indicate that a specific TPM is integrated with a certain device.

For certain devices that use firmware-based TPM produced by Intel or Qualcomm, the endorsement certificate is created when the TPM is initialized during Windows OOBE.

#### Storage root key

The storage root key (SRK) is also an asymmetric key pair (RSA with a minimum of 2048-bits length). The SRK has a major role and is used to protect TPM keys, so that these keys can't be used without the TPM. The SRK key is created when the ownership of the TPM is taken.
-->

### Windows Hello data storage

The biometric data used to support Windows Hello is stored on the local device only. It doesn't roam and is never sent to external devices or servers. This separation helps to stop potential attackers by providing no single collection point that an attacker could potentially compromise to steal biometric data. Additionally, even if an attacker was actually able to get the biometric data from a device, it cannot be converted back into a raw biometric sample that could be recognized by the biometric sensor.

> [!NOTE]
>Each sensor on a device will have its own biometric database file where template data is stored. Each database has a unique, randomly generated key that is encrypted to the system. The template data for the sensor will be encrypted with this per-database key using AES with CBC chaining mode. The hash is SHA256. Some fingerprint sensors have the capability to complete matching on the fingerprint sensor module instead of in the OS. These sensors will store biometric data on the fingerprint module instead of in the database file.

> C:\WINDOWS\System32\WinBioDatabase

### Key registration

:::row:::
    :::column:::
        Windows Hello generates a new public-private key pair on the device. The TPM generates and protects this private key; if the device doesn't have a TPM, the private key is encrypted and stored in software. This initial key is referred to as the *protector key*. It's associated only with a single gesture: if a user registers a PIN, a fingerprint, and a face on the same device, each of those gestures will have a unique protector key. **Each unique gesture generates a unique protector key**. The protector key securely wraps the *authentication key*. The container has only one authentication key, but there can be multiple copies of that key wrapped with different unique protector keys.
    :::column-end:::
    :::column:::
        :::image type="content" source="images/hello-container.png" alt-text="Diagram of the Windows Hello container." lightbox="images/hello-container.png" border="false":::
    :::column-end:::
:::row-end:::

Personal (Microsoft account) and corporate (Active Directory or Microsoft Entra ID) accounts use a single container for keys. All keys are separated by identity providers' domains to help ensure user privacy.

Windows Hello also generates an administrative key that the user or administrator can use to reset credentials, when necessary (for example, when using the PIN reset service). In addition to the protector key, TPM-enabled devices generate a block of data that contains attestations from the TPM.

At this point, the user has a PIN gesture defined on the device and an associated protector key for that PIN gesture. That means the user is able to securely sign in to the device with the PIN and thus be able to establish a trusted session with the device to add support for a biometric gesture as an alternative for the PIN. When you add a biometric gesture, it follows the same basic sequence: the user authenticates to the system by using the PIN, and then registers the new biometric, after which Windows generates a unique key pair and stores it securely. Future sign-ins can then use either the PIN or the registered biometric gestures.

For more information, read [how provisioning works](how-it-works-provisioning.md).
-->

## Key synchronization (optional)

## Certificate enrollment (optional)

## Authentication

PIN entry and biometric gesture both trigger Windows to use the private key to cryptographically sign data that is sent to the identity provider. The identity provider verifies the user's identity and authenticates the user.

Neither the PIN nor the private portion of the credential are ever sent to the IdP, and the PIN is not stored on the device. The PIN and bio gestures are user-provided entropy when performing operations that use the private portion of the credential.

When a user wants to access protected key material, the authentication process begins with the user entering a PIN or biometric gesture to unlock the device, a process sometimes called releasing the key. Think of it like using a physical key to unlock a door: before you can unlock the door, you need to remove the key from your pocket or purse. The user's PIN unlocks the protector key for the container on the device. When that container is unlocked, applications (and thus the user) can use whatever IDP keys reside inside the container.

These keys are used to sign requests that are sent to the IdP, requesting access to specified resources.

> [!IMPORTANT]
> Although the keys are unlocked, applications cannot use them at will. Applications can use specific APIs to request operations that require key material for particular actions (for example, decrypt an email message or sign in to a website). Access through these APIs doesn't require explicit validation through a user gesture, and the key material isn't exposed to the requesting application. Rather, the application asks for authentication, encryption, or decryption, and the Windows Hello layer handles the actual work and returns the results. Where appropriate, an application can request a forced authentication even on an unlocked device. Windows prompts the user to reenter the PIN or perform an authentication gesture, which adds an extra level of protection for sensitive data or actions. For example, you can configure an application to require re-authentication anytime a specific operation is performed, even though the same account and PIN or gesture were already used to unlock the device.

For more information read [how authentication works](how-it-works-authentication.md).

### Primary refresh token

Single sign-on (SSO) relies on special tokens obtained for each of the types of applications above. These special tokens are then used to obtain access tokens to specific applications. In the traditional Windows Integrated authentication case using Kerberos, this token is a Kerberos TGT (ticket-granting ticket). For Microsoft Entra ID and AD FS applications, this token is a *primary refresh token* (PRT). It's a [JSON Web Token](https://openid.net/specs/draft-jones-json-web-token-07.html) that contains claims about both the user and the device.

The PRT is initially obtained during sign-in or unlock in a similar way the Kerberos TGT is obtained. This behavior is true for both Microsoft Entra joined and Microsoft Entra hybrid joined devices. For personal devices registered with Microsoft Entra ID, the PRT is initially obtained upon *Add Work or School Account*. For a personal device, the account to unlock the device isn't the work account, but a consumer account referred as *Microsoft account*.

The PRT is needed for SSO. Without it, users would be prompted for credentials every time they access applications. The PRT also contains information about the device. If you have any [device-based conditional access](/azure/active-directory/conditional-access/concept-conditional-access-grant) policies set on an application, without the PRT access is denied.

### Windows Hello for Business and password changes

Changes to a user account password doesn't affect sign-in or unlock, since Windows Hello for Business uses a key or certificate.

## Next steps

> [!div class="nextstepaction"]
> Whether you have have a cloud-only deployment, hybrid, or on-premises, Windows Hello for Business has a deployment option for you. To learn more, see [Plan a Windows Hello for Business Deployment](deploy/index.md).
>
> [Plan a Windows Hello for Business Deploymen](deploy/index.md)
