---
title: Using Your PIN or Password
description: Using Your PIN or Password
author: dansimp
ms.assetid: 7fe2aef4-d3e0-49c8-877d-7fee13dc5b7b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Using Your PIN or Password


BitLocker helps secure your computer by requiring a personal identification number (PIN) or password to unlock the information that is stored on your computer. The PIN or password requirements are set by your organization and depend on the kind of drive being encrypted. Data on the encrypted drives cannot be viewed without entering the PIN or password. If your computer hardware includes an enabled Trusted Platform Module (TPM), the TPM chip prompts you for your PIN before Windows starts on your computer.

## About Your BitLocker PIN and Passwords


Your company specifies the complexity required for your PIN or password. These requirements for your PIN or password are explained during the BitLocker setup process.

The password is used to unlock drives on your computer that do not contain the operating system. BitLocker will ask for your password after the PIN is requested during startup. Each BitLocker protected hard disk on your computer has its own unique password. You cannot unlock a BitLocker protected drive until you provide your password.

**Note**  
Your Help Desk may set drives to unlock automatically. This eliminates the need to provide a PIN or password to view the information on the drives.

 

## Unlocking Your Computer if You Forget Your PIN or Password


If you forget your PIN or password, your Help Desk can help you unlock BitLocker protected drives. To unlock a drive protected with BitLocker, contact your Help Desk if you need help.

**How to unlock your computer if you forget your PIN or password**

1.  When you contact your Help Desk, you will need to provide them with the following information:

    -   Your user name

    -   Your domain

    -   The first eight digits of your recovery key ID. This is a 32-digit code that BitLocker will display if you forget your PIN or password.

        -   If you forget your PIN, you will have to enter the first eight digits of the recovery key ID, which will appear in the BitLocker Recovery console. The BitLocker Recovery console is a pre-Windows screen that will be displayed if you do not enter the correct PIN.

        -   If you forget your password, look for the recovery key ID in the BitLocker Encryption Options Control Panel application. Select **Unlock Drive** and then click **I cannot remember my password**. The BitLocker Encryption Options application will then display a recovery key ID that you provide to Help Desk.

2.  Once your Help Desk receives the necessary information, it will provide you with a recovery key over the phone or through e-mail.

    -   If you forgot your PIN, enter the recovery key in the BitLocker Recovery console to unlock your computer.

    -   If you forgot your password, enter the recovery key in the BitLocker Encryption Options Control Panel application, in the same location where you found the recovery key ID earlier. This will unlock the protected hard drive.

## Changing your PIN or Password


Before you can change the password on a BitLocker protected drive, you must unlock the drive. If the drive is not unlocked, select **Unlock Drive**, and then enter your current password. As soon as the drive is unlocked, you can select **Manage your Password** to change your current password.

**How to Change your PIN or password**

1.  Click **Start**, and then select **Control Panel**. Control Panel opens in a new window.

2.  Select **System and Security**, and then select **BitLocker Encryption Options**.

    -   To change your PIN, select **Manage Your PIN**. Type your new PIN into both fields and select **Reset PIN**.

    -   To change your password, select **Manage Your Password**. Enter your new password into both fields and select **Reset Password**.

 

 





