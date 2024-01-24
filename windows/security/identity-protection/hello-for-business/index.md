---
title: Windows Hello for Business Overview
description: Learn how Windows Hello for Business replaces passwords with strong two-factor authentication on Windows devices.
ms.topic: overview
ms.date: 01/03/2024
---

# Windows Hello for Business overview
<!--
When using Windows Hello for Business, the PIN isn't a symmetric key, whereas the password is a symmetric key. With passwords, there's a server that has some representation of the password. With Windows Hello for Business, the PIN is user-provided entropy used to load the private key in the Trusted Platform Module (TPM). The server doesn't have a copy of the PIN. For that matter, the Windows client doesn't have a copy of the current PIN either. The user must provide the entropy, the TPM-protected key, and the TPM that generated that key in order to successfully access the private key.
The statement *PIN is stronger than Password* is not directed at the strength of the entropy used by the PIN. It's about the difference between providing entropy versus continuing the use of a symmetric key (the password). The TPM has anti-hammering features that thwart brute-force PIN attacks (an attacker's continuous attempt to try all combination of PINs). Some organizations may worry about shoulder surfing. For those organizations, rather than increase the complexity of the PIN, implement the [Multifactor Unlock](multifactor-unlock.md) feature.

Windows Hello is a cryptographically strong alternative to a password. Password is a symmetric-based secret—generally, a hash that gets computed on a client and sent to a server at registration time.
Windows Hello uses asymmetric (public-key) cryptography instead, where the user owns a public and private key pair. It prevents attacks on software by ideally storing the private key in some type of hardware element such as the TPM—thus never leaving the client machine—and the associated public key is registered and stored on a server. During authentication, the user performs a signature operation with the private key. The server containing the public key then validates that signature and trusts that the user is who they say they are because they used the key that was generated at registration time.

 -->

## Windows Hello and Windows Hello for Business

*Windows Hello* is a secure and convenient authentication technology that allows users to sign in to their Windows devices using biometric data (for example, face recognition or fingerprint), or a PIN instead of a traditional password. It provides enhanced security through phish-resistant two-factor authentication, and built-in brute force protection. With FIDO/WebAuthn, Windows Hello can also be used to log in to supported websites, reducing the need to remember multiple complex passwords.

*Windows Hello for Business* is an extension of Windows Hello that provides enterprise-grade security and management capabilities, including device attestation, certificate-based authentication, and conditional access policies. Policy settings can be deployed to devices to ensure they are secure and compliant with organizational requirements.

### Authentication

The following table lists the differences between Windows Hello and Windows Hello for business:

|Windows Hello|Windows Hello for Business|
|-|-|
|With Windows Hello, users can authenticate to:<br>- A Microsoft account<br>- Identity provider (IdP) services or relying party (RP) services that support [Fast ID Online (FIDO) v2.0](https://fidoalliance.org/) authentication|With Windows Hello for Business, users can authenticate to:<br>- A Microsoft Entra ID account<br>- An Active Directory account<br>- Identity provider (IdP) services or relying party (RP) Services that support [Fast ID Online (FIDO) v2.0](https://fidoalliance.org/) authentication|

> [!NOTE]
> FIDO2 (Fast Identity Online) authentication is an open standard for passwordless authentication. It allows users to sign in to their devices and apps using biometric authentication or a physical security key, without the need for a traditional password. FIDO2 support in Windows Hello for Business provides an additional layer of security and convenience for users, while also reducing the risk of password-related attacks.

## Benefits

Windows Hello addresses the following problems that affect passwords:

- Strong passwords can be difficult to remember, and users often reuse passwords on multiple sites
- Server breaches can expose symmetric network credentials (passwords)
- Passwords are subject to replay attacks
- Users can inadvertently expose their passwords due to phishing attacks

Windows Hello helps protect user identities and user credentials. Sence the user doesn't use a password, it helps circumvent phishing and brute force attacks. It also helps prevent server breaches because Windows Hello credentials are an asymmetric key pair, which helps prevent replay attacks when these keys are protected by TPMs.

Windows Hello provides many benefits, including:

- It helps to strengthen your protections against credential theft. Because an attacker must have both the device and the biometric info or PIN, it's much more difficult to gain access without the user's knowledge
- Since no passwords are used, it circumvents phishing and brute force attacks, but most importantly it prevents server breaches as Windows Hello credentials are asymmetric key pair and replayability attacks when these keys are generated within isolated environments of TPMs
- Users get a simple authentication method (backed up with a PIN) that's always with them, so there's nothing to lose
- Support for Windows Hello is built into the operating system, so you can add biometric devices as part of a coordinated rollout or to individual employees as needed

### Security

One of the key differences between Windows Hello and Windows Hello for Business is the level of security they provide. While Windows Hello is a convenient way to sign in to a device, Windows Hello for Business provides additional security measures to protect against advanced threats and attacks:

|Windows Hello|Windows Hello for Business|
|-|-|
|Individuals can create a PIN or biometric gesture on their personal devices for convenient sign-in. This use of Windows Hello is unique to the device on which it's set up, but can use a password hash depending on an individual's account type. This configuration is referred to as *Windows Hello convenience PIN*, and it's not backed by asymmetric (public/private key) or certificate-based authentication.|It uses key-based or certificate-based authentication.On devices with a TPM, Windows Hello provides enhanced security through phish-resistant two-factor authentication. Authentication requires a PIN (something the user knows) or biometric data (something the user is), coupled with possession of the device itself containing the hardware-bound credential (something the user has). There is no symmetric secret (password) which can be stolen from a server or phished from a user and used remotely.|

### Ease of use

With compatible hardware, the user can sign in with face or fingerprint, which is much easier and more convenient than typing in a credential. For users without biometrics, a PIN can be shorter and easier to remember than a complex password. The use of a PIN doesn't compromise security, since Windows Hello has built-in brute force protection and the PIN never leaves the device.

With FIDO/WebAuthn, Windows Hello can also be used to log in to supported websites, which reduces the need to remember or manage multiple complex passwords for a user's online accounts.

## Windows Hello and two factor authentication

Windows Hello for Business uses a two-factor authentication method that combines a device-specific credential with a biometric or PIN gesture. This credential is tied to your identity provider, such as Microsoft Entra ID or Active Directory, and can be used to access organization apps, websites, and services.

After an initial two-step verification of the user during provisioning, Windows Hello is set up on the user's device and Windows asks the user to set a gesture, which can be a biometric, and a PIN. The user provides the gesture to verify their identity. Windows then uses Windows Hello to authenticate users.

Windows Hello for Business is considered two-factor authentication based on the observed authentication factors of: *something you have*, *something you know*, and *something that's part of you*. Windows Hello for Business incorporates two of these factors: something you have (the user's private key protected by the device's security module) and something you know (your PIN). With the proper hardware, you can enhance the user experience by introducing biometrics. By using biometrics, you can replace the *something you know* authentication factor with the *something that is part of you* factor, with the assurances that users can fall back to the *something you know factor*.

## Biometric sign-in

 Windows Hello provides reliable, fully integrated biometric authentication based on facial recognition or fingerprint matching. Windows Hello uses a combination of special infrared (IR) cameras and software to increase accuracy and guard against spoofing. Major hardware vendors are shipping devices that have integrated Windows Hello-compatible cameras and fingerprint readers.

On devices that support Windows Hello, an easy biometric gesture unlocks users' credentials:

- **Facial recognition**. This type of biometric recognition uses special cameras that see in IR light, which allows them to reliably tell the difference between a photograph or scan and a living person. Several vendors offer external cameras that incorporate this technology, and many laptop manufacturers incorporate it into their devices
- **Fingerprint recognition**. This type of biometric recognition uses a capacitive fingerprint sensor to scan your fingerprint. Most existing fingerprint readers work with Windows, whether they're external or integrated into laptops or USB keyboards
- **Iris Recognition**. This type of biometric recognition uses cameras to perform scan of your iris. HoloLens 2 is the first Microsoft device to introduce an Iris scanner

Windows stores biometric data that is used to implement Windows Hello securely on the local device only. The biometric data doesn't roam and is never sent to external devices or servers. Because Windows Hello only stores biometric identification data on the device, there's no single collection point an attacker can compromise to steal biometric data.

The following video shows a demonstration of Windows Hello for Business in action, where a user signs in with a fingerprint:

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=fb5ceb53-d82b-4997-bde1-d473b620038a]

