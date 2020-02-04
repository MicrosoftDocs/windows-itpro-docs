---
title: How to Reset a TPM Lockout
description: How to Reset a TPM Lockout
author: dansimp
ms.assetid: dd20a728-c52e-48e6-9f6c-1311c71dee74
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Reset a TPM Lockout


This topic explains how to use the Administration and Monitoring Website (also referred to as the Help Desk) to reset a TPM lockout. TPM lockouts can occur if an end user enters the incorrect PIN too many times. The number of times that a user can enter an incorrect PIN before the TPM locks varies from manufacturer to manufacturer.

From the **Manage TPM** area of the Administration and Monitoring Website, you can access the centralized Key Recovery data system, which provides a TPM owner password file when you supply a computer ID and associated user identifier.

To access the Manage TPM area of the Administration and Monitoring Website, you must be assigned the MBAM Helpdesk Users role or the MBAM Advanced Helpdesk Users role. These roles are groups that administrators create in Active Directory. You can use any name for these groups. For more information, see [Planning for MBAM 2.5 Groups and Accounts](planning-for-mbam-25-groups-and-accounts.md#bkmk-helpdesk-roles).

For information about MBAM and TPM ownership, see [MBAM 2.5 Security Considerations](mbam-25-security-considerations.md#bkmk-tpm).

**To reset a TPM lockout**

1.  Open a web browser and navigate to the **Administration and Monitoring Website**.

2.  In the left pane, click **Manage TPM** to open the **Manage TPM** page.

3.  Enter the fully qualified domain name for the computer and the computer name.

4.  Enter the end user’s Windows log-on domain and user name to retrieve the TPM owner password file.

    **Note**  
    If you are in the MBAM Advanced Helpdesk Users group, the user domain and user ID fields are not required.

     

5.  From the **Reason for requesting TPM owner password file** list, select a reason for the request, and click **Submit**.

    MBAM returns one of the following:

    -   An error message if no matching TPM owner password file is found

    -   The TPM owner password file for the submitted computer

    After the TPM owner password is retrieved, the owner password is displayed.

6.  To save the password to a .tpm file, click the **Save** button.

7.  In the **Manage TPM** area of the **Administration and Monitoring Website**, select the **Reset TPM lockout** option and provide the TPM owner password file.

    The TPM lockout is reset and the end user’s access is restored.

    **Important**  
    Do not give the TPM hash value or TPM owner password file to end users. Because the TPM information does not change, giving the file to end users creates a security risk.

     



## Related topics


[Performing BitLocker Management with MBAM 2.5](performing-bitlocker-management-with-mbam-25.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





