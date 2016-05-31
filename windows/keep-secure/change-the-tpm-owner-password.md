---
title: Change the TPM owner password (Windows 10)
description: This topic for the IT professional describes how to change the password or PIN for the owner of the Trusted Platform Module (TPM) that is installed on your system.
ms.assetid: e43dcff3-acb4-4a92-8816-d6b64b7f2f45
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Change the TPM owner password

**Applies to**
-   Windows 10

This topic for the IT professional describes how to change the password or PIN for the owner of the Trusted Platform Module (TPM) that is installed on your system.

## About the TPM owner password
The owner of the TPM is the user who possesses the owner password and is able to set it and change it. Only one owner password exists per TPM. The owner of the TPM can make full use of TPM capabilities. When an owner is set, no other user or software can claim ownership of the TPM. Only the TPM owner can enable, disable, or clear the TPM without having physical access to the computer, for example, by using the command-line tools remotely. Taking ownership of the TPM can be performed as part of the initialization process. Ownership can change when you share the password or clear your ownership of the TPM so someone else can initialize it.

Applications, including BitLocker Drive Encryption, can automatically start the initialization process. If you enable BitLocker without manually initializing the TPM, the TPM owner password is automatically created and saved in the same location as the BitLocker recovery password.
The TPM owner password can be saved as a file on a removable storage device, or on another computer. The password can also be printed. The TPM MMC gives the TPM owner the sole ability to choose the appropriate option to type the password or to use the saved password.
As with any password, you should change your TPM owner password if you suspect that it has become compromised and is no longer a secret.

**Other TPM management options**

Instead of changing your owner password, you can also use the following options to manage your TPM:

-   **Clear the TPM**   If you want to invalidate all of the existing keys that have been created since you took ownership of the TPM, you can clear it. For more info, see [Initialize and Configure Ownership of the TPM](initialize-and-configure-ownership-of-the-tpm.md#bkmk-clear1).

    >**Important:**  Clearing the TPM can result in the loss of data. To avoid data loss, make sure you have a backup or recovery method for any data protected or encrypted by the TPM.
     
-   **Turn off the TPM**   If you want to keep all existing keys and data intact, and you want to disable the services that are provided by the TPM, you can turn it off. For more info, see [Initialize and Configure Ownership of the TPM](initialize-and-configure-ownership-of-the-tpm.md#bkmk-onoff).

## Change the TPM owner password

The following procedure provides the steps that are necessary to change the TPM owner password.

**To change the TPM owner password**

1.  Open the TPM MMC (tpm.msc). If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then click **Yes**.
2.  In the **Actions** pane, click **Change Owner Password**.
3.  In the **Manage the TPM security hardware** dialog box, select a method to enter your current TPM owner password.

    -   If you saved your TPM owner password on a removable storage device, insert it, and then click **I have the owner password file**. In the **Select backup file with the TPM owner password** dialog box, use **Browse** to navigate to the .tpm file that is saved on your removable storage device. Click **Open**, and then click **Create New Password**.
    -   If you do not have the removable storage device with your saved password, click **I want to enter the owner password**. In the **Type your TPM owner password** dialog box, enter your password (including hyphens), and click **Create New Password**.
4.  On the **Create the TPM owner password** page, select a method for creating a new TPM owner password.

    1.  Click **Automatically create the password** to have a new owner password generated for you.
    2.  Click **Manually create the password** if you want to specify a password.
        >**Note:**  The TPM owner password must have a minimum of eight characters.
         
5.  After the new password is created, you can choose **Save the password** to save the password in a password backup file on a removable storage device or **Print the password** to print a copy of the password for later reference.

6.  Click **Change password** to apply the new owner password to the TPM.

## Use the TPM cmdlets

If you are using Windows PowerShell to manage your computers, you can also manage the TPM by using Windows PowerShell. To install the TPM cmdlets, type the following command:
**dism /online /enable-feature /FeatureName:tpm-psh-cmdlets**

For details about the individual cmdlets, see [TPM Cmdlets in Windows PowerShell](http://technet.microsoft.com/library/jj603116.aspx).

## Additional resources

For more info about TPM, see [Trusted Platform Module technology overview](trusted-platform-module-overview.md#bkmk-additionalresources).
