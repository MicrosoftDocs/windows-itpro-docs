---
title: How to Recover a Moved Drive
description: How to Recover a Moved Drive
author: dansimp
ms.assetid: 0d38ce7e-bc64-473e-ae85-99b7099ca758
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 11/01/2016
---


# How to Recover a Moved Drive
This topic explains how to use the Administration and Monitoring Website (also referred to as the Help Desk) to recover an operating system drive that was moved after being encrypted by Microsoft BitLocker Administration and Monitoring (MBAM). When a drive is moved, it no longer accepts the PIN that was used in the previous computer because the Trusted Platform Module (TPM) chip has changed. To recover the moved drive, you must obtain the recovery key ID to retrieve the recovery password.

To recover a moved drive, you must use the **Drive Recovery** area of the Administration and Monitoring Website. To access the **Drive Recovery** area, you must be assigned the MBAM Helpdesk Users role or the MBAM Advanced Helpdesk Users role. For more information about these roles, see [Planning for MBAM 2.5 Groups and Accounts](planning-for-mbam-25-groups-and-accounts.md#bkmk-helpdesk-roles).

**To recover a moved drive**
1.  On the computer that contains the moved drive, start the computer in Windows Recovery Environment (WinRE) mode, or start the computer by using the Microsoft Diagnostic and Recovery Toolset (DaRT).

2.  After the computer has been started with WinRE or DaRT, MBAM will treat the moved operating system drive as a fixed data drive. MBAM will then display the drive’s recovery password ID and ask for the recovery password.

    **Note**  
    In some cases, you may be able to click **I forgot the PIN** during the startup process, and then enter the recovery mode to display the recovery key ID.

     

3.  Use the recovery key ID to retrieve the recovery password and unlock the drive from the Administration and Monitoring Website. For instructions, see [How to Recover a Drive in Recovery Mode](how-to-recover-a-drive-in-recovery-mode-mbam-25.md).

    If the moved drive was configured to use a TPM chip on the original computer, complete the following additional steps. Otherwise, the recovery process is complete.

4.  After unlocking the drive and completing the start process, open a command prompt in WinRE mode and use the `manage-bde` command to decrypt the drive. Using this tool is the only way to remove the TPM plus the PIN protector without the original TPM chip. For information about the `manage-bde` command, see [Manage-bde](https://go.microsoft.com/fwlink/?LinkId=393567).

5.  When the removal is completed, start the computer normally. The MBAM agent will now enforce the policy to encrypt the drive with the new computer’s TPM plus the PIN.



## Related topics


[Performing BitLocker Management with MBAM 2.5](performing-bitlocker-management-with-mbam-25.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





