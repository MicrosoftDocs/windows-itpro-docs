---
title: How to Recover a Moved Drive
description: How to Recover a Moved Drive
author: msfttracyp
ms.assetid: 0c7199d8-9463-4f44-9af3-b70eceeaff1d
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Recover a Moved Drive


When you move an operating system drive that has been previously encrypted by using Microsoft BitLocker Administration and Monitoring (MBAM), you must resolve certain issues. After a PIN is attached to the new computer, the drive will not accept the start-up PIN that was used in previous computer. The system considers the PIN to be invalid because of the change to the Trusted Platform Module (TPM) chip. You must obtain a recovery key ID to retrieve the recovery password in order to use the moved drive. To do this, use the following procedure.

**To recover a moved drive**

1.  On the computer that contains the moved drive, start in Windows Recovery Environment (WinRE) mode, or start the computer by using the Microsoft Diagnostics and Recovery Toolset (DaRT).

2.  Once the computer has been started with WinRE or DaRT, MBAM will treat the moved operating system drive as a data drive. MBAM will then display the drive’s recovery password ID and ask for the recovery password.

    **Note**  
    In some cases, you might be able to click **I forget the PIN** during the startup process to enter the recovery mode. This also displays the recovery key ID.

     

3.  On the MBAM administration website, use the recovery key ID to retrieve the recovery password and unlock the drive.

4.  If the moved drive was configured to use a TPM chip on the original computer, you must take additional steps after you unlock the drive and complete the start process. In WinRE mode, open a command prompt and use the **manage-bde** tool to decrypt the drive. The use of this tool is the only way to remove the TPM-plus-PIN protection without the original TPM chip.

5.  After the removal is complete, start the system normally. The MBAM agent will proceed to enforce the policy to encrypt the drive with the new computer’s TPM plus PIN.

## Related topics


[Performing BitLocker Management with MBAM](performing-bitlocker-management-with-mbam.md)

 

 





