---
title: How to Reset a TPM Lockout
description: How to Reset a TPM Lockout
author: msfttracyp
ms.assetid: 91ec6666-1ae2-4e76-9459-ad65c405f639
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Reset a TPM Lockout


The Encrypted Drive Recovery feature of Microsoft BitLocker Administration and Monitoring (MBAM) encompasses both the capture and storage of data and the availability for tools that are required to manage the Trusted Platform Module (TPM). This topic covers how to access the centralized Key Recovery data system in the bit\_admmon\_tlanextref administration website. The Key Recovery data system can provide a TPM owner password file when the computer identity and the associated user identifier are supplied.

A TPM lockout can occur if a user enters an incorrect PIN too many times. The number of times that a user can enter an incorrect PIN before the TPM lockout is based on the computer manufacturer's specification.

**To reset a TPM lockout**

1.  Open the MBAM administration website.

2.  In the navigation pane, select **Manage TPM**. This opens the **Manage TPM** page.

3.  Enter the fully qualified domain name (FQDN) for the computer and the computer name. Enter the user’s Windows Logon domain and the user’s user name. Select one of the predefined options in the **Reason for requesting TPM owner password file** drop-down menu. Click **Submit**.

4.  MBAM will return one of the following:

    -   An error message if no matching TPM owner password file is found

    -   The TPM owner password file for the submitted computer

    **Note**  
    If you are an Advanced Helpdesk User, the user domain and user ID fields are not required.

     

5.  Upon retrieval, the owner password is displayed. To save this password to a .tpm file, click the **Save** button.

6.  The user will run the TPM management console and select the **Reset TPM lockout** option and provide the TPM owner password file to reset the TPM lockout.

## Related topics


[Performing BitLocker Management with MBAM](performing-bitlocker-management-with-mbam.md)

 

 





