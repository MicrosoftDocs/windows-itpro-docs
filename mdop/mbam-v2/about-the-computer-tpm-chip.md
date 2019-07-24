---
title: About the Computer TPM Chip
description: About the Computer TPM Chip
author: msfttracyp
ms.assetid: 6f1cf18c-277a-4932-886d-14202ca8d175
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# About the Computer TPM Chip


BitLocker provides additional protection when it is used with a Trusted Platform Module (TPM) chip. The TPM chip is a hardware component that is installed in many newer computers by the computer manufacturers. Microsoft BitLocker Administration and Monitoring (MBAM) uses BitLocker, in addition to the TPM chip, to help provide additional protection of your data and to make sure that your computer has not been tampered with.

## How to Set Up Your TPM


When you start the BitLocker Drive Encryption wizard on your computer, BitLocker checks for a TPM chip if your organization has configured BitLocker to use a TPM chip. If BitLocker finds a compatible TPM chip, you may be prompted to restart your computer to enable the TPM chip for use. As soon as your computer has restarted, follow the instructions to configure the TPM chip in the BIOS (the BIOS is a pre-Windows layer of your computer software).

After BitLocker is configured, you can access additional information about the TPM chip by opening the BitLocker Encryption Options tool in the Windows Control Panel, and then selecting **TPM Administration**.

**Note**  
You must have administrative credentials on your computer to access this tool.

 

In a TPM failure, a change in the BIOS, or certain Windows Updates, BitLocker will lock your computer and require you to contact your Help Desk to unlock it. You have to provide the name of your computer as well as your computer’s domain. Help Desk can give you a password file that can be used to unlock your computer.

## Troubleshooting TPM Issues


If a TPM failure, change in the BIOS, or certain Windows Updates occur, BitLocker will lock your computer and require you to contact your Help Desk to unlock it. You have to provide the name of your computer as well as your computer’s domain. The Help Desk can give you a password file that you can use to unlock your computer.

## Related topics


[Helping End Users Manage BitLocker](helping-end-users-manage-bitlocker.md)

[Using Your PIN or Password](using-your-pin-or-password.md)

 

 





