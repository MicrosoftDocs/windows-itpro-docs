---
title: Enforcing BitLocker policies by using Intune  known issues
description: Provides assistance for issues that may be seen if Microsoft Intune policy is being used to manage silent BitLocker encryption on devices.
ms.reviewer: kaushika
ms.technology: itpro-security
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.collection: 
  - Windows Security Technologies\BitLocker
ms.topic: troubleshooting
ms.date: 11/08/2022
ms.custom: bitlocker
---

# Enforcing BitLocker policies by using Intune: known issues

This article helps troubleshooting issues that may be experienced if using Microsoft Intune policy to manage silent BitLocker encryption on devices. The Intune portal indicates whether BitLocker has failed to encrypt one or more managed devices.

:::image type="content" alt-text="The BitLocker status indictors on the Intune portal." source="./images/4509189-en-1.png" lightbox="./images/4509189-en-1.png":::

To start narrowing down the cause of the problem, review the event logs as described in [Troubleshoot BitLocker](troubleshoot-bitlocker.md). Concentrate on the **Management** and **Operations** logs in the **Applications and Services logs** > **Microsoft** > **Windows** > **BitLocker-API** folder. The following sections provide more information about how to resolve the indicated events and error messages:

- [Event ID 853: Error: A compatible Trusted Platform Module (TPM) Security Device cannot be found on this computer](#event-id-853-error-a-compatible-trusted-platform-module-tpm-security-device-cannot-be-found-on-this-computer)
- [Event ID 853: Error: BitLocker Drive Encryption detected bootable media (CD or DVD) in the computer](#event-id-853-error-bitlocker-drive-encryption-detected-bootable-media-cd-or-dvd-in-the-computer)
- [Event ID 854: WinRE is not configured](#event-id-854-winre-is-not-configured)
- [Event ID 851: Contact manufacturer for BIOS upgrade](#event-id-851-contact-the-manufacturer-for-bios-upgrade-instructions)
- [Error message: The UEFI variable 'SecureBoot' could not be read](#error-message-the-uefi-variable-secureboot-could-not-be-read)
- [Event ID 846, 778, and 851: Error 0x80072f9a](#event-id-846-778-and-851-error-0x80072f9a)
- [Error message: There are conflicting group policy settings for recovery options on operating system drives](#error-message-there-are-conflicting-group-policy-settings-for-recovery-options-on-operating-system-drives)

If there's no clear trail of events or error messages to follow, other areas to investigate include the following areas:

- [Review the hardware requirements for using Intune to manage BitLocker on devices](/windows-hardware/design/device-experiences/oem-bitlocker#bitlocker-automatic-device-encryption-hardware-requirements)
- [Review BitLocker policy configuration](#review-bitlocker-policy-configuration)

For information about the procedure to verify whether Intune policies are enforcing BitLocker correctly, see [Verifying that BitLocker is operating correctly](#verifying-that-bitlocker-is-operating-correctly).

## Event ID 853: Error: A compatible Trusted Platform Module (TPM) Security Device cannot be found on this computer

Event ID 853 can carry different error messages, depending on the context. In this case, the Event ID 853 error message indicates that the device doesn't appear to have a TPM. The event information will be similar to the following event:

![Details of event ID 853 (A compatible Trusted Platform Module (TPM) Security Device cannot be found on this computer).](./images/4509190-en-1.png)

### Cause of Event ID 853: Error: A compatible Trusted Platform Module (TPM) Security Device cannot be found on this computer

The device that is being secured may not have a TPM chip, or the device BIOS might have been configured to disable the TPM.

### Resolution for Event ID 853: Error: A compatible Trusted Platform Module (TPM) Security Device cannot be found on this computer

To resolve this issue, verify the following configurations:

- The TPM is enabled in the device BIOS.  
- The TPM status in the TPM management console is similar to the following statuses:
  - Ready (TPM 2.0)
  - Initialized (TPM 1.2)

For more information, see [Troubleshoot the TPM](../tpm/initialize-and-configure-ownership-of-the-tpm.md).

## Event ID 853: Error: BitLocker Drive Encryption detected bootable media (CD or DVD) in the computer

In this case, event ID 853 is displayed, and the error message in the event indicates that bootable media is available to the device. The event information resembles the following.

![Details of event ID 853 (TPM is not available, bootable media found).](./images/4509191-en-1.png)

### Cause of Event ID 853: Error: BitLocker Drive Encryption detected bootable media (CD or DVD) in the computer

During the provisioning process, BitLocker drive encryption records the configuration of the device to establish a baseline. If the device configuration changes later (for example, if the media is removed), BitLocker recovery mode automatically starts.

To avoid this situation, the provisioning process stops if it detects a removable bootable media.

### Resolution for Event ID 853: Error: BitLocker Drive Encryption detected bootable media (CD or DVD) in the computer

Remove the bootable media, and restart the device. After the device restarts, verify the encryption status.

## Event ID 854: WinRE is not configured

The event information resembles the following error message:

> Failed to enable Silent Encryption. WinRe is not configured.
>  
> Error: This PC cannot support device encryption because WinRE is not properly configured.

### Cause of Event ID 854: WinRE is not configured

Windows Recovery Environment (WinRE) is a minimal Windows operating system that is based on Windows Preinstallation Environment (Windows PE). WinRE includes several tools that an administrator can use to recover or reset Windows and diagnose Windows issues. If a device can't start the regular Windows operating system, the device tries to start WinRE.

The provisioning process enables BitLocker drive encryption on the operating system drive during the Windows PE phase of provisioning. This action makes sure that the drive is protected before the full operating system is installed. The provisioning process also creates a system partition for WinRE to use if the system crashes.

If WinRE isn't available on the device, provisioning stops.

### Resolution for Event ID 854: WinRE is not configured

This issue can be resolved by verifying the configuration of the disk partitions, the status of WinRE, and the Windows Boot Loader configuration by following these steps:

#### Step 1: Verify the configuration of the disk partitions

The procedures described in this section depend on the default disk partitions that Windows configures during installation. Windows 11 and Windows 10 automatically create a recovery partition that contains the **`Winre.wim`** file. The partition configuration resembles the following.

![Default disk partitions, including the recovery partition.](./images/4509194-en-1.png)

To verify the configuration of the disk partitions, open an elevated Command Prompt window and run the following commands:

```cmd
diskpart.exe 
list volume
```

![Output of the list volume command in the Diskpart app.](./images/4509195-en-1.png)

If the status of any of the volumes isn't healthy or if the recovery partition is missing, Windows may need to be reinstalled. Before reinstalling Windows, check the configuration of the Windows image that is being provisioned. Make sure that the image uses the correct disk configuration. The image configuration should resemble the following (this example is from Microsoft Configuration Manager):

![Windows image configuration in Microsoft Configuration Manager.](./images/configmgr-imageconfig.jpg)

#### Step 2: Verify the status of WinRE

To verify the status of WinRE on the device, open an elevated Command Prompt window and run the following command:

```cmd
reagentc.exe /info
```

The output of this command resembles the following.

![Output of the reagentc.exe /info command.](./images/4509193-en-1.png)

If the **Windows RE status** isn't **Enabled**, run the following command to enable it:

```cmd
reagentc.exe /enable
```

#### Step 3: Verify the Windows Boot Loader configuration

If the partition status is healthy, but the **`reagentc.exe /enable`** command results in an error, verify whether the Windows Boot Loader contains the recovery sequence GUID by running the following command in an elevated Command Prompt window:

```cmd
bcdedit.exe /enum all
```

The output of this command will be similar to the following output:

:::image type="content" alt-text="Output of the bcdedit /enum all command." source="./images/4509196-en-1.png" lightbox="./images/4509196-en-1.png":::

In the output, locate the **Windows Boot Loader** section that includes the line **identifier={current}**. In that section, locate the **recoverysequence** attribute. The value of this attribute should be a GUID value, not a string of zeros.

## Event ID 851: Contact the manufacturer for BIOS upgrade instructions

The event information will be similar to the following error message:

> Failed to enable Silent Encryption.
>  
> Error: BitLocker Drive Encryption cannot be enabled on the operating system drive. Contact the computer manufacturer for BIOS upgrade instructions.

### Cause of Event ID 851: Contact the manufacturer for BIOS upgrade instructions

The device must have Unified Extensible Firmware Interface (UEFI) BIOS. Silent BitLocker drive encryption doesn't support legacy BIOS.

### Resolution for Event ID 851: Contact the manufacturer for BIOS upgrade instructions

To verify the BIOS mode, use the System Information application by following these steps:

1. Select **Start**, and enter **msinfo32** in the **Search** box.

2. Verify that the **BIOS Mode** setting is **UEFI** and not **Legacy**.  

   ![System Information app, showing the BIOS Mode setting.](./images/4509198-en-1.png)

3. If the **BIOS Mode** setting is **Legacy**, the UEFI firmware needs to be switched to **UEFI** or **EFI** mode. The steps for switching to **UEFI** or **EFI** mode are specific to the device.

   > [!NOTE]
   > If the device supports only Legacy mode, Intune can't be used to manage BitLocker Device Encryption on the device.

## Error message: The UEFI variable 'SecureBoot' could not be read

An error message similar to the following error message is displayed:

> **Error:** BitLocker cannot use Secure Boot for integrity because the UEFI variable 'SecureBoot' could not be read. A required privilege is not held by the client.

### Cause of Error message: The UEFI variable 'SecureBoot' could not be read

A platform configuration register (PCR) is a memory location in the TPM. In particular, PCR 7 measures the state of secure boot. Silent BitLocker drive encryption requires the secure boot to be turned on.

### Resolution for Error message: The UEFI variable 'SecureBoot' could not be read

This issue can be resolved by verifying the PCR validation profile of the TPM and the secure boot state by following these steps:

#### Step 1: Verify the PCR validation profile of the TPM

To verify that PCR 7 is in use, open an elevated Command Prompt window and run the following command:

```cmd
Manage-bde.exe -protectors -get %systemdrive%
```

In the TPM section of the output of this command, verify whether the **PCR Validation Profile** setting includes **7**, as follows:

![Output of the manage-bde command.](./images/4509199-en-1.png)

If **PCR Validation Profile** doesn't include **7** (for example, the values include **0**, **2**, **4**, and **11**, but not **7**), then secure boot isn't turned on.

![Output of the manage-bde command when PCR 7 is not present.](./images/4509200-en-1.png)

#### 2: Verify the secure boot state

To verify the secure boot state, use the System Information application by following these steps:

1. Select **Start**, and enter **msinfo32** in the **Search** box.

2. Verify that the **Secure Boot State** setting is **On**, as follows:  

   ![System Information app, showing a supported Secure Boot State.](./images/4509201-en-1.png)

3. If the **Secure Boot State** setting is **Unsupported**, Silent BitLocker Encryption can't be used on the device.  

   ![System Information app, showing a unsupported Secure Boot State.](./images/4509202-en-1.png)

> [!NOTE]
> The [Confirm-SecureBootUEFI](/powershell/module/secureboot/confirm-securebootuefi) PowerShell cmdlet can also be used to verify the Secure Boot state by opening an elevated PowerShell window and running the following command:
>
> ```powershell
> Confirm-SecureBootUEFI
> ```
>
> If the computer supports Secure Boot and Secure Boot is enabled, this cmdlet returns "True."  
>  
> If the computer supports secure boot and secure boot is disabled, this cmdlet returns "False."  
>  
> If the computer does not support Secure Boot or is a BIOS (non-UEFI) computer, this cmdlet returns "Cmdlet not supported on this platform."  

## Event ID 846, 778, and 851: Error 0x80072f9a

Consider the following scenario:

Intune policy is being deployed to encrypt a Windows 10, version 1809 device, and the recovery password is being stored in Azure Active Directory (Azure AD). As part of the policy configuration, the **Allow standard users to enable encryption during Azure AD Join** option has been selected.

The policy deployment fails and the failure generates the following events in Event Viewer in the **Applications and Services Logs** > **Microsoft** > **Windows** > **BitLocker API** folder:

> Event ID:846
>
> Event:
> Failed to backup BitLocker Drive Encryption recovery information for volume C: to your Azure AD.
>
> TraceId: {cbac2b6f-1434-4faa-a9c3-597b17c1dfa3}
> Error: Unknown HResult Error code: 0x80072f9a

> Event ID:778
>
> Event: The BitLocker volume C: was reverted to an unprotected state.

> Event ID: 851
>
> Event:
> Failed to enable Silent Encryption.
>
> Error: Unknown HResult Error code: 0x80072f9a.

These events refer to Error code 0x80072f9a.

### Cause of Event ID 846, 778, and 851: Error 0x80072f9a

These events indicate that the signed-in user doesn't have permission to read the private key on the certificate that is generated as part of the provisioning and enrollment process. Therefore, the BitLocker MDM policy refresh fails.

The issue affects Windows 10 version 1809.

### Resolution for Event ID 846, 778, and 851: Error 0x80072f9a

To resolve this issue, install the [May 21, 2019](https://support.microsoft.com/help/4497934/windows-10-update-kb4497934) update.

## Error message: There are conflicting group policy settings for recovery options on operating system drives

An error message similar to the following error message is displayed:

> **Error:** BitLocker Drive Encryption cannot be applied to this drive because there are conflicting Group Policy settings for recovery options on operating system drives. Storing recovery information to Active Directory Domain Services cannot be required when the generation of recovery passwords is not permitted. Please have your system administrator resolve these policy conflicts before attempting to enable BitLocker…

### Resolution for Error message: There are conflicting group policy settings for recovery options on operating system drives

To resolve this issue, review the group policy object (GPO) settings for conflicts. For more information, see the next section, [Review BitLocker policy configuration](#review-bitlocker-policy-configuration).

For more information about GPOs and BitLocker, see [BitLocker Group Policy Reference](/previous-versions/windows/it-pro/windows-7/ee706521(v=ws.10)).

## Review BitLocker policy configuration

For information about the procedure to use policy together with BitLocker and Intune, see the following resources:

- [BitLocker management for enterprises: Managing devices joined to Azure Active Directory](./bitlocker-management-for-enterprises.md#managing-devices-joined-to-azure-active-directory)
- [BitLocker Group Policy Reference](/previous-versions/windows/it-pro/windows-7/ee706521(v=ws.10))
- [Configuration service provider reference](/windows/client-management/mdm/configuration-service-provider-reference)
- [Policy CSP &ndash; BitLocker](/windows/client-management/mdm/policy-csp-bitlocker)
- [BitLocker CSP](/windows/client-management/mdm/bitlocker-csp)
- [Enable ADMX-backed policies in MDM](/windows/client-management/mdm/enable-admx-backed-policies-in-mdm)
- [gpresult](/windows-server/administration/windows-commands/gpresult)

Intune offers the following enforcement types for BitLocker:

- **Automatic** (Enforced when the device joins Azure AD during the provisioning process. This option is available in Windows 10 version 1703 and later.)
- **Silent** (Endpoint protection policy. This option is available in Windows 10 version 1803 and later.)
- **Interactive** (Endpoint policy for Windows versions that are older than Windows 10 version 1803.)

If the device runs Windows 10 version 1703 or later, supports Modern Standby (also known as Instant Go) and is HSTI-compliant, joining the device to Azure AD triggers automatic device encryption. A separate endpoint protection policy isn't required to enforce device encryption.

If the device is HSTI-compliant but doesn't support Modern Standby, an endpoint protection policy has to be configured to enforce silent BitLocker drive encryption. The settings for this policy should be similar to the following settings:

![Intune policy settings.](./images/4509186-en-1.png)

The OMA-URI references for these settings are as follows:

- OMA-URI: **./Device/Vendor/MSFT/BitLocker/RequireDeviceEncryption**  
   Value Type: **Integer**  
   Value: **1**  (1 = Require, 0 = Not Configured)

- OMA-URI: **./Device/Vendor/MSFT/BitLocker/AllowWarningForOtherDiskEncryption**  
   Value Type: **Integer**  
   Value: **0** (0 = Blocked, 1 = Allowed)  

> [!NOTE]
> Because of an update to the BitLocker Policy CSP, if the device uses Windows 10 version 1809 or later, an endpoint protection policy can be used to enforce silent BitLocker Device Encryption even if the device is not HSTI-compliant.

> [!NOTE]
> If the **Warning for other disk encryption** setting is set to **Not configured**, the BitLocker drive encryption wizard has to be manually started.  

If the device doesn't support Modern Standby but is HSTI-compliant, and it uses a version of Windows that is earlier than Windows 10, version 1803, an endpoint protection policy that has the settings that are described in this article delivers the policy configuration to the device. However, Windows then notifies the user to manually enable BitLocker Drive Encryption. When the user selects the notification, it will start the BitLocker Drive Encryption wizard.  

Intune provides settings that can be used to configure automatic device encryption for Autopilot devices for standard users. Each device must meet the following requirements:

- Be HSTI-compliant
- Support Modern Standby
- Use Windows 10 version 1803 or later

![Intune policy setting.](./images/4509188-en-1.png)

The OMA-URI references for these settings are as follows:

- OMA-URI: **./Device/Vendor/MSFT/BitLocker/AllowStandardUserEncryption**  
   Value Type: **Integer**
   Value: **1**  

> [!NOTE]
> This node works together with the **RequireDeviceEncryption** and **AllowWarningForOtherDiskEncryption** nodes. For this reason, when the following settings are set:
>
> - **RequireDeviceEncryption** to **1**
> - **AllowStandardUserEncryption** to **1**
> - **AllowWarningForOtherDiskEncryption** to **0**
>
> Intune enforces silent BitLocker encryption for Autopilot devices that have standard user profiles.

## Verifying that BitLocker is operating correctly

During regular operations, BitLocker drive encryption generates events such as Event ID 796 and Event ID 845.

![Event ID 796, as shown in Event Viewer.](./images/4509203-en-1.png)

![Event ID 845, as shown in Event Viewer.](./images/4509204-en-1.png)

It can also be determined whether the BitLocker recovery password has been uploaded to Azure AD by checking the device details in the Azure AD Devices section.

![BitLocker recovery information as viewed in Azure AD.](./images/4509205-en-1.png)

On the device, check the Registry Editor to verify the policy settings on the device. Verify the entries under the following subkeys:

- **`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\BitLocker`**
- **`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device`**  

![Registry subkeys that relate to Intune policy.](./images/4509206-en-1.png)
