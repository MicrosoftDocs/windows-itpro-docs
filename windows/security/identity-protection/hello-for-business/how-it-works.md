---
title: How Windows Hello for Business works
description: Learn how Windows Hello for Business works, and how it can help you protect your organization.
ms.date: 01/03/2024
ms.topic: concept-article
---

# How Windows Hello for Business works

Windows Hello for Business is a distributed system that requires multiple technologies to work together. To simplify the explanation of how Windows Hello for Business works, let's break it down into five phases, which represent the chronological order of the deployment process.

Two of these phases are required only for certain deployment scenarios.

> [!NOTE]
> The deployment scenarios are described in the article: [Plan a Windows Hello for Business deployment](deploy/index.md).

:::row:::
    :::column span="":::
    **1. Device Registration**
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    :::image type="content" source="images/howitworks/device-registration.png" alt-text="Icon representing the device registration phase." border="false":::
    :::column-end:::
    :::column span="3":::
    Registration is a prerequisite for Windows Hello for Business. Without device registration, Windows Hello for Business provisioning can't start.
    
    During device registration, the device registers its identity with the identity provider (IdP), so that it can be associated and authenticate to the IdP.
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="":::
    **2. Provisioning**
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    :::image type="content" source="images/howitworks/provision.png" alt-text="Icon representing the provisioning phase." border="false":::
    :::column-end:::
    :::column span="3":::
    During this phase, the user authenticates using one form of authentication (typically, username/password) to request a new Windows Hello for Business credential. The provisioning flow requires a second factor of authentication before it can create a strong, two-factor Windows Hello for Business credential.
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="":::
    **3. Key synchronization**
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    :::image type="content" source="images/howitworks/synchronization.png" alt-text="Icon representing the synchronization phase." border="false":::
    :::column-end:::
    :::column span="3":::
    In this phase, applicable only to hybrid deployments, the user's public key is synchronized from Microsoft Entra ID to Active Directory.
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="":::
    **4. Certificate enrollment**
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    :::image type="content" source="images/howitworks/certificate-enrollment.png" alt-text="Icon representing the certificate enrollment phase." border="false":::
    :::column-end:::
    :::column span="3":::
    In this phase, applicable only to deployments using certificates, a certificate is issued to the user using the organization's public key infrastructure (PKI).
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="":::
    **5. Authentication**
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    :::image type="content" source="images/howitworks/authentication.png" alt-text="Icon representing the authentication phase." border="false":::
    :::column-end:::
    :::column span="3":::
    In this last phase, users can sign-in to Windows using biometrics or a PIN. Regardless of the gesture used, authentication occurs using the private portion of the Windows Hello for Business credential.

    The user provides a gesture, and the IdP validates the user identity by mapping the user account to the public key used during the provisioning phase.

    :::column-end:::
:::row-end:::

The following sections provide deeper insights into each of these phases.

## Device Registration

All devices included in the Windows Hello for Business deployment must go through a process called *device registration*. Device registration enables devices to be associated and to authenticate to an IdP:

- For cloud and hybrid deployments, the identity provider is Microsoft Entra ID and the device registers with the *Device Registration Service*
- For on-premises deployments, the identity provider is Active Directory Federation Services (AD FS), and the device registers with the *Enterprise Device Registration Service* hosted on AD FS

When a device is registered, the IdP provides the device with an identity that is used to authenticate the device when a user signs-in.

The device registration type is called *join type*.

For more information and detailed sequence diagrams, see [how device registration works](/entra/identity/devices/device-registration-how-it-works).

## Provisioning

