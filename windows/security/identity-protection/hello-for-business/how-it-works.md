---
title: How Windows Hello for Business works
description: Learn how Windows Hello for Business works, and how it can help you protect your organization.
ms.date: 04/23/2024
ms.topic: concept-article
---

# How Windows Hello for Business works

Windows Hello for Business is a distributed system that requires multiple technologies to work together. To simplify the explanation of how Windows Hello for Business works, let's break it down into five phases, which represent the chronological order of the deployment process.

> [!NOTE]
> Two of these phases are required only for certain deployment scenarios.
>
> The deployment scenarios are described in the article: [Plan a Windows Hello for Business deployment](deploy/index.md).

:::row:::
    :::column span="1":::
    :::image type="content" source="images/howitworks/device-registration.png" alt-text="Icon representing the device registration phase." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Device registration phase
    :::column-end:::
:::row-end:::

In this phase, the device registers its identity with the identity provider (IdP), so that it can be associated and authenticate to the IdP.

:::row:::
    :::column span="1":::
    :::image type="content" source="images/howitworks/provision.png" alt-text="Icon representing the provisioning phase." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Provisioning phase
    :::column-end:::
:::row-end:::

During this phase, the user authenticates using one form of authentication (typically, username/password) to request a new Windows Hello for Business credential. The provisioning flow requires a second factor of authentication before it can generate a public/private key pair. The public key is registered with the IdP, mapped to the user account.

:::row:::
    :::column span="1":::
    :::image type="content" source="images/howitworks/synchronization.png" alt-text="Icon representing the synchronization phase." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Key synchronization phase
    :::column-end:::
:::row-end:::

In this phase, **required by some hybrid deployments**, the user's public key is synchronized from Microsoft Entra ID to Active Directory.

:::row:::
    :::column span="1":::
    :::image type="content" source="images/howitworks/certificate-enrollment.png" alt-text="Icon representing the certificate enrollment phase." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Certificate enrollment phase
    :::column-end:::
:::row-end:::

In this phase, **required only by deployments using certificates**, a certificate is issued to the user using the organization's public key infrastructure (PKI).

:::row:::
    :::column span="1":::
    :::image type="content" source="images/howitworks/authentication.png" alt-text="Icon representing the authentication phase." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Authentication phase
    :::column-end:::
:::row-end:::

In this last phase, the user can sign-in to Windows using biometrics or a PIN. Regardless of the gesture used, authentication occurs using the private portion of the Windows Hello for Business credential. The IdP validates the user identity by mapping the user account to the public key registered during the provisioning phase.

The following sections provide deeper insights into each of these phases.

## Device Registration

All devices included in the Windows Hello for Business deployment must go through a process called *device registration*. Device registration enables devices to be associated and to authenticate to an IdP:

- For cloud and hybrid deployments, the identity provider is Microsoft Entra ID, and the device registers with the *Device Registration Service*
- For on-premises deployments, the identity provider is Active Directory Federation Services (AD FS), and the device registers with the *Enterprise Device Registration Service* hosted on AD FS

When a device is registered, the IdP provides the device with an identity that is used to authenticate the device when a user signs in.

There are different registration types, which are identified as *join type*. For more information, see [What is a device identity][ENTRA-1].

For detailed sequence diagrams, see [how device registration works][ENTRA-4].

## Provisioning

:::row:::
    :::column:::
    Windows Hello provisioning is triggered once device registration completes, and after the device receives a policy that enables Windows Hello. If all the prerequisites are met, a Cloud eXperience Host (CXH) window is launched to take the user through the provisioning flow.
    :::column-end:::
    :::column:::
    :::image type="content" source="images/howitworks/cxh-provision.png" alt-text="Screenshot of the Cloud Experience Host prompting the user to provision Windows Hello." border="false" lightbox="images/howitworks/cxh-provision.png":::
    :::column-end:::
:::row-end:::

> [!NOTE]
>
> Depending on the deployment type, Windows Hello for Business provisioning is launched only if:
>
> - The device meets the Windows Hello hardware requirements
> - The device is joined to Active Directory or Microsoft Entra ID
> - The user signs in with an account defined in Active Directory or Microsoft Entra ID
> - The Windows Hello for Business policy is enabled
> - The user is not connected to the machine via Remote Desktop
>
> Additional prerequisites for specific deployment types are described in the article [Plan a Windows Hello for Business deployment](deploy/index.md).

