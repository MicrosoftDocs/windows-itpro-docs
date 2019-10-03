---
title: Enforcing BitLocker policies by using Intune  known issues
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
ms.date: 10/2/2019
---

# Enforcing BitLocker policies by using Intune&mdash;known issues

This article provides assistance for issues you may see if you use Microsoft Intune policy to manage silent BitLocker encryption on devices. The Intune portal indicates if BitLocker has failed to encrypt on or more managed devices.

![The BitLocker status indictors on the Intune portal](./images/4509189_en_1.png)

To start narrowing down the cause of the problem, review the event logs as described in [Troubleshoot BitLocker](troubleshoot-bitlocker.md). Concentrate on the Management and Operations logs in the **Applications and Services logs\\Microsoft\\Windows\\BitLocker-API** folder. The following sections provide more information about resolving the following events and error messages:

<a id="list"></a>

- [Event ID 853: Error: A compatible Trusted Platform Module (TPM) Security Device cannot be found on this computer](#issue-1)
- [Event ID 853: Error: BitLocker Drive Encryption detected bootable media (CD or DVD) in the computer](#issue-2)
- [Event ID 854: WinRE not configured](#issue-3)
- [Event ID 851: Contact manufacturer for BIOS upgrade](#issue-4)
- [Error message: Conflicting Group Policy settings for recovery options on operating system drives](#issue-5)
- [Error message: The UEFI variable 'SecureBoot' could not be read](#issue-6)
- [Event ID 846, 778, and 851: Error 0x80072f9a](#issue-7)

If you do not have a clear trail of events or error messages to follow, other areas to investigate include the following:

- [Review the hardware requirements for using Intune to manage BitLocker on devices](https://docs.microsoft.com/windows-hardware/design/device-experiences/oem-bitlocker#bitlocker-automatic-device-encryption-hardware-requirements)
- [Review your BitLocker policy configuration](#policy)

For information about how to verify that Intune policies are enforcing BitLocker correctly, see [Verifying that BitLocker is operating correctly](#verifying-that-bitlocker-is-operating-correctly).

> [!NOTE]
> - For some of the procedures in this article, you have to use the TPM management console (tpm.msc). To open the TPM management console, select **Start**, and in the **Search** box, type **tpm.msc**, and then press **Enter**.
> - For some of the procedures in this article, you have to use an elevated Command Prompt window. To open and elevated Command Prompt window, select **Start**, and in the **Search** box, type **cmd**. Right-click **Command Prompt**, and select **Run as administrator**.

## <a id="issue-1"></a>Event ID 853: Error: A compatible Trusted Platform Module (TPM) Security Device cannot be found on this computer

Event ID 853 can carry different error messages, depending on context. In this case, you see event ID 853, and the error message in the event indicates that the device does not appear to have a TPM. The event information resembles the following:

![Details of event ID 853 (TPM is not available, cannot find TPM)](./images/4509190_en_1.png)

### Cause

The device that you are trying to secure may not have a TPM chip, or the device BIOS might be configured to disable the TPM.

### Resolution

To resolve this issue, verify the following:

- The TPM is enabled in the device BIOS.  
- The TPM status in the TPM management console resembles the following:
   - Ready (TPM 2.0)
   - Initialized (TPM 1.2)

For more information, see [Troubleshoot the TPM](https://docs.microsoft.com/windows/security/information-protection/tpm/initialize-and-configure-ownership-of-the-tpm).

## <a id="issue-2"></a>Event ID 853: Error: BitLocker Drive Encryption detected bootable media (CD or DVD) in the computer

In this case, you see event ID 853, and the error message in the event indicates that bootable media is available to the device. The event information resembles the following:

![Details of event ID 853 (TPM is not available, bootable media found)](./images/4509191_en_1.png)

### Cause

During the provisioning process, BitLocker Drive Encryption records the configuration of the device to establish a baseline. If the device configuration changes at a later time, BitLocker Recovery automatically starts. If the device has removable bootable media on board during the provisioning process, removing that media triggers BitLocker Recovery.

To avoid this situation, the provisioning process stops if it detects removable bootable media.

### Resolution

Remove the bootable media and then restart the device. After the device restarts, verify the encryption status.

## <a id="issue-3"></a>Event ID 854: WinRE is not configured

The event information resembles the following:

![Details of event ID 854](./images/4509192_en_1.png)

### Cause

Windows Recovery Environment (WindowsRE) is a minimal Windows operating system that is based on Windows Preinstallation Environment (WindowsPE). WindowsRE includes a number of tools to recover or reset Windows and diagnose Windows issues. If a device cannot start the regular Windows operating system, the device tries to start Windows RE.

The provisioning process enables BitLocker Drive Encryption on the operating system drive during the WindowsPE phase of provisioning. This action makes sure that the drive is protected before the full operating system is installed. The provisioning process also creates a system partition for WindowsRE to use, in case of any system crashes.

If WindowsRE is not available on the device, provisioning stops.

### Resolution

#### 1. Verify the configuration of the disk partitions

The procedures described in this section depend on the default disk partitions that Windows configures during installation. Windows 10 automatically creates a recovery partition that contains the Winre.wim file. The partition configuration resembles the following:

![Default disk partitions, including the recovery partition](./images/4509194_en_1.png)

To verify the configuration of the disk partitions, open an elevated Command Prompt window and run the following commands:

```
diskpart 
list volume
```
![Output of the list volume command in the Diskpart app](./images/4509195_en_1.png)

If the status of any of the volumes is not Healthy, you may have to reinstall Windows.

#### 2. Verify the status of WindowsRE

To verify the status of WindowsRE on the device, open an elevated Command Prompt window and run the following command:

```cmd
reagentc /info
```
The output of this command resembles the following:

![Output of the reagentc /info command](./images/4509193_en_1.png)

If the **Windows RE status** is not **Enabled**, run the following command to enable it:

```cmd
reagentc /enable
```

#### 3. Verify the Windows Boot Loader configuration

If the partition status is heathy, but the **reagentc /enable** command results in an error, verify that Windows Boot Loader contains the recovery sequence GUID. To do so, run the following command in an elevated Command Prompt window:

```cmd
bcdedit /enum all
```

The output of this command resembles the following:

![Output of the bcdedit /enum all command](./images/4509196_en_1.png)

In the output, locate the **Windows Boot Loader** section that includes the line **identifier={current}**. In that section, locate the **recoverysequence** attribute. The value of this attribute should be a GUID value, and not a string of zeros.

## <a id="issue-4"></a>Event ID 851: Contact the manufacturer for BIOS upgrade instructions

The event information resembles the following:

![Details of event ID 851](./images/4509197_en_1.png)

### Cause

The device must have Unified Extensible Firmware Interface (UEFI) BIOS. Silent BitLocker Drive Encryption does not support legacy BIOS.

### Resolution

To verify the BIOS mode, use msinfo32. To do this, follow these steps:

1. 

Check the BIOS mode by using msinfo32.

![](./images/4509198_en_1.png)

You need to enable UEFI BIOS by booting to BIOS if your device supports EFI/UEFI. If your device only supports legacy BIOS, then you are out of luck.

## <a id="issue-5"></a>Error message: Conflicting Group Policy settings for recovery options on operating system drives

You receive a message that resembles the following:

> Error: BitLocker Drive Encryption cannot be applied to this drive because there are conflicting Group Policy settings for recovery options on operating system drives. Storing recovery information to Active Directory Domain Services cannot be required when the generation of recovery passwords is not permitted. Please have your system administrator resolve these policy conflicts before attempting to enable BitLocker…

### Resolution

You need to get rid of the conflicting GPO.

## <a id="issue-6"></a>Error message: The UEFI variable 'SecureBoot' could not be read

You receive a message that resembles the following:

> Error: BitLocker cannot use Secure Boot for integrity because the UEFI variable ‘SecureBoot’ could not be read. A required privilege is not held by the client.

### Cause

Check to see if the system TPM supports PCR \[7\] and is used by BitLocker/Device Encryption. Run the command **Manage-bde -protectors -get %systemdrive%**.

![](./images/4509199_en_1.png)

If PCR validation profile doesn't show that BitLocker uses Secure Boot for integrity validation (for example, PCR validation profile says PCR 0, 2, 4, 11), this indicates that BitLocker cannot use PCR \[7\] which is a requirement for silent encryption.

![](./images/4509200_en_1.png)

### Resolution

Ensure Secure Boot is enabled in UEFI settings. Run **msinfo32** to check:

![](./images/4509201_en_1.png)

However if you see something like below, your device does not have support:

![](./images/4509202_en_1.png)


## <a id="issue-7"></a>Event ID 846, 778, and 851: Error 0x80072f9a

When deploying Intune Policy to encrypt the device and store the recovery key into Azure Active Directory might fail with Error 0x80072f9a on Windows 10 1809, after enabling the option **Allow standard users to enable encryption during Azure AD Join**.

Checking the event viewer, BitLocker API Log, you will see the following events:

> Event ID:846
> 
> Event:
> 
> Failed to backup BitLocker Drive Encryption recovery information for volume C: to your Azure AD.
> 
> TraceId: {cbac2b6f-1434-4faa-a9c3-597b17c1dfa3}
> 
> Error: Unknown HResult Error code: 0x80072f9a

> Event ID:778
> 
> Event: The BitLocker volume C: was reverted to an unprotected state.

> Event ID: 851
> 
> Event:
> 
> Failed to enable Silent Encryption.
> 
> Error: Unknown HResult Error code: 0x80072f9a.

The issue affects Windows v1809, and this is because the BitLocker MDM policy Refresh fails with an access denied when impersonating the logged on Azure AD user on the PCPKEY file i.e. Private Key for the cert used for Azure AD Communication.

### Cause

The logged on user does not have permission to read the private key on the certificate that is generated during joining the Azure AD

### Resolution

In order to resolve this issue please install [kb4497934](https://support.microsoft.com/help/4497934/windows-10-update-kb4497934)

## <a id="policy"></a>Review your BitLocker policy configuration

When troubleshooting BitLocker policy enforcement issues, start by reading the following KB: [Intune: Requirements for automatic BitLocker encryption during AAD join](https://internal.support.services.microsoft.com/en-us/help/4502023)

[Policy CSP&mdash;BitLocker](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-bitlocker)


BitLocker enforcement on the end device can be of three types:

- Automatic (during AADJ for Windows v 1703+) [I sent this in my previous email]
- Silent (Endpoint protection policy for Windows v 1803+)
- Interactive (Endpoint policy for pre Windows v 1803)

If your device supports modern Standby (Instant Go) and is HSTI compliant, AADJ will trigger automatic device encryption for Windows version 1703 and above. This does not requires the admin to enforce/deploy an endpoint protection policy.
If your device is HSTI compliant but does not supports modern Standby (Instant Go), you would require an endpoint protection policy to enforce silent BitLocker encryption. Below settings allow for the same.

![](./images/4509186_en_1.png)

The OMA-URI reference for the above settings:

- OMA-URI: **./Device/Vendor/MSFT/BitLocker/RequireDeviceEncryption**  
   Value Type: **Integer**  
   Value: **1**  (1 = Require, 0 = Not Configured)

- OMA-URI: **./Device/Vendor/MSFT/BitLocker/AllowWarningForOtherDiskEncryption**  
   Value Type: **Integer**  
   Value: **0** (0 = Blocked, 1 = Allowed)  

> [!NOTE]
> If the setting **Waiting for other disk encryption** is set to **Not configured**, then user receives the toast notification and enabling the encryption would require user interaction to go through the BitLocker activation guide.

![](./images/4509187_en_1.png)

If your device does not supports modern Standby but is HSTI compliant, for pre Windows v 1803, an endpoint protection policy with the above settings will deliver the policy to the device but user will need to manually enable BitLocker encryption by clicking on the toast notification as received and going through the BitLocker activation guide.  

For Autopilot devices, from 1803 and above, automatic device encryption is supported for standard users vide the settings made available in UI with 1901 Intune release as below. System requirement still remains same as above (HSTI compliant and support for modern Standby)

![](./images/4509188_en_1.png)

The OMA-URI reference for the above settings:

- OMA-URI: ./Device/Vendor/MSFT/BitLocker/AllowStandardUserEncryption  
   Value Type: Integer
   Value: 1  

> [!NOTE]
> This node works in tandem with the **RequireDeviceEncryption** and **AllowWarningForOtherDiskEncryption** node. As such when you have **RequireDeviceEncryption** set to **1**, **AllowStandardUserEncryption** set to **1** and **AllowWarningForOtherDiskEncryption** set to **0**, this allows silent BitLocker encryption for Autopilot devices with standard user profiles.

With update to the BitLocker Policy CSP, starting with Windows version 1809 and above, the endpoint protection policy can enable silent BitLocker encryption on the end device even if the device is non-HSTI compliant.

[Back to list](#list)

## Verifying that BitLocker is operating correctly

![](./images/4509203_en_1.png)

![](./images/4509204_en_1.png)

You can also verify if the BitLocker Recovery Key has been uploaded to Azure by checking the device details from under Azure AD devices section.

![](./images/4509205_en_1.png)

Registry path to verify the BitLocker policy as delivered to the device: **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\PolicyManager\\current\\device\\BitLocker**

![](./images/4509206_en_1.png)

The registry path **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\PolicyManager\\current\\device** will contain all the policy as received/enforced by the MDM

[Back to list](#list)
