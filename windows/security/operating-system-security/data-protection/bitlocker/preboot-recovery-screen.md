---
title: BitLocker preboot recovery screen
description: Learn about the information displayed in the BitLocker preboot recovery screen, depending on configured policy settings and recovery keys status.
ms.topic: concept-article
ms.date: 06/19/2024
---

# BitLocker preboot recovery screen

During BitLocker recovery, the *preboot recovery screen* is a critical touchpoint for users, offering a custom recovery message tailored to the organization's needs, a direct recovery URL for additional support, and strategic hints to assist users in locating their recovery key.

This article delves into the various elements displayed on the preboot recovery screen, detailing how policy settings and the status of recovery keys influence the information presented. Whether it's a personalized message or practical guidance, the preboot recovery screen is designed to streamline the recovery process for users

## Default preboot recovery screen

:::row:::
  :::column span="2":::
    By default, the BitLocker recovery screen displays a generic message and the url **https://aka.ms/recoverykeyfaq**.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery.png" alt-text="Screenshot of the default BitLocker recovery screen." lightbox="images/preboot-recovery.png" border="false":::
  :::column-end:::
:::row-end:::

## Custom recovery message

With BitLocker policy settings, you can configure a custom recovery message and URL on the BitLocker preboot recovery screen. The custom recovery message and URL can include the address of the BitLocker self-service recovery portal, the IT internal website, or a phone number for support.

:::row:::
  :::column span="2":::
    BitLocker policy settings configured with a custom recovery message.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-custom-message.png" alt-text="Screenshot of the BitLocker recovery screen showing a custom message." lightbox="images/preboot-recovery-custom-message.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    BitLocker policy settings configured with a custom recovery URL.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-custom-url.png" alt-text="Screenshot of the BitLocker recovery screen showing a custom URL." lightbox="images/preboot-recovery-custom-url.png" border="false":::
  :::column-end:::
:::row-end:::

