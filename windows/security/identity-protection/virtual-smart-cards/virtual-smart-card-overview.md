---
title: Virtual Smart Card Overview (Windows 10)
description: This topic for IT professional provides an overview of the virtual smart card technology that was developed by Microsoft, and links to additional topics about virtual smart cards.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: dulcemontemayor
ms.author: dansimp
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 10/13/2017
ms.reviewer: 
---

# Virtual Smart Card Overview

Applies To: Windows 10, Windows Server 2016

This topic for IT professional provides an overview of the virtual smart card technology that was developed by Microsoft and includes [links to additional topics](#see-also) to help you evaluate, plan, provision, and administer virtual smart cards.

**Did you mean…**

-   [Smart Cards](../smart-cards/smart-card-windows-smart-card-technical-reference.md)

> [!NOTE]
> [Windows Hello for Business](../hello-for-business/hello-identity-verification.md) is the modern, two-factor authentication for Windows 10. Microsoft will be deprecating virtual smart cards in the future, but no date has been set at this time. Customers using Windows 10 and virtual smart cards should move to Windows Hello for Business. Microsoft will publish the date early to ensure customers have adequate lead time to move to Windows Hello for Business. We recommend that new Windows 10 deployments use Windows Hello for Business. Virtual smart cards remain supported for Windows 7 and Windows 8.

## Feature description

Virtual smart card technology from Microsoft offers comparable security benefits to physical smart cards by using two-factor authentication. Virtual smart cards emulate the functionality of physical smart cards, but they use the Trusted Platform Module (TPM) chip that is available on computers in many organizations, rather than requiring the use of a separate physical smart card and reader. Virtual smart cards are created in the TPM, where the keys that are used for authentication are stored in cryptographically secured hardware.

By utilizing TPM devices that provide the same cryptographic capabilities as physical smart cards, virtual smart cards accomplish the three key properties that are desired for smart cards: non-exportability, isolated cryptography, and anti-hammering.

## Practical applications

Virtual smart cards are functionally similar to physical smart cards and appear in Windows as smart cards that are always-inserted. Virtual smart cards can be used for authentication to external resources, protection of data by secure encryption, and integrity through reliable signing. They are easily deployed by using in-house methods or a purchased solution, and they can become a full replacement for other methods of strong authentication in a corporate setting of any scale.

### Authentication use cases

**Two-factor authentication‒based remote access**

After a user has a fully functional TPM virtual smart card, provisioned with a sign-in certificate, the certificate is used to gain strongly authenticated access to corporate resources. When the proper certificate is provisioned to the virtual card, the user need only provide the PIN for the virtual smart card, as if it was a physical smart card, to sign in to the domain.

In practice, this is as easy as entering a password to access the system. Technically, it is far more secure. Using the virtual smart card to access the system proves to the domain that the user who is requesting authentication has possession of the personal computer upon which the card has been provisioned and knows the virtual smart card PIN. Because this request could not have possibly originated from a system other than the system certified by the domain for this user’s access, and the user could not have initiated the request without knowing the PIN, a strong two-factor authentication is established.

**Client authentication**

Virtual smart cards can also be used for client authentication by using Secure Socket Layer (SSL) or a similar technology. Similar to domain access with a virtual smart card, an authentication certificate can be provisioned for the virtual smart card, provided to a remote service, as requested in the client authentication process. This adheres to the principles of two-factor authentication because the certificate is only accessible from the computer that hosts the virtual smart card, and the user is required to enter the PIN for initial access to the card.

**Virtual smart card redirection for remote desktop connections**

The concept of two-factor authentication associated with virtual smart cards relies on the proximity of users to the computers that they access domain resources through. Therefore, when a user remotely connects to a computer that is hosting virtual smart cards, the virtual smart cards that are located on the remote computer cannot be used during the remote session. However, the virtual smart cards that are stored on the connecting computer (which is under physical control of the user) are loaded onto the remote computer, and they can be used as if they were installed by using the remote computer’s TPM. This extends a user’s privileges to the remote computer, while maintaining the principles of two-factor authentication.

**Windows To Go and virtual smart cards**

Virtual smart cards work well with Windows To Go, where a user can boot into a supported version of Windows from a compatible removable storage device. A virtual smart card can be created for the user, and it is tied to the TPM on the physical host computer to which the removable storage device is connected. When the user boots the operating system from a different physical computer, the virtual smart card will not be available. This can be used for scenarios when a single physical computer is shared by many users. Each user can be given a removable storage device for Windows To Go, which has a virtual smart card provisioned for the user. This way, users are only able to access their personal virtual smart card.

### Confidentiality use cases

**S/MIME email encryption**

Physical smart cards are designed to hold private keys that can be used for email encryption and decryption. This functionality also exists in virtual smart cards. By using S/MIME with a user’s public key to encrypt email, the sender of an email can be assured that only the person with the corresponding private key will be able to decrypt the email. This assurance is a result of the non-exportability of the private key. It never exists within reach of malicious software, and it remains protected by the TPM—even during decryption.

**BitLocker for data volumes**

sBitLocker Drive Encryption technology makes use of symmetric-key encryption to protect the content of a user’s hard drive. This ensures that if the physical ownership of a hard drive is compromised, an adversary will not be able to read data off the drive. The key used to encrypt the drive can be stored in a virtual smart card, which necessitates knowledge of the virtual smart card PIN to access the drive and possession of the computer that is hosting the TPM virtual smart card. If the drive is obtained without access to the TPM that hosts the virtual smart card, any brute force attack will be very difficult.

BitLocker can also be used to encrypt portable drives, which involves storing keys in virtual smart cards. In this scenario (unlike using BitLocker with a physical smart card), the encrypted drive can be used only when it is connected to the host for the virtual smart card that is used to encrypt the drive, because the BitLocker key is only accessible from this computer. However, this method can be useful to ensure the security of backup drives and personal storage uses outside the main hard drive.

### Data integrity use case

**Signing data**

To verify authorship of data, a user can sign it by using a private key that is stored in the virtual smart card. Digital signatures confirm the integrity and origin of the data. If the key is stored in an operating system that is accessible, a malicious user could access it and use it to modify already signed data or to spoof the key owner’s identity. However, if this key is stored in a virtual smart card, it can be used only to sign data on the host computer. It cannot be exported to other systems (intentionally or unintentionally, such as with malware theft). This makes digital signatures far more secure than other methods for private key storage.

## New and changed functionality as of Windows 8.1

Enhancements in Windows 8.1 enabled developers to build Microsoft Store apps to create and manage virtual smart cards.

The DCOM Interfaces for Trusted Platform Module (TPM) Virtual Smart Card device management protocol provides a Distributed Component Object Model (DCOM) Remote Protocol interface used for creating and destroying virtual smart cards. A virtual smart card is a device that presents a device interface complying with the PC/SC specification for PC-connected interface devices to its host operating system (OS) platform. This protocol does not assume anything about the underlying implementation of virtual smart card devices. In particular, while it is primarily intended for the management of virtual smart cards based on TPMs, it can also be used to manage other types of virtual smart cards.

**What value does this change add?**

Starting with Windows 8.1, application developers can build into their apps the following virtual smart card maintenance capabilities to relieve some of your administrative burdens.

-   Create a new virtual smart card or select a virtual smart card from the list of available virtual smart cards on the system. Identify the one that the application is supposed to work with.

-   Personalize the virtual smart card.

-   Change the admin key.

-   Diversify the admin key which allows the user to unblock the PIN in a PIN-blocked scenario.

-   Change the PIN.

-   Reset or Unblock the PIN.

-   Destroy the virtual smart card.

**What works differently?**

Starting with Windows 8.1, Microsoft Store app developers are able to build apps that have the capability to prompt the user to reset or unblock and change a virtual smart card PIN. This places more responsibility on the user to maintain their virtual smart card but it can also provide a more consistent user experience and administration experience in your organization.

For more information about developing Microsoft Store apps with these capabilities, see [Trusted Platform Module Virtual Smart Card Management Protocol](https://msdn.microsoft.com/library/hh880895.aspx).

For more information about managing these capabilities in virtual smart cards, see [Understanding and Evaluating Virtual Smart Cards](virtual-smart-card-understanding-and-evaluating.md).

## Hardware requirements

To use the virtual smart card technology, TPM 1.2 is the minimum required for computers running Windows 10 or Windows Server 2016.

## Software requirements

To use the virtual smart card technology, computers must be running one of the following operating systems:

- Windows Server 2016
- Windows Server 2012 R2
- Windows Server 2012
- Windows 10
- Windows 8.1
- Windows 8

## See also

- [Understanding and Evaluating Virtual Smart Cards](virtual-smart-card-understanding-and-evaluating.md)
- [Get Started with Virtual Smart Cards: Walkthrough Guide](virtual-smart-card-get-started.md)
- [Use Virtual Smart Cards](virtual-smart-card-use-virtual-smart-cards.md)
- [Deploy Virtual Smart Cards](virtual-smart-card-deploy-virtual-smart-cards.md)
- [Evaluate Virtual Smart Card Security](virtual-smart-card-evaluate-security.md)
- [Tpmvscmgr](virtual-smart-card-tpmvscmgr.md)
