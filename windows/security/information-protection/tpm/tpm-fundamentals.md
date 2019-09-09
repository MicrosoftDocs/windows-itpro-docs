---
title: TPM fundamentals (Windows 10)
description: This topic for the IT professional provides a description of the components of the Trusted Platform Module (TPM 1.2 and TPM 2.0) and explains how they are used to mitigate dictionary attacks.
ms.assetid: ac90f5f9-9a15-4e87-b00d-4adcf2ec3000
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: dulcemontemayor
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 08/16/2017
---

# TPM fundamentals

**Applies to**
-   Windows 10
-   Windows Server 2016

This topic for the IT professional provides a description of the components of the Trusted Platform Module (TPM 1.2 and TPM 2.0) and explains how they are used to mitigate dictionary attacks.

A Trusted Platform Module (TPM) is a microchip designed to provide basic security-related functions, primarily involving encryption keys. The TPM is usually installed on the motherboard of a computer, and it communicates with the remainder of the system by using a hardware bus.

Computers that incorporate a TPM can create cryptographic keys and encrypt them so that they can only be decrypted by the TPM. This process, often called wrapping or binding a key, can help protect the key from disclosure. Each TPM has a master wrapping key, called the storage root key, which is stored within the TPM itself. The private portion of a storage root key or endorsement key that is created in a TPM is never exposed to any other component, software, process, or user.

You can specify whether encryption keys that are created by the TPM can be migrated or not. If you specify that they can be migrated, the public and private portions of the key can be exposed to other components, software, processes, or users. If you specify that encryption keys cannot be migrated, the private portion of the key is never exposed outside the TPM.

Computers that incorporate a TPM can also create a key that has not only been wrapped, but is also tied to certain platform measurements. This type of key can be unwrapped only when those platform measurements have the same values that they had when the key was created. This process is referred to as “sealing the key to the TPM.” Decrypting the key is called unsealing. The TPM can also seal and unseal data that is generated outside the TPM. With this sealed key and software, such as BitLocker Drive Encryption, you can lock data until specific hardware or software conditions are met.

With a TPM, private portions of key pairs are kept separate from the memory that is controlled by the operating system. Keys can be sealed to the TPM, and certain assurances about the state of a system (assurances that define the trustworthiness of a system) can be made before the keys are unsealed and released for use. Because the TPM uses its own internal firmware and logic circuits to process instructions, it does not rely on the operating system, and it is not exposed to vulnerabilities that might exist in the operating system or application software.

