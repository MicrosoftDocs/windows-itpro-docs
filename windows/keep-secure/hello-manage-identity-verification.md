---
title: Manage identity verification using Windows Hello for Business (Windows 10)
description: In Windows 10, Windows Hello for Business replaces passwords with strong two-factor authentication on PCs and mobile devices. This authentication consists of a new type of user credential that is tied to a device and a biometric or PIN.
ms.assetid: 5BF09642-8CF5-4FBC-AC9A-5CA51E19387E
keywords: identity, PIN, biometric, Hello, passport
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
author: jdeckerMS
localizationpriority: high
---
# Manage identity verification using Windows Hello for Business

**Applies to**
-   Windows 10
-   Windows 10 Mobile

In Windows 10, Windows Hello for Business replaces passwords with strong two-factor authentication on PCs and mobile devices. This authentication consists of a new type of user credential that is tied to a device and a biometric or PIN.

>[!NOTE]
> When Windows 10 first shipped, it included Microsoft Passport and Windows Hello, which worked together to provide multi-factor authentication. To simplify deployment and improve supportability, Microsoft has combined these technologies into a single solution under the Windows Hello name. Customers who have already deployed these technologies will not experience any change in functionality. Customers who have yet to evaluate Windows Hello will find it easier to deploy due to simplified policies, documentation, and semantics. 

