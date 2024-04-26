---
title: Identity protection - Passwordless sign-in
description: Windows 11 security book -Identity protection chapter.
ms.topic: overview
ms.date: 04/09/2024
---

# Passwordless sign-in

:::image type="content" source="images/identity-protection.png" alt-text="Diagram of containing a list of security features." lightbox="images/identity-protection.png" border="false":::

Passwords are inconvenient to use and prime targets for cybercriminals - and they've been an important part of digital security for years. That changes with the passwordless protection available with Windows 11. After a secure authorization process, credentials are protected behind layers of hardware and software security, giving users secure, passwordless access to their apps and cloud services.

## Windows Hello

Too often, passwords are weak, stolen, or forgotten. Organizations are moving toward passwordless sign-in to reduce the risk of breaches, lower the cost of managing passwords, and improve productivity and satisfaction for their employees and customers. Microsoft is committed to helping customers move toward a secure, passwordless future with Windows Hello, a cornerstone of Windows security and identity protection.

[Windows Hello](/windows/security/identity-protection/hello-for-business/passwordless-strategy) can enable passwordless sign-in using biometric or PIN verification and provides built-in support for the FIDO2 passwordless industry standard. As a result, people no longer need to carry external hardware like a security key for authentication.

The secure, convenient sign-in experience can augment or replace passwords with a stronger authentication model based on a PIN or biometric data such as facial or fingerprint recognition secured by the Trusted Platform Module (TPM). Step-by-step guidance makes setup easy.

Using asymmetric keys provisioned in the TPM, Windows Hello protects authentication by binding a user's credentials to their device. Windows Hello validates the user based on either a PIN or biometrics match and only then allows the use of cryptographic keys bound to that user in the TPM.

PIN and biometric data stay on the device and cannot be stored or accessed externally. Since the data cannot be accessed by anyone without physical access to the device, credentials are protected against replay attacks, phishing, and spoofing as well as password reuse and leaks.

Windows Hello can authenticate users to a Microsoft account (MSA), identity provider services, or the relying parties that also implement the FIDO2 or WebAuthn standards.

## Windows Hello for Business

Windows Hello for Business extends Windows Hello to work with an organization's Active Directory<sup>[\[9\]](conclusion.md#footnote9)</sup> and Microsoft Entra ID<sup>[\[9\]](conclusion.md#footnote9)</sup> accounts. It provides single sign-on access to work or school resources such as OneDrive for Business, work email, and other business apps. Windows Hello for Business also give IT admins the ability to manage PIN and other sign-in requirements for devices connecting to work or school resources.

## Windows Hello for Business Passwordless

Windows 11 devices with Windows Hello for Business can protect user identities by removing the need to use passwords from day one.

