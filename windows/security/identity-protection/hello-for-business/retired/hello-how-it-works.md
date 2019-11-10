---
title: How Windows Hello for Business works (Windows 10)
description: Explains registration, authentication, key material, and infrastructure for Windows Hello for Business.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mapalko
ms.localizationpriority: high
ms.author: mapalko
ms.date: 10/16/2017
ms.reviewer: 
manager: dansimp
ms.topic: article
---
# How Windows Hello for Business works

**Applies to**
-   Windows 10
-   Windows 10 Mobile

Windows Hello for Business requires a registered device. When the device is set up, its user can use the device to authenticate to services. This topic explains how device registration works, what happens when a user requests authentication, how key material is stored and processed, and which servers and infrastructure components are involved in different parts of this process.

## Register a new user or device

A goal of device registration is to allow a user to open a brand-new device, securely join an organizational network to download and manage organizational data, and create a new Windows Hello gesture to secure the device. Microsoft refers to the process of setting up a device for use with Windows Hello as registration.
 
> [!NOTE]
>This is separate from the organizational configuration required to use Windows Hello with Active Directory or Azure Active Directory (Azure AD); that configuration information is in [Manage Windows Hello for Business in your organization](../hello-manage-in-organization.md). Organizational configuration must be completed before users can begin to register.  

 The registration process works like this: 
 
1. The user configures an account on the device. This account can be a local account on the device, a domain account stored in the on-premises Active Directory domain, a Microsoft account, or an Azure AD account. For a new device, this step may be as simple as signing in with a Microsoft account. Signing in with a Microsoft account on a Windows 10 device automatically sets up Windows Hello on the device; users don’t have to do anything extra to enable it. 
2. To sign in using that account, the user has to enter the existing credentials for it. The identity provider (IDP) that “owns” the account receives the credentials and authenticates the user. This IDP authentication may include the use of an existing second authentication factor, or proof. For example, a user who registers a new device by using an Azure AD account will have to provide an SMS-based proof that Azure AD sends. 
3. When the user has provided the proof to the IDP, the user enables PIN authentication. The PIN will be associated with this particular credential. When the user sets the PIN, it becomes usable immediately 

The PIN chosen is associated with the combination of the active account and that specific device. The PIN must comply with whatever length and complexity policy the account administrator has configured; this policy is enforced on the device side. Other registration scenarios that Windows Hello supports are:

- A user who upgrades from the Windows 8.1 operating system will sign in by using the existing enterprise password. That triggers a second authentication factor from the IDP side (if required); after receiving and returning a proof, such as a text message or voice code, the IDP authenticates the user to the upgraded Windows 10 device, and the user can set his or her PIN.
- A user who typically uses a smart card to sign in will be prompted to set up a PIN the first time he or she signs in to a Windows 10 device the user has not previously signed in to.
- A user who typically uses a virtual smart card to sign in will be prompted to set up a PIN the first time he or she signs in to a Windows 10 device the user has not previously signed in to.

When the user has completed this process, Windows Hello generates a new public–private key pair on the device. The TPM generates and protects this private key; if the device doesn’t have a TPM, the private key is encrypted and stored in software. This initial key is referred to as the protector key. It’s associated only with a single gesture; in other words, if a user registers a PIN, a fingerprint, and a face on the same device, each of those gestures will have a unique protector key. Each unique gesture generates a unique protector key. The protector key securely wraps the authentication key. The container has only one authentication key, but there can be multiple copies of that key wrapped with different unique protector keys. Windows Hello also generates an administrative key that the user or administrator can use to reset credentials, when necessary. In addition to the protector key, TPM-enabled devices generate a block of data that contains attestations from the TPM.

At this point, the user has a PIN gesture defined on the device and an associated protector key for that PIN gesture. That means he or she is able to securely sign in to the device with the PIN and thus that he or she can establish a trusted session with the device to add support for a biometric gesture as an alternative for the PIN. When you add a biometric gesture, it follows the same basic sequence: the user authenticates to the system by using his or her PIN, and then registers the new biometric (“smile for the camera!”), after which Windows generates a unique key pair and stores it securely. Future sign-ins can then use either the PIN or the registered biometric gestures.

## What’s a container?

