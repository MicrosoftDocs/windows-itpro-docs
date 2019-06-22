---
title: Performing BitLocker Management with MBAM
description: Performing BitLocker Management with MBAM
author: msfttracyp
ms.assetid: 2d24390a-87bf-48b3-96a9-3882d6f2a15c
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Performing BitLocker Management with MBAM


After you deploy Microsoft BitLocker Administration and Monitoring (MBAM), you can configure and use MBAM to manage enterprise BitLocker encryption. This section describes post-installation, day-to-day BitLocker encryption management tasks that can be accomplished by using MBAM.

## Reset a TPM Lockout with MBAM


A Trusted Platform Module (TPM) microchip provides basic security-related functions. These functions are accomplished primarily by the use of encryption keys. The TPM is typically installed on the motherboard of a computer or laptop and communicates with the rest of the system by using a hardware bus. Computers that incorporate a TPM can create cryptographic keys that can be decrypted only by the TPM. A TPM lockout can occur if a user enters an incorrect PIN too many times. The number of times that a user can enter an incorrect PIN before the TPM locks varies from manufacturer to manufacturer. The Key Recovery data system on the MBAM administration website enables you to obtain a reset TPM owner password file.

[How to Reset a TPM Lockout](how-to-reset-a-tpm-lockout-mbam-1.md)

## Recover drives with MBAM


Make sure that you know how to attempt data recovery from encrypted drives in the event of hardware failure, changes in personnel, or other situations in which encryption keys are lost. The Encrypted Drive Recovery features of MBAM provide the capture and storage of data and availability of tools required to access a BitLocker-protected volume when the volume goes into recovery mode, is moved, or becomes corrupted.

[How to Recover a Drive in Recovery Mode](how-to-recover-a-drive-in-recovery-mode-mbam-1.md)

[How to Recover a Moved Drive](how-to-recover-a-moved-drive-mbam-1.md)

[How to Recover a Corrupted Drive](how-to-recover-a-corrupted-drive-mbam-1.md)

## Determine BitLocker Encryption State of lost computers by Using MBAM


When you use MBAM, you can determine the last known BitLocker encryption status of computers that were lost or stolen.

[How to Determine the BitLocker Encryption State of a Lost Computers](how-to-determine-the-bitlocker-encryption-state-of-a-lost-computers-mbam-1.md)

## Other resources for performing BitLocker Management with MBAM


[Operations for MBAM 1.0](operations-for-mbam-10.md)

 

 