IT can now set a policy for Microsoft Entra ID<sup>[\[9\]](conclusion.md#footnote9)</sup> joined machines so users no longer see the option to enter a password when accessing company resources.12 Once the policy is set, passwords are removed from the Windows user experience, both for device unlock as well as in-session authentication scenarios via CredUI. However, passwords are not eliminated from the identity directory yet. Users are expected to navigate through their core authentication scenarios using strong, phish-resistant, possession-based credentials like Windows Hello for Business and FIDO2 security keys. If necessary, users can leverage passwordless recovery mechanisms such as Windows Hello for Business PIN reset or Web Sign-in.

During a device's lifecycle, a password may only need to be used once during the provisioning process. After that, people can use a PIN, face, or fingerprint to unlock credentials and sign into the device.

Provisioning methods include:

- Temporary Access Pass (TAP), a time-limited passcode with strong authentication requirements issued through Microsoft Entra ID<sup>[\[9\]](conclusion.md#footnote9)</sup>
- Existing multifactor authentication with Microsoft Entra ID<sup>[\[9\]](conclusion.md#footnote9)</sup>, including authentication methods like the Microsoft Authenticator app

Windows Hello for Business replaces the username and password by combining a security key or certificate with a PIN or biometric data and then mapping the credentials to a user account during setup. There are multiple ways to deploy Windows Hello for Business depending on an organization's needs. Organizations that rely on certificates typically use on-premises public key infrastructure (PKI) to support authentication through Certificate Trust. Organizations using key trust deployment require root-of-trust provided by certificates on domain controllers.

Organizations with hybrid scenarios can eliminate the need for on-premises domain controllers and simplify passwordless adoption by using Windows Hello for Business cloud Kerberos trust.13 This solution uses security keys and replaces on-premises domain controllers with a cloud-based root-of-trust. As a result, organizations can take advantage of Windows Hello for Business and deploy passwordless security keys with minimal additional setup or infrastructure.

Users will authenticate directly with Microsoft Entra ID<sup>[\[9\]](conclusion.md#footnote9)</sup>, helping speed access to on- premises applications and other resources.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows Hello for Business overview](/windows/security/identity-protection/hello-for-business/)

## Windows Hello PIN

The Windows Hello PIN, which can only be entered by someone with physical access to the device, can be used for strong multifactor authentication. The PIN is protected by the TPM and, like biometric data, never leaves the device. When a user enters their PIN, an authentication key is unlocked and used to sign a request sent to the authenticating server.

The TPM protects against threats including PIN brute-force attacks on lost or stolen devices. After too many incorrect guesses, the device locks. IT admins can set security policies for PINs, such as complexity, length, and expiration requirements.

## Windows Hello biometric sign-in

Windows Hello biometric sign-in enhances both security and productivity with a quick, convenient sign-in experience. There's no need to enter a password every time when a face or fingerprint is the credential.

Windows devices that support biometric hardware such as fingerprint or facial recognition cameras integrate directly with Windows Hello, enabling access to Windows client resources and services. Biometric readers for both face and fingerprint must comply with [Microsoft](/windows-hardware/design/device-experiences/windows-hello-biometric-requirements) [Windows Hello biometric requirements](/windows-hardware/design/device-experiences/windows-hello-biometric-requirements). Windows Hello facial recognition is designed to only authenticate from trusted cameras used at the time of enrollment.

If a peripheral camera is attached to the device after enrollment, that camera will only be allowed for facial authentication after it has been validated by signing in with the internal camera. For additional security, external cameras can be disabled for use with Windows Hello facial recognition.

## Windows Hello Enhanced Sign-in Security

Windows Hello biometrics also supports Enhanced Sign-in Security, which uses specialized hardware and software components to raise the security bar even higher for biometric sign-in.

Enhanced Sign-in Security biometrics uses virtualization-based security (VBS) and the TPM to isolate user authentication processes and data and secure the pathway by which the information is communicated.

These specialized components protect against a class of attacks that includes biometric sample injection, replay, and tampering. For example, fingerprint readers must implement Secure Device Connection Protocol, which uses key negotiation and a Microsoft-issued certificate to protect and securely store user authentication data. For facial recognition, components such as the Secure Devices (SDEV) table and process isolation with trustlets help prevent additional attack classes.

Enhanced Sign-in Security is configured by device manufacturers during the manufacturing process and is most typically supported in Secured-core PCs. For facial recognition, Enhanced Sign-in Security is supported by specific silicon and camera combinations - please check with the specific device manufacturer. Fingerprint authentication is available across all processor types. Please reach out to specific OEMs for support details.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows Hello Enhanced Sign-in Security](/windows-hardware/design/device-experiences/windows-hello-enhanced-sign-in-security)

## Windows Hello for Business multi-factor unlock

For organizations that need an extra layer of sign-in security, multi-factor unlock enables IT admins to configure Windows by requiring a combination of two unique trusted signals to sign in. Trusted signal examples include a PIN or biometric data (face or fingerprint) combined with either a PIN, Bluetooth, IP configuration, or Wi-Fi.

Multi-factor unlock is useful for organizations who need to prevent information workers from sharing credentials or need to comply with regulatory requirements for a two-factor authentication policy.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Multi-factor unlock](/windows/security/identity-protection/hello-for-business/feature-multifactor-unlock)

## Windows presence sensing

Windows presence sensing14 provides another layer of data security protection for hybrid workers. Windows 11 devices can intelligently adapt to a user's presence to help them stay secure and productive, whether they're working at home, the office, or a public environment.

Windows presence sensing combines presence detection sensors with Windows Hello facial recognition to sign the user in hands-free and automatically locks the device when the user leaves. With adaptive dimming, the PC dims the screen when the user looks away on compatible devices with presence sensors. It's also easier than ever to configure presence sensors on devices, with easy enablement in the out-of-the-box experience and new links in Settings to help find presence sensing features. Device manufacturers will be able to customize and build extensions for the presence sensor.

## Developer APIs and app privacy support for presence sensing

Privacy is top of mind and more important than ever. Customers want to have greater transparency and control over the use of their information. We are pleased to announce new app privacy settings that enable users to allow or block access to their presence sensor information. Users can decide on these settings during the initial Windows 11 setup.

Users can also take advantage of more granular settings to easily enable and disable differentiated presence sensing features like wake on approach, lock on leave, and adaptive dimming. We are also supporting developers with new APIs for presence sensing for thirdparty applications. Third-party applications can now access user presence information on devices with modern presence sensors.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Presence sensing](/windows-hardware/design/device-experiences/sensors-presence-sensing)
- [Managing presence sensing settings in Windows 11](https://support.microsoft.com/windows/managing-presence-sensing-settings-in-windows-11-82285c93-440c-4e15-9081-c9e38c1290bb)

## FIDO support

The FIDO Alliance, the Fast Identity Online industry standards body, was established to promote authentication technologies and standards that reduce reliance on passwords. FIDO Alliance and World Wide Web Consortium (W3C) have worked together to define the Client to Authenticator Protocol (CTAP2) and Web Authentication (WebAuthn) specifications, which are the industry standard for providing strong, phishing-resistant, user friendly, and privacy preserving authentication across the web and apps. FIDO standards and certifications are becoming recognized as the leading standard for creating secure authentication solutions across enterprises, governments, and consumer markets.

Windows 11 can also use passkeys from external FIDO2 security keys for authentication alongside or in addition to Windows Hello and Windows Hello for Business, which is also a FIDO2-certified passwordless solution. As a result, Windows 11 can be used as a FIDO authenticator for many popular identity management services.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Passwordless security key sign-in](/azure/active-directory/authentication/howto-authentication-passwordless-security-key)

## Passkeys

Windows 11 makes it much harder for hackers who exploit stolen passwords via phishing attacks by empowering users to replace passwords with passkeys. Passkeys are the crossplatform future of secure sign-in. Microsoft and other technology leaders are supporting passkeys across their platforms and services.

A passkey is a unique, unguessable cryptographic secret that is securely stored on the device.

Instead of using a username and password to sign in to a website or application, Windows

11 users will be able to create and use a passkey from Windows Hello, an external security provider, or their mobile device.

Passkeys on Windows 11 will be protected by Windows Hello or Windows Hello for Business.

This enables users to sign in to the site or app using their face, fingerprint, or device PIN. Passkeys on Windows work in any browser or app that supports them for sign in. Users will be able to manage passkeys on their device on Windows 11 account settings.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Passkeys (passkey authentication)](https://fidoalliance.org/passkeys/)

## Microsoft Authenticator

The Microsoft Authenticator app, which runs on iOS and Android devices, helps keep

Windows 11 users secure and productive. Microsoft Authenticator can be used to bootstrap Windows Hello for Business, which removes the need for a password to get started on Windows 11.

Microsoft Authenticator also enables easy, secure sign-in for all online accounts using multifactor authentication, passwordless phone sign-in, or password autofill. The accounts in the Authenticator app are secured with a public/private key pair in hardware-backed storage such as the Keychain in iOS and Keystore on Android. IT admins can leverage different tools to nudge their users to setup the Authenticator app, provide them with extra context about where the authentication is coming from, and ensure that they are actively using it.

Individual users can back up their credentials to the cloud by enabling the encrypted backup option in settings. They can also see their sign-in history and security settings for Microsoft personal, work, or school accounts.

Using this secure app for authentication and authorization enables people to be in control of how, where, and when their credentials are used. To keep up with an ever-changing security landscape, the app is constantly updated, and new capabilities are added to stay ahead of emerging threat vectors.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Microsoft Authenticator](/azure/active-directory/authentication/concept-authentication-authenticator-app)

