---
title: Virtual Smart Card Overview
description: Learn about virtual smart card technology for Windows.
ms.topic: overview
ms.date: 09/06/2024
---

# Virtual Smart Card Overview

[!INCLUDE [virtual-smart-card-deprecation-notice](../../includes/virtual-smart-card-deprecation-notice.md)]

This article provides an overview of the virtual smart card technology.

## Feature description

Virtual smart card technology offers comparable security benefits to physical smart cards by using two-factor authentication. Virtual smart cards emulate the functionality of physical smart cards, but they use the Trusted Platform Module (TPM) chip that is available on devices. Virtual smart cards don't require the use of a separate physical smart card and reader. You create virtual smart cards in the TPM, where the keys used for authentication are stored in cryptographically-secured hardware.

By utilizing TPM devices that provide the same cryptographic capabilities as physical smart cards, virtual smart cards accomplish the three key properties that are desired for smart cards: non-exportability, isolated cryptography, and anti-hammering.

## Practical applications

Virtual smart cards are functionally similar to physical smart cards, appearing in Windows as smart cards that are always-inserted. Virtual smart cards can be used for authentication to external resources, protection of data by encryption, and integrity through signing. You can deploy virtual smart cards by using in-house methods or a purchased solution, and they can be a replacement for other methods of strong authentication in a corporate setting of any scale.

### Authentication use cases

#### Two-factor authentication‒based remote access

After a user has a fully functional TPM virtual smart card, provisioned with a sign-in certificate, the certificate is used to gain authenticated access to corporate resources. When the proper certificate is provisioned to the virtual card, the user need only provide the PIN for the virtual smart card, as if it was a physical smart card, to sign in to the domain.

In practice, this is as easy as entering a password to access the system. Technically, it's far more secure. Using the virtual smart card to access the system proves to the domain that the user who is requesting authentication has possession of the personal computer upon which the card has been provisioned and knows the virtual smart card PIN. Because this request couldn't have possibly originated from a system other than the system certified by the domain for this user's access, and the user couldn't have initiated the request without knowing the PIN, a strong two-factor authentication is established.

#### Client authentication

Virtual smart cards can also be used for client authentication by using TLS/SSL or a similar technology. Similar to domain access with a virtual smart card, an authentication certificate can be provisioned for the virtual smart card, provided to a remote service, as requested in the client authentication process. This adheres to the principles of two-factor authentication because the certificate is only accessible from the computer that hosts the virtual smart card, and the user is required to enter the PIN for initial access to the card.

#### Virtual smart card redirection for remote desktop connections

The concept of two-factor authentication associated with virtual smart cards relies on the proximity of users to the devices that they use to access domain. When you connect to a device that is hosting virtual smart cards, you can't use the virtual smart cards located on the remote device during the remote session. However, you can access the virtual smart cards on the connecting device (which is under your physical control), which are loaded onto the remote device. You can use the virtual smart cards as if they were installed by using the remote devices' TPM, extending your privileges to the remote device, while maintaining the principles of two-factor authentication.

### Confidentiality use cases

#### S/MIME email encryption

Physical smart cards are designed to hold private keys. You can use the private keys for email encryption and decryption. The same functionality exists in virtual smart cards. By using S/MIME with a user's public key to encrypt email, the sender of an email is assured that only the person with the corresponding private key can decrypt the email. This assurance is a result of the non-exportability of the private key. It never exists within reach of malicious software, and it remains protected by the TPM—even during decryption.

#### BitLocker for data volumes

BitLocker Drive Encryption technology makes use of symmetric-key encryption to protect the content of a user's hard drive. BitLocker ensures that if the physical ownership of a hard drive is compromised, an adversary won't be able to read data off the drive. The key used to encrypt the drive can be stored in a virtual smart card, which necessitates knowledge of the virtual smart card PIN to access the drive, and possession of the device that is hosting the TPM virtual smart card. If the drive is obtained without access to the TPM that hosts the virtual smart card, any brute force attack will be difficult.

You can use BitLocker to encrypt portable drives, storing keys in virtual smart cards. In this scenario, unlike using BitLocker with a physical smart card, the encrypted drive can be used only when it's connected to device for the virtual smart card that is used to encrypt the drive, because the BitLocker key is only accessible from the device. This method can be useful to ensure the security of backup drives and personal storage uses outside the main hard drive, too.

### Data integrity use case

#### Signing data

To verify authorship of data, a user can sign it by using a private key stored in the virtual smart card. Digital signatures confirm the integrity and origin of the data.

- Storing the key in an operating system that is accessible, malicious users could access it and use it to modify already signed data or to spoof the key owner's identity
- Storing the key in a virtual smart card, means that you can only use it to sign data on the host device. You can't export the key to other systems (intentionally or unintentionally, such as with malware theft), making digital signatures more secure than other methods for private key storage

## Hardware requirements

To use the virtual smart card technology, TPM 1.2 is the minimum required for devices running a supported operating system.
