---
title: How to Recover a Drive in Recovery Mode
description: How to Recover a Drive in Recovery Mode
author: dansimp
ms.assetid: 09d27e4b-57fa-47c7-a004-8b876a49f27e
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Recover a Drive in Recovery Mode


Microsoft BitLocker Administration and Monitoring (MBAM) includes Encrypted Drive Recovery features. These features ensure the capture and storage of data and availability of tools that are required to access a BitLocker-protected volume when BitLocker puts that volume into recovery mode. A BitLocker-protected volume goes into recovery mode when a PIN or password is lost or forgotten, or when the Trusted Module Platform (TPM) chip detects a change to the computer's BIOS or startup files.

Use this procedure to access the centralized Key Recovery data system that can provide a recovery password when a recovery password ID and associated user identifier are supplied.

**Important**  
MBAM generates single-use recovery keys. Under this limitation, a recovery key can be used only once and then it is no longer valid. The single use of a recovery password is automatically applied to operating system drives and fixed drives. On removable drives, the single use is applied when the drive is removed and then re-inserted and unlocked on a computer that has the group policy settings activated to manage removable drives.

 

**To recover a drive in Recovery Mode**

1.  Open the MBAM website.

2.  In the navigation pane, click **Drive Recovery**. The **Recover access to an encrypted drive** webpage opens.

3.  Enter the user's Windows Logon domain and user name and the first eight digits of the recovery key ID, to receive a list of possible matching recovery keys. Alternatively, enter the entire recovery key ID to receive the exact recovery key. Select one of the predefined options in the **Reason for Drive Unlock** drop-down list, and then click **Submit**.

    **Note**  
    If you are an MBAM Advanced Helpdesk User, the user domain and user ID entries are not required.

     

4.  MBAM returns the following:

    1.  An error message if no matching recovery password is found

    2.  Multiple possible matches if the user has multiple matching recovery passwords

    3.  The recovery password and recovery package for the submitted user

        **Note**  
        If you are recovering a damaged drive, the recovery package option provides BitLocker with the critical information necessary to attempt the recovery.

         

5.  After the recovery password and recovery package are retrieved, the recovery password is displayed. To copy the password, click **Copy Key**, and then paste the recovery password into an email or other text file for temporary storage. Or, to save the recovery password to a file, click **Save**.

6.  When the user types the recovery password into the system or uses the recovery package, the drive is unlocked.

## Related topics


[Performing BitLocker Management with MBAM](performing-bitlocker-management-with-mbam.md)

 

 





