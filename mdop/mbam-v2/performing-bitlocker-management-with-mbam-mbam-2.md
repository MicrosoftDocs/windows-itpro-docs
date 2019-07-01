---
title: Performing BitLocker Management with MBAM
description: Performing BitLocker Management with MBAM
author: msfttracyp
ms.assetid: 9bfc6c67-f12c-4daa-8f08-5884fb47443c
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


After planning and then deploying Microsoft BitLocker Administration and Monitoring (MBAM), you can configure and use it to manage enterprise BitLocker encryption. The information in this section describes post-installation day-to-day BitLocker encryption management tasks that are accomplished by using Microsoft BitLocker Administration and Monitoring.

## Reset a TPM Lockout by Using MBAM


A Trusted Platform Module (TPM) is a microchip that is designed to provide basic security-related functions, primarily involving encryption keys. The TPM is usually installed on the motherboard of a computer or laptop, and communicates with the rest of the system by using a hardware bus. Computers that incorporate a TPM have the ability to create cryptographic keys and encrypt them so that they can be decrypted only by the TPM.

A TPM lockout can occur if a user enters the incorrect PIN too many times. The number of times that a user can enter an incorrect PIN before the TPM locks varies from manufacturer to manufacturer. You can use MBAM to access the centralized Key Recovery data system in the Administration and Monitoring website, where you can retrieve a TPM owner password file when you supply a computer ID and associated user identifier.

[How to Reset a TPM Lockout](how-to-reset-a-tpm-lockout-mbam-2.md)

## Recover Drives with MBAM


When you are dealing with the encryption of data, especially in an enterprise environment, consider how that data can be recovered in the event of a hardware failure, changes in personnel, or other situations in which encryption keys can be lost.

The encrypted drive recovery features of MBAM ensure that data can be captured and stored and that the required tools are available to access a BitLocker-protected volume when BitLocker goes into recovery mode, is moved, or becomes corrupted.

[How to Recover a Drive in Recovery Mode](how-to-recover-a-drive-in-recovery-mode-mbam-2.md)

[How to Recover a Moved Drive](how-to-recover-a-moved-drive-mbam-2.md)

[How to Recover a Corrupted Drive](how-to-recover-a-corrupted-drive-mbam-2.md)

## Determine BitLocker Encryption State of Lost Computers by Using MBAM


Using MBAM, you can determine the last known BitLocker encryption status of computers that were lost or stolen.

[How to Determine BitLocker Encryption State of Lost Computers](how-to-determine-bitlocker-encryption-state-of-lost-computers-mbam-2.md)

## Use the Self-Service Portal to Regain Access to a Computer


If end users get locked out of Windows by BitLocker, they can use the instructions in this section to get a BitLocker recovery key to regain access to their computer.

[How to Use the Self-Service Portal to Regain Access to a Computer](how-to-use-the-self-service-portal-to-regain-access-to-a-computer.md)

## Other Resources for Performing BitLocker Management with MBAM


[Operations for MBAM 2.0](operations-for-mbam-20-mbam-2.md)

 

 





