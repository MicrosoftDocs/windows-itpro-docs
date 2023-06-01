---
title: Encryption and data protection in Windows
description: Get an overview encryption and data protection in Windows 11 and Windows 10
ms.topic: overview
ms.date: 09/22/2022
ms.reviewer: rafals
---

# Encryption and data protection in Windows client

When people travel with their computers and devices, their confidential information travels with them. Wherever confidential data is stored, it must be protected against unauthorized access, whether through physical device theft or from malicious applications. 
Encryption and data protection features include:

- Encrypted Hard Drive
- BitLocker

## Encrypted Hard Drive

Encrypted Hard Drive uses the rapid encryption provided by BitLocker Drive Encryption to enhance data security and management.
By offloading the cryptographic operations to hardware, encrypted hard drives increase BitLocker performance and reduce CPU usage and power consumption. Because encrypted hard drives encrypt data quickly, enterprise devices can expand BitLocker deployment with minimal impact on productivity.

Encrypted hard drives provide:

- Better performance: Encryption hardware, integrated into the drive controller, allows the drive to operate at full data rate with no performance degradation.
- Strong security based in hardware: Encryption is always "on" and the keys for encryption never leave the hard drive. User authentication is performed by the drive before it will unlock, independently of the operating system.
- Ease of use: Encryption is transparent to the user, and the user doesn't need to enable it. Encrypted hard drives are easily erased using on-board encryption key; there's no need to re-encrypt data on the drive.
- Lower cost of ownership: There's no need for new infrastructure to manage encryption keys, since BitLocker uses your existing infrastructure to store recovery information. Your device operates more efficiently because processor cycles don't need to be used for the encryption process.

Encrypted hard drives are a new class of hard drives that are self-encrypted at a hardware level and allow for full disk hardware encryption. 

## BitLocker

BitLocker Drive Encryption is a data protection feature that integrates with the operating system and addresses the threats of data theft or exposure from lost, stolen, or inappropriately decommissioned computers. 

BitLocker provides encryption for the operating system, fixed data, and removable data drives, using technologies like hardware security test interface (HSTI), Modern Standby, UEFI Secure Boot, and TPM. 

Windows consistently improves data protection by improving existing options and providing new strategies.

## Personal Data Encryption (PDE)
<!-- Max 5963468 OS 32516487 -->
(*Applies to: Windows 11, version 22H2 and later*)

[!INCLUDE [Personal Data Encryption (PDE) description](personal-data-encryption/includes/pde-description.md)]

## See also

- [Encrypted Hard Drive](encrypted-hard-drive.md)
- [BitLocker](bitlocker/index.md)
- [Personal Data Encryption (PDE)](personal-data-encryption/index.md)
