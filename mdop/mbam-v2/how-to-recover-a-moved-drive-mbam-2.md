---
title: How to Recover a Moved Drive
description: How to Recover a Moved Drive
author: msfttracyp
ms.assetid: 697cd78d-962c-411e-901a-2e9220ba6552
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Recover a Moved Drive


When you move an operating system drive that is encrypted by using Microsoft BitLocker Administration and Monitoring (MBAM), the drive will not accept the PIN that was used in a previous computer because of the change to the Trusted Platform Module (TPM) chip. To use the moved drive, you will need a way to obtain the recovery key ID to retrieve the recovery password. Use the following procedure to recover a drive that has moved.

**To recover a moved drive**

1.  On the computer that contains the moved drive, start the computer in Windows recovery environment (WinRE) mode, or start the computer by using the Microsoft Diagnostic and Recovery Toolset (DaRT).

2.  Once the computer has been started with WinRE or DaRT, Microsoft BitLocker Administration and Monitoring will treat the moved operating system drive as a data drive. MBAM will then display the drive’s recovery password ID and ask for the recovery password.

    **Note**  
    In some cases, you may be able to click **I forgot the PIN** during the startup process, and then enter the recovery mode to display the recovery key ID.

     

3.  Use the recovery key ID to retrieve the recovery password and unlock the drive from the Administration and Monitoring website.

4.  If the moved drive was configured to use a TPM chip on the original computer, you must take additional steps after unlocking the drive and completing the start process. In WinRE mode, open a command prompt and use the **manage-bde** tool to decrypt the drive. Using this tool is the only way to remove the TPM plus PIN protector without the original TPM chip.

5.  Once the removal is completed, start the computer normally. The MBAM agent will now enforce the policy to encrypt the drive with the new computer’s TPM plus PIN.

## Related topics


[Performing BitLocker Management with MBAM](performing-bitlocker-management-with-mbam-mbam-2.md)

 

 





