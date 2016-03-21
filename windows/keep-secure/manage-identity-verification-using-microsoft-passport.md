---
title: Manage identity verification using Microsoft Passport (Windows 10)
description: In Windows 10, Microsoft Passport replaces passwords with strong two-factor authentication on PCs and mobile devices. This authentication consists of a new type of user credential that is tied to a device and a Windows Hello (biometric) or PIN.
ms.assetid: 5BF09642-8CF5-4FBC-AC9A-5CA51E19387E
keywords: ["identity", "PIN", "biometric", "Hello"]
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Manage identity verification using Microsoft Passport


**Applies to**

-   Windows 10
-   Windows 10 Mobile

In Windows 10, Microsoft Passport replaces passwords with strong two-factor authentication on PCs and mobile devices. This authentication consists of a new type of user credential that is tied to a device and a Windows Hello (biometric) or PIN.

Passport addresses the following problems with passwords:

-   Passwords can be difficult to remember, and users often reuse passwords on multiple sites.

-   Server breaches can expose symmetric network credentials.

-   Passwords can be subject to [replay attacks](http://go.microsoft.com/fwlink/p/?LinkId=615673).

-   Users can inadvertently expose their passwords due to [phishing attacks](http://go.microsoft.com/fwlink/p/?LinkId=615674).

Passport lets users authenticate to:

-   a Microsoft account.

-   an Active Directory account.

-   a Microsoft Azure Active Directory (AD) account.

-   Identity Provider Services or Relying Party Services that support [Fast ID Online (FIDO) v2.0](http://go.microsoft.com/fwlink/p/?LinkId=533889) authentication

After an initial two-step verification of the user during Passport enrollment, Passport is set up on the user's device and the user is asked to set a gesture, which can be Windows Hello or a PIN. The user provides the gesture to verify their identity. Windows then uses Passport to authenticate users and help them to access protected resources and services.

As an administrator in an enterprise or educational organization, you can create policies to manage Passport use on Windows 10-based devices that connect to your organization.

## Benefits of Microsoft Passport


Reports of identity theft and large-scale hacking are frequent headlines. Nobody wants to be notified that their user name and password have been exposed.

You may wonder [how a PIN can help protect a device better than a password](why-a-pin-is-better-than-a-password.md). Passwords are shared secrets; they are entered on a device and transmitted over the network to the server. An intercepted account name and password can be used by anyone. Because they're stored on the server, a server breach can reveal those stored credentials.

In Windows 10, Passport replaces passwords. The Passport provisioning process creates two cryptographic keys bound to the Trusted Platform Module (TPM), if a device has a TPM, or in software. Access to these keys and obtaining a signature to validate user possession of the private key is enabled only by the PIN or biometric gesture. The two-step verification that takes place during Passport enrollment creates a trusted relationship between the identity provider and the user when the public portion of the public/private key pair is sent to an identity provider and associated with a user account. When a user enters the gesture on the device, the identify provider knows from the combination of Passport keys and gesture that this is a verified identity and provides an authentication token that allows Windows 10 to access resources and services. In addition, during the registration process, the attestation claim is produced for every identity provider to cryptographically prove that the Passport keys are tied to TPM. During registration, when the attestation claim is not presented to the identity provider, the identity provider must assume that the Passport key is created in software.

![how authentication works in microsoft passport](images/authflow.png)

Imagine that someone is looking over your shoulder as you get money from an ATM and sees the PIN that you enter. Having that PIN won't help them access your account because they don't have your ATM card. In the same way, learning your PIN for your device doesn't allow that attacker to access your account because the PIN is local to your specific device and doesn't enable any type of authentication from any other device.

Passport helps protect user identities and user credentials. Because no passwords are used, it helps circumvent phishing and brute force attacks. It also helps prevent server breaches because Passport credentials are an asymmetric key pair, which helps prevent replay attacks when these keys are generated within isolated environments of TPMs.

Microsoft Passport also enables Windows 10 Mobile devices to be used as [a remote credential](prepare-people-to-use-microsoft-passport.md#bmk-remote) when signing into Windows 10 PCs. During the sign-in process, the Windows 10 PC can connect using Bluetooth to access Microsoft Passport on the user’s Windows 10 Mobile device. Because users carry their phone with them, Microsoft Passport makes implementing two-factor authentication across the enterprise less costly and complex than other solutions.

**Note**  Phone sign-in is currently limited to select Technology Adoption Program (TAP) participants.

 

## How Microsoft Passport works: key points


-   Passport credentials are based on certificate or asymmetrical key pair. Passport credentials are bound to the device, and the token that is obtained using the credential is also bound to the device.

-   Identify provider (such as Active Directory, Azure AD, or a Microsoft account) validates user identity and maps Microsoft Passport's public key to a user account during the registration step.

-   Keys can be generated in hardware (TPM 1.2 or 2.0 for enterprises, and TPM 2.0 for consumers) or software, based on the policy.

-   Authentication is the two-factor authentication with the combination of a key or certificate tied to a device and something that the person knows (a PIN) or something that the person is (Windows Hello). The Passport gesture does not roam between devices and is not shared with the server; it is stored locally on a device.

-   Private key never leaves a device. The authenticating server has a public key that is mapped to the user account during the registration process.

-   PIN entry and Hello both trigger Windows 10 to verify the user's identity and authenticate using Passport keys or certificates.

-   Personal (Microsoft account) and corporate (Active Directory or Azure AD) accounts use separate containers for keys. Non-Microsoft identity providers can generate keys for their users in the same container as the Microsoft account; however, all keys are separated by identity providers' domains to help ensure user privacy.

-   Certificates are added to the Passport container and are protected by the Passport gesture.

-   Windows Update behavior: After a reboot is required by Windows Update, the last interactive user is automatically signed on without any user gesture and the session is locked so the user's lock screen apps can run.

## Comparing key-based and certificate-based authentication


Passport can use either keys (hardware or software) or certificates with keys in hardware or software to confirm identity. Enterprises that have a public key infrastructure (PKI) for issuing and managing certificates can continue to use PKI in combination with Passport. Enterprises that do not use PKI or want to reduce the effort associated with managing certificates can rely on key-based credentials for Passport.

Hardware-based keys, which are generated by TPM, provide the highest level of assurance. When the TPM is manufactured, an Endorsement Key (EK) certificate is resident in the TPM. This EK certificate creates a root trust for all other keys that are generated on this TPM.

EK certification is used to generate an attestation identity key (AIK) certificate issued by a Microsoft certificate authority. This AIK certificate can be used as an attestation claim to prove to identity providers that the Passport keys are generated on the same TPM. The Microsoft certificate authority (CA) generates the AIK certificate per device, per user, and per IDP to help ensure that user privacy is protected.

When identity providers such as Active Directory or Azure AD enroll a certificate in Passport, Windows 10 will support the same set of scenarios as a smart card. When the credential type is a key, only key-based trust and operations will be supported.

## Learn more


[What's new in Active Directory Domain Services (AD DS) in Windows Server Technical Preview](http://go.microsoft.com/fwlink/p/?LinkId=708533)

[Windows Hello face authentication](http://go.microsoft.com/fwlink/p/?LinkId=626024)

[Biometrics hardware guidelines](http://go.microsoft.com/fwlink/p/?LinkId=626995)

[Windows 10: Disrupting the Revolution of Cyber-Threats with Revolutionary Security!](http://go.microsoft.com/fwlink/p/?LinkId=533890)

[Windows 10: The End Game for Passwords and Credential Theft?](http://go.microsoft.com/fwlink/p/?LinkId=533891)

[Authenticating identities without passwords through Microsoft Passport](http://go.microsoft.com/fwlink/p/?LinkId=616778)

[Microsoft Passport guide](http://go.microsoft.com/fwlink/p/?LinkId=691928)

## Related topics


[Implement Microsoft Passport in your organization](implement-microsoft-passport-in-your-organization.md)

[Why a PIN is better than a password](why-a-pin-is-better-than-a-password.md)

[Prepare people to use Microsoft Passport](prepare-people-to-use-microsoft-passport.md)

[Microsoft Passport and password changes](microsoft-passport-and-password-changes.md)

[Microsoft Passport errors during PIN creation](microsoft-passport-errors-during-pin-creation.md)

[Event ID 300 - Passport successfully created](passport-event-300.md)

 

 





