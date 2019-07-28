---
title: Performing BitLocker Management with MBAM 2.5
description: Performing BitLocker Management with MBAM 2.5
author: dansimp
ms.assetid: 068f3ee0-300c-4083-ba18-7065eef997ad
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Performing BitLocker Management with MBAM 2.5


After planning and then deploying Microsoft BitLocker Administration and Monitoring (MBAM), you can configure and use it to manage BitLocker Drive Encryption across your enterprise. The information in this section describes post-installation, day-to-day BitLocker encryption management tasks that are accomplished by using Microsoft BitLocker Administration and Monitoring.

## Reset a TPM lockout


A Trusted Platform Module (TPM) is a microchip that is designed to provide basic security-related functions, primarily involving encryption keys. The TPM is usually installed on the motherboard of a computer, and it communicates with the rest of the system by using a host bus adapter. On computers that incorporate a TPM, you can create cryptographic keys and encrypt them so that they can be decrypted only by the TPM.

A TPM lockout can occur if a user enters the incorrect PIN too many times. The number of times that a user can enter an incorrect PIN before the TPM locks varies by manufacturer. You can use MBAM to access the centralized key recovery data system on the Administration and Monitoring Website, where you can retrieve a TPM owner password file when you supply a computer ID and an associated user identifier.

[How to Reset a TPM Lockout](how-to-reset-a-tpm-lockout-mbam-25.md)

## Recover drives


When you are dealing with the encryption of data, especially in an enterprise environment, consider how that data can be recovered in the event of a hardware failure, changes in personnel, or other situations in which encryption keys can be lost.

The encrypted drive recovery features in MBAM ensure that data can be captured and stored and that the required tools are available to access a BitLocker-protected volume when BitLocker goes into recovery mode, is moved, or becomes corrupted.

[How to Recover a Drive in Recovery Mode](how-to-recover-a-drive-in-recovery-mode-mbam-25.md)

[How to Recover a Moved Drive](how-to-recover-a-moved-drive-mbam-25.md)

[How to Recover a Corrupted Drive](how-to-recover-a-corrupted-drive-mbam-25.md)

## Determine BitLocker encryption state of lost computers


By using MBAM, you can determine the last known BitLocker encryption status of computers that were lost or stolen.

[How to Determine BitLocker Encryption State of Lost Computers](how-to-determine-bitlocker-encryption-state-of-lost-computers-mbam-25.md)

## Use the Self-Service Portal to regain access to a computer


If end users get locked out of Windows by BitLocker, they can use the instructions in this section to get a BitLocker recovery key to regain access to their computer.

[How to Use the Self-Service Portal to Regain Access to a Computer](how-to-use-the-self-service-portal-to-regain-access-to-a-computer-mbam-25.md)



## Related topics


[Operations for MBAM 2.5](operations-for-mbam-25.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





