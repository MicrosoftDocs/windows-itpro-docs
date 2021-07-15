---
title: BitLocker cannot encrypt a drive known TPM issues
description: Provides guidance for troubleshooting known issues that may prevent BitLocker Drive Encryption from encrypting a drive, and that you can attribute to the TPM
ms.reviewer: kaushika
ms.technology: windows
ms.prod: w10
ms.sitesec: library
ms.localizationpriority: medium
author: Teresa-Motiv
ms.author: v-tea
manager: kaushika
audience: ITPro
ms.collection: Windows Security Technologies\BitLocker
ms.topic: troubleshooting
ms.date: 10/18/2019
ms.custom: bitlocker
---

# BitLocker cannot encrypt a drive: known TPM issues

This article describes common issues that affect the Trusted Platform Module (TPM) and that may prevent BitLocker from encrypting a drive. This article also provides guidance to address these issues.

> [!NOTE]
> If you have determined that your BitLocker issue does not involve the TPM, see [BitLocker cannot encrypt a drive: known issues](ts-bitlocker-cannot-encrypt-issues.md).

## The TPM is locked and you see "The TPM is defending against dictionary attacks and is in a time-out period"

When you turn on BitLocker Drive Encryption, it does not start. Instead, you receive a message that resembles "The TPM is defending against dictionary attacks and is in a time-out period."

### Cause

The TPM is locked out.

### Resolution

To resolve this issue, follow these steps:

1. Open an elevated PowerShell window and run the following script:

   ```powershell
   $Tpm = Get-WmiObject -class Win32_Tpm -namespace "root\CIMv2\Security\MicrosoftTpm"
   $ConfirmationStatus = $Tpm.GetPhysicalPresenceConfirmationStatus(22).ConfirmationStatus
   if($ConfirmationStatus -ne 4) {$Tpm.SetPhysicalPresenceRequest(22)}
   ```

1. Restart the computer. If you are prompted at the restart screen, press F12 to agree.
1. Try again to start BitLocker Drive Encryption.

## You cannot prepare the TPM, and you see "The TPM is defending against dictionary attacks and is in a time-out period"

You cannot turn on BitLocker Drive Encryption on a device. You use the TPM management console (tpm.msc) to prepare the TPM on a device. The operation fails and you receive a message that resembles "The TPM is defending against dictionary attacks and is in a time-out period."

### Cause

The TPM is locked out.

### Resolution

To resolve this issue, disable and re-enable the TPM. To do this, follow these steps:

1. Restart the device, and change the BIOS configuration to disable the TPM.
1. Restart the device again, and return to the TPM management console. You should receive a message that resembles the following:
   > Compatible Trusted Platform Module (TPM) cannot be found on this computer. Verify that this computer has 1.2 TPM and it is turned on in the BIOS.

1. Restart the device, and change the BIOS configuration to enable the TPM.
1. Restart the device, and return to the TPM management console.

If you still cannot prepare the TPM, clear the existing TPM keys. To do this, follow the instructions in [Troubleshoot the TPM: Clear all the keys from the TPM](../tpm/initialize-and-configure-ownership-of-the-tpm.md#clear-all-the-keys-from-the-tpm).

> [!WARNING]
> Clearing the TPM can cause data loss.

## Access Denied: Failed to backup TPM Owner Authorization information to Active Directory Domain Services. Errorcode: 0x80070005

You have an environment that enforces the **Do not enable BitLocker until recovery information is stored in AD DS** policy. You try to turn on BitLocker Drive Encryption on a computer that runs Windows 7, but the operation fails. You receive a message that resembles "Access Denied" or "Insufficient Rights."

### Cause

The TPM did not have sufficient permissions on the TPM Devices container in Active Directory Domain Services (AD DS). Therefore, the BitLocker recovery information could not be backed up to AD DS, and BitLocker Drive Encryption could not run.

This issue appears to be limited to computers that run versions of Windows that are earlier than Windows 10.

### Resolution

To verify that you have correctly identified this issue, use one of the following methods:

- Disable the policy or remove the computer from the domain. Then try to turn on BitLocker Drive Encryption again. The operation should now succeed.
- Use LDAP and network trace tools to examine the LDAP exchanges between the client and the AD DS domain controller to identify the cause of the "Access Denied" or "Insufficient Rights" error. In this case, you should see the error when the client tries to access its object in the "CN=TPM Devices,DC=\<*domain*>,DC=com" container.

1. To review the TPM information for the affected computer, open an elevated Windows PowerShell window and run the following command:

   ```powershell
   Get-ADComputer -Filter {Name -like "ComputerName"} -Property * | Format-Table name,msTPM-TPMInformationForComputer
   ```

   In this command, *ComputerName* is the name of the affected computer.

1. To resolve the issue, use a tool such as dsacls.exe to make sure that the access control list of msTPM-TPMInformationForComputer grants both Read and Write permissions to NTAUTHORITY/SELF.

## Cannot prepare the TPM, error 0x80072030: "There is no such object on the server"

Your domain controllers were upgraded from Windows Server 2008 R2to Windows Server 2012 R2. A Group Policy Object (GPO) enforces the **Do not enable BitLocker until recovery information is stored in AD DS** policy.

You cannot turn on BitLocker Drive Encryption on a device. You use the TPM management console (tpm.msc) to prepare the TPM on a device. The operation fails and you see a message that resembles the following:

> 0x80072030 There is no such object on the server when a policy to back up TPM information to active directory is enabled

You have confirmed that the **ms-TPM-OwnerInformation** and **msTPM-TpmInformationForComputer** attributes are present.

### Cause

The domain and forest functional level of the environment may still be set to Windows 2008 R2. Additionally, the permissions in AD DS may not be correctly set.

### Resolution

To resolve this issue, follow these steps:

1. Upgrade the functional level of the domain and forest to Windows Server 2012 R2.
2. Download [Add-TPMSelfWriteACE.vbs](/samples/browse/?redirectedfrom=TechNet-Gallery).
3. In the script, modify the value of **strPathToDomain** to your domain name.
4. Open an elevated PowerShell window, and run the following command:

   ```powershell
   cscript <Path>Add-TPMSelfWriteACE.vbs
   ```

   In this command \<*Path*> is the path to the script file.

For more information, see the following articles:

- [Back up the TPM recovery information to AD DS](../tpm/backup-tpm-recovery-information-to-ad-ds.md)
- [Prepare your organization for BitLocker: Planning and policies](./prepare-your-organization-for-bitlocker-planning-and-policies.md)