## Smart cards for Windows service

Organizations also have the option of using smart cards, an authentication method that predates biometric authentication. Smart cards are tamper-resistant, portable storage devices that can enhance Windows security when authenticating users, signing code, securing e-mail, and signing in with Windows domain accounts.

**Smart cards provide:**

- Ease of use in scenarios such as healthcare where employees need to sign in and out quickly without using their hands or when sharing a workstation
- Isolation of security-critical computations that involve authentication, digital signatures, and key exchange from other parts of the computer. These computations are performed on the smart card
- Portability of credentials and other private information between computers at work, home, or on the road

Smart cards can only be used to sign in to domain accounts or Microsoft Entra ID accounts.

When a password is used to sign in to a domain account, Windows uses the Kerberos Version 5 (V5) protocol for authentication. If you use a smart card, the operating system uses Kerberos V5 authentication with X.509 V3 certificates. On Microsoft Entra ID joined devices, a smart card can be used with Entra ID certificate-based authentication. Smart cards cannot be used with local accounts.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Smart Card technical reference](/windows/security/identity-protection/smart-cards/smart-card-windows-smart-card-technical-reference)

## Federated sign-in

Windows 11 supports federated sign-in with external education identity management services. For students unable to type easily or remember complex passwords, this capability enables secure sign-in through methods like QR codes or pictures. Additionally, we have added shared device support. It allows multiple students (one at a time) to use the device throughout the school day.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Configure federated sign-in for Windows devices](/education/windows/federated-sign-in)
