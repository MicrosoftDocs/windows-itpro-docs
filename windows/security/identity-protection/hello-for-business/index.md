---
title: Windows Hello for Business Overview
description: Learn how Windows Hello for Business replaces passwords with strong two-factor authentication on Windows devices.
ms.topic: overview
ms.date: 01/03/2024
---

# Windows Hello for Business Overview

Windows Hello is an authentication feature that allows users to sign in to their Windows devices using a PIN, facial recognition, fingerprint scanning, or iris scanning, instead of a traditional password.

Windows Hello addresses the following problems with passwords:

- Strong passwords can be difficult to remember, and users often reuse passwords on multiple sites
- Server breaches can expose symmetric network credentials (passwords)
- Passwords are subject to replay attacks
- Users can inadvertently expose their passwords due to phishing attacks

Windows Hello lets users authenticate to:

- A Microsoft account
- Identity provider (IdP) services or relying party (RP) Services that support [Fast ID Online (FIDO) v2.0](https://fidoalliance.org/) authentication

Windows Hello for Business is an extension of Windows Hello that provides enterprise-grade security and management capabilities. It allows organizations to use the same biometric authentication methods as Windows Hello, but with additional features such as device attestation, certificate-based authentication, and conditional access policies.

One of the key differences between Windows Hello and Windows Hello for Business is the level of security they provide. While Windows Hello is a convenient way to sign in to your device, Windows Hello for Business provides additional security measures to protect against advanced threats and attacks:

- Individuals can create a PIN or biometric gesture on their personal devices for convenient sign-in. This use of Windows Hello is unique to the device on which it's set up, but can use a password hash depending on an individual's account type. This configuration is referred to as *Windows Hello convenience PIN* and it's not backed by asymmetric (public/private key) or certificate-based authentication
- *Windows Hello for Business*, which is configured by via policy settings, always uses key-based or certificate-based authentication

Windows Hello for Business lets users authenticate to:

- A Microsoft Entra ID account
- An Active Directory account
- Identity provider (IdP) services or relying party (RP) Services that support [Fast ID Online (FIDO) v2.0](https://fidoalliance.org/) authentication

Windows Hello for Business offers IT administrators security and management capabilities that are essential for enterprise environments. Policy settings can be deployed to the devices, ensuring that all devices are secure and compliant with organization requirements.

> [!NOTE]
> FIDO2 (Fast Identity Online) authentication is an open standard for passwordless authentication. It allows users to sign in to their devices and apps using biometric authentication or a physical security key, without the need for a traditional password. FIDO2 support in Windows Hello for Business provides an additional layer of security and convenience for users, while also reducing the risk of password-related attacks.

## Windows Hello and two factor authentication

Windows Hello for Business uses a two-factor authentication method that combines a device-specific credential with a biometric or PIN gesture. This credential is tied to your identity provider, such as Microsoft Entra ID or Active Directory, and can be used to access enterprise apps, websites, and services.

After an initial two-step verification of the user during enrollment, Windows Hello is set up on the user's device and Windows asks the user to set a gesture, which can be a biometric, such as a fingerprint, or a PIN. The user provides the gesture to verify their identity. Windows then uses Windows Hello to authenticate users.

## Biometric sign-in

 Windows Hello provides reliable, fully integrated biometric authentication based on facial recognition or fingerprint matching. Windows Hello uses a combination of special infrared (IR) cameras and software to increase accuracy and guard against spoofing. Major hardware vendors are shipping devices that have integrated Windows Hello-compatible cameras and fingerprint readers.

On devices that support Windows Hello, an easy biometric gesture unlocks users' credentials:

- **Facial recognition**. This type of biometric recognition uses special cameras that see in IR light, which allows them to reliably tell the difference between a photograph or scan and a living person. Several vendors are shipping external cameras that incorporate this technology, and major laptop manufacturers are incorporating it into their devices, as well.
- **Fingerprint recognition**. This type of biometric recognition uses a capacitive fingerprint sensor to scan your fingerprint. Fingerprint readers have been available for Windows computers for years, but the current generation of sensors is more reliable and less error-prone. Most existing fingerprint readers work with Windows 10 and Windows 11, whether they're external or integrated into laptops or USB keyboards.
- **Iris Recognition**. This type of biometric recognition uses cameras to perform scan of your iris. HoloLens 2 is the first Microsoft device to introduce an Iris scanner. These iris scanners are the same across all HoloLens 2 devices.

Windows stores biometric data that is used to implement Windows Hello securely on the local device only. The biometric data doesn't roam and is never sent to external devices or servers. Because Windows Hello only stores biometric identification data on the device, there's no single collection point an attacker can compromise to steal biometric data.

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=fb5ceb53-d82b-4997-bde1-d473b620038a]

The biometric data used to support Windows Hello is stored on the local device only. It doesn't roam and is never sent to external devices or servers. This separation helps to stop potential attackers by providing no single collection point that an attacker could potentially compromise to steal biometric data. Additionally, even if an attacker was able to get the biometric data from a device, it cannot be converted back into a raw biometric sample that could be recognized by the biometric sensor.

Each sensor on a device has its own biometric database file where template data is stored. Each database has a unique, randomly generated key that is encrypted to the system. The template data for the sensor is encrypted with this per-database key using AES with CBC chaining mode. The hash is SHA256. Some fingerprint sensors have the capability to complete matching on the fingerprint sensor module instead of in the OS. These sensors store biometric data on the fingerprint module instead of in the database file.

## Benefits of Windows Hello

Imagine that someone is looking over your shoulder as you get money from an ATM and sees the PIN that you enter. Having that PIN won't help them access your account because they don't have your ATM card. In the same way, learning your PIN for your device doesn't allow that attacker to access your account because the PIN is local to your specific device and doesn't enable any type of authentication from any other device.

Windows Hello helps protect user identities and user credentials. Because the user doesn't enter a password (except during provisioning), it helps circumvent phishing and brute force attacks. It also helps prevent server breaches because Windows Hello credentials are an asymmetric key pair, which helps prevent replay attacks when these keys are protected by TPMs.

Windows Hello provides many benefits, including:

- It helps to strengthen your protections against credential theft. Because an attacker must have both the device and the biometric info or PIN, it's much more difficult to gain access without the employee's knowledge.
- Employees get a simple authentication method (backed up with a PIN) that's always with them, so there's nothing to lose. No more forgetting passwords!
- Support for Windows Hello is built into the operating system so you can add additional biometric devices and policies as part of a coordinated rollout or to individual employees or groups using Group Policy or Mobile Device Management (MDM) configurations service provider (CSP) policies.<br>For more info about the available Group Policies and MDM CSPs, see the [Implement Windows Hello for Business in your organization](configure.md) topic.


[!INCLUDE [windows-hello-for-business](../../../../includes/licensing/windows-hello-for-business.md)]

## Hardware requirements

We've been working with the device manufacturers to help ensure a high-level of performance and protection is met by each sensor and device, based on these requirements:

- **False Accept Rate (FAR).** Represents the instance a biometric identification solution verifies an unauthorized person. This is normally represented as a ratio of number of instances in a given population size, for example 1 in 100 000. This can also be represented as a percentage of occurrence, for example, 0.001%. This measurement is heavily considered the most important with regard to the security of the biometric algorithm.

- **False Reject Rate (FRR).** Represents the instances a biometric identification solution fails to verify an authorized person correctly. Usually represented as a percentage, the sum of the True Accept Rate and False Reject Rate is 1. Can be with or without anti-spoofing or liveness detection.

### Fingerprint sensor requirements

To allow fingerprint matching, you must have devices with fingerprint sensors and software. Fingerprint sensors, or sensors that use an employee's unique fingerprint as an alternative logon option, can be touch sensors (large area or small area) or swipe sensors. Each type of sensor has its own set of detailed requirements that must be implemented by the manufacturer, but all of the sensors must include anti-spoofing measures.

**Acceptable performance range for small to large size touch sensors**

- False Accept Rate (FAR): <0.001 - 0.002%

- Effective, real world FRR with Anti-spoofing or liveness detection: <10%

**Acceptable performance range for swipe sensors**

- False Accept Rate (FAR): <0.002%

- Effective, real world FRR with Anti-spoofing or liveness detection: <10%

### Facial recognition sensors

To allow facial recognition, you must have devices with integrated special infrared (IR) sensors and software. Facial recognition sensors use special cameras that see in IR light, letting them tell the difference between a photo and a living person while scanning an employee's facial features. These sensors, like the fingerprint sensors, must also include anti-spoofing measures (required) and a way to configure them (optional).

- False Accept Rate (FAR): <0.001%

- False Reject Rate (FRR) without Anti-spoofing or liveness detection: <5%

- Effective, real world FRR with Anti-spoofing or liveness detection: <10%

> [!NOTE]
>Windows Hello face authentication does not currently support wearing a mask during enrollment or authentication. Wearing a mask to enroll is a security concern because other users wearing a similar mask may be able to unlock your device. The product group is aware of this behavior and is investigating this topic further. Please remove a mask if you are wearing one when you enroll or unlock with Windows Hello face authentication. If your working environment doesn't allow you to remove a mask temporarily, please consider unenrolling from face authentication and only using PIN or fingerprint.

### Iris recognition sensor requirements

To use Iris authentication, you'll need a [HoloLens 2 device](/hololens/). All HoloLens 2 editions are equipped with the same sensors. Iris is implemented the same way as other Windows Hello technologies and achieves biometrics security FAR of 1/100K.

## Why a PIN is better than an online password

Windows Hello enables users to sign in to their device using a PIN. How is a PIN different from (and better than) a local password?
On the surface, a PIN looks much like a password. A PIN can be a set of numbers, but enterprise policy might enforce complex PINs that include special characters and letters, both upper-case and lower-case. Something like **t758A!** could be an account password or a complex Hello PIN. It isn't the structure of a PIN (length, complexity) that makes it better than an online password, it's how it works. First, we need to distinguish between two types of passwords: *local passwords* are validated against the machine's password store, whereas *online passwords* are validated against a server.

:::row:::
    :::column span="1":::
    **A PIN is tied to a device**
    :::column-end:::
    :::column span="3":::
    One important difference between an online password and a Hello PIN is that the PIN is tied to the specific device on which it's set up. That PIN is useless to anyone without that specific hardware. Someone who obtains your online password can sign in to your account from anywhere, but if they obtain your PIN, they'd have to access your device too. The PIN can't be used anywhere except on that specific device. If you want to sign in on multiple devices, you have to set up Hello on each device.
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    **A PIN is local to the device**
    :::column-end:::
    :::column span="3":::
    An online password is transmitted to the server. The password can be intercepted in transmission or obtained from a server. A PIN is local to the device, never transmitted anywhere, and it isn't stored on the server.

    When the PIN is created, it establishes a trusted relationship with the identity provider and creates an asymmetric key pair that is used for authentication. When you enter your PIN, you unlock the authentication key, which is used to sign the request that is sent to the authenticating server.

    Even though local passwords are local to the device, they're less secure than a PIN, as described in the next section.
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    **A PIN is backed by hardware**
    :::column-end:::
    :::column span="3":::
    The Hello PIN is backed by a Trusted Platform Module (TPM) chip, which is a secure crypto-processor that is designed to carry out cryptographic operations. The chip includes multiple physical security mechanisms to make it tamper resistant, and malicious software is unable to tamper with the security functions of the TPM. Windows doesn't link local passwords to TPM, therefore PINs are considered more secure than local passwords.

    User key material is generated and available within the TPM of the device. The TPM protects the key material from attackers who want to capture and reuse it. Since Hello uses asymmetric key pairs, users credentials can't be stolen in cases where the identity provider or websites the user accesses have been compromised.
    
    The TPM protects against various known and potential attacks, including PIN brute-force attacks. After too many incorrect guesses, the device is locked.
    :::column-end:::
:::row-end:::

## What if someone steals the device?

To compromise a Windows Hello credential that TPM protects, an attacker must have access to the physical device. Then, the attacker must find a way to spoof the user's biometrics or guess the PIN. All these actions must be done before [TPM anti-hammering](/windows/device-security/tpm/tpm-fundamentals#anti-hammering) protection locks the device.

## Why do you need a PIN to use biometrics?

Windows Hello enables biometric sign-in for Windows: fingerprint, iris, or facial recognition. When you set up Windows Hello, you're asked to create a PIN after the biometric setup. The PIN enables you to sign in when you can't use your preferred biometric because of an injury or because the sensor is unavailable or not working properly.

If you only had a biometric sign-in configured and, for any reason, were unable to use that method to sign in, you would have to sign in using your account and password, which doesn't provide you with the same level of protection as Hello.

## User experience

Windows Hello for Business provisioning begins immediately after the user signs in, after the user profile is loaded, but before the user can access their desktop. Windows only launches the provisioning experience if all the prerequisite checks pass. If the prerequisites aren't met, Windows doesn't launch the provisioning experience and the user can't enroll in Windows Hello for Business.

> [!NOTE]
> You must allow access to the URL `account.microsoft.com` to initiate Windows Hello for Business provisioning. This URL launches the subsequent steps in the provisioning process and is required to successfully complete Windows Hello for Business provisioning. This URL doesn't require any authentication and as such, doesn't collect any user data.

## Next steps

> [!div class="nextstepaction"]
>
> [Learn how Windows Hello for Business works >](how-it-works.md)


<!--

## Conditional access considerations

Conditional Access can prevent or grant access to services like Exchange Online and SharePoint Online, based on the status of Windows Hello. To learn more about the Intune options to configure and monitor Windows Hello for Business, check the following articles.

Windows Hello can replace passwords with two-factor authentication that consists of a Windows Hello biometric credential or PIN along with the device itself with the set of private/public keys. Windows Hello lets users authenticate to a Microsoft account, an Active Directory account, a Microsoft Entra ID account, or non-Microsoft service that supports Fast ID Online (FIDO) authentication. After an initial two-step verification during Windows Hello enrollment, a Windows Hello credential is set up on the user's device and the user sets a gesture, which can be Windows Hello or a PIN. The user provides the gesture to verify identity; Windows then uses Hello to authenticate users and help them to access protected resources and services.

Benefits
User convenience: users provide their credentials, and are then guided to set up Windows Hello. From that point on, they can access enterprise resources by providing a gesture
Security: Windows Hello helps protect user identities and user credentials. Since no passwords are used, it circumvents phishing and brute force attacks, but most importantly it prevents server breaches as Windows Hello credentials are asymmetric key pair and replayability attacks when these keys are generated within isolated environments of TPMs

How Windows Hello for Business Works

Windows Hello credentials are based on certificate or asymmetrical key pair (RSA 2048 bit key pairs).
The identity provider (Microsoft Entra ID, Active Directory,Microsoft Account) validates the user identity and maps a Windows Hello public key to the user account during the registration step.

Keys can be generated in hardware (TPM 1.2 or 2.0) or software, based on configured policy settings:

- Keys generated in hardware, on select TPMs, can be attested to cryptographicly prove the fact that they are hardware bound
- If a device doesn't have a supported TPM, you can configure a policy setting to enable software keys

Authentication is the two factor authentication with combination of a device (key or certificate) and something that the user sknows (a PIN), or something that person is (biometric). We refer to PIN and biometrics as *Windows Hello gestures*. Windows Hello gestures don't roam between devices and aren't shared with the server; they are stored locally on the device.


PIN entry and biogesture both trigger Windows to verify the user's identity and authenticate using Windows Hello keys or certificates

*The Windows Hello for Business Container (NGC) can be used to protect keys from many sources.
*Each key is generated and bound to the TPM if the hardware is capable.
*It may also protect a custom enrolled certificate (e.g. SmartCard emulation)
*Can also contain generic passkey credentials


-->

There are 5 phases related to Windows Hello for Business:

1. Device registration
1. Provisioning
    1. When the policy is received, if all the prerequisites are met, the user will be able to configure WHfB
    > [!TIP]
    > The `dsregcmd.exe` tool is critical to solve registration and provisioning issues
    1. The device receives a policy that enables WHfB and passes all the pre-requisites (based on  the deployment type). A user provisions, or *enrolls*, Windows Hello by authenticating to the IdP with MFA.
    1. After successful MFA, the user must provide a gesture and PIN which will trigger a key pair generation in TPM    
    1. Key registration: the public key is registered with the IdP and the private key is stored in the TPM. The private key is protected by the TPM and can't be exported.
1. Authentication
    In this phase, WHfB is used to authenticate user against the IdP. The user provides a gesture (PIN or biometric) and the IdP validates the user identity by mapping the user account to the public key used during the key registration step
1. Key synchronization
    In this phase, applicable only to hybrid deploments, the user's public key is synchronized from Microsoft Entra ID to Active Directory.
1. Certificate enrollment
    This phase occurs only in certificate trust deployments. A user certificate is issued by an internal PKI and the public key stored in the Windows Hello container 




-->
