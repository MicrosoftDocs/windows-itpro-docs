---
title: BitLocker cannot encrypt a drive known TPM issues
description: Provides guidance for troubleshooting known issues that may prevent BitLocker Drive Encryption from encrypting a drive that can be attributed to the TPM
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

# BitLocker cannot encrypt a drive: known TPM issues

This article describes common issues that affect the Trusted Platform Module (TPM) that might prevent BitLocker from encrypting a drive. This article also provides guidance to address these issues.

> [!NOTE]
> If it's been determined that the BitLocker issue does not involve the TPM, see [BitLocker cannot encrypt a drive: known issues](ts-bitlocker-cannot-encrypt-issues.md).

## The TPM is locked and the error **`The TPM is defending against dictionary attacks and is in a time-out period`** is displayed

It's attempted to turn on BitLocker drive encryption on a device but it fails with an error message similar to the following error message:

> **The TPM is defending against dictionary attacks and is in a time-out period.**

### Cause of the TPM being locked

The TPM is locked out.

### Resolution for the TPM being locked

To resolve this issue, the TPM needs to be reset and cleared. The TPM can be reset and cleared with the following steps:

1. Open an elevated PowerShell window and run the following script:

   ```powershell
   $Tpm = Get-WmiObject -class Win32_Tpm -namespace "root\CIMv2\Security\MicrosoftTpm"
   $ConfirmationStatus = $Tpm.GetPhysicalPresenceConfirmationStatus(22).ConfirmationStatus
   if($ConfirmationStatus -ne 4) {$Tpm.SetPhysicalPresenceRequest(22)}
   ```

2. Restart the computer. If a prompt is displayed confirming the clearing of the TPM, agree to clear the TPM.

3. Sign on to Windows and retry starting BitLocker drive encryption.

> [!WARNING]
> Resetting and clearing the TPM can cause data loss.

## The TPM fails to prepare with the error **`The TPM is defending against dictionary attacks and is in a time-out period`**

It's attempted to turn on BitLocker drive encryption on a device but it fails. While troubleshooting, the TPM management console (`tpm.msc`) is used to attempt to prepare the TPM on the device. The operation fails with an error message similar to the following error message:

> **The TPM is defending against dictionary attacks and is in a time-out period.**

### Cause of TPM failing to prepare

The TPM is locked out.

### Resolution for TPM failing to prepare

To resolve this issue, disable and re-enable the TPM with the following steps:

1. Enter the UEFI/BIOS configuration screens of the device by restarting the device and hitting the appropriate key combination as the device boots. Consult with the device manufacturer for the appropriate key combination for entering into the UEFI/BIOS configuration screens.

2. Once in the UEFI/BIOS configuration screens, disable the TPM. Consult with the device manufacturer for instructions on how to disable the TPM in the UEFI/BIOS configuration screens.

3. Save the UEFI/BIOS configuration with the TPM disabled and restart the device to boot into Windows.

4. Once signed into Windows, return to the TPM management console. An error message similar to the following error message is displayed:

   > **Compatible TPM cannot be found**
   >
   > **Compatible Trusted Platform Module (TPM) cannot be found on this computer. Verify that this computer has 1.2 TPM and it is turned on in the BIOS.**

   This message is expected since the TPM is currently disabled in the UEFI firmware/BIOS of the device.

5. Restart the device and enter the UEFI/BIOS configuration screens again.

6. Reenable the TPM in the UEFI/BIOS configuration screens.

7. Save the UEFI/BIOS configuration with the TPM enabled and restart the device to boot into Windows.

8. Once signed into Windows, return to the TPM management console.

If the TPM still can't be prepared, clear the existing TPM keys by following the instructions in the article [Troubleshoot the TPM: Clear all the keys from the TPM](../tpm/initialize-and-configure-ownership-of-the-tpm.md#clear-all-the-keys-from-the-tpm).

> [!WARNING]
> Clearing the TPM can cause data loss.

## BitLocker fails to enable with the error **`Access Denied: Failed to backup TPM Owner Authorization information to Active Directory Domain Services. Errorcode: 0x80070005`** or **`Insufficient Rights`**

The **Do not enable BitLocker until recovery information is stored in AD DS** policy is enforced in the environment. It's attempted to turn on BitLocker drive encryption on a device but it fails with the error message of **`Access Denied: Failed to backup TPM Owner Authorization information to Active Directory Domain Services. Errorcode: 0x80070005`** or **`Insufficient Rights`**.

### Cause of **`Access Denied`** or **`Insufficient Rights`**

The TPM didn't have sufficient permissions on the TPM devices container in Active Directory Domain Services (AD DS). Therefore, the BitLocker recovery information couldn't be backed up to AD DS, and BitLocker drive encryption couldn't turn on.

This issue appears to be limited to computers that run versions of Windows that are earlier than Windows 10.

### Resolution for **`Access Denied`** or **`Insufficient Rights`**

To verify this issue is occurring, use one of the following two methods:

- Disable the policy or remove the computer from the domain followed by trying to turn on BitLocker drive encryption again. If the operation succeeds, then the issue was caused by the policy.

- Use LDAP and network trace tools to examine the LDAP exchanges between the client and the AD DS domain controller to identify the cause of the **Access Denied** or **Insufficient Rights** error. In this case, an error should be displayed when the client tries to access its object in the **`CN=TPM Devices,DC=<domain>,DC=com`** container.

1. To review the TPM information for the affected computer, open an elevated Windows PowerShell window and run the following command:

   ```powershell
   Get-ADComputer -Filter {Name -like "ComputerName"} -Property * | Format-Table name,msTPM-TPMInformationForComputer
   ```

   In this command, *ComputerName* is the name of the affected computer.

2. To resolve the issue, use a tool such as `dsacls.exe` to ensure that the access control list of msTPM-TPMInformationForComputer grants both **Read** and **Write** permissions to **NTAUTHORITY/SELF**.

## The TPM fails to be prepared with the error **`0x80072030: There is no such object on the server`**

Domain controllers were upgraded from Windows Server 2008 R2 to Windows Server 2012 R2. A group policy object (GPO) exists that enforces the **Do not enable BitLocker until recovery information is stored in AD DS** policy.  

It's attempted to turn on BitLocker drive encryption on a device but it fails. While troubleshooting, the TPM management console (`tpm.msc`) is used to attempt to prepare the TPM on the device. The operation fails with an error message similar to the following error message:

> **0x80072030 There is no such object on the server when a policy to back up TPM information to active directory is enabled**

It's been confirmed that the **ms-TPM-OwnerInformation** and **msTPM-TpmInformationForComputer** attributes are present.

### Cause of **0x80072030: There is no such object on the server**

The domain and forest functional level of the environment may still be set to Windows 2008 R2. Additionally, the permissions in AD DS might not be correctly set.

### Resolution for **0x80072030: There is no such object on the server**

The issue can be resolved with the following steps:

1. Upgrade the functional level of the domain and forest to Windows Server 2012 R2.

2. Download [Add-TPMSelfWriteACE.vbs](/samples/browse/?redirectedfrom=TechNet-Gallery).

3. In the script, modify the value of **strPathToDomain** to the organization's domain name.

4. Open an elevated PowerShell window, and run the following command:

   ```cmd
   cscript.exe <Path>\Add-TPMSelfWriteACE.vbs
   ```

   In this command, \<*Path*> is the path to the script file.

For more information, see the following articles:

- [Back up the TPM recovery information to AD DS](../tpm/backup-tpm-recovery-information-to-ad-ds.md)
- [Prepare your organization for BitLocker: Planning and policies](./prepare-your-organization-for-bitlocker-planning-and-policies.md)
