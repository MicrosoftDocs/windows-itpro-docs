---
title: BitLocker Upgrading FAQ (Windows 10)
description: This topic for the IT professional answers frequently asked questions concerning the requirements to use, upgrade, deploy and administer, and key management policies for BitLocker.
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
ms.reviewer: 
---

# BitLocker Upgrading FAQ

**Applies to**
-   Windows 10

## Can I upgrade to Windows 10 with BitLocker enabled?

Yes. 

## What is the difference between suspending and decrypting BitLocker?

**Decrypt** completely removes BitLocker protection and fully decrypts the drive.

**Suspend** keeps the data encrypted but encrypts the BitLocker volume master key with a clear key. The clear key is a cryptographic key stored unencrypted and unprotected on the disk drive. By storing this key unencrypted, the **Suspend** option allows for changes or upgrades to the computer without the time and cost of decrypting and re-encrypting the entire drive. After the changes are made and BitLocker is again enabled, BitLocker will reseal the encryption key to the new values of the measured components that changed as a part of the upgrade, the volume master key is changed, the protectors are updated to match and the clear key is erased.

## Do I have to decrypt my BitLocker-protected drive to download and install system updates and upgrades?

No user action is required for BitLocker in order to apply updates from Microsoft, including [Windows quality updates and feature updates](https://technet.microsoft.com/itpro/windows/manage/waas-quick-start). 
Users need to suspend BitLocker for Non-Microsoft software updates, such as:   

- Computer manufacturer firmware updates
- TPM firmware updates
- Non-Microsoft application updates that modify boot components

> [!NOTE]  
> If you have suspended BitLocker, you can resume BitLocker protection after you have installed the upgrade or update. Upon resuming protection, BitLocker will reseal the encryption key to the new values of the measured components that changed as a part of the upgrade or update. If these types of upgrades or updates are applied without suspending BitLocker, your computer will enter recovery mode when restarting and will require a recovery key or password to access the computer.
 
