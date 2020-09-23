---
title: BitLocker and TPM other known issues
description: Describes common issues that relate directly to the TPM, and provides guidance for resolving those issues.
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

# BitLocker and TPM: other known issues

This article describes common issues that relate directly to the Trusted Platform Module (TPM), and provides guidance to address these issues.

## Azure AD: Windows Hello for Business and single sign-on do not work

You have an Azure Active Directory (Azure AD)-joined client computer that cannot authenticate correctly. You experience one or more of the following symptoms:

- Windows Hello for Business does not work.
- Conditional access fails.
- Single sign-on (SSO) does not work.

Additionally, the computer logs an entry for Event ID 1026, which resembles the following:

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
> The Trusted Platform Module (TPM) hardware on this computer cannot be provisioned for use automatically.  To set up the TPM interactively use the TPM management console (Start-\>tpm.msc) and use the action to make the TPM ready.  
> Error: The TPM is defending against dictionary attacks and is in a time-out period.  
> Additional Information: 0x840000  

### Cause

This event indicates that the TPM is not ready or has some setting that prevents access to the TPM keys.  

Additionally, the behavior indicates that the client computer cannot obtain a [Primary Refresh Token (PRT)](https://docs.microsoft.com/azure/active-directory/devices/concept-primary-refresh-token).  

### Resolution

To verify the status of the PRT, use the [dsregcmd /status command](https://docs.microsoft.com/azure/active-directory/devices/troubleshoot-device-dsregcmd) to collect information. In the tool output, verify that either **User state** or **SSO state** contains the **AzureAdPrt** attribute. If the value of this attribute is **No**, the PRT was not issued. This may indicate that the computer could not present its certificate for authentication.

To resolve this issue, follow these steps to troubleshoot the TPM:

1. Open the TPM management console (tpm.msc). To do this, select **Start**, and enter **tpm.msc** in the **Search** box.
1. If you see a notice to either unlock the TPM or reset the lockout, follow those instructions.  
1. If you do not see such a notice, review the BIOS settings of the computer for any setting that you can use to reset or disable the lockout.
1. Contact the hardware vendor to determine whether there is a known fix for the issue.
1. If you still cannot resolve the issue, clear and re-initialize the TPM. To do this, follow the instructions in [Troubleshoot the TPM: Clear all the keys from the TPM](https://docs.microsoft.com/windows/security/information-protection/tpm/initialize-and-configure-ownership-of-the-tpm#clear-all-the-keys-from-the-tpm).
   > [!WARNING]
   > Clearing the TPM can cause data loss.  

## TPM 1.2 Error: Loading the management console failed. The device that is required by the cryptographic provider is not ready for use

You have a Windows 10 version 1703-based computer that uses TPM version 1.2. When you try to open the TPM management console, you receive a message that resembles the following:

> Loading the management console failed. The device that is required by the cryptographic provider is not ready for use.  
> HRESULT 0x800900300x80090030 - NTE\_DEVICE\_NOT\_READY  
> The device that is required by this cryptographic provider is not ready for use.  
> TPM Spec version: TPM v1.2  

On a different device that is running the same version of Windows, you can open the TPM management console.

### Cause (suspected)

These symptoms indicate that the TPM has hardware or firmware issues.

### Resolution

To resolve this issue, switch the TPM operating mode from version 1.2 to version 2.0.  

If this does not resolve the issue, consider replacing the device motherboard. After you replace the motherboard, switch the TPM operating mode from version 1.2 to version 2.0.

## Devices do not join hybrid Azure AD because of a TPM issue

You have a device that you are trying to join to a hybrid Azure AD. However, the join operation appears to fail.

To verify that the join succeeded, use the [dsregcmd /status command](https://docs.microsoft.com/azure/active-directory/devices/troubleshoot-device-dsregcmd). In the tool output, the following attributes indicate that the join succeeded:

- **AzureAdJoined: YES**
- **DomainName: \<*on-prem Domain name*\>**

If the value of **AzureADJoined** is **No**, the join failed.  

### Causes and Resolutions

This issue may occur when the Windows operating system is not the owner of the TPM. The specific fix for this issue depends on which errors or events you experience, as shown in the following table:

|Message |Reason | Resolution|
| - | - | - |
|NTE\_BAD\_KEYSET (0x80090016/-2146893802) |TPM operation failed or was invalid |This issue was probably caused by a corrupted sysprep image. Make sure that you create the sysprep image by using a computer that is not joined to or registered in Azure AD or hybrid Azure AD. |
|TPM\_E\_PCP\_INTERNAL\_ERROR (0x80290407/-2144795641) |Generic TPM error. |If the device returns this error, disable its TPM. Windows 10, version 1809 and later versions automatically detect TPM failures and finish the hybrid Azure AD join without using the TPM. |
|TPM\_E\_NOTFIPS (0x80280036/-2144862154) |The FIPS mode of the TPM is currently not supported. |If the device gives this error, disable its TPM. Windows 10, version 1809 and later versions automatically detect TPM failures and finish the hybrid Azure AD join without using the TPM. |
|NTE\_AUTHENTICATION\_IGNORED (0x80090031/-2146893775) |The TPM is locked out. |This error is transient. Wait for the cooldown period, and then retry the join operation. |

For more information about TPM issues, see the following articles:

- [TPM fundamentals: Anti-hammering](https://docs.microsoft.com/windows/security/information-protection/tpm/tpm-fundamentals#anti-hammering)
- [Troubleshooting hybrid Azure Active Directory joined devices](https://docs.microsoft.com/azure/active-directory/devices/troubleshoot-hybrid-join-windows-current)
- [Troubleshoot the TPM](https://docs.microsoft.com/windows/security/information-protection/tpm/initialize-and-configure-ownership-of-the-tpm)
