---
title: Helping End Users Manage BitLocker
description: Helping End Users Manage BitLocker
author: msfttracyp
ms.assetid: 47776fb3-2d94-4970-b687-c35ec3dd6c64
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Helping End Users Manage BitLocker


Content on a lost or stolen computer is vulnerable to unauthorized access, which can present a security risk to both people and companies. Microsoft BitLocker Administration and Monitoring (MBAM) uses BitLocker to help prevent unauthorized access by locking your computer to help protect sensitive data from malicious users.

## What is BitLocker?


BitLocker Drive Encryption can provide protection for operating system drives, data drives, and removable drives (such as a USB thumb drive) by encrypting the drives. Depending on how BitLocker is configured, users may have to provide a key (a password or PIN) to unlock the information that is stored on the encrypted drives.

When you add new files to a drive that is encrypted with BitLocker, BitLocker encrypts them automatically. Files remain encrypted only while they are stored in the encrypted drive. Files that are copied to another drive or computer are decrypted. If you share files with other users, such as through a network, these files are encrypted while stored on the encrypted drive, but they can be accessed normally by authorized users.

If you encrypt the operating system drive, BitLocker checks the computer during startup for any conditions that could represent a security risk (for example, a change to the BIOS or changes to any startup files). If a potential security risk is detected, BitLocker will lock the operating system drive and require a special BitLocker recovery key to unlock it. Make sure that you create this recovery key when you turn on BitLocker for the first time. Otherwise, you could permanently lose access to your files.

If you encrypt data drives (fixed or removable), you can unlock an encrypted drive with a password or a smart card, or set the drive to automatically unlock when you log on to the computer.

In addition to passwords and PINs, BitLocker can use the Trusted Platform Module (TPM) chip that is provided in many newer computers. The TPM chip is used to ensure that your computer has not been tampered with before BitLocker will unlock the operating system drive. During the encryption process, you may have to enable the TPM chip. When you start your computer, BitLocker asks the TPM for the keys to the drive and unlocks it. To enable the TPM chip, you will have to restart your computer and then change a setting in the BIOS, a pre-Windows layer of your computer software. For more information about the TPM, see [About the Computer TPM Chip](about-the-computer-tpm-chip.md).

Once your computer is protected by BitLocker, you may have to enter a PIN or password every time that the computer wakes from hibernation or starts. The Help Desk for your company or organization can help if you ever forget your PIN or password.

You can turn off BitLocker, either temporarily, by suspending it, or permanently, by decrypting the drive.

**Note**  
Because BitLocker encrypts the whole drive and not just the individual files themselves, be careful when you move sensitive data between drives. If you move a file from a BitLocker-protected drive to a nonencrypted drive, the file will no longer be encrypted.

 

## About the BitLocker Encryption Options Application


To unlock hard disk drives on your computer and to manage your PIN and passwords, use the BitLocker Encryption Options application in the Windows Control Panel by following the procedure outlined here. You can enter passwords to unlock protected drives and can check the BitLocker status of attached drives by using this application.

**To open the BitLocker Encryption Options application**

1.  Click **Start**, and select **Control Panel**. The Control Panel opens in a new window.

2.  In **Control Panel**, select **System and Security**.

3.  Select **BitLocker Encryption Options** to open the BitLocker Encryption Options application.

    For a description of the available options, see the following section.

## Options on the BitLocker Encryption Options Application


The BitLocker Encryption Options application on Control Panel lets you manage your PIN and passwords, which BitLocker uses to protect your computer.

**BitLocker Drive Encryption – Fixed Disk Drives:**

In this section, you can view information about hard disk drives connected to your computer and their current BitLocker Encryption status.

-   **Manage your PIN** - changes the PIN used by BitLocker to unlock your operating system drive.

-   **Manage your password** - changes the password that is used by BitLocker to unlock your other internal drives.

**BitLocker Drive Encryption - External Drives:**

In this section, you can view information about external drives (such as a USB thumb drive) connected to your computer, and their current BitLocker encryption status.

-   **Manage your password** - changes the password that is used by BitLocker to unlock your other internal drives.

**Advanced:**

-   **TPM Administration** - opens the TPM Administration tool in a separate window. From here you can configure common TPM tasks and obtain information about the TPM chipset. You must have administrative permissions on your computer to access this tool.

-   **Disk Management** -open the Disk Management tool. From here you can view the information for all hard drives connected to the computer and configure partitions and drive options. You must have administrative rights on your computer to access this tool.

 

 