Hello addresses the following problems with passwords:
-   Passwords can be difficult to remember, and users often reuse passwords on multiple sites.
-   Server breaches can expose symmetric network credentials.
-   Passwords can be subject to [replay attacks](https://go.microsoft.com/fwlink/p/?LinkId=615673).
-   Users can inadvertently expose their passwords due to [phishing attacks](https://go.microsoft.com/fwlink/p/?LinkId=615674).

Hello lets users authenticate to:
-   a Microsoft account.
-   an Active Directory account.
-   a Microsoft Azure Active Directory (Azure AD) account.
-   Identity Provider Services or Relying Party Services that support [Fast ID Online (FIDO) v2.0](https://go.microsoft.com/fwlink/p/?LinkId=533889) authentication

After an initial two-step verification of the user during enrollment, Hello is set up on the user's device and the user is asked to set a gesture, which can be a biometric, such as a fingerprint, or a PIN. The user provides the gesture to verify their identity. Windows then uses Hello to authenticate users and help them to access protected resources and services.

As an administrator in an enterprise or educational organization, you can create policies to manage Hello use on Windows 10-based devices that connect to your organization.

 ## Biometric sign-in
 
 Windows Hello provides reliable, fully integrated biometric authentication based on facial recognition or fingerprint matching. Hello uses a combination of special infrared (IR) cameras and software to increase accuracy and guard against spoofing. Major hardware vendors are shipping devices that have integrated Windows Hello-compatible cameras, and fingerprint reader hardware can be used or added to devices that don’t currently have it. On devices that support Windows Hello, an easy biometric gesture unlocks users’ credentials.
 
 - **Facial recognition**. This type uses special cameras that see in IR light, which allows them to reliably tell the difference between a photograph or scan and a living person. Several vendors are shipping external cameras that incorporate this technology, and major laptop manufacturers are incorporating it into their devices, as well. 
- **Fingerprint recognition**. This type uses a capacitive fingerprint sensor to scan your fingerprint. Fingerprint readers have been available for Windows computers for years, but the current generation of sensors is significantly more reliable and less error-prone. Most existing fingerprint readers (whether external or integrated into laptops or USB keyboards) work with Windows 10. 

Biometric data used to implement Windows Hello is stored securely on the local device only. It doesn’t roam and is never sent to external devices or servers. Because Windows Hello only stores biometric identification data on the device, there’s no single collection point an attacker can compromise to steal biometric data. 


## The difference between Windows Hello and Windows Hello for Business

- Individuals can create a PIN or biometric gesture on their personal devices for convenient sign-in. This use of Hello provides a layer of protection by being unique to the device on which it is set up, however it is not backed by certificate-based authentication. 

- Windows Hello for Business, which is configured by Group Policy or MDM policy, uses key-based or certificate-based authentication.

- Currently Active Directory accounts using Windows Hello are not backed by key-based or certificate-based authentication.  Support for key-based or certificate-based authentication is on the roadmap for a future release.

## Benefits of Windows Hello

Reports of identity theft and large-scale hacking are frequent headlines. Nobody wants to be notified that their user name and password have been exposed.

You may wonder [how a PIN can help protect a device better than a password](why-a-pin-is-better-than-a-password.md). Passwords are shared secrets; they are entered on a device and transmitted over the network to the server. An intercepted account name and password can be used by anyone. Because they're stored on the server, a server breach can reveal those stored credentials.

In Windows 10, Hello replaces passwords. The Hello provisioning process creates a cryptographic key pair bound to the Trusted Platform Module (TPM), if a device has a TPM, or in software. Access to these keys and obtaining a signature to validate user possession of the private key is enabled only by the PIN or biometric gesture. The two-step verification that takes place during Hello enrollment creates a trusted relationship between the identity provider and the user when the public portion of the public/private key pair is sent to an identity provider and associated with a user account. When a user enters the gesture on the device, the identify provider knows from the combination of Hello keys and gesture that this is a verified identity and provides an authentication token that allows Windows 10 to access resources and services. In addition, during the registration process, the attestation claim is produced for every identity provider to cryptographically prove that the Hello keys are tied to TPM. During registration, when the attestation claim is not presented to the identity provider, the identity provider must assume that the Hello key is created in software.

![how authentication works in windows hello](images/authflow.png)

Imagine that someone is looking over your shoulder as you get money from an ATM and sees the PIN that you enter. Having that PIN won't help them access your account because they don't have your ATM card. In the same way, learning your PIN for your device doesn't allow that attacker to access your account because the PIN is local to your specific device and doesn't enable any type of authentication from any other device.

Hello helps protect user identities and user credentials. Because no passwords are used, it helps circumvent phishing and brute force attacks. It also helps prevent server breaches because Hello credentials are an asymmetric key pair, which helps prevent replay attacks when these keys are protected by TPMs.

Hello also enables Windows 10 Mobile devices to be used as [a remote credential](prepare-people-to-use-microsoft-passport.md#bmk-remote) when signing into Windows 10 PCs. During the sign-in process, the Windows 10 PC can connect using Bluetooth to access Hello on the user’s Windows 10 Mobile device. Because users carry their phone with them, Hello makes implementing two-factor authentication across the enterprise less costly and complex than other solutions.

> [!NOTE]
>  Phone sign-in is currently limited to select Technology Adoption Program (TAP) participants.

 
## How Windows Hello for Business works: key points

-   Hello credentials are based on certificate or asymmetrical key pair. Hello credentials are bound to the device, and the token that is obtained using the credential is also bound to the device.
-   Identify provider (such as Active Directory, Azure AD, or a Microsoft account) validates user identity and maps Hello's public key to a user account during the registration step.
-   Keys can be generated in hardware (TPM 1.2 or 2.0 for enterprises, and TPM 2.0 for consumers) or software, based on the policy.
-   Authentication is the two-factor authentication with the combination of a key or certificate tied to a device and something that the person knows (a PIN) or something that the person is (Windows Hello). The Hello gesture does not roam between devices and is not shared with the server; it is stored locally on a device.
-   Private key never leaves a device. The authenticating server has a public key that is mapped to the user account during the registration process.
-   PIN entry and biometric gesture both trigger Windows 10 to verify the user's identity and authenticate using Hello keys or certificates.
-   Personal (Microsoft account) and corporate (Active Directory or Azure AD) accounts use a single container for keys. All keys are separated by identity providers' domains to help ensure user privacy.
-   Certificate private keys can be protected by the Hello container and the Hello gesture.

For details, see [How Windows Hello for Business works](hello-how-it-works.md).

## Comparing key-based and certificate-based authentication

Windows Hello for Business can use either keys (hardware or software) or certificates with keys in hardware or software to confirm identity. Enterprises that have a public key infrastructure (PKI) for issuing and managing certificates can continue to use PKI in combination with Hello. Enterprises that do not use PKI or want to reduce the effort associated with managing certificates can rely on key-based credentials for Hello.

Hardware-based keys, which are generated by TPM, provide the highest level of assurance. When the TPM is manufactured, an Endorsement Key (EK) certificate is resident in the TPM. This EK certificate creates a root trust for all other keys that are generated on this TPM.
EK certification is used to generate an attestation identity key (AIK) certificate issued by a Microsoft certificate authority. This AIK certificate can be used as an attestation claim to prove to identity providers that the Hello keys are generated on the same TPM. The Microsoft certificate authority (CA) generates the AIK certificate per device, per user, and per IDP to help ensure that user privacy is protected.

When identity providers such as Active Directory or Azure AD enroll a certificate in Hello, Windows 10 will support the same set of scenarios as a smart card. When the credential type is a key, only key-based trust and operations will be supported.

## Learn more

[Introduction to Windows Hello](https://go.microsoft.com/fwlink/p/?LinkId=786649), video presentation on Microsoft Virtual Academy

[What's new in Active Directory Domain Services (AD DS) in Windows Server Technical Preview](https://go.microsoft.com/fwlink/p/?LinkId=708533)

[Windows Hello face authentication](https://go.microsoft.com/fwlink/p/?LinkId=626024)

[Biometrics hardware guidelines](https://go.microsoft.com/fwlink/p/?LinkId=626995)

[Windows 10: Disrupting the Revolution of Cyber-Threats with Revolutionary Security!](https://go.microsoft.com/fwlink/p/?LinkId=533890)

[Windows 10: The End Game for Passwords and Credential Theft?](https://go.microsoft.com/fwlink/p/?LinkId=533891)

[Authenticating identities without passwords through Microsoft Passport](https://go.microsoft.com/fwlink/p/?LinkId=616778)

[Microsoft Passport guide](https://go.microsoft.com/fwlink/p/?LinkId=691928)

## Related topics

- [How Windows Hello for Business works](hello-how-it-works.md)
- [Implement Windows Hello for Business in your organization](hello-implement-in-organization.md)
- [Enable phone sign-in to PC or VPN](hello-enable-phone-signin.md)
- [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
- [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
- [Windows Hello and password changes](hello-and-password-changes.md)
- [Windows Hello errors during PIN creation](hello-errors-during-pin-creation.md)
- [Event ID 300 - Windows Hello successfully created](hello-event-300.md)
- [Windows Hello biometrics in the enterprise](hello-biometrics-in-enterprise.md)
 
