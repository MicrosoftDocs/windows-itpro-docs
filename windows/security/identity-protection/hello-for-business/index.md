---
title: Windows Hello for Business overview
description: Learn how Windows Hello for Business replaces passwords with strong two-factor authentication on Windows devices.
ms.topic: overview
ms.date: 04/23/2024
---

# Windows Hello for Business

## Overview

*Windows Hello* is an authentication technology that allows users to sign in to their Windows devices using biometric data, or a PIN, instead of a traditional password. It provides enhanced security through phish-resistant two-factor authentication, and built-in brute force protection. With FIDO/WebAuthn, Windows Hello can also be used to sign in to supported websites, reducing the need to remember multiple complex passwords.

*Windows Hello for Business* is an **extension** of Windows Hello that provides enterprise-grade security and management capabilities, including device attestation, certificate-based authentication, and conditional access policies. Policy settings can be deployed to devices to ensure they're secure and compliant with organizational requirements.

The following table lists the main authentication and security differences between Windows Hello and Windows Hello for business:

||Windows Hello for Business|Windows Hello|
|-|-|-|
|**Authentication**|Users can authenticate to:<br>- A Microsoft Entra ID account<br>- An Active Directory account<br>- Identity provider (IdP) or relying party (RP) services that support [Fast ID Online (FIDO) v2.0](https://fidoalliance.org/) authentication.|Users can authenticate to:<br>- A Microsoft account<br>- Identity provider (IdP) or relying party (RP) services that support [Fast ID Online (FIDO) v2.0](https://fidoalliance.org/) authentication.|
|**Security**|It uses **key-based** or **certificate-based** authentication. There's no symmetric secret (password) which can be stolen from a server or phished from a user and used remotely.<br>Enhanced security is available on devices with a Trusted Platform Module (TPM).|Users can create a PIN or biometric gesture on their personal devices for convenient sign-in. This use of Windows Hello is unique to the device on which it's set up, but can use a password hash depending on the account type. This configuration isn't backed by asymmetric (public/private key) or certificate-based authentication.|

> [!NOTE]
> FIDO2 (Fast Identity Online) authentication is an open standard for passwordless authentication. It allows users to sign in to their devices and apps using biometric authentication or a physical security key, without the need for a traditional password. FIDO2 support in Windows Hello for Business provides an additional layer of security and convenience for users, while also reducing the risk of password-related attacks.

## Benefits

Windows Hello for Business provides many benefits, including:

- It helps to strengthen protections against credential theft. An attacker must have both the device and the biometric or PIN, making it much more difficult to gain access without the user's knowledge
- Since no passwords are used, it circumvents phishing and brute force attacks. Most importantly, it prevents server breaches and replay attacks because the credentials are asymmetric and generated within isolated environments of TPMs
- Users get a simple and convenient authentication method (backed up with a PIN) that's always with them, so there's nothing to lose. The use of a PIN doesn't compromise security, since Windows Hello has built-in brute force protection, and the PIN never leaves the device
- You can add biometric devices as part of a coordinated rollout or to specific users, as needed

The following video shows a demonstration of Windows Hello for Business in action, where a user signs in with a fingerprint:

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=fb5ceb53-d82b-4997-bde1-d473b620038a]

## Windows Hello and two factor authentication

Windows Hello for Business uses a two-factor authentication method that combines a device-specific credential with a biometric or PIN gesture. This credential is tied to your identity provider, such as Microsoft Entra ID or Active Directory, and can be used to access organization apps, websites, and services.

After an initial two-step verification of the user during provisioning, Windows Hello is set up on the user's device and Windows asks the user to set a gesture, which can be a biometric, and a PIN. The user provides the gesture to verify their identity. Windows then uses Windows Hello to authenticate users.

Windows Hello for Business is considered two-factor authentication based on the observed authentication factors of: *something you have*, *something you know*, and *something that's part of you*. Windows Hello for Business incorporates two of these factors: something you have (the user's private key protected by the device's security module) and something you know (your PIN). With the proper hardware, you can enhance the user experience by introducing biometrics. By using biometrics, you can replace the *something you know* authentication factor with the *something that is part of you* factor, with the assurances that users can fall back to the *something you know factor*.

## Biometric sign-in

 Windows Hello provides reliable, fully integrated biometric authentication based on facial recognition or fingerprint matching. Windows Hello uses a combination of special infrared (IR) cameras and software to increase accuracy and guard against spoofing. Major hardware vendors are shipping devices that have integrated Windows Hello-compatible cameras and fingerprint readers.

On devices that support Windows Hello, an easy biometric gesture unlocks users' credentials:

- **Facial recognition**: this type of biometric recognition uses special cameras that see in IR light, which allows them to reliably tell the difference between a photograph or scan and a living person. Several vendors offer external cameras that incorporate this technology, and many laptop manufacturers incorporate it into their devices
- **Fingerprint recognition**: this type of biometric recognition uses a capacitive fingerprint sensor to scan your fingerprint. Most existing fingerprint readers work with Windows, whether they're external or integrated into laptops or USB keyboards
- **Iris Recognition**: this type of biometric recognition uses cameras to perform scan of your iris. HoloLens 2 is the first Microsoft device to introduce an Iris scanner

Windows stores biometric data that is used to implement Windows Hello securely on the local device only. The biometric data doesn't roam and is never sent to external devices or servers. Because Windows Hello only stores biometric identification data on the device, there's no single collection point an attacker can compromise to steal biometric data.

[!INCLUDE [windows-hello-for-business](../../../../includes/licensing/windows-hello-for-business.md)]

> [!NOTE]
> Windows Hello for Business doesn't work with [Microsoft Entra Domain Services](/entra/identity/domain-services/overview).

## Hardware requirements

Microsoft collaborates with manufacturers to help ensuring a high-level of performance and protection is met by each sensor and device, based on the following requirements:

- **False Accept Rate (FAR):** represents the instance a biometric identification solution verifies an unauthorized person. This is normally represented as a ratio of number of instances in a given population size, for example 1 in 100,000. This can also be represented as a percentage of occurrence, for example, 0.001%. This measurement is heavily considered the most important regarding the security of the biometric algorithm
- **False Reject Rate (FRR):** represents the instances a biometric identification solution fails to verify an authorized person correctly. Represented as a percentage, the sum of the True Accept Rate and False Reject Rate is 1. Can be with or without anti-spoofing or liveness detection

### Fingerprint sensor requirements

To allow fingerprint matching, devices must have fingerprint sensors and software. Fingerprint sensors can be touch sensors (large area or small area) or swipe sensors. Each type of sensor has its own set of detailed requirements that must be implemented by the manufacturer, but all of the sensors must include anti-spoofing measures.

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

To use Iris authentication, you need a [HoloLens 2 device](/hololens/). All HoloLens 2 editions are equipped with the same sensors. Iris is implemented the same way as other Windows Hello technologies and achieves biometrics security FAR of 1/100K.

For more information about the hardware requirements for Windows Hello, see [Windows Hello biometric requirements](/windows-hardware/design/device-experiences/windows-hello-biometric-requirements).

## Next steps

> [!div class="nextstepaction"]
>
> [Learn how Windows Hello for Business works >](how-it-works.md)
