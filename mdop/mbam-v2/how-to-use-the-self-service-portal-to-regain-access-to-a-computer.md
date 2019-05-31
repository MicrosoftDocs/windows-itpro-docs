---
title: How to Use the Self-Service Portal to Regain Access to a Computer
description: How to Use the Self-Service Portal to Regain Access to a Computer
author: msfttracyp
ms.assetid: bcf095de-0237-4bb0-b450-da8fb6d6f3d0
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Use the Self-Service Portal to Regain Access to a Computer


If end users get locked out of Windows by BitLocker because they forgot their password or PIN, or because they changed operating system files or changed the BIOS or the Trusted Platform Module (TPM), they can use the Self-Service Portal to regain access to Windows without having to ask their Help Desk for assistance.

**Note**  
If the IT administrator configured an IIS Session State time-out, a message is displayed 60 seconds prior to the time-out.

 

**Note**  
These instructions are written for and from the perspective of end users.

 

**To use the Self-Service Portal to regain access to a computer**

1.  In the **Recovery KeyId** field, enter a minimum of eight of the 32-digit BitLocker Key ID that is displayed on the BitLocker recovery screen of your computer.

    **Note**  
    If the first eight digits match multiple keys, a message displays that requires you to enter all 32 digits of the recovery key ID.

     

2.  In the **Reason** field, select a reason for your request for the recovery key.

3.  Click **Get Key**. Your BitLocker recovery key is displayed in the “Your BitLocker Recovery Key” field.

4.  Enter the 48-digit code into the BitLocker recovery screen on your computer to regain access to the computer.

## Related topics


[Performing BitLocker Management with MBAM](performing-bitlocker-management-with-mbam-mbam-2.md)

 

 