The first step in the usage of Windows Hello is setting up a *container*. This is called the *provisioning* phase. In the context of Windows Hello for Business, a container is a logical grouping of *key material* or data. Windows Hello uses a single container that holds user key material for personal accounts (including key material associated with the user's Microsoft account or with other consumer identity providers), and credentials associated with an organization's account. The container holds organization's credentials only on devices that are *registered* with the organization.

> [!NOTE]
> There are no physical containers on disk, in the registry, or elsewhere. Containers are logical units used to group related items. The keys, certificates, and credentials that Windows Hello stores, are protected without the creation of actual containers or folders.

Windows Hello provisioning is triggered once device registration completes, and after the device receives a policy that enables Windows Hello. If all the prerequisites are met, a Cloud Experience Host (CXH) window is launched to take the user through the Windows Hello provisioning flow.

> [!NOTE]
> The list of prerequisites varies depending on the deployment type.

:::image type="content" source="images/howitworks/cxh-provision.png" alt-text="Screenshot of the Cloud Experience Host prompting the user to provision Windows Hello." border="false":::

1. The user *enrolls* in Windows Hello by authenticating to the IdP with MFA
1. After successful MFA, the user must provide a bio gesture (if available) and PIN, which trigger the creation of the Windows Hello container. A public/private key pair is generated and the public key is registered with the IdP.

 After multi-factor authentication (MFA), the provisioning process:

    1. **Generates a key pair** bound to the Trusted Platform Module (TPM), if available, or in software. The private key is stored locally and protected by the TPM, and can't be exported
    1. **Registers the public key** with the IdP, mapped to the user account

### Key registration

The IdP validates the user identity and maps the Windows Hello public key to a user account during the registration step.

:::row:::
    :::column:::
        Windows Hello generates a new public-private key pair on the device. The TPM generates and protects the private key. If the device doesn't have a TPM, the private key is encrypted and stored in software. This initial key is referred to as the *protector key*. The protector key is associated with a single gesture: if a user registers a PIN, a fingerprint, and a face on the same device, each of those gestures has a unique protector key. The protector key securely wraps the *authentication key*. The container has only one authentication key, but there can be multiple copies of that key wrapped with different unique protector keys.
    :::column-end:::
    :::column:::
        :::image type="content" source="images/howitworks/hello-container.png" alt-text="Diagram of the Windows Hello container." border="false":::
    :::column-end:::
:::row-end:::

> [!IMPORTANT]
> Keys can be generated in hardware (TPM 1.2 or 2.0) or software, based on the configured policy setting. To guarantee that keys are generated in hardware, you must configure a policy setting. For more information, see [Use a hardware security device](policy-settings.md#use-a-hardware-security-device).

Personal (Microsoft account) and Work or School (Active Directory or Microsoft Entra ID) accounts use a single container for keys. All keys are separated by identity providers' domains to help ensure user privacy.

Windows Hello also generates an *administrative key*. The administrative key can be used to reset credentials when necessary. For example, when using the [PIN reset service](pin-reset.md). In addition to the protector key, TPM-enabled devices generate a block of data that contains attestations from the TPM.

Access to these keys, and obtaining a signature to validate user possession of the private key, is enabled only by the PIN or biometric gesture. The two-step verification that takes place during Windows Hello enrollment creates a trusted relationship between the IdP and the user when the public portion of the public/private key pair is sent to an identity provider and associated with a user account. When a user enters the gesture on the device, the identity provider knows that it's a verified identity, because of the combination of Windows Hello keys and gestures. It then provides an authentication token that allows Windows to access resources and services.

The Device Registration Service writes the key to the user object in Microsoft Entra ID.
For on-premises scenarios, the key is written to Active Directory by AD FS.

For more information and detailed sequence diagrams, see [how provisioning works](how-it-works-provisioning.md).

To learn more how Windows uses the TPM in support of Windows Hello for Business, see [How Windows uses the Trusted Platform Module](../../hardware-security/tpm/how-windows-uses-the-tpm.md).

### Windows Hello data storage

The biometric data used to support Windows Hello is stored on the local device only. It doesn't roam and is never sent to external devices or servers. This separation helps to stop potential attackers by providing no single collection point that an attacker could potentially compromise to steal biometric data. Even if an attacker could obtain the biometric data from a device, it couldn't be converted back into a raw biometric sample recognizable by the biometric sensor.

> [!NOTE]
>Each sensor on a device has its own biometric database file where template data is stored (path `C:\WINDOWS\System32\WinBioDatabase`). Each database has a unique, randomly generated key that is encrypted to the system. The template data for the sensor is encrypted with the per-database key using AES with CBC chaining mode. The hash is SHA256.
>
>Some fingerprint sensors have the capability to complete matching on the fingerprint sensor module instead of in the OS. These sensors store biometric data on the fingerprint module instead of in the database file.

## Key synchronization

Key synchronization is required in hybrid environments. After the user provisions a Windows Hello for Business credential, the key must sync from Microsoft Entra ID to Active Directory.

The user's public key is written to the `msDS-KeyCredentialLink` attribute of the user object. The synchronization is handled by Microsoft Entra Connect Sync.

## Certificate enrollment

For certificate deployments, after registering the key, the client generates a cetificate request. The request is sent to the Certificate Registration Authority (CRA). The CRA is on the Active Directory Federation Services (AD FS) server, which validates the certificate request and fulfills it using the enterprise PKI.

## Authentication

Windows Hello credentials are based on certificate or asymmetrical key pair. Windows Hello credentials, and the token that is obtained using those credentials, are bound to the device.

Authentication is the two-factor authentication with the combination of:

- A key, or certificate, tied to a device and
  - something that the person knows (a PIN) or
  - something that the person is (biometrics)

PIN entry and biometric gesture both trigger Windows to use the private key to cryptographically sign data that is sent to the identity provider. The identity provider verifies the user's identity and authenticates the user.

The PIN or the private portion of the credential are never sent to the IdP, and the PIN isn't stored on the device. The PIN and bio gestures are *user-provided entropy* when performing operations that use the private portion of the credential.

When a user wants to access protected key material, the authentication process begins with the user entering a PIN or biometric gesture to unlock the device, a process sometimes called *releasing the key*. Think of it like using a physical key to unlock a door: before you can unlock the door, you need to remove the key from your pocket or purse. The user's PIN unlocks the protector key for the container on the device. When that container is unlocked, applications (and thus the user) can use whatever IDP keys reside inside the container.

These keys are used to sign requests that are sent to the IdP, requesting access to specified resources.

> [!IMPORTANT]
> Although the keys are unlocked, applications cannot use them at will. Applications can use specific APIs to request operations that require key material for particular actions (for example, decrypt an email message or sign in to a website). Access through these APIs doesn't require explicit validation through a user gesture, and the key material isn't exposed to the requesting application. Rather, the application asks for authentication, encryption, or decryption, and the Windows Hello layer handles the actual work and returns the results. Where appropriate, an application can request a forced authentication even on an unlocked device. Windows prompts the user to reenter the PIN or perform an authentication gesture, which adds an extra level of protection for sensitive data or actions. For example, you can configure an application to require re-authentication anytime a specific operation is performed, even though the same account and PIN or gesture were already used to unlock the device.

For more information and detailed sequence diagrams, see [how authentication works](how-it-works-authentication.md).

### Primary refresh token

Single sign-on (SSO) relies on special tokens obtained to access specific applications. In the traditional Windows Integrated authentication case using Kerberos, the token is a Kerberos TGT (ticket-granting ticket). For Microsoft Entra ID and AD FS applications, this token is a *primary refresh token* (PRT). It's a [JSON Web Token](https://openid.net/specs/draft-jones-json-web-token-07.html) that contains claims about both the user and the device.

The PRT is initially obtained during sign-in or unlock in a similar way the Kerberos TGT is obtained. This behavior is true for both Microsoft Entra joined and Microsoft Entra hybrid joined devices. For personal devices registered with Microsoft Entra ID, the PRT is initially obtained upon *Add Work or School Account*. For a personal device, the account to unlock the device isn't the work account, but a consumer account referred to as *Microsoft account*.

The PRT is needed for SSO. Without it, users would be prompted for credentials every time they access applications. The PRT also contains information about the device. If you have any [device-based conditional access](/azure/active-directory/conditional-access/concept-conditional-access-grant) policies set on an application, without the PRT access is denied.

> [!TIP]
> The Windows Hello for Business key meets Microsoft Entra multifactor authentication (MFA) requirements and reduces the number of MFA prompts users will see when accessing resources.
>
> For more information, see [What is a Primary Refresh Token](/azure/active-directory/devices/concept-primary-refresh-token#when-does-a-prt-get-an-mfa-claim).

### Windows Hello for Business and password changes

Changing a user account password doesn't affect sign-in or unlock, since Windows Hello for Business uses a key or certificate.

## Next steps

> [!div class="nextstepaction"]
> Whether you have have a cloud-only deployment, hybrid, or on-premises, Windows Hello for Business has a deployment option for you.
>
> To learn more, see:
>
> [Plan a Windows Hello for Business Deployment](deploy/index.md)
