---
title: BitLocker and TPM other known issues
description: Describes common issues that relate directly to the TPM, and provides guidance for resolving those issues.
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

# BitLocker and TPM: other known issues

This article describes common issues that relate directly to the trusted platform module (TPM), and provides guidance to address these issues.

## Azure AD: Windows Hello for Business and single sign-on don't work

Consider the following scenario:

An Azure Active Directory (Azure AD)-joined client computer can't authenticate correctly. The computer is experiencing one or more of the following symptoms:

- Windows Hello for Business doesn't work
- Conditional access fails
- Single sign-on (SSO) doesn't work

Additionally, in Event Viewer, the computer logs the following Event ID 1026 event under **Windows Logs** > **System**:

> Log Name: System  
> Source: Microsoft-Windows-TPM-WMI  
> Date: \<Date and Time>  
> Event ID: 1026  
> Task Category: None  
> Level: Information  
> Keywords:  
> User: SYSTEM  
> Computer: \<Computer name\>  
> Description:  
> The Trusted Platform Module (TPM) hardware on this computer cannot be provisioned for use automatically.  To set up the TPM interactively use the TPM management console (Start-\>tpm.msc) and use the action to make the TPM ready.  
> Error: The TPM is defending against dictionary attacks and is in a time-out period.  
> Additional Information: 0x840000  

### Cause of Azure AD: Windows Hello for Business and single sign-on don't work

This event indicates that the TPM isn't ready or has some setting that prevents access to the TPM keys.  

Additionally, the behavior indicates that the client computer can't obtain a [Primary Refresh Token (PRT)](/azure/active-directory/devices/concept-primary-refresh-token).  

### Resolution for Azure AD: Windows Hello for Business and single sign-on don't work

To verify the status of the PRT, use the [dsregcmd.exe /status](/azure/active-directory/devices/troubleshoot-device-dsregcmd) command to collect information. In the tool output, verify that either **User state** or **SSO state** contains the **AzureAdPrt** attribute. If the value of this attribute is **No**, the PRT wasn't issued. If the value of the attribute is **No**, it may indicate that the computer couldn't present its certificate for authentication.

To resolve this issue, follow these steps to troubleshoot the TPM:

1. Open the TPM management console (`tpm.msc`) by selecting **Start** and entering **tpm.msc** in the **Search** box.

2. If a notice is displayed to either unlock the TPM or reset the lockout, contact the hardware vendor to determine whether there's a known fix for the issue.

3. If the issue is still not resolved after contacting the hardware vendor, clear and reinitialize the TPM by following the instructions in the article [Troubleshoot the TPM: Clear all the keys from the TPM](../tpm/initialize-and-configure-ownership-of-the-tpm.md#clear-all-the-keys-from-the-tpm).

   > [!WARNING]
   > Clearing the TPM can cause data loss.  

If in Step 2 there's no notice to either unlock the TPM or reset the lockout, review the UEFI firmware/BIOS settings of the computer for any setting that can be used to reset or disable the lockout.

## TPM 1.2 Error: Loading the management console failed. The device that is required by the cryptographic provider isn't ready for use

Consider the following scenario:

When trying to open the TPM management console on a Windows computer that uses TPM version 1.2, the following message is displayed:

> Loading the management console failed. The device that is required by the cryptographic provider is not ready for use.  
> HRESULT 0x800900300x80090030 - NTE\_DEVICE\_NOT\_READY  
> The device that is required by this cryptographic provider is not ready for use.  
> TPM Spec version: TPM v1.2  

On a different device that is running the same version of Windows, the TPM management console can be opened.

### Cause (suspected) of TPM 1.2 Error: Loading the management console failed. The device that is required by the cryptographic provider isn't ready for use

These symptoms indicate that the TPM has hardware or firmware issues.

### Resolution for TPM 1.2 Error: Loading the management console failed. The device that is required by the cryptographic provider isn't ready for use

To resolve the issue:

- Switch the TPM operating mode from version 1.2 to version 2.0 if the device has this option available.

- If switching the TPM from version 1.2 to version 2.0 doesn't resolve the issue, or if the device doesn't have TPM version 2.0 available, contact the hardware vendor to determine whether there's a UEFI firmware update/BIOS update/TPM update for the device. If there's an update available, install the update to see if it resolves the issue.

- If updating the UEFI firmware/BIOS doesn't resolve the issue, or if there's no update available, consider replacing the device motherboard by contacting the hardware vendor. After the motherboard has been replaced, switch the TPM operating mode from version 1.2 to version 2.0 if this option is available.

   > [!WARNING]
   > Replacing the motherboard will cause data in the TPM to be lost.  

## Devices don't join hybrid Azure AD because of a TPM issue

When trying to join a device to a hybrid Azure AD, the join operation appears to fail.

To verify that the join succeeded, use the [dsregcmd /status command](/azure/active-directory/devices/troubleshoot-device-dsregcmd). In the tool output, the following attributes indicate that the join succeeded:

- **AzureAdJoined: YES**
- **DomainName: \<*on-prem Domain name*\>**

If the value of **AzureADJoined** is **No**, the join operation failed.  

### Causes and resolutions for devices don't join hybrid Azure AD because of a TPM issue

This issue may occur when the Windows operating system isn't the owner of the TPM. The specific fix for this issue depends on which errors or events are displayed, as shown in the following table:

|Message |Reason | Resolution|
| - | - | - |
|*NTE\_BAD\_KEYSET (0x80090016/-2146893802)* |TPM operation failed or was invalid |This issue was probably caused by a corrupted sysprep image. When creating a sysprep image, make sure to use a computer that isn't joined to or registered in Azure AD or hybrid Azure AD. |
|*TPM\_E\_PCP\_INTERNAL\_ERROR (0x80290407/-2144795641)* |Generic TPM error. |If the device returns this error, disable its TPM. Windows 10, version 1809 and later versions, or Windows 11 automatically detect TPM failures and finish the hybrid Azure AD join without using the TPM. |
|*TPM\_E\_NOTFIPS (0x80280036/-2144862154*) |The FIPS mode of the TPM is currently not supported. |If the device gives this error, disable its TPM. Windows 10, version 1809 and later versions, or Windows 11 automatically detect TPM failures and finish the hybrid Azure AD join without using the TPM. |
|*NTE\_AUTHENTICATION\_IGNORED (0x80090031/-2146893775)* |The TPM is locked out. |This error is transient. Wait for the cooldown period, and then retry the join operation. |

For more information about TPM issues, see the following articles:

- [TPM fundamentals: Anti-hammering](../tpm/tpm-fundamentals.md#anti-hammering)
- [Troubleshooting hybrid Azure Active Directory-joined devices](/azure/active-directory/devices/troubleshoot-hybrid-join-windows-current)
- [Troubleshoot the TPM](../tpm/initialize-and-configure-ownership-of-the-tpm.md)