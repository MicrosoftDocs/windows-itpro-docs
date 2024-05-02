---
title: Operating System security
description: Windows 11 security book - Operating System security chapter.
ms.topic: overview
ms.date: 04/09/2024
---

# Encryption and data protection

:::image type="content" source="images/operating-system.png" alt-text="Diagram of containing a list of security features." lightbox="images/operating-system.png" border="false":::

When people travel with their PCs, their confidential information travels with them. Wherever confidential data is stored, it must be protected against unauthorized access, whether through physical device theft or from malicious applications.

## BitLocker

BitLocker Drive Encryption is a data protection feature that integrates with the operating system and addresses the threats of data theft or exposure from lost, stolen, or inappropriately decommissioned computers. BitLocker uses the AES algorithm in XTS or CBC mode of operation with 128-bit or 256-bit key length to encrypt data on the volume. Cloud storage on Microsoft OneDrive or Azure<sup>[\[9\]](conclusion.md#footnote9)</sup> can be used to save recovery key content. BitLocker can be managed by any MDM solution such as Microsoft Intune<sup>[\[6\]](conclusion.md#footnote6)</sup>> using a configuration service provider (CSP)<sup>[\[9\]](conclusion.md#footnote9)</sup>. BitLocker provides encryption for the OS, fixed data, and removable data drives (BitLocker To Go), leveraging technologies like Hardware Security Test Interface (HSTI), Modern Standby, UEFI Secure Boot, and TPM. Windows consistently improves data protection by expanding existing options and providing new strategies.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [BitLocker overview](../operating-system-security/data-protection/bitlocker/index.md)

## BitLocker To Go

BitLocker To Go refers to BitLocker Drive Encryption on removable data drives. BitLocker To Go includes the encryption of USB flash drives, SD cards, and external hard disk drives. Drives can be unlocked using a password, certificate on a smart card, or recovery password.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [BitLocker FAQ](../operating-system-security/data-protection/bitlocker/faq.yml)

## Device Encryption

Device Encryption is consumer-level device encryption that can't be managed. Device Encryption is turned on by default for devices with the right hardware components (for example, TPM 2.0, UEFI Secure Boot, Hardware Security Test Interface, and Modern Standby). However, for a commercial scenario, it's possible for commercial customers to disable Device Encryption in favor of BitLocker Drive Encryption. BitLocker Drive Encryption is manageable through MDM.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Device encryption](../operating-system-security/data-protection/bitlocker/index.md#device-encryption)

## Encrypted hard drive

Encrypted hard drives are a class of hard drives that are self-encrypted at the hardware level and allow for full-disk hardware encryption while being transparent to the device user. These drives combine the security and management benefits provided by BitLocker Drive Encryption with the power of self-encrypting drives.

By offloading the cryptographic operations to hardware, encrypted hard drives increase BitLocker performance and reduce CPU usage and power consumption. Because encrypted hard drives encrypt data quickly, BitLocker deployment can be expanded across enterprise devices with little to no impact on productivity.

Encrypted hard drives enable:

- Smooth performance: Encryption hardware integrated into the drive controller allows the drive to operate at full data rate without performance degradation
- Strong security based in hardware: Encryption is always "on," and the keys for encryption never leave the hard drive. The drive authenticates the user independently from the operating system before it unlocks
- Ease of use: Encryption is transparent to the user, and the user doesn't need to enable it. Encrypted hard drives are easily erased using an onboard encryption key. There's no need
to re-encrypt data on the drive
- Lower cost of ownership: There's no need for new infrastructure to manage encryption keys since BitLocker leverages your existing infrastructure to store recovery information. Your device operates more efficiently because processor cycles do not need to be used for the encryption process

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Encrypted hard drive](../operating-system-security/data-protection/encrypted-hard-drive.md)

## Personal data encryption

Personal Data Encryption refers to a new user authenticated encryption mechanism used to protect user content. Windows Hello for Business is the modern user authentication mechanism, which is used with PDE. Windows Hello for Business, either with PIN or biometrics (face or fingerprint), is used to protect the container, which houses the encryption keys used by Personal Data Encryption (PDE). When the user logs in (either after bootup or unlocking after a lock screen), the container gets authenticated to release the keys in the container to decrypt user content.

With the first release of PDE (Windows 11 22H2), the PDE API was available, which when adopted by applications can protect data under the purview of the applications. With the platform release of the next Windows version, PDE for Folders will be released, this feature would require no updates to any applications and protects the contents in the Known Windows Folders from bootup till first login. This reduces the barrier for entry for customers and they'll be able to get PDE security as part of the OS.

PDE requires Microsoft Entra ID.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Personal Data Encryption (PDE)](../operating-system-security/data-protection/personal-data-encryption/index.md)

## Email encryption

Email encryption enables users to encrypt outgoing email messages and attachments so that only intended recipients with a digital identification (ID) - also called a certificate - can read them.10 Users can digitally sign a message, which verifies the identity of the sender and ensures the message has not been tampered with.

These encrypted messages can be sent by a user to people within their organization as well as external contacts who have proper encryption certificates.

However, recipients using Windows 11 Mail app can only read encrypted messages if the message is received on their Exchange account and they have corresponding decryption keys. Encrypted messages can be read only by recipients who have a certificate. If an encrypted message is sent to recipients whose encryption certificates are not available, the app will prompt you to remove these recipients before sending the email.
