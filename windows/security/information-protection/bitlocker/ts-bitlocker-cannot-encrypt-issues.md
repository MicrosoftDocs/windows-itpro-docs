---
title: BitLocker cannot encrypt a drive  known issues
description: Provides guidance for troubleshooting known issues that may prevent BitLocker Drive Encryption from encrypting a drive
ms.reviewer: kaushika
ms.technology: itpro-security
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.collection: Windows Security Technologies\BitLocker
ms.topic: troubleshooting
ms.date: 11/08/2022
ms.custom: bitlocker
---

# BitLocker cannot encrypt a drive: known issues

This article describes common issues that prevent BitLocker from encrypting a drive. This article also provides guidance to address these issues.

> [!NOTE]
> If it is determined that the BitLocker issue involves the trusted platform module (TPM), see [BitLocker cannot encrypt a drive: known TPM issues](ts-bitlocker-cannot-encrypt-tpm-issues.md).

## **Error 0x80310059: BitLocker drive encryption is already performing an operation on this drive**

When BitLocker Drive Encryption is turned on a computer that is running Windows 10 Professional or Windows 11, the following message may appear:

> **ERROR: An error occurred (code 0x80310059): BitLocker Drive Encryption is already performing an operation on this drive. Please complete all operations before continuing. NOTE: If the -on switch has failed to add key protectors or start encryption, you may need to call manage-bde -off before attempting -on again.**

### Cause of **Error 0x80310059**

This issue may be caused by settings that are controlled by group policy objects (GPOs).

### Resolution for **Error 0x80310059**

> [!IMPORTANT]
> Follow the steps in this section carefully. Serious problems might occur if the registry is modified incorrectly. Before modifying the registry, [back up the registry for restoration](https://support.microsoft.com/help/322756) in case problems occur.

To resolve this issue, follow these steps:

1. Start Registry Editor, and navigate to the following subkey:

   **`HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE`**

2. Delete the following entries:

   - **`OSPlatformValidation_BIOS`**
   - **`OSPlatformValidation_UEFI`**
   - **`PlatformValidation`**

3. Exit registry editor, and turn on BitLocker drive encryption again.

<!--

REMOVING THIS SECTION SINCE IT ONLY APPLIES TO WINDOWS 10 VERSIONS THAT BEEN OUT OF SUPPORT FOR SEVERAL YEARS

## **Access is denied** message when attempting to encrypt removable drives

A computer is running Windows 10, version 1709 or version 1607. Encryption is attempted on a USB drive by following these steps:

1. In Windows Explorer, right-click the USB drive and select **Turn on BitLocker**.

2. On the **Choose how you want to unlock this drive** page, select **Use a password to unlock the drive**.

3. Follow the instructions on the page to enter a password.

4. On the **Are you ready to encrypt this drive?** page, select **Start encrypting**.

5. The **Starting encryption** page displays the message **Access is denied.**

The message is received on any computer that runs Windows 10 version 1709 or version 1607, when any USB drive is used.

### Cause of **Access is denied** message

The security descriptor of the BitLocker drive encryption service (BDESvc) has an incorrect entry. Instead of NT AUTHORITY\Authenticated Users, the security descriptor uses NT AUTHORITY\INTERACTIVE.

To verify that this issue has occurred, follow these steps:

1. On an affected computer, open an elevated Command Prompt window and an elevated PowerShell window.

2. At the command prompt, enter the following command:

   ```console
   C:\>sc sdshow bdesvc
   ```

   The output of this command resembles the following output:

   > `D:(A;;CCDCLCSWRPWPDTLORCWDWO;;;SY)(A;;CCDCLCSWRPWPDTLORCWDWO;;;BA)(A;;CCLCSWRPLORC;;;BU)(A;;CCLCSWRPLORC;;;AU)S:(AU;FA;CCDCLCSWRPWPDTLOSDRCWDWO;;;WD)`

3. Copy this output, and use it as part of the [**ConvertFrom-SddlString**](/powershell/module/microsoft.powershell.utility/convertfrom-sddlstring) command in the PowerShell window, as follows.

   ![Output of the ConvertFrom-SddlString command, showing NT AUTHORITY\\INTERACTIVE.](./images/ts-bitlocker-usb-sddl.png)

   If `NT AUTHORITY\INTERACTIVE` is seen as highlighted in the output of this command, this line is the cause of the issue. Under typical conditions, the output should resemble the following output instead:

   ![Output of the ConvertFrom-SddlString command, showing NT AUTHORITY\\Authenticated Users.](./images/ts-bitlocker-usb-default-sddl.png)

> [!NOTE]
> GPOs that change the security descriptors of services have been known to cause this issue.

### Resolution for **Access is denied** message

1. To repair the security descriptor of BDESvc, open an elevated PowerShell window and enter the following command:

   ```powershell
   sc sdset bdesvc D:(A;;CCDCLCSWRPWPDTLORCWDWO;;;SY)(A;;CCDCLCSWRPWPDTLORCWDWO;;;BA)(A;;CCLCSWRPLORC;;;BU)(A;;CCLCSWRPLORC;;;AU)S:(AU;FA;CCDCLCSWRPWPDTLOSDRCWDWO;;;WD)
   ```

2. Restart the computer.

The issue should now be resolved.

-->