[!INCLUDE [windows-hello-for-business](../../../../includes/licensing/windows-hello-for-business.md)]

## Hardware requirements

We've been working with the manufacturers to help ensure a high-level of performance and protection is met by each sensor and device, based on the following requirements:

- **False Accept Rate (FAR).** Represents the instance a biometric identification solution verifies an unauthorized person. This is normally represented as a ratio of number of instances in a given population size, for example 1 in 100 000. This can also be represented as a percentage of occurrence, for example, 0.001%. This measurement is heavily considered the most important with regard to the security of the biometric algorithm
- **False Reject Rate (FRR).** Represents the instances a biometric identification solution fails to verify an authorized person correctly. Usually represented as a percentage, the sum of the True Accept Rate and False Reject Rate is 1. Can be with or without anti-spoofing or liveness detection

### Fingerprint sensor requirements

To allow fingerprint matching, you must have devices with fingerprint sensors and software. Fingerprint sensors, or sensors that use an employee's unique fingerprint as an alternative logon option, can be touch sensors (large area or small area) or swipe sensors. Each type of sensor has its own set of detailed requirements that must be implemented by the manufacturer, but all of the sensors must include anti-spoofing measures.

Acceptable performance range for small to large size touch sensors:

- False Accept Rate (FAR): <0.001 - 0.002%
- Effective, real world FRR with Anti-spoofing or liveness detection: <10%

Acceptable performance range for swipe sensors:

- False Accept Rate (FAR): <0.002%
- Effective, real world FRR with Anti-spoofing or liveness detection: <10%

### Facial recognition sensors

To allow facial recognition, you must have devices with integrated special infrared (IR) sensors and software. Facial recognition sensors use special cameras that see in IR light, letting them tell the difference between a photo and a living person while scanning an employee's facial features. These sensors, like the fingerprint sensors, must also include anti-spoofing measures (required) and a way to configure them (optional).

- False Accept Rate (FAR): <0.001%
- False Reject Rate (FRR) without Anti-spoofing or liveness detection: <5%
- Effective, real world FRR with Anti-spoofing or liveness detection: <10%

> [!NOTE]
>Windows Hello face authentication doesn't support wearing a mask during enrollment or authentication. If your working environment doesn't allow you to remove a mask temporarily, consider using PIN or fingerprint.

### Iris recognition sensor requirements

To use Iris authentication, you'll need a [HoloLens 2 device](/hololens/). All HoloLens 2 editions are equipped with the same sensors. Iris is implemented the same way as other Windows Hello technologies and achieves biometrics security FAR of 1/100K.

## Next steps

> [!div class="nextstepaction"]
>
> [Learn how Windows Hello for Business works >](how-it-works.md)
