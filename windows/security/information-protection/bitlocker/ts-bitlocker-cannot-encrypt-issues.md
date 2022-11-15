---
title: BitLocker cannot encrypt a drive  known issues
description: Provides guidance for troubleshooting known issues that may prevent BitLocker Drive Encryption from encrypting a drive
ms.reviewer: kaushika
ms.technology: itpro-security
ms.prod: windows-client
ms.localizationpriority: medium
author: Teresa-Motiv
ms.author: v-tappelgate
manager: kaushika
ms.collection: Windows Security Technologies\BitLocker
ms.topic: troubleshooting
ms.date: 10/17/2019
ms.custom: bitlocker
---

# BitLocker cannot encrypt a drive: known issues

This article describes common issues that prevent BitLocker from encrypting a drive. This article also provides guidance to address these issues.

> [!NOTE]
> If you have determined that your BitLocker issue involves the trusted platform module (TPM), see [BitLocker cannot encrypt a drive: known TPM issues](ts-bitlocker-cannot-encrypt-tpm-issues.md).

## Error 0x80310059: BitLocker drive encryption is already performing an operation on this drive

When you turn on BitLocker Drive Encryption on a computer that is running Windows 10 Professional or Windows 11, you receive a message that resembles the following:

> **ERROR:** An error occurred (code 0x80310059):BitLocker Drive Encryption is already performing an operation on this drive. Please complete all operations before continuing.NOTE: If the -on switch has failed to add key protectors or start encryption,you may need to call manage-bde -off before attempting -on again.

### Cause

This issue may be caused by settings that are controlled by group policy objects (GPOs).

### Resolution

> [!IMPORTANT]
> Follow the steps in this section carefully. Serious problems might occur if you modify the registry incorrectly. Before you modify it, [back up the registry for restoration](https://support.microsoft.com/help/322756) in case problems occur.

To resolve this issue, follow these steps:

1. Start Registry Editor, and navigate to the following subkey:

   **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\FVE**

1. Delete the following entries:
   - **OSPlatformValidation\_BIOS**
   - **OSPlatformValidation\_UEFI**
   - **PlatformValidation**

1. Exit registry editor, and turn on BitLocker drive encryption again.

## "Access is denied" message when you try to encrypt removable drives

You have a computer that is running Windows 10, version 1709 or version 1607, or Windows 11. You try to encrypt a USB drive by following these steps:

1. In Windows Explorer, right-click the USB drive and select **Turn on BitLocker**.

1. On the **Choose how you want to unlock this drive** page, select **Use a password to unlock the drive**.

1. Follow the instructions on the page to enter your password.

1. On the **Are you ready to encrypt this drive?** page, select **Start encrypting**.

1. The **Starting encryption** page displays the message "Access is denied."

You receive this message on any computer that runs Windows 10 version 1709 or version 1607, or Windows 11, when you use any USB drive.

### Cause

The security descriptor of the BitLocker drive encryption service (BDESvc) has an incorrect entry. Instead of NT AUTHORITY\Authenticated Users, the security descriptor uses NT AUTHORITY\INTERACTIVE.

To verify that this issue has occurred, follow these steps:

1. On an affected computer, open an elevated Command Prompt window and an elevated PowerShell window.

1. At the command prompt, enter the following command:

   ```console
   C:\>sc sdshow bdesvc
   ```

   The output of this command resembles the following:

   > `D:(A;;CCDCLCSWRPWPDTLORCWDWO;;;SY)(A;;CCDCLCSWRPWPDTLORCWDWO;;;BA)(A;;CCLCSWRPLORC;;;BU)(A;;CCLCSWRPLORC;;;AU)S:(AU;FA;CCDCLCSWRPWPDTLOSDRCWDWO;;;WD)`

1. Copy this output, and use it as part of the [**ConvertFrom-SddlString**](/powershell/module/microsoft.powershell.utility/convertfrom-sddlstring) command in the PowerShell window, as follows.

   ![Output of the ConvertFrom-SddlString command, showing NT AUTHORITY\\INTERACTIVE.](./images/ts-bitlocker-usb-sddl.png)

   If you see NT AUTHORITY\INTERACTIVE (as highlighted) in the output of this command, this is the cause of the issue. Under typical conditions, the output should resemble the following:

   ![Output of the ConvertFrom-SddlString command, showing NT AUTHORITY\\Authenticated Users.](./images/ts-bitlocker-usb-default-sddl.png)

> [!NOTE]
> GPOs that change the security descriptors of services have been known to cause this issue.

### Resolution

1. To repair the security descriptor of BDESvc, open an elevated PowerShell window and enter the following command:

   ```powershell
   sc sdset bdesvc D:(A;;CCDCLCSWRPWPDTLORCWDWO;;;SY)(A;;CCDCLCSWRPWPDTLORCWDWO;;;BA)(A;;CCLCSWRPLORC;;;BU)(A;;CCLCSWRPLORC;;;AU)S:(AU;FA;CCDCLCSWRPWPDTLOSDRCWDWO;;;WD)
   ```

1. Restart the computer.

The issue should now be resolved.