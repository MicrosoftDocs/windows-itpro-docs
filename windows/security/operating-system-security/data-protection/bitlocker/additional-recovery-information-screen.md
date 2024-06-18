---
title: BitLocker recovery errors and their causes
description:
ms.topic: how-to
ms.date: 06/18/2024
---

## Recovery error details and their causes

Starting in Windows 11, version 24H2, the BitLocker preboot recovery screen improves the information about the recovery error. Instead of displaying specialized messages, the recovery error contains an *error category* and *code*. The error category and code map to a webpage with detailed scenario-specific content.

BitLocker recovery is the process by which access to a BitLocker-protected drive can be restored if the drive doesn't unlock using its default unlock mechanism.

Prompting for the recovery password or other recovery method defends against suspected unauthorized access to user data by an attacker. Providing the recovery password allows BitLocker to confirm that the owner of the device is in possession of the device in recovery, and that the device and stored data should become accessible.

For more information about BitLocker recovery, see [BitLocker recovery overview](recovery-overview.md).

This article is divided in different sections, each section represents a BitLocker error category. Within each section there's a table with the error message displayed on the recovery screen and the cause of the error.

### Originated by user

| Error code | Error cause | Resolution|
|-|-|-|
|`E_FVE_USER_REQUESTED_RECOVERY`|The user explicitly entered recovery mode from a screen with the option to `ESC` to recovery mode.||
|`E_FVE_BOOT_DEBUG_ENABLED`|Boot debugging mode is enabled. |Remove the boot debugging option from the boot configuration database.|

### Code integrity

Driver signature enforcement is used to ensure code integrity of the operating system.

| Error code | Error cause | Resolution|
|-|-|-|
|`E_FVE_CI_DISABLED`|Driver signature enforcement is disabled.||

### Device lockout threshold

Device lockout threshold functionality allows an administrator to configure Windows logon with BitLocker protection. After the configured number of failed Windows logon attempts, the device reboots and can only be recovered by providing a BitLocker recovery method.

To take advantage of this functionality, you must configure the policy setting **Interactive logon: Machine account lockout threshold** located in **Computer Configuration** > **Windows Settings** > **Security Settings** > **Local Policies** > **Security Options**. Alternatively, use the [Exchange ActiveSync](/Exchange/clients/exchange-activesync/exchange-activesync) **MaxFailedPasswordAttempts** policy setting, or the [DeviceLock Configuration Service Provider (CSP)](/windows/client-management/mdm/policy-csp-devicelock#accountlockoutpolicy).

| Error code | Error cause | Resolution|
|-|-|-|
|`E_FVE_DEVICE_LOCKEDOUT`|Device lockout triggered due to too many incorrect sign in attempts.|A BitLocker recovery method is required to return to the logon screen.|
|`E_FVE_DEVICE_LOCKOUT_MISMATCH`|The device lockout counter is out of sync. |A BitLocker recovery method is required to return to the logon screen.|

### Boot configuration

The *Boot Configuration Database (BCD)* contains critical information for the Windows boot environment. More information about how BitLocker uses the BCD is available here.

| Error code | Error cause | Resolution|
|-|-|-|
|`E_FVE_BAD_CODE_ID, E_FVE_BAD_CODE_OPTION`|BitLocker entered recovery mode because a boot application has changed.|BitLocker tracks the data inside the BCD. BitLocker recovery can occur when this data changes without warning. Refer to the recovery screen to find the boot application that changed.<br>To remediate this issue, restore the BCD configuration. A BitLocker recovery method is required to unlock the device if the BCD configuration cannot be restored before booting.|

### TPM

The Trusted Platform Module (TPM) is cryptographic hardware or firmware used to secure a device. More information about the TPM is available at Trusted Platform Module Technology Overview - Windows Security | Microsoft Learn.

BitLocker creates a TPM protector to manage protection of the encryption keys used to encrypt your data. At boot, BitLocker attempts to communicate with the TPM to unlock the device and access your data. More information about how BitLocker uses the TPM is available at BitLocker overview - Windows Security | Microsoft Learn.

BitLocker entered recovery mode because of a failure with the TPM.

| Error code | Error cause |
|-|-|
|`E_FVE_TPM_DISABLED` | A TPM is present but has been disabled for use before or during boot|
|`E_FVE_TPM_INVALIDATED` | A TPM is present but invalidated|
|`E_FVE_BAD_SRK` | The TPM's internal Storage Root Key is corrupted|
|`E_FVE_TPM_NOT_DETECTED` | The booting system doesn't have or doesn't detect a TPM|
|`E_MATCHING_PCRS_TPM_FAILURE`| The TPM unexpectedly failed when unsealing the encryption key|
|`E_FVE_TPM_FAILURE` | Catch-all for other TPM errors.|

### Protector

#### TPM protectors

The TPM contains multiple Platform Configuration Registers (PCRs) that can be used in the validation profile of the BitLocker TPM protector. The PCRs are used to validate the integrity of the boot process, that is, that the boot configuration and boot flow hasn't been tampered with.

BitLocker recovery can be the result of unexpected changes in the PCRs used in the TPM protector validation profile. Changes to PCRs not used in the TPM protector profile do not influence BitLocker.

| Error code | Error cause |
|-|-|
|`E_FVE_PCR_MISMATCH`|BitLocker entered recovery mode because your device's configuration has changed.|

This may have happened because:

- A disc or USB device was inserted. Removing it and restarting your device may fix this problem
- A firmware update was applied without updating the TPM protector
- Any example at https://learn.microsoft.com/en-us/windows/security/operating-system-security/data-protection/bitlocker/recovery-overview#bitlocker-recovery-scenarios

A recovery method is required to unlock the device.

#### Special cases for PCR 7

If the TPM protector uses PCR 7 in the validation profile, BitLocker expects PCR 7 to measure a specific set of events for Secure Boot. These measurements are defined in the UEFI spec. More information is also available at Trusted Execution Environment EFI Protocol - Windows 8.1 HCK | Microsoft Learn.

| Error code | Error cause |Resolution|
|-|-|-|
|`E_FVE_SECUREBOOT_DISABLED`|BitLocker entered recovery mode because Secure Boot has been disabled.|To access the encryption key and unlock your device, BitLocker expects Secure Boot to be on. Re-enabling Secure Boot and rebooting the system may fix the recovery issue. Otherwise, a recovery method is required to access the device.|
|`E_FVE_SECUREBOOT_CHANGED`|BitLocker entered recovery mode because the Secure Boot configuration unexpectedly changed.|The boot configuration measured in PCR 7 changed. This may be either because of:<br>- An additional measurement currently present that was not present when BitLocker updated the TPM protector<br>- A missing measurement that was present when BitLocker last updated the TPM protector but now is not present<br>- An expected event has a different measurement - A recovery method is required to unlock the device.|

### Unknown

| Error code | Error cause | Resolution|
|-|-|-|
|`E_FVE_RECOVERY_ERROR_UNKNOWN`| BitLocker entered recovery mode because of an unknown error. | A recovery method is required to unlock the device.|