For more information how to configure a custom recovery message with policy settings, see [Configure preboot recovery message and URL](configure.md?tabs=os#configure-preboot-recovery-message-and-url).

## Recovery key hints

BitLocker metadata includes information about when and where a BitLocker recovery key was saved. This information isn't exposed through the UI or any public API. It's used solely by the BitLocker recovery screen in the form of hints to help a user locate a volume's recovery key. Hints are displayed on the recovery screen and refer to the location where the key was saved. The hints apply to both the boot manager recovery screen and the WinRE unlock screen.

There are rules governing which hint is shown during the recovery (in the order of processing):

1. Always display custom recovery message, if configured via policy settings
1. Always display generic hint: **For more information, go to https://aka.ms/recoverykeyfaq**
1. If multiple recovery keys exist on the volume, prioritize the last-created (and successfully backed up) recovery key
1. Prioritize keys with successful backup over keys that have never been backed up
1. Prioritize backup hints in the following order for remote backup locations:
    - Microsoft account
    - Microsoft Entra ID
    - Active Directory
1. If a key has been printed and saved to file, display a combined hint **Look for a printout or a text file with the key**, instead of two separate hints
1. If multiple backups of the same type (remove vs. local) were done for the same recovery key, prioritize backup info with latest backup date
1. There's no specific hint for keys saved to an on-premises Active Directory. In this case, a custom message (if configured) or a generic message, **Contact your organization's help desk**, is displayed
1. If two recovery keys are present and only one backed up, the system asks for the backed up key, even if the other key is newer

:::row:::
  :::column span="4":::
    #### Example: single recovery password saved to file and single backup
    :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    In this scenario, the recovery password is saved to a file

    > [!IMPORTANT]
    > It's not recommend to print recovery keys or saving them to a file. Instead, use Microsoft account, Microsoft Entra ID or Active Directory backup.

:::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-hint.png" alt-text="Screenshot of the BitLocker recovery screen showing a hint where the BitLocker recovery key was saved." lightbox="images/preboot-recovery-hint.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    #### Example: single recovery password for Microsoft account and single backup
    :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    In this scenario, a custom URL is configured. The recovery password is:
      - saved to Microsoft account
      - not printed
      - not saved to a file

    **Result:** the hints for the custom URL and the Microsoft account (**https://aka.ms/myrecoverykey**) are displayed.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-custom-url-single-backup.png" alt-text="Screenshot of the BitLocker recovery screen showing a custom URL and the hint where the BitLocker recovery key was saved." lightbox="images/preboot-recovery-custom-url-single-backup.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    Starting in Windows 11, version 24H2, the BitLocker preboot recovery screen includes the Microsoft account (MSA) hint, if the recovery password is saved to an MSA. This hint helps the user to understand which MSA account was used to store recovery key information.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/bitlocker-recovery-screen-msa-backup-24h2.png" alt-text="Screenshot of the BitLocker recovery screen showing a Microsoft account hint where the BitLocker recovery key was saved." lightbox="images/bitlocker-recovery-screen-msa-backup-24h2.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    #### Example: single recovery password in AD DS and single backup
    :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    In this scenario, a custom URL is configured. The recovery password is:
    - saved to Active Directory
    - not printed
    - not saved to a file

    **Result:** only the custom URL is displayed.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-custom-url.png" alt-text="Screenshot of the BitLocker recovery screen showing only the custom URL." lightbox="images/preboot-recovery-custom-url.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    #### Example: single recovery password with multiple backups
    :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    In this scenario, the recovery password is:
    - saved to Microsoft account
    - saved to Microsoft Entra ID
    - printed
    - saved to file

    **Result:** only the Microsoft account hint (**https://aka.ms/myrecoverykey**) is displayed.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-multiple-backups.png" alt-text="Screenshot of the BitLocker recovery screen showing only the Microsoft account hint." lightbox="images/preboot-recovery-multiple-backups.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    #### Example: multiple recovery passwords with sinlge backup
    :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    In this scenario, there are two recovery passwords.

    The recovery password #1 is:
    - saved to file
    - creation time: **1PM**
    - key ID: **4290B6C0-B17A-497A-8552-272CC30E80D4**

    The recovery password #2 is:
    - not backed up
    - creation time: **3PM**
    - key ID: **045219EC-A53B-41AE-B310-08EC883AAEDD**

    **Result:** only the hint for the successfully backed up key is displayed, even if it isn't the most recent key.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-hint.png" alt-text="Screenshot of the BitLocker recovery screen showing the key ID of the recovery password that was successfully backed up." lightbox="images/preboot-recovery-hint.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    #### Example: multiple recovery passwords with multiple backups
    :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    In this scenario, there are two recovery passwords.

    The recovery password #1 is:
     - Saved to Microsoft account
     - Saved to Microsoft Entra ID
     - creation time: **1PM**
     - key ID: **4290B6C0-B17A-497A-8552-272CC30E80D4**

    The recovery password #2 is:
      - Saved to Microsoft Entra ID
      - creation time: **3PM**
      - key ID: **045219EC-A53B-41AE-B310-08EC883AAEDD**

    **Result:** the Microsoft Entra ID hint (**https://aka.ms/aadrecoverykey**), which is the most recent key saved, is displayed.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-multiple-passwords-multiple-backups.png" alt-text="Screenshot of the BitLocker recovery screen showing the key ID of the most recent key." lightbox="images/preboot-recovery-multiple-passwords-multiple-backups.png" border="false":::
  :::column-end:::
:::row-end:::

## Additional recovery information screen

Starting in Windows 11, version 24H2, the BitLocker preboot recovery screen enhances the recovery error information. The recovery screen provides more detailed information about the nature of the recovery error, empowering users to better understand and address the issue.

:::row:::
  :::column span="2":::
    Users have the option to review additional information about the recovery error by pressing the <Kbd>Alt</kbd> key.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-additional.png" alt-text="Screenshot of the BitLocker recovery screen highlighting the Alt keyboard button to access the recovery information screen." lightbox="images/preboot-recovery-additional.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    The **Additional recovery information** screen contains an *error category* and a *code*, which you can use to retrieve more details from the next section of this article.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-additional-recovery-information.png" alt-text="Screenshot of the BitLocker recovery information screen." lightbox="images/preboot-recovery-additional-recovery-information.png" border="false":::
  :::column-end:::
:::row-end:::

The next sections describe the codes for each BitLocker error category. Within each section there's a table with the error message displayed on the recovery screen, and the cause of the error. Some tables include possible resolution.

The error categories are:

- [Initiated by user](#initiated-by-user)
- [Code integrity](#code-integrity)
- [Device lockout](#device-lockout)
- [Boot configuration](#boot-configuration)
- [TPM](#tpm)
- [Protector](#protector)
- [Unknown](#unknown)

### Initiated by user

| Error code | Error cause | Resolution|
|-|-|-|
|`E_FVE_USER_REQUESTED_RECOVERY`|The user explicitly entered recovery mode from a screen with the option to `ESC` to recovery mode.||
|`E_FVE_BOOT_DEBUG_ENABLED`|Boot debugging mode is enabled. |Remove the boot debugging option from the boot configuration database.|

### Code integrity

Driver signature enforcement is used to ensure code integrity of the operating system.

| Error code | Error cause |
|-|-|
|`E_FVE_CI_DISABLED`|Driver signature enforcement is disabled.|

### Device lockout

Device lockout threshold functionality allows an administrator to configure Windows sign in with BitLocker protection. After the configured number of failed Windows sign in attempts, the device reboots and can only be recovered by providing a BitLocker recovery method.

To take advantage of this functionality, you must configure the policy setting **Interactive logon: Machine account lockout threshold** located in **Computer Configuration** > **Windows Settings** > **Security Settings** > **Local Policies** > **Security Options**. Alternatively, use the [Exchange ActiveSync](/Exchange/clients/exchange-activesync/exchange-activesync) **MaxFailedPasswordAttempts** policy setting, or the [DeviceLock Configuration Service Provider (CSP)](/windows/client-management/mdm/policy-csp-devicelock#accountlockoutpolicy).

| Error code | Error cause | Resolution|
|-|-|-|
|`E_FVE_DEVICE_LOCKEDOUT`|Device lockout triggered due to too many incorrect sign in attempts.|A BitLocker recovery method is required to return to the sign in screen.|
|`E_FVE_DEVICE_LOCKOUT_MISMATCH`|The device lockout counter is out of sync. |A BitLocker recovery method is required to return to the sign in screen.|

### Boot configuration

The *Boot Configuration Database (BCD)* contains critical information for the Windows boot environment.

| Error code | Error cause | Resolution|
|-|-|-|
|`E_FVE_BAD_CODE_ID`<br><br>`E_FVE_BAD_CODE_OPTION`|BitLocker entered recovery mode because a boot application changed.<br>BitLocker tracks the data inside the BCD and BitLocker recovery can occur when this data changes without warning. <br><br>Refer to the recovery screen to find the boot application that changed.|To remediate this issue, restore the BCD configuration. A BitLocker recovery method is required to unlock the device if the BCD configuration can't be restored before booting.|

For more information, see [Boot Configuration Data settings and BitLocker](bcd-settings-and-bitlocker.md).

### TPM

The Trusted Platform Module (TPM) is cryptographic hardware or firmware used to secure a device. BitLocker creates a *TPM protector* to manage protection of the encryption keys used to encrypt your data.

At boot, BitLocker attempts to communicate with the TPM to unlock the device and access your data.

| Error code | Error cause |
|-|-|
|`E_FVE_TPM_DISABLED` | A TPM is present but is disabled for use before or during boot.|
|`E_FVE_TPM_INVALIDATED` | A TPM is present but invalidated.|
|`E_FVE_BAD_SRK` | The TPM's internal Storage Root Key is corrupted.|
|`E_FVE_TPM_NOT_DETECTED` | The booting system doesn't have or doesn't detect a TPM.|
|`E_MATCHING_PCRS_TPM_FAILURE`| The TPM unexpectedly failed when unsealing the encryption key.|
|`E_FVE_TPM_FAILURE` | Catch-all for other TPM errors.|

For more information, see [Trusted Platform Module Technology Overview](../../../hardware-security/tpm/trusted-platform-module-overview.md) and [BitLocker and TPM](index.md#bitlocker-and-tpm).

### Protector

#### TPM protectors

The TPM contains multiple Platform Configuration Registers (PCRs) that can be used in the validation profile of the BitLocker TPM protector. The PCRs are used to validate the integrity of the boot process, that is, that the boot configuration and boot flow hasn't been tampered with.

BitLocker recovery can be the result of unexpected changes in the PCRs used in the TPM protector validation profile. Changes to PCRs not used in the TPM protector profile don't influence BitLocker.

| Error code | Error cause |Resolution|
|-|-|
|`E_FVE_PCR_MISMATCH`|The device's configuration changed. <br><br>Possible causes include:<br>- A bootable media is inserted. Removing it and restarting your device might fix this problem<br>- A firmware update was applied without updating the TPM protector| A recovery method is required to unlock the device.|

For more examples, see [BitLocker recovery scenarios](recovery-overview.md#bitlocker-recovery-scenarios).

#### Special cases for PCR 7

If the TPM protector uses PCR 7 in the validation profile, BitLocker expects PCR 7 to measure a specific set of events for Secure Boot. These measurements are defined in the UEFI spec. For more information, see [Static Root of Trust Measurements](/previous-versions/windows/hardware/hck/jj923068(v=vs.85)#appendix-a-static-root-of-trust-measurements)

| Error code | Error cause |Resolution|
|-|-|-|
|`E_FVE_SECUREBOOT_DISABLED`|Secure Boot has been disabled. To access the encryption key and unlock your device, BitLocker expects Secure Boot to be on. | Re-enabling Secure Boot and rebooting the system might fix the recovery issue. Otherwise, a recovery method is required to access the device.|
|`E_FVE_SECUREBOOT_CHANGED`|The Secure Boot configuration unexpectedly changed. The boot configuration measured in PCR 7 changed. <br>This may be either because of:<br>- An additional measurement currently present that wasn't present when BitLocker updated the TPM protector<br>- A missing measurement that was present when BitLocker last updated the TPM protector but now isn't present<br>- An expected event has a different measurement | A recovery method is required to unlock the device.|

### Unknown

| Error code | Error cause | Resolution|
|-|-|-|
|`E_FVE_RECOVERY_ERROR_UNKNOWN`| BitLocker entered recovery mode because of an unknown error. | A recovery method is required to unlock the device.|
