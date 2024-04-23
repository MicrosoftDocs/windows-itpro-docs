---
title: Identity protection
description: Windows 11 security book -Identity protection chapter.
ms.topic: overview
ms.date: 04/09/2024
---

# Identity protection

:::image type="content" source="images\identity-protection-on.png" alt-text="Diagram of containng a list of security features." lightbox="images\identity-protection.png" border="false":::

Today's flexible workstyles and the security of your organization depend on secure access to corporate resources, including strong identity protection. Weak or reused passwords, password spraying, social engineering, and phishing are some of the top attack vectors. In the last 12 months, we saw an average of more than 4,000 password attacks per second.11 And phishing threats have increased, making identity a continuous battleground. As Bret Arsenault, Chief Information Security Officer at Microsoft says, "Hackers don't break in, they log in."

Because threats are constantly evolving and often difficult for employees to detect, organizations need proactive protection, including effortlessly secure authentication and features that defend users in real time while they work. Windows 11 is designed with powerful identity protection from chip to cloud, keeping identities and personal and business data safe anywhere people work.

# Enabling passwordless sign-in

Passwords are inconvenient to use and prime targets for cybercriminals—and they've been an important part of digital security for years. That changes with the passwordless protection available with Windows 11. After a secure authorization process, credentials are protected behind layers of hardware and software security, giving users secure, passwordless access to their apps and cloud services.

## Windows Hello

Too often, passwords are weak, stolen, or forgotten. Organizations are moving toward passwordless sign-in to reduce the risk of breaches, lower the cost of managing passwords, and improve productivity and satisfaction for their employees and customers. Microsoft is committed to helping customers move toward a secure, passwordless future with Windows Hello, a cornerstone of Windows security and identity protection.

