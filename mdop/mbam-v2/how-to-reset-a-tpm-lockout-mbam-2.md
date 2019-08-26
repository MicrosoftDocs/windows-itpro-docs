---
title: How to Reset a TPM Lockout
description: How to Reset a TPM Lockout
author: msfttracyp
ms.assetid: 20719ab2-18ae-4d3b-989a-539341909816
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Reset a TPM Lockout


The Encrypted Drive Recovery feature of Microsoft BitLocker Administration and Monitoring (MBAM) encompasses both the capture and storage of data and the availability for tools that are needed to manage the Trusted Platform Module (TPM). This topic covers how to access the centralized Key Recovery data system in the Administration and Monitoring website, which can provide a TPM owner password file when a computer ID and associated user identifier are supplied.

A TPM lockout can occur if a user enters the incorrect PIN too many times. The number of times that a user can enter an incorrect PIN before the TPM locks varies from manufacturer to manufacturer.

You can reset a TPM lockout only if MBAM owns the TPM.

**To reset a TPM lockout**

1.  Open a web browser and navigate to the Administration and Monitoring website.

2.  In the left navigation pane, select **Manage TPM** to open the **Manage TPM** page.

3.  Enter the fully qualified domain name for the computer and the computer name, and enter the user’s Windows logon domain and the user’s user name to retrieve the TPM owner password file.

4.  From the **Reason for requesting TPM owner password file** list, select a reason for the request, and click **Submit**.

    MBAM returns one of the following:

    -   An error message, if no matching TPM owner password file is found

    -   The TPM owner password file for the submitted computer

    **Note**  
    If you are an Advanced Helpdesk user, the user domain and user ID fields are not required.



~~~
After the TPM owner password is retrieved, the owner password is displayed.
~~~

5. To save the password to a .tpm file, click the **Save** button.

   The user will run the TPM management console, select the **Reset TPM lockout** option, and provide the TPM owner password file to reset the TPM lockout.

   **Important**  
   Help Desk administrators should not give the TPM hash value or TPM owner password file to end users. The TPM information does not change, so it could pose a security risk if the file is given to end users.



## Related topics


[Performing BitLocker Management with MBAM](performing-bitlocker-management-with-mbam-mbam-2.md)









