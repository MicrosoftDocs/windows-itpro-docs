---
title: How to Recover a Drive in Recovery Mode
description: How to Recover a Drive in Recovery Mode
author: dansimp
ms.assetid: e126eaf8-9ae7-40fe-a28e-dbd78d26859e
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Recover a Drive in Recovery Mode


This topic explains how to use the Administration and Monitoring Website (also referred to as the Help Desk) to get a recovery password to give to end users if their BitLocker-protected drive goes into recovery mode. Drives go into recovery mode if users lose or forget their PIN or password or if the Trusted Module Platform (TPM) chip detects changes to the BIOS or startup files of a computer.

To get a recovery password, use the **Drive Recovery** area of the Administration and Monitoring Website. You must be assigned the MBAM Helpdesk Users role or the MBAM Advanced Helpdesk Users role to access this area of the website.

**Note**  
You may have given these roles different names when you created them. For more information, see [Planning for MBAM 2.5 Groups and Accounts](planning-for-mbam-25-groups-and-accounts.md#bkmk-helpdesk-roles).



**Important**  
Recovery passwords expire after a single use. On operating system drives and fixed data drives, the single-use rule is applied automatically. On removable drives, it is applied when the drive is removed and then reinserted and unlocked on a computer that has Group Policy settings activated to manage removable drives.



**To recover a drive in recovery mode**

1.  Open a web browser and navigate to the **Administration and Monitoring Website**.

2.  In the left pane, select **Drive Recovery** to open the **Recover access to an encrypted drive** page.

3.  Enter the end user’s Windows log-on domain and user name to view recovery information.

    **Note**  
    If you are in the MBAM Advanced Helpdesk Users group, the user domain and user ID fields are not required.



4.  Enter the first eight digits of the recovery key ID to see a list of possible matching recovery keys, or enter the entire recovery key ID to get the exact recovery key.

5.  From the **Reason for Drive Unlock** list, select one of the predefined options, and then click **Submit**.

    MBAM returns the following:

    -   An error message if no matching recovery password is found

    -   Multiple possible matches if the user has multiple matching recovery passwords

    -   The recovery password and recovery package for the submitted user

        **Note**  
        If you are recovering a damaged drive, the recovery package option provides BitLocker with critical information that it needs to recover the drive.



~~~
After the recovery password and recovery package are retrieved, the recovery password is displayed.
~~~

6. To copy the password, click **Copy Key**, and then paste the recovery password into an email message. Alternatively, click **Save** to save the recovery password to a file.

   When the user types the recovery password into the system or uses the recovery package, the drive is unlocked.



## Related topics


[Performing BitLocker Management with MBAM 2.5](performing-bitlocker-management-with-mbam-25.md)



## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