[Windows Hello](https://learn.microsoft.com/windows/security/identity-protection/hello-for-business/passwordless-strategy) [](https://learn.microsoft.com/windows/security/identity-protection/hello-for-business/passwordless-strategy)can enable passwordless sign-in using biometric or PIN verification and provides built-in support for the FIDO2 passwordless industry standard. As a result, people no longer need to carry external hardware like a security key for authentication.

The secure, convenient sign-in experience can augment or replace passwords with a stronger authentication model based on a PIN or biometric data such as facial or fingerprint recognition secured by the Trusted Platform Module (TPM). Step-by-step guidance makes setup easy.

Using asymmetric keys provisioned in the TPM, Windows Hello protects authentication by binding a user's credentials to their device. Windows Hello validates the user based on either a PIN or biometrics match and only then allows the use of cryptographic keys bound to that user in the TPM.

PIN and biometric data stay on the device and cannot be stored or accessed externally. Since the data cannot be accessed by anyone without physical access to the device, credentials are protected against replay attacks, phishing, and spoofing as well as password reuse and leaks.

Windows Hello can authenticate users to a Microsoft account (MSA), identity provider services, or the relying parties that also implement the FIDO2 or WebAuthn standards.

## Windows Hello for Business

Windows Hello for Business extends Windows Hello to work with an organization's Active Directory<sup>9</sup> and Microsoft Entra ID<sup>9</sup> accounts. It provides single sign-on access to work or school resources such as OneDrive for Business, work email, and other business apps. Windows Hello for Business also give IT admins the ability to manage PIN and other sign-in requirements for devices connecting to work or school resources.

## Windows Hello for Business Passwordless

Windows 11 devices with Windows Hello for Business can protect user identities by removing the need to use passwords from day one.

IT can now set a policy for Microsoft Entra ID<sup>9</sup> joined machines so users no longer see the option to enter a password when accessing company resources.12 Once the policy is set, passwords are removed from the Windows user experience, both for device unlock as well as in-session authentication scenarios via CredUI. However, passwords are not eliminated from the identity directory yet. Users are expected to navigate through their core authentication scenarios using strong, phish-resistant, possession-based credentials like Windows Hello for Business and FIDO2 security keys. If necessary, users can leverage passwordless recovery mechanisms such as Windows Hello for Business PIN reset or Web Sign-in.

During a device's lifecycle, a password may only need to be used once during the provisioning process. After that, people can use a PIN, face, or fingerprint to unlock credentials and sign into the device.

Provisioning methods include:

- Temporary Access Pass (TAP), a time-limited passcode with strong authentication requirements issued through Microsoft Entra ID<sup>9</sup>.

- Existing multifactor authentication with Microsoft Entra ID<sup>9</sup>, including authentication methods like the Microsoft Authenticator app.

Windows Hello for Business replaces the username and password by combining a security key or certificate with a PIN or biometric data and then mapping the credentials to a user account during setup. There are multiple ways to deploy Windows Hello for Business depending on an organization's needs. Organizations that rely on certificates typically use on-premises public key infrastructure (PKI) to support authentication through Certificate Trust. Organizations using key trust deployment require root-of-trust provided by certificates on domain controllers.

Organizations with hybrid scenarios can eliminate the need for on-premises domain controllers and simplify passwordless adoption by using Windows Hello for Business cloud Kerberos trust.13 This solution uses security keys and replaces on-premises domain controllers

with a cloud-based root-of-trust. As a result, organizations can take advantage of Windows Hello for Business and deploy passwordless security keys with minimal additional setup or infrastructure.

Users will authenticate directly with Microsoft Entra ID<sup>9</sup>, helping speed access to on- premises applications and other resources.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows Hello for Business overview](https://learn.microsoft.com/windows/security/identity-protection/hello-for-business/)

## Windows Hello PIN

The Windows Hello PIN, which can only be entered by someone with physical access to the device, can be used for strong multifactor authentication. The PIN is protected by the TPM and, like biometric data, never leaves the device. When a user enters their PIN, an authentication key is unlocked and used to sign a request sent to the authenticating server.

The TPM protects against threats including PIN brute-force attacks on lost or stolen devices. After too many incorrect guesses, the device locks. IT admins can set security policies for PINs, such as complexity, length, and expiration requirements.

## Windows Hello biometric sign-in

Windows Hello biometric sign-in enhances both security and productivity with a quick, convenient sign-in experience. There's no need to enter a password every time when a face or fingerprint is the credential.

Windows devices that support biometric hardware such as fingerprint or facial recognition cameras integrate directly with Windows Hello, enabling access to Windows client resources and services. Biometric readers for both face and fingerprint must comply with [Microsoft](https://docs.microsoft.com/windows-hardware/design/device-experiences/windows-hello-biometric-requirements) [Windows Hello biometric requirements](https://docs.microsoft.com/windows-hardware/design/device-experiences/windows-hello-biometric-requirements)[.](https://docs.microsoft.com/windows-hardware/design/device-experiences/windows-hello-biometric-requirements) Windows Hello facial recognition is designed to only authenticate from trusted cameras used at the time of enrollment.

If a peripheral camera is attached to the device after enrollment, that camera will only be allowed for facial authentication after it has been validated by signing in with the internal camera. For additional security, external cameras can be disabled for use with Windows Hello facial recognition.

## Windows Hello Enhanced Sign-in Security

Windows Hello biometrics also supports Enhanced Sign-in Security, which uses specialized hardware and software components to raise the security bar even higher for biometric sign-in.

Enhanced Sign-in Security biometrics uses virtualization-based security (VBS) and the TPM to isolate user authentication processes and data and secure the pathway by which the information is communicated.

These specialized components protect against a class of attacks that includes biometric sample injection, replay, and tampering. For example, fingerprint readers must implement Secure Device Connection Protocol, which uses key negotiation and a Microsoft-issued certificate to protect and securely store user authentication data. For facial recognition, components such as the Secure Devices (SDEV) table and process isolation with trustlets help prevent additional attack classes.

Enhanced Sign-in Security is configured by device manufacturers during the manufacturing process and is most typically supported in Secured-core PCs. For facial recognition, Enhanced Sign-in Security is supported by specific silicon and camera combinations—please check with the specific device manufacturer. Fingerprint authentication is available across all processor types. Please reach out to specific OEMs for support details.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows Hello Enhanced Sign-in Security](https://learn.microsoft.com/windows-hardware/design/device-experiences/windows-hello-enhanced-sign-in-security)

## Windows Hello for Business multi-factor unlock

For organizations that need an extra layer of sign-in security, multi-factor unlock enables IT admins to configure Windows by requiring a combination of two unique trusted signals to sign in. Trusted signal examples include a PIN or biometric data (face or fingerprint) combined with either a PIN, Bluetooth, IP configuration, or Wi-Fi.

Multi-factor unlock is useful for organizations who need to prevent information workers from sharing credentials or need to comply with regulatory requirements for a two-factor authentication policy.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Multi-factor unlock](https://learn.microsoft.com/windows/security/identity-protection/hello-for-business/feature-multifactor-unlock)

## Windows presence sensing

Windows presence sensing14 provides another layer of data security protection for hybrid workers. Windows 11 devices can intelligently adapt to a user's presence to help them stay secure and productive, whether they're working at home, the office, or a public environment.

Windows presence sensing combines presence detection sensors with Windows Hello facial recognition to sign the user in hands-free and automatically locks the device when the user leaves. With adaptive dimming, the PC dims the screen when the user looks away on compatible devices with presence sensors. It's also easier than ever to configure presence sensors on devices, with easy enablement in the out-of-the-box experience and new links in Settings to help find presence sensing features. Device manufacturers will be able to customize and build extensions for the presence sensor.

## Developer APIs and app privacy support for presence sensing

Privacy is top of mind and more important than ever. Customers want to have greater transparency and control over the use of their information. We are pleased to announce new app privacy settings that enable users to allow or block access to their presence sensor information. Users can decide on these settings during the initial Windows 11 setup.

Users can also take advantage of more granular settings to easily enable and disable differentiated presence sensing features like wake on approach, lock on leave, and adaptive dimming. We are also supporting developers with new APIs for presence sensing for thirdparty applications. Third-party applications can now access user presence information on devices with modern presence sensors.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Presence sensing](https://learn.microsoft.com/windows-hardware/design/device-experiences/sensors-presence-sensing)
- [Managing presence sensing settings in Windows 11](https://support.microsoft.com/windows/managing-presence-sensing-settings-in-windows-11-82285c93-440c-4e15-9081-c9e38c1290bb)

### FIDO support

The FIDO Alliance, the Fast Identity Online industry standards body, was established to promote authentication technologies and standards that reduce reliance on passwords. FIDO Alliance and World Wide Web Consortium (W3C) have worked together to define the Client to Authenticator Protocol (CTAP2) and Web Authentication (WebAuthn) specifications, which are the industry standard for providing strong, phishing-resistant, user friendly, and privacy preserving authentication across the web and apps. FIDO standards and certifications are becoming recognized as the leading standard for creating secure authentication solutions across enterprises, governments, and consumer markets.

Windows 11 can also use passkeys from external FIDO2 security keys for authentication alongside or in addition to Windows Hello and Windows Hello for Business, which is also a FIDO2-certified passwordless solution. As a result, Windows 11 can be used as a FIDO authenticator for many popular identity management services.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Passwordless security key sign-in](https://learn.microsoft.com/azure/active-directory/authentication/howto-authentication-passwordless-security-key)

### Passkeys

Windows 11 makes it much harder for hackers who exploit stolen passwords via phishing attacks by empowering users to replace passwords with passkeys. Passkeys are the crossplatform future of secure sign-in. Microsoft and other technology leaders are supporting passkeys across their platforms and services.

A passkey is a unique, unguessable cryptographic secret that is securely stored on the device.

Instead of using a username and password to sign in to a website or application, Windows

11 users will be able to create and use a passkey from Windows Hello, an external security provider, or their mobile device.

Passkeys on Windows 11 will be protected by Windows Hello or Windows Hello for Business.

This enables users to sign in to the site or app using their face, fingerprint, or device PIN. Passkeys on Windows work in any browser or app that supports them for sign in. Users will be able to manage passkeys on their device on Windows 11 account settings.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Passkeys (passkey authentication)](https://fidoalliance.org/passkeys/)

### Microsoft Authenticator

The Microsoft Authenticator app, which runs on iOS and Android devices, helps keep

Windows 11 users secure and productive. Microsoft Authenticator can be used to bootstrap Windows Hello for Business, which removes the need for a password to get started on Windows 11.

Microsoft Authenticator also enables easy, secure sign-in for all online accounts using multifactor authentication, passwordless phone sign-in, or password autofill. The accounts in the Authenticator app are secured with a public/private key pair in hardware-backed storage such as the Keychain in iOS and Keystore on Android. IT admins can leverage different tools to nudge their users to setup the Authenticator app, provide them with extra context about where the authentication is coming from, and ensure that they are actively using it.

Individual users can back up their credentials to the cloud by enabling the encrypted backup option in settings. They can also see their sign-in history and security settings for Microsoft personal, work, or school accounts.

Using this secure app for authentication and authorization enables people to be in control of how, where, and when their credentials are used. To keep up with an ever-changing security landscape, the app is constantly updated, and new capabilities are added to stay ahead of emerging threat vectors.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Microsoft Authenticator](https://docs.microsoft.com/azure/active-directory/authentication/concept-authentication-authenticator-app)

### Smart cards for Windows service

Organizations also have the option of using smart cards, an authentication method that predates biometric authentication. Smart cards are tamper-resistant, portable storage devices that can enhance Windows security when authenticating users, signing code, securing e-mail, and signing in with Windows domain accounts.

**Smart cards provide:**

- Ease of use in scenarios such as healthcare where employees need to sign in and out quickly without using their hands or when sharing a workstation.

- Isolation of security-critical computations that involve authentication, digital signatures, and key exchange from other parts of the computer. These computations are performed on the smart card.

- Portability of credentials and other private information between computers at work, home, or on the road

Smart cards can only be used to sign in to domain accounts or Microsoft Entra ID accounts.

When a password is used to sign in to a domain account, Windows uses the Kerberos

Version 5 (V5) protocol for authentication. If you use a smart card, the operating system uses Kerberos V5 authentication with X.509 V3 certificates. On Microsoft Entra ID joined devices, a smart card can be used with Entra ID certificate-based authentication. Smart cards cannot be used with local accounts.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Smart Card technical reference](https://learn.microsoft.com/windows/security/identity-protection/smart-cards/smart-card-windows-smart-card-technical-reference)

### Federated sign-in

Windows 11 supports federated sign-in with external education identity management services. For students unable to type easily or remember complex passwords, this capability enables secure sign-in through methods like QR codes or pictures. Additionally, we have added shared device support. It allows multiple students (one at a time) to use the device throughout the school day.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Configure federated sign-in for Windows devices](https://learn.microsoft.com/education/windows/federated-sign-in?tabs=intune)

# Advanced credential protection

In addition to adopting passwordless sign-in, organizations can strengthen security for user and domain credentials in Windows 11 with Credential Guard and Remote Credential Guard. **Enhanced phishing protection with Microsoft Defender SmartScreen**

As malware protection and other safeguards evolve, cybercriminals look for new ways to circumvent security measures. Phishing has emerged as a leading threat, with apps and websites designed to steal credentials by tricking people into voluntarily entering passwords. As a result, many organizations are transitioning to the ease and security of passwordless sign-in with Windows Hello or Windows Hello for Business.

However, people who are still using passwords can also benefit from powerful credential protection in Windows 11. Microsoft Defender SmartScreen now includes enhanced phishing protection to automatically detect when a user's Microsoft password is entered into any app or website. Windows then identifies if the app or site is securely authenticating to Microsoft and warns if the credentials are at risk. Because the user is alerted at the moment of potential credential theft, they can take preemptive action before the password is used against them or their organization.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Enhanced phishing protection in Microsoft Defender SmartScreen](https://learn.microsoft.com/windows/security/operating-system-security/virus-and-threat-protection/microsoft-defender-smartscreen/enhanced-phishing-protection?tabs=intune)

## Local Security Authority (LSA) protection

Windows has several critical processes to verify a user's identity. Verification processes include Local Security Authority (LSA), which is responsible for authenticating users and verifying Windows sign-ins. LSA handles tokens and credentials that are used for single signon to a Microsoft account and Azure services.<sup>9</sup>

To help keep these credentials safe, additional LSA protection will be enabled by default on new, enterprise-joined Windows 11 devices. By loading only trusted, signed code, LSA provides significant protection against credential theft. LSA protection also now supports configuration using Group Policy and modern device management.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Configuring additional LSA protection](https://learn.microsoft.com/windows-server/security/credentials-protection-and-management/configuring-additional-lsa-protection)

## Credential Guard

Enabled by default in Windows 11 Enterprise, Credential Guard uses hardware-backed, virtualization-based security (VBS) to protect against credential theft. With Credential Guard, the Local Security Authority (LSA) stores and protects Active Directory (AD) secrets in an isolated environment that is not accessible to the rest of the operating system. LSA uses remote procedure calls to communicate with the isolated LSA process.

By protecting the LSA process with virtualization-based security, Credential Guard shields systems from credential theft attack techniques like Pass-the-Hash or Pass-the-Ticket. It also helps prevent malware from accessing system secrets even if the process is running with admin privileges.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Protect derived domain credentials with Credential Guard](https://learn.microsoft.com/windows/security/identity-protection/credential-guard/credential-guard)

## Remote Credential Guard

Remote Credential Guard helps organizations protect credentials over a Remote Desktop connection by redirecting the Kerberos requests back to the device that is requesting the connection. It also provides single sign-on experiences for Remote Desktop sessions.

Administrator credentials are highly privileged and must be protected. When Remote Credential Guard is configured and enabled to connect during Remote Desktop sessions, the credential and credential derivatives are never passed over the network to the target device. If the target device is compromised, the credentials are not exposed.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Remote Credential Guard - Windows Security | Microsoft Learn](https://learn.microsoft.com/windows/security/identity-protection/remote-credential-guard?tabs=intune)

The following diagram shows how a standard Remote Desktop session to a server without Remote Credential Guard works:

The following diagrams help demonstrate how Windows Defender Remote Credential Guard works, what it helps to protect against, and compares it with the [Restricted Admin](https://social.technet.microsoft.com/wiki/contents/articles/32905.how-to-enable-restricted-admin-mode-for-remote-desktop.aspx) [mode option](https://social.technet.microsoft.com/wiki/contents/articles/32905.how-to-enable-restricted-admin-mode-for-remote-desktop.aspx):

Token protection attempts to reduce attacks using Microsoft Entra ID<sup>9</sup> token theft. Token protection makes tokens usable only from their intended device by cryptographically binding a token with a device secret. When using the token, both the token and proof of the device secret must be provided. Conditional Access policy can be configured to require token protection when using sign-in tokens for specific services.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Token protection in Entra ID Conditional Access](https://learn.microsoft.com/azure/active-directory/conditional-access/concept-token-protection)

## Sign-in session token protection policy

At the inaugural Microsoft Secure event in March 2023, we announced the public preview of token protection for sign-ins. This feature allows applications and services to cryptographically bind security tokens to the device, restricting attackers' ability to impersonate users on a different device if tokens are stolen.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Conditional Access: Token protection (preview)](https://learn.microsoft.com/azure/active-directory/conditional-access/concept-token-protection)

### Account lockout policies

New devices with Windows 11 installed will have account lockout policies that are secure by default. These policies will mitigate brute-force attacks such as hackers attempting to access Windows devices via the Remote Desktop Protocol (RDP).

The account lockout threshold policy is now set to 10 failed sign-in attempts by default, with the account lockout duration set to 10 minutes. The Allow Administrator account lockout is now enabled by default. The Reset account lockout counter after is now set to 10 minutes by default as well.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Account lockout policy](https://learn.microsoft.com/windows/security/threat-protection/security-policy-settings/account-lockout-policy)

### Access management and control

Access control in Windows ensures that shared resources are available to users and groups other than the resource's owner and are protected from unauthorized use. IT administrators can manage users', groups', and computers' access to objects and assets on a network or computer. After a user is authenticated, the Windows operating system implements the second phase of protecting resources by using built-in authorization and access control technologies to determine if an authenticated user has the correct permissions.

Access Control Lists (ACLs) describe the permissions for a specific object and can also contain System Access Control Lists (SACLs). SACLs provide a way to audit specific system level events, such as when a user attempts to access file system objects. These events are essential for tracking activity for objects that are sensitive or valuable and require extra monitoring. Being able to audit when a resource attempts to read or write part of the operating system is critical to understanding a potential attack.

IT administrators can refine the application and management of access to:

- Protect a greater number and variety of network resources from misuse.

- Provision users to access resources in a manner that is consistent with organizational policies and the requirements of their jobs. Organizations can implement the principle of least-privilege access, which asserts that users should be granted access only to the data and operations they require to perform their jobs.

- Update users' ability to access resources on a regular basis as an organization's policies change or as users' jobs change.

- Support evolving workplace needs, including access from hybrid or remote locations, or from a rapidly expanding array of devices, including tablets and mobile phones.

- Identify and resolve access issues when legitimate users are unable to access resources that they need to perform their jobs.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Access control](https://docs.microsoft.com/windows/security/identity-protection/access-control/access-control)
