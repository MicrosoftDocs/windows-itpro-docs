---
title: How to Use the Self-Service Portal to Regain Access to a Computer
description: How to Use the Self-Service Portal to Regain Access to a Computer
author: dansimp
ms.assetid: 3c24b13a-d1b1-4763-8ac0-0b2db46267e3
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Use the Self-Service Portal to Regain Access to a Computer


The Self-Service Portal is a website that IT administrators configure as part of their Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 deployment. The website enables end users to independently regain access to their computers if they get locked out of Windows. The Self-Service Portal requires no assistance from Help Desk staff.

The following instructions are written from the perspective of end users, but the information may be useful for IT administrators to understand.

**Important**  
An end user must have physically logged on to the computer (not remotely) at least one time successfully to be able to recover their key using the Self-Service Portal. Otherwise, they must use the Helpdesk Portal for key recovery.

 

End users may experience lockouts if they:

-   Forget their password or PIN

-   Change operating system files, the BIOS, or the Trusted Platform Module (TPM)

**Note**  
If the IT administrator configured an IIS Session State time-out, a message is displayed in the Self-Service Portal 60 seconds prior to the time-out.

 

**To use the Self-Service Portal to regain access to a computer**

1.  In the **Recovery KeyId** field, enter a minimum of eight of the 32-digit BitLocker Key ID that is displayed on the BitLocker recovery screen of your computer. If the first eight digits match multiple keys, a message displays that requires you to enter all 32 digits of the recovery key ID.

2.  In the **Reason** field, select a reason for your request for the recovery key.

3.  Click **Get Key**. Your BitLocker recovery key is displayed in the **Your BitLocker Recovery Key** field.

4.  Enter the 48-digit code into the BitLocker recovery screen on your computer to regain access to the computer.



## Related topics


[Performing BitLocker Management with MBAM 2.5](performing-bitlocker-management-with-mbam-25.md)

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).
 