For info about which versions of Windows support which versions of the TPM, see [Trusted Platform Module technology overview](trusted-platform-module-overview.md). The features that are available in the versions are defined in specifications by the Trusted Computing Group (TCG). For more info, see the Trusted Platform Module page on the Trusted Computing Group website: [Trusted Platform Module](http://www.trustedcomputinggroup.org/developers/trusted_platform_module).

The following sections provide an overview of the technologies that support the TPM:

-   [Measured Boot with support for attestation](#measured-boot-with-support-for-attestation)

-   [TPM-based Virtual Smart Card](#tpm-based-virtual-smart-card)

-   [TPM-based certificate storage](#tpm-based-certificate-storage)

-   [TPM Cmdlets](#tpm-cmdlets)

-   [Physical presence interface](#physical-presence-interface)

-   [TPM 1.2 states and initialization](#tpm-12-states-and-initialization)

-   [Endorsement keys](#endorsement-keys)

-   [TPM Key Attestation](#key-attestation)

-   [Anti-hammering](#anti-hammering)

The following topic describes the TPM Services that can be controlled centrally by using Group Policy settings:
[TPM Group Policy Settings](trusted-platform-module-services-group-policy-settings.md).

## Measured Boot with support for attestation

The Measured Boot feature provides antimalware software with a trusted (resistant to spoofing and tampering) log of all boot components. Antimalware software can use the log to determine whether components that ran before it are trustworthy versus infected with malware. It can also send the Measured Boot logs to a remote server for evaluation. The remote server can initiate remediation actions by interacting with software on the client or through out-of-band mechanisms, as appropriate.

## TPM-based Virtual Smart Card

The Virtual Smart Card emulates the functionality of traditional smart cards, but Virtual Smart Cards use the TPM chip that is available on an organization’s computers, rather than requiring the use of a separate physical smart card and reader. This greatly reduces the management and deployment cost of smart cards in an enterprise. To the end user, the Virtual Smart Card is always available on the computer. If a user needs to use more than one computer, a
Virtual Smart Card must be issued to the user for each computer. A computer that is shared among multiple users can host multiple Virtual Smart Cards, one for each user.

## TPM-based certificate storage

The TPM can be used to protect certificates and RSA keys. The TPM key storage provider (KSP) provides easy, convenient use of the TPM as a way of strongly protecting private keys. The TPM KSP can be used to generate keys when an organization enrolls for certificates, and the KSP is managed by templates in the UI. The TPM can also be used to protect certificates that are imported from an outside source. TPM-based certificates can be used exactly as standard certificates with the added functionality that the certificate can never leave the TPM from which the keys were generated. The TPM can now be used for crypto-operations through Cryptography API: Next Generation (CNG). For more info, see [Cryptography API: Next Generation](https://msdn.microsoft.com/library/windows/desktop/aa376210.aspx).

## TPM Cmdlets

You can manage the TPM using Windows PowerShell. For details, see [TPM Cmdlets in Windows PowerShell](https://docs.microsoft.com/powershell/module/trustedplatformmodule/).

## Physical presence interface

For TPM 1.2, the TCG specifications for TPMs require physical presence (typically, pressing a key) for turning the TPM on, turning it off, or clearing it. These actions typically cannot be automated with scripts or other automation tools unless the individual OEM supplies them.

## TPM 1.2 states and initialization

For TPM 1.2, there are multiple possible states. Windows 10 automatically initializes the TPM, which brings it to an enabled, activated, and owned state.

## Endorsement keys

For a TPM to be usable by a trusted application, it must contain an endorsement key, which is an RSA key pair. The private half of the key pair is held inside the TPM, and it is never revealed or accessible outside the TPM.

## Key attestation

TPM key attestation allows a certification authority to verify that a private key is actually protected by a TPM and that the TPM is one that the certification authority trusts. Endorsement keys which have been proven valid can be used to bind the user identity to a device. Moreover, the user certificate with a TPM attested key provides higher security assurance backed up by the non-exportability, anti-hammering, and isolation of keys provided by a TPM.

## Anti-hammering

When a TPM processes a command, it does so in a protected environment, for example, a dedicated microcontroller on a discrete chip or a special hardware-protected mode on the main CPU. A TPM can be used to create a cryptographic key that is not disclosed outside the TPM, but is able to be used in the TPM after the correct authorization value is provided.

TPMs have anti-hammering protection that is designed to prevent brute force attacks, or more complex dictionary attacks, that attempt to determine authorization values for using a key. The basic approach is for the TPM to allow only a limited number of authorization failures before it prevents more attempts to use keys and locks. Providing a failure count for individual keys is not technically practical, so TPMs have a global lockout when too many authorization failures occur.

Because many entities can use the TPM, a single authorization success cannot reset the TPM’s anti-hammering protection. This prevents an attacker from creating a key with a known authorization value and then using it to reset the TPM’s protection. Generally, TPMs are designed to forget about authorization failures after a period of time so the TPM does not enter a lockout state unnecessarily. A TPM owner password can be used to reset the TPM’s lockout logic.

### TPM 2.0 anti-hammering

TPM 2.0 has well defined anti-hammering behavior. This is in contrast to TPM 1.2 for which the anti-hammering protection was implemented by the manufacturer, and the logic varied widely throughout the industry.

For systems with TPM 2.0, the TPM is configured by Windows to lock after 32 authorization failures and to forget one authorization failure every two hours. This means that a user could quickly attempt to use a key with the wrong authorization value 32 times. For each of the 32 attempts, the TPM records if the authorization value was correct or not. This inadvertently causes the TPM to enter a locked state after 32 failed attempts.

Attempts to use a key with an authorization value for the next two hours would not return success or failure; instead the response indicates that the TPM is locked. After two hours, one authorization failure is forgotten and the number of authorization failures remembered by the TPM drops to 31, so the TPM leaves the locked state and returns to normal operation. With the correct authorization value, keys could be used normally if no authorization failures occur during the next two hours. If a period of 64 hours elapses with no authorization failures, the TPM does not remember any authorization failures, and 32 failed attempts could occur again.

Windows 8 Certification does not require TPM 2.0 systems to forget about authorization failures when the system is fully powered off or when the system has hibernated. Windows does require that authorization failures are forgotten when the system is running normally, in a sleep mode, or in low power states other than off. If a Windows system with TPM 2.0 is locked, the TPM leaves lockout mode if the system is left on for two hours.

The anti-hammering protection for TPM 2.0 can be fully reset immediately by sending a reset lockout command to the TPM and providing the TPM owner password. By default, Windows automatically provisions TPM 2.0 and stores the TPM owner password for use by system administrators.

In some enterprise situations, the TPM owner authorization value is configured to be stored centrally in Active Directory, and it is not stored on the local system. An administrator can launch the TPM MMC and choose to reset the TPM lockout time. If the TPM owner password is stored locally, it is used to reset the lockout time. If the TPM owner password is not available on the local system, the administrator needs to provide it. If an administrator attempts to reset the TPM lockout state with the wrong TPM owner password, the TPM does not allow another attempt to reset the lockout state for 24 hours.

TPM 2.0 allows some keys to be created without an authorization value associated with them. These keys can be used when the TPM is locked. For example, BitLocker with a default TPM-only configuration is able to use a key in the TPM to start Windows, even when the TPM is locked.

### Rationale behind the defaults

Originally, BitLocker allowed from 4 to 20 characters for a PIN.
Windows Hello has its own PIN for logon, which can be 4 to 127 characters.
Both BitLocker and Windows Hello use the TPM to prevent PIN brute-force attacks.

The TPM can be configured to use Dictionary Attack Prevention parameters ([lockout threshold and lockout duration](trusted-platform-module-services-group-policy-settings.md)) to control how many failed authorizations attempts are allowed before the TPM is locked out, and how much time must elapse before another attempt can be made.

The Dictionary Attack Prevention Parameters provide a way to balance security needs with usability.
For example, when BitLocker is used with a TPM + PIN configuration, the number of PIN guesses is limited over time.
A TPM 2.0 in this example could be configured to allow only 32 PIN guesses immediately, and then only one more guess every two hours.
This totals a maximum of about 4415 guesses per year.
If the PIN is 4 digits, all 9999 possible PIN combinations could be attempted in a little over two years.

Increasing the PIN length requires a greater number of guesses for an attacker.
In that case, the lockout duration between each guess can be shortened to allow legitimate users to retry a failed attempt sooner, while maintaining a similar level of protection.

Beginning with Windows 10, version 1703, the minimum length for the BitLocker PIN was increased to 6 characters to better align with other Windows features that leverage TPM 2.0, including Windows Hello.
To help organizations with the transition, beginning with Windows 10, version 1709 and Windows 10, version 1703 with the October 2017 [cumulative update](https://support.microsoft.com/help/4018124) installed, the BitLocker PIN length is 6 characters by default, but it can be reduced to 4 characters.
If the minimum PIN length is reduced from the default of six characters, then the TPM 2.0 lockout period will be extended.

### TPM-based smart cards

The Windows TPM-based smart card, which is a virtual smart card, can be configured to allow sign in to the system. In contrast with physical smart cards, the sign-in process uses a TPM-based key with an authorization value. The following list shows the advantages of virtual smart cards:

-   Physical smart cards can enforce lockout for only the physical smart card PIN, and they can reset the lockout after the correct PIN is entered. With a virtual smart card, the TPM’s anti-hammering protection is not reset after a successful authentication. The allowed number of authorization failures before the TPM enters lockout includes many factors.

-   Hardware manufacturers and software developers have the option to use the security features of the TPM to meet their requirements.

-   The intent of selecting 32 failures as the lock-out threshold is so users rarely lock the TPM (even when learning to type new passwords or if they frequently lock and unlock their computers). If users lock the TPM, they must to wait two hours or use some other credential to sign in, such as a user name and password.

## Related topics

- [Trusted Platform Module](trusted-platform-module-top-node.md) (list of topics)
- [TPM Cmdlets in Windows PowerShell](https://docs.microsoft.com/powershell/module/trustedplatformmodule/)
- [TPM WMI providers](https://msdn.microsoft.com/library/aa376476.aspx)
- [Prepare your organization for BitLocker: Planning and Policies - TPM configurations](https://technet.microsoft.com/itpro/windows/keep-secure/prepare-your-organization-for-bitlocker-planning-and-policies#bkmk-tpmconfigurations)
