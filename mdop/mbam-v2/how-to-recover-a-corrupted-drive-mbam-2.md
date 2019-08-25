---
title: How to Recover a Corrupted Drive
description: How to Recover a Corrupted Drive
author: msfttracyp
ms.assetid: b0457a00-f72e-4ad8-ab3b-7701851ca87e
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


To recover a corrupted drive protected by BitLocker, a Microsoft BitLocker Administration and Monitoring (MBAM) Help Desk user will need to create a recovery key package file. This package file can then be copied to the computer that contains the corrupted drive, and then used to recover the drive. Use the following procedure for the steps needed to do this.

**Important**  
To avoid a potential loss of data, it is strongly recommended that you read the “repair-bde” help and clearly understand how to use the command before completing the following instructions.

 

**To recover a corrupted drive**

1.  To create the recovery key package necessary to recover a corrupted drive, start a web browser and open the MBAM Administration and Monitoring website.

2.  Select **Drive Recovery** from the left navigation pane. Enter the user’s domain name, user name, reason for unlocking the drive, and the user’s recovery password ID.

    **Note**  
    If you are a member of the Help Desk Administrators role, you do not have to enter the user’s domain name or user name.

     

3.  Click **Submit**. The recovery key will be displayed.

4.  Click **Save**, and then select **Recovery Key Package**. The recovery key package will be created on your computer.

5.  Copy the recovery key package to the computer that has the corrupted drive.

6.  Open an elevated command prompt. To do this, click **Start** and type `cmd` in the **Search programs and files box**. Right-click **cmd.exe** and select **Run as Administrator**.

7.  At the command prompt, type the following:

    `repair-bde <corrupted drive> <fixed drive> -kp <location of keypackage> -rp <recovery password>`

    **Note**  
    Replace &lt;fixed drive&gt; with an available hard disk drive that has free space equal to or larger than the data on the corrupted drive. Data on the corrupted drive is recovered and moved to the specified hard disk drive.

     

## Related topics


[Performing BitLocker Management with MBAM](performing-bitlocker-management-with-mbam-mbam-2.md)

 

 