During the provisioning phase, a *Windows Hello container* is created. A Windows Hello container is a logical grouping of *key material*, or data. The container holds organization's credentials only on devices that are *registered* with the organization's IdP.

> [!NOTE]
> There are no physical containers on disk, in the registry, or elsewhere. Containers are logical units used to group related items. The keys, certificates, and credentials that Windows Hello stores, are protected without the creation of actual containers or folders.

Here are the steps involved with the provisioning phase:

1. In the CXH window, the user is prompted to authenticate to the IdP with MFA
1. After successful MFA, the user must provide a bio gesture (if available), and a PIN
1. After the PIN confirmation, the Windows Hello container is created
1. A public/private key pair is generated. The key pair is bound to the Trusted Platform Module (TPM), if available, or in software
1. The private key is stored locally and protected by the TPM, and can't be exported
1. The public key is registered with the IdP, mapped to the user account
    1. The Device Registration Service writes the key to the user object in Microsoft Entra ID
    1. For on-premises scenarios, AD FS writes the key to Active Directory

The following video shows the Windows Hello for Business enrollment steps after signing in with a password:

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=36dc8679-0fcc-4abf-868d-97ec8b749da7 alt-text="Video showing the Windows Hello for Business enrollment steps after signing in with a password."]

For more information and detailed sequence diagrams, see [how provisioning works](how-it-works-provisioning.md).

### Windows Hello container details

:::row:::
    :::column:::
        During the provisioning phase, Windows Hello generates a new public/private key pair on the device. The TPM generates and protects the private key. If the device doesn't have a TPM, the private key is encrypted and stored in software. This initial key is referred to as the *protector key*. The protector key is associated with a single gesture: if a user registers a PIN, a fingerprint, and a face on the same device, each of those gestures has a unique protector key.

        The protector key securely wraps the *authentication key*. The authentication key is used to unlock the *user ID keys*. The container has only one authentication key, but there can be multiple copies of that key wrapped with different unique protector keys.
    :::column-end:::
    :::column:::
        :::image type="content" source="images/howitworks/hello-container.png" alt-text="Diagram of the Windows Hello container." border="false" lightbox="images/howitworks/hello-container.png":::
    :::column-end:::
:::row-end:::

Each protector encrypts its own copy of the authentication key. How the encryption is performed is up to the protector itself. For example, the PIN protector performs a TPM seal operation using the PIN as entropy, or when no TPM is available, performs symmetric encryption of the authentication key using a key derived from the PIN itself.