You’ll often hear the term *container* used in reference to mobile device management (MDM) solutions. Windows Hello uses the term, too, but in a slightly different way. Container in this context is shorthand for a logical grouping of key material or data. Windows 10 Hello uses a single container that holds user key material for personal accounts, including key material associated with the user’s Microsoft account or with other consumer identity providers, and credentials associated with a workplace or school account.

The container holds enterprise credentials only on devices that have been registered with an organization; it contains key material for the enterprise IDP, such as on-premises Active Directory or Azure AD. 

It’s important to keep in mind that there are no physical containers on disk, in the registry, or elsewhere. Containers are logical units used to group related items. The keys, certificates, and credentials Windows Hello stores are protected without the creation of actual containers or folders.

The container actually contains a set of keys, some of which are used to protect other keys. The following image shows an example: the protector key is used to encrypt the authentication key, and the authentication key is used to encrypt the individual keys stored in the container.
 
![Each logical container holds one or more sets of keys](../images/passport-fig3-logicalcontainer.png)

Containers can contain several types of key material:

- An authentication key, which is always an asymmetric public–private key pair. This key pair is generated during registration. It must be unlocked each time it’s accessed, by using either the user’s PIN or a previously generated biometric gesture. The authentication key exists until the user resets the PIN, at which time a new key will be generated. When the new key is generated, all the key material that the old key previously protected must be decrypted and re-encrypted using the new key.
- Virtual smart card keys are generated when a virtual smart card is generated and stored securely in the container. They’re available whenever the user’s container is unlocked.
- The IDP key. These keys can be either symmetric or asymmetric, depending on which IDP you use. A single container may contain zero or more IDP keys, with some restrictions (for example, the enterprise container can contain zero or one IDP keys). IDP keys are stored in the container. For certificate-based Windows Hello for Work, when the container is unlocked, applications that require access to the IDP key or key pair can request access. IDP keys are used to sign or encrypt authentication requests or tokens sent from this device to the IDP. IDP keys are typically long-lived but could have a shorter lifetime than the authentication key. Microsoft accounts, Active Directory accounts, and Azure AD accounts all require the use of asymmetric key pairs. The device generates public and private keys, registers the public key with the IDP (which stores it for later verification), and securely stores the private key. For enterprises, the IDP keys can be generated in two ways:
    - The IDP key pair can be associated with an enterprise Certificate Authority (CA) through the Windows Network Device Enrollment Service (NDES), described more fully in [Network Device Enrollment Service Guidance](https://technet.microsoft.com/library/hh831498.aspx). In this case, Windows Hello requests a new certificate with the same key as the certificate from the existing PKI. This option lets organizations that have an existing PKI continue to use it where appropriate. Given that many applications, such as popular virtual private network systems, require the use of certificates, when you deploy Windows Hello in this mode, it allows a faster transition away from user passwords while still preserving certificate-based functionality. This option also allows the enterprise to store additional certificates in the protected container.
    - The IDP can generate the IDP key pair directly, which allows quick, lower-overhead deployment of Windows Hello in environments that don’t have or need a PKI.
    
## How keys are protected

Any time key material is generated, it must be protected against attack. The most robust way to do this is through specialized hardware. There’s a long history of using hardware security modules (HSMs) to generate, store, and process keys for security-critical applications. Smart cards are a special type of HSM, as are devices that are compliant with the Trusted Computing Group TPM standard. Wherever possible, the Windows Hello for Work implementation takes advantage of onboard TPM hardware to generate and protect keys. However, Windows Hello and Windows Hello for Work do not require an onboard TPM. Administrators can choose to allow key operations in software, in which case any user who has (or can escalate to) administrative rights on the device can use the IDP keys to sign requests. As an alternative, in some scenarios, devices that don’t have a TPM can be remotely authenticated by using a device that does have a TPM, in which case all the sensitive operations are performed with the TPM and no key material is exposed.

Whenever possible, Microsoft recommends the use of TPM hardware. The TPM protects against a variety of known and potential attacks, including PIN brute-force attacks. The TPM provides an additional layer of protection after an account lockout, too. When the TPM has locked the key material, the user will have to reset the PIN (which means he or she will have to use MFA to reauthenticate to the IDP before the IDP allows him or her to re-register). Resetting the PIN means that all keys and certificates encrypted with the old key material will be removed.


## Authentication

When a user wants to access protected key material, the authentication process begins with the user entering a PIN or biometric gesture to unlock the device, a process sometimes called releasing the key. Think of it like using a physical key to unlock a door: before you can unlock the door, you need to remove the key from your pocket or purse. The user's PIN unlocks the protector key for the container on the device. When that container is unlocked, applications (and thus the user) can use whatever IDP keys reside inside the container.

These keys are used to sign requests that are sent to the IDP, requesting access to specified resources. It’s important to understand that although the keys are unlocked, applications cannot use them at will. Applications can use specific APIs to request operations that require key material for particular actions (for example, decrypt an email message or sign in to a website). Access through these APIs doesn’t require explicit validation through a user gesture, and the key material isn’t exposed to the requesting application. Rather, the application asks for authentication, encryption, or decryption, and the Windows Hello layer handles the actual work and returns the results. Where appropriate, an application can request a forced authentication even on an unlocked device. Windows prompts the user to reenter the PIN or perform an authentication gesture, which adds an extra level of protection for sensitive data or actions. For example, you can configure the Microsoft Store to require reauthentication any time a user purchases an application, even though the same account and PIN or gesture were already used to unlock the device.

For example, the authentication process for Azure Active Directory works like this:

1. The client sends an empty authentication request to the IDP. (This is merely for the handshake process.)
2. The IDP returns a challenge, known as a nonce.
3. The device signs the nonce with the appropriate private key.
4. The device returns the original nonce, the signed nonce, and the ID of the key used to sign the nonce.
5. The IDP fetches the public key that the key ID specified, uses it to verify the signature on the nonce, and verifies that the nonce the device returned matches the original.
6. If all the checks in step 5 succeed, the IDP returns two data items: a symmetric key, which is encrypted with the device’s public key, and a security token, which is encrypted with the symmetric key.
7. The device uses its private key to decrypt the symmetric key, and then uses that symmetric key to decrypt the token.
8. The device makes a normal authentication request for the original resource, presenting the token from the IDP as its proof of authentication.

When the IDP validates the signature, it is verifying that the request came from the specified user and device. The private key specific to the device signs the nonce, which allows the IDP to determine the identity of the requesting user and device so that it can apply policies for content access based on user, device type, or both together. For example, an IDP could allow access to one set of resources only from mobile devices and a different set from desktop devices.


## The infrastructure

Windows Hello depends on having compatible IDPs available to it. As of this writing, that means you have four deployment possibilities: 

- Use an existing Windows-based PKI centered around Active Directory Certificate Services. This option requires additional infrastructure, including a way to issue certificates to users. You can use NDES to register devices directly, or Microsoft Intune where it’s available to manage mobile device participation in Windows Hello. 
- The normal discovery mechanism that clients use to find domain controllers and global catalogs relies on Domain Name System (DNS) SRV records, but those records don’t contain version data. Windows 10 computers will query DNS for SRV records to find all available Active Directory servers, and then query each server to identify those that can act as Windows Hello IDPs. The number of authentication requests your users generate, where your users are located, and the design of your network all drive the number of Windows Server 2016 domain controllers required. 
- Azure AD can act as an IDP either by itself or alongside an on-premises AD DS forest. Organizations that use Azure AD can register devices directly without having to join them to a local domain by using the capabilities the Azure AD Device Registration service provides. In addition to the IDP, Windows Hello requires an MDM system. This system can be the cloud-based Intune if you use Azure AD, or an on-premises System Center Configuration Manager deployment that meets the system requirements described in the Deployment requirements section of this document.















## Related topics

- [Windows Hello for Business](../hello-identity-verification.md)
- [Manage Windows Hello for Business in your organization](../hello-manage-in-organization.md)
- [Why a PIN is better than a password](../hello-why-pin-is-better-than-password.md)
- [Prepare people to use Windows Hello](../hello-prepare-people-to-use.md)
- [Windows Hello and password changes](../hello-and-password-changes.md)
- [Windows Hello errors during PIN creation](../hello-errors-during-pin-creation.md)
- [Event ID 300 - Windows Hello successfully created](../hello-event-300.md)
- [Windows Hello biometrics in the enterprise](../hello-biometrics-in-enterprise.md)
