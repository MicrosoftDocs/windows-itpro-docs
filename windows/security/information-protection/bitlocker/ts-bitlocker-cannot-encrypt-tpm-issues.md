---
title: BitLocker cannot encrypt a drive  known TPM issues 
description: 
ms.reviewer: kaushika
ms.prod: w10
ms.sitesec: library
ms.localizationpriority: medium
author: Teresa-Motiv
ms.author: v-tea
manager: kaushika
audience: ITPro
ms.collection: Windows Security Technologies\BitLocker
ms.topic: troubleshooting
ms.date: 10/3/2019
---

# BitLocker cannot encrypt a drive: known TPM issues

This article describes common issues that can involve the Trusted Platform Module (TPM) that prevent BitLocker from encrypting a drive, and provides guidance for addressing those issues.

> [!NOTE]
> If you have determined that your BitLocker issue does not involve the TPM, see [BitLocker cannot encrypt a drive: known issues](ts-bitlocker-cannot-encrypt-issues.md).

## You see the message "The TPM is defending against dictionary attacks and is in a time-out period" and the TPM is locked

When you turn on BitLocker Drive Encryption, it does not start and instead you see a message that resembles "The TPM is defending against dictionary attacks and is in a time-out period."

### Cause

The TPM is locked out.

### Resolution

To resolve this issue, follow these steps:

1. Open an elevated PowerShell window and run the following script:

   ```ps
   $Tpm = Get-WmiObject -class Win32_Tpm -namespace "root\CIMv2\Security\MicrosoftTpm" $ConfirmationStatus = $Tpm.GetPhysicalPresenceConfirmationStatus(22).ConfirmationStatus if($ConfirmationStatus -ne 4) {$Tpm.SetPhysicalPresenceRequest(22)}
   ```

1. Restart the computer. If you receive a prompt at the restart screen, press F12 to agree.
1. Try to start BitLocker Drive Encryption again.

## You cannot prepare the TPM, and you see the message "The TPM is defending against dictionary attacks and is in a time-out period"

You cannot turn on BitLocker Drive Encryption on a device. You use the TPM management console (tpm.msc) to prepare the TPM on a device. The operation fails and you see a message that resembles "The TPM is defending against dictionary attacks and is in a time-out period."

### Cause

The TPM is locked out.

### Resolution

To resolve this issue, follow these steps:

1. Disable and re-enable the TPM. To do this, follow these steps:
   1. Restart the device and change the BIOS configuration to disable the TPM. 
   1. Restart the device again, and return to the TPM management console. You should see a message that resembles "Compatible Trusted Platform Module (TPM) cannot be found on this computer. verify that this computer has 1.2 TPM and its is turned on in the BIOS."
   1. Restart the device and change the BIOS configuration to enable the TPM.
   1. Restart the device and return to the TPM management console.
1. If you still cannot prepare the TPM, clear the existing TPM keys. To do this, follow the instructions in [Troubleshoot the TPM: Clear all the keys from the TPM](https://docs.microsoft.com/windows/security/information-protection/tpm/initialize-and-configure-ownership-of-the-tpm#clear-all-the-keys-from-the-tpm).
   > [!WARNING]
   > Clearing the TPM can result in data loss.  

## "Access Denied"Failed to backup TPM Owner Authorization information to Active Directory Domain Services. Errorcode: 0x80070005

You have an environment that enforces the policy **Do not enable BitLocker until recovery information is stored in AD DS**. You try to turn on BitLocker Drive Encryption on a computer that runs Windows 7 and the operation fails. You see a message that resembles "Access Denied" or "Insufficient Rights."

### Cause

The TPM did not have sufficient permissions on the TPM Devices container in AD DS. Therefore, the BitLocker recovery key could not be backed up to AD DS, and BitLocker Drive Encryption could not run.

This issue appears to be limited to computers that run versions of Windows that are older than Windows 10.

### Resolution  

To verify that you have correctly identified this issue, you can use these approaches:

- Disable the policy or remove the computer from the domain, and try to turn on BitLocker Drive Encryption again. This time the operation should succeed.
- Use LDAP and network trace tools to examine the LDAP exchanges between the client and the AD DS domain controller and identify the cause of the Access Denied or Insufficient Rights error. In this case, you should see the error when the client tries to access its object in the CN=TPM Devices,DC=\<*domain*>,DC=com container.

1. To review the TPM information for the affected computer, open an elevated Windows PowerShell window and run the following command:

   ```ps
   Get-ADComputer -Filter {Name -like "ComputerName"} -Property * | Format-Table name,msTPM-TPMInformationForComputer
   ```

   In this command, ComputerName is the name of the affected computer.

1. To resolve the issue, use a tool such as dsacls.exe to make sure that the access control list of msTPM-TPMInformationForComputer grants both Read and Write permissions to NTAUTHORITY/SELF.

## Cannot prepare the TPM, Error 0x80072030 "There is no such object on the server"

Your domain controllers were upgraded from Windows Server 2008 R2to Windows Server 2012 R2. A Group Policy Object (GPO) enforces the policy **Do not enable BitLocker until recovery information is stored in AD DS**.  

You cannot turn on BitLocker Drive Encryption on a device. You use the TPM management console (tpm.msc) to prepare the TPM on a device. The operation fails and you see a message that resembles the following:

> 0x80072030 There is no such object on the server when a policy to back up TPM information to active directory is enabled

You have confirmed that the attributes ms-TPM-OwnerInformation and msTPM-TpmInformationForComputer are present.

### Cause

The domain and forest functional level of the environment may still be set to Windows 2008 R2. Additionally, the permissions in AD DS may not be correctly set.

### Resolution

To resolve this issue, follow these steps:

1. Upgrade the functional level of the domain and forest to Windows Server 2012 R2.
1. Download [Add-TPMSelfWriteACE.vbs](https://go.microsoft.com/fwlink/p/?LinkId=167133).
1. In the script, modify the value of **strPathToDomain** to your domain name.
1. Open an elevated PowerShell window, and run the following command:

   ```ps
   cscript <Path>Add-TPMSelfWriteACE.vbs
   ```
   
   Where \<Path> is the path to the script file.

Post modification, ran Add-TPMSelfWriteACE.vbs and it ran successfully.

For more information, see the following articles:

- [Back up the TPM Recovery Information to AD DS](https://docs.microsoft.com/windows/security/information-protection/tpm/backup-tpm-recovery-information-to-ad-ds)
- [Prepare your organization for BitLocker: Planning and Policies](https://docs.microsoft.com/windows/security/information-protection/bitlocker/prepare-your-organization-for-bitlocker-planning-and-policies)
