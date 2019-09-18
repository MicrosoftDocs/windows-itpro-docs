---
title: How to Recover a Drive in Recovery Mode
description: How to Recover a Drive in Recovery Mode
author: dansimp
ms.assetid: 8b792bc8-b671-4345-9d37-0208db3e5b03
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


The encrypted drive recovery features of Microsoft BitLocker Administration and Monitoring (MBAM) ensure the capture and storage of data and availability of tools required to access a BitLocker-protected volume when BitLocker goes into recovery mode. A BitLocker-protected volume goes into recovery mode when a PIN or password is lost or forgotten, or when the Trusted Module Platform (TPM) chip detects changes to the BIOS or startup files of a computer.

Use this procedure to access the centralized key recovery data system, which can provide a recovery password if a recovery password ID and associated user identifier are supplied.

**Important**  
Microsoft BitLocker Administration and Monitoring uses single-use recovery keys that expire upon use. The single use of a recovery password is automatically applied to operating system drives and fixed drives. On removable drives, it is applied when the drive is removed and then re-inserted and unlocked on a computer that has Group Policy settings activated to manage removable drives.



**To recover a drive in recovery mode**

1.  Open a web browser and navigate to the Administration and Monitoring website.

2.  In the navigation pane, click **Drive Recovery**. The “Recover access to an encrypted drive” webpage opens.

3.  Enter the Windows Logon domain and user name of the user to view recovery information and the first eight digits of the recovery key ID to receive a list of possible matching recovery keys or the entire recovery key ID to receive the exact recovery key.

4.  Select one of the predefined options from the **Reason for Drive Unlock** list, and then click **Submit**.

    **Note**  
    If you are an MBAM Advanced Helpdesk user, the user domain and user ID entries are not required.



~~~
MBAM returns the following:

-   An error message if no matching recovery password is found

-   Multiple possible matches if the user has multiple matching recovery passwords

-   The recovery password and recovery package for the submitted user

    **Note**  
    If you are recovering a damaged drive, the recovery package option provides BitLocker with critical information that it needs to recover the drive.



After the recovery password and recovery package are retrieved, the recovery password is displayed.
~~~

5. To copy the password, click **Copy Key**, and then paste the recovery password into an email message. Alternatively, click **Save** to save the recovery password to a file.

   When the user types the recovery password into the system or uses the recovery package, the drive is unlocked.

## Related topics


[Performing BitLocker Management with MBAM](performing-bitlocker-management-with-mbam-mbam-2.md)









