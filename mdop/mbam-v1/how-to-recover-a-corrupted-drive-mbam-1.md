---
title: How to Recover a Corrupted Drive
description: How to Recover a Corrupted Drive
author: msfttracyp
ms.assetid: 715491ae-69c0-4fae-ad3f-3bd19a0db2f2
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Recover a Corrupted Drive


To recover a corrupted drive that has been protected by BitLocker, a Microsoft BitLocker Administration and Monitoring (MBAM) help desk user must create a recovery key package file. This package file can be copied to the computer that contains the corrupted drive and then used to recover the drive. To accomplish this, use the following procedure.

**To Recover a Corrupted Drive**

1.  Open the MBAM administration website.

2.  Select **Drive Recovery** from the navigation pane. Enter the user’s domain name and user name, the reason for unlocking the drive, and the user’s recovery password ID.

    **Note**  
    If you are a member of the Help Desk Administrators role, you do not have to enter the user’s domain name or user name.

     

3.  Click **Submit**. The recovery key will be displayed.

4.  Click **Save**, and then select **Recovery Key Package**. The recovery key package will be created on your computer.

5.  Copy the recovery key package to the computer that has the corrupted drive.

6.  Open an elevated command prompt. To do this, click **Start** and type `cmd` in the **Search programs and files** box. In the search results list, right-click **cmd.exe** and select **Run as Administrator**.

7.  At the command prompt, type the following:

    `repair-bde <fixed drive> <corrupted drive> -kp <location of keypackage> -rp <recovery password>`

    **Note**  
    For the &lt;fixed drive&gt; in the command, specify an available storage device that has free space equal to or larger than the data on the corrupted drive. Data on the corrupted drive is recovered and moved to the specified fixed drive.

     

## Related topics


[Performing BitLocker Management with MBAM](performing-bitlocker-management-with-mbam.md)

 

 