> [!IMPORTANT]
> Keys can be generated in hardware (TPM 1.2 or 2.0) or software, based on the configured policy setting. To guarantee that keys are generated in hardware, you must configure a policy setting. For more information, see [Use a hardware security device](policy-settings.md#use-a-hardware-security-device).

Personal (Microsoft account) and Work or School (Active Directory or Microsoft Entra ID) accounts use a single container for keys. All keys are separated by identity providers' domains to help ensure user privacy.

Windows Hello also generates an *administrative key*. The administrative key can be used to reset credentials when necessary. For example, when using the [PIN reset service](pin-reset.md). In addition to the protector key, TPM-enabled devices generate a block of data that contains attestations from the TPM.

Access to the key material stored in the container, is enabled only by the PIN or biometric gesture. The two-step verification that takes place during provisioning creates a trusted relationship between the IdP and the user. This happens when the public portion of the public/private key pair is sent to an identity provider and associated with the user account. When a user enters the gesture on the device, the identity provider knows that it's a verified identity, because of the combination of Windows Hello keys and gestures. It then provides an authentication token that allows Windows to access resources and services.

A container can contain several types of key material:

- An *authentication key*, which is always an asymmetric public-private key pair. This key pair is generated during registration. It must be unlocked each time it's accessed, by using either the user's PIN or a biometric gesture. The authentication key exists until the user resets the PIN, at which time a new key is generated. When the new key is generated, all the key material that the old key previously protected must be decrypted and re-encrypted using the new key
- One or multiple *user ID keys*. These keys can be either symmetric or asymmetric, depending on which IdP you use. For certificate-based Windows Hello for Work, when the container is unlocked, applications that require access to the user ID key or key pair can request access. User ID keys are used to sign or encrypt authentication requests or tokens sent from this device to the IdP. User ID keys are typically long-lived but could have a shorter lifetime than the authentication key. Microsoft accounts, Active Directory accounts, and Microsoft Entra accounts all require the use of asymmetric key pairs. The device generates public and private keys, registers the public key with the IdP (which stores it for later verification), and securely stores the private key. For organizations, the user ID keys can be generated in two ways:
  - The user ID key pair can be associated with an organization's Certificate Authority (CA). This option lets organizations that have an existing PKI continue to use it where appropriate. Given that many applications, such as VPN solutions, require the use of certificates, when you deploy Windows Hello in this mode, it allows a faster transition away from user passwords while still preserving certificate-based functionality. This option also allows the organization to store other certificates in the protected container. For example, certificates that allow the user to authenticate via RDP
  - The IdP can generate the user ID key pair directly, which allows quick, lower-overhead deployment of Windows Hello in environments that don't have or need a PKI

User ID keys are used to authenticate the user to a service. For example, by signing a nonce to prove possession of the private key, which corresponds to a registered public key. Users with an Active Directory, Microsoft Entra ID or Microsoft account have a key associated with their account. The key can be used to sign into their Windows device by authenticating to a domain controller (Active Directory scenario), or to the cloud (Microsoft Entra ID and MSA scenarios).

Windows Hello can also be used as a FIDO2 authenticator to authenticate to any website that supports WebAuthn. Websites or application can create a FIDO user ID key in the user's Windows Hello container using APIs. On subsequent visits, the user can authenticate to the website or app using their Windows Hello PIN or biometric gesture.

To learn more how Windows uses the TPM in support of Windows Hello for Business, see [How Windows uses the Trusted Platform Module](../../hardware-security/tpm/how-windows-uses-the-tpm.md).

### Biometric data storage

The biometric data used to support Windows Hello is stored on the local device only. It doesn't roam and is never sent to external devices or servers. This separation helps to stop potential attackers by providing no single collection point that an attacker could potentially compromise to steal biometric data. Even if an attacker could obtain the biometric data from a device, it couldn't be converted back into a raw biometric sample recognizable by the biometric sensor.

Each sensor has its own biometric database file where template data is stored (path `C:\WINDOWS\System32\WinBioDatabase`). Each database file has a unique, randomly generated key that is encrypted to the system. The template data for the sensor is encrypted with the per-database key using AES with CBC chaining mode. The hash is SHA256.

> [!NOTE]
>Some fingerprint sensors have the capability to complete matching on the fingerprint sensor module instead of in the OS. These sensors store biometric data on the fingerprint module instead of in the database file. For more information, see [Windows Hello Enhanced Security Sign-in (ESS)][WINH-1].

## Key synchronization

Key synchronization is required in hybrid environments. After the user provisions a Windows Hello for Business credential, the key must synchronize from Microsoft Entra ID to Active Directory.

The user's public key is written to the `msDS-KeyCredentialLink` attribute of the user object in Active Directory. The synchronization is handled by Microsoft Entra Connect Sync.

## Certificate enrollment

For certificate deployments, after registering the key, the client generates a certificate request. The request is sent to the Certificate Registration Authority (CRA). The CRA is on the Active Directory Federation Services (AD FS) server, which validates the certificate request and fulfills it using the enterprise PKI.

A certificate is enrolled on the user's Hello container, which is used to authenticate to on-premises resources.

## Authentication

Windows Hello credentials are based on certificate or asymmetrical key pair. Windows Hello credentials, and the token that is obtained using those credentials, are bound to the device.

Authentication is the two-factor authentication with the combination of:

- A key, or certificate, tied to a device and
  - something that the person knows (a PIN) or
  - something that the person is (biometrics)

PIN entry and biometric gesture both trigger Windows to use the private key to cryptographically sign data that is sent to the identity provider. The IdP verifies the user's identity and authenticates the user.

The PIN or the private portion of the credentials is never sent to the IdP, and the PIN isn't stored on the device. The PIN and bio gestures are *user-provided entropy* when performing operations that use the private portion of the credential.

When a user wants to access protected key material, the authentication process begins with the user entering a PIN or biometric gesture to unlock the device, a process sometimes called *releasing the key*. Think of it like using a physical key to unlock a door: before you can unlock the door, you need to remove the key from your pocket or purse. The user's PIN unlocks the protector key for the container on the device. When that container is unlocked, applications (and thus the user) can use whatever User ID keys reside inside the container.

These keys are used to sign requests that are sent to the IdP, requesting access to specified resources.

> [!IMPORTANT]
> Although the keys are unlocked, applications cannot use them at will. Applications can use specific APIs to request operations that require key material for particular actions (for example, decrypt an email message or sign in to a website). Access through these APIs doesn't require explicit validation through a user gesture, and the key material isn't exposed to the requesting application. Rather, the application asks for authentication, encryption, or decryption, and the Windows Hello layer handles the actual work and returns the results. Where appropriate, an application can request a forced authentication even on an unlocked device. Windows prompts the user to reenter the PIN or perform an authentication gesture, which adds an extra level of protection for sensitive data or actions. For example, you can configure an application to require re-authentication anytime a specific operation is performed, even though the same account and PIN or gesture were already used to unlock the device.

For more information and detailed sequence diagrams, see [how authentication works](how-it-works-authentication.md).

### Primary refresh token

Single sign-on (SSO) relies on special tokens obtained to access specific applications. In the traditional Windows Integrated authentication case using Kerberos, the token is a Kerberos TGT (ticket-granting ticket). For Microsoft Entra ID and AD FS applications, this token is a *primary refresh token* (PRT). It's a [JSON Web Token][WEB-1] that contains claims about both the user and the device.

The PRT is initially obtained during sign-in or unlock in a similar way the Kerberos TGT is obtained. This behavior is true for both Microsoft Entra joined and Microsoft Entra hybrid joined devices. For personal devices registered with Microsoft Entra ID, the PRT is initially obtained upon *Add Work or School Account*. For a personal device, the account to unlock the device isn't the work account, but a consumer account (*Microsoft account*).

The PRT is needed for SSO. Without it, users would be prompted for credentials every time they access applications. The PRT also contains information about the device. If you have any [device-based conditional access][ENTRA-3] policies set on an application, without the PRT access is denied.

> [!TIP]
> The Windows Hello for Business key meets Microsoft Entra multifactor authentication (MFA) requirements and reduces the number of MFA prompts users will see when accessing resources.

For more information, see [What is a Primary Refresh Token][ENTRA-2].

### Windows Hello for Business and password changes

Changing a user account password doesn't affect sign-in or unlock, since Windows Hello for Business uses a key or certificate.

However, when users are required to change their password (for example, due to password expiration policies), then they won't be notified of the password change requirement when signing in with Windows Hello. This might cause failures to authenticate to Active Directory-protected resources. To mitigate the issue consider one of the following options:

- Disable password expiration for the user accounts
- As an alternative to password expiration policies, consider adopting [PIN expiration policies](policy-settings.md?tabs=pin#expiration)
- If password expiration is an organization's requirement, instruct the users to change their passwords regularly or when they receive authentication failure messages. Users can reset their password by:
  - Using the <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Del</kbd> > **Change a password** option
  - Sign in with their password. If the password must be changed, Windows prompts the user to update it

> [!IMPORTANT]
> To change a user's password, the device must be able to communicate with a domain controller.

## Next steps

> [!div class="nextstepaction"]
> To accommodate the multitude of organizations needs and requirements, Windows Hello for Business offers different deployment options. To learn how to plan a Windows Hello for Business deployment, see:
>
> [Plan a Windows Hello for Business Deployment](deploy/index.md)

<!--links-->

[ENTRA-1]: /entra/identity/devices/overview
[ENTRA-2]: /entra/identity/devices/concept-primary-refresh-token
[ENTRA-3]: /entra/identity/conditional-access/concept-conditional-access-grant
[ENTRA-4]: /entra/identity/devices/device-registration-how-it-works

[WEB-1]: https://openid.net/specs/draft-jones-json-web-token-07.html
[WINH-1]: /windows-hardware/design/device-experiences/windows-hello-enhanced-sign-in-security
