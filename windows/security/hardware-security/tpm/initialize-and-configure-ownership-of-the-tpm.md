---
title: Troubleshoot the TPM
description: Learn how to view and troubleshoot the Trusted Platform Module (TPM).
ms.topic: conceptual
ms.date: 07/10/2024
ms.collection:
- tier1
---

# Troubleshoot the TPM

This article provides information how to troubleshoot the Trusted Platform Module (TPM):

- [Troubleshoot TPM initialization](#tpm-initialization)
- [Clear all the keys from the TPM](#clear-all-the-keys-from-the-tpm)
- [Turn on or turn off the TPM](#turn-on-or-turn-off-the-tpm)

For information about the TPM cmdlets, see [TPM Cmdlets in Windows PowerShell](/powershell/module/trustedplatformmodule/?view=win10-ps&preserve-view=true).

## About TPM initialization and ownership

Windows automatically initializes and takes ownership of the TPM. There's no need for you to initialize the TPM and create an owner password.

### TPM initialization

If you find that Windows isn't able to initialize the TPM automatically, review the following information:

- You can try clearing the TPM to the factory default values, allowing Windows to reinitialize it. For important precautions for this process, and instructions for completing it, see [Clear all the keys from the TPM](#clear-all-the-keys-from-the-tpm).
- If the TPM is a TPM 2.0 and isn't detected by Windows, verify that your computer hardware contains a Unified Extensible Firmware Interface (UEFI) that is Trusted Computing Group-compliant. Also, ensure that in the UEFI settings, the TPM hasn't been disabled or hidden from the operating system.
- If you have TPM 1.2 with Windows 11, the TPM might be turned off, and need to be turned back on, as described in [Turn on the TPM](#turn-on-the-tpm). When it's turned back on, Windows reinitializes it.
- If you're attempting to set up BitLocker with the TPM, check which TPM driver is installed on the computer. We recommend always using one of the TPM drivers that is provided by Microsoft and is protected with BitLocker. If a non-Microsoft TPM driver is installed, it may prevent the default TPM driver from loading and cause BitLocker to report that a TPM isn't present on the computer. If you have a non-Microsoft driver installed, remove it, and then allow the operating system to initialize the TPM.

### Network connection issues for domain-joined Windows 11 devices

If you have Windows 11, the initialization of the TPM can't complete when your computer has network connection issues and both of the following conditions exist:

- An administrator has configured your computer to require that TPM recovery information be saved in Active Directory Domain Services (AD DS). This requirement can be configured through group policy.
- A domain controller can't be reached. This scenario may occur on a device that is currently disconnected from the internal network, separated from the domain by a firewall, or experiencing a network component failure (such as an unplugged cable or a faulty network adapter).

If these issues occur, an error message appears, and you can't complete the initialization process. To avoid the issue, allow Windows to initialize the TPM while you're connected to the corporate network, and you can contact a domain controller.

### Systems with multiple TPMs

Some systems may have multiple TPMs and the active TPM may be toggled in UEFI. Windows doesn't support this configuration. If you switch TPMs, Windows might not properly detect or interact with the new TPM. If you plan to switch TPMs, you should toggle to the new TPM, clear it, and reinstall Windows. For more information, see [Clear all the keys from the TPM](#clear-all-the-keys-from-the-tpm).

For example, toggling TPMs cause BitLocker to enter recovery mode. We strongly recommend that, on systems with two TPMs, one TPM is selected for use and the selection isn't changed.

## Clear all the keys from the TPM

You can use the Windows Defender Security Center app to clear the TPM as a troubleshooting step, or as a final preparation before a clean installation of a new operating system. Preparing for a clean installation in this way helps ensure that the new operating system can fully deploy any TPM-based functionality that it includes, such as attestation. However, even if the TPM isn't cleared before a new operating system is installed, most TPM functionality will probably work correctly.

Clearing the TPM resets it to an unowned state. After you clear the TPM, the Windows operating system will automatically reinitialize it and take ownership again.

> [!WARNING]
> Clearing the TPM can result in data loss. For more information, see the next section, "Precautions to take before clearing the TPM."

### Precautions to take before clearing the TPM

Clearing the TPM can result in data loss. To protect against such loss, review the following precautions:

- Clearing the TPM causes you to lose all created keys associated with the TPM, and data protected by those keys, such as a virtual smart card or a sign-in PIN. Make sure that you have a backup and recovery method for any data that is protected or encrypted by the TPM.
- Don't clear the TPM on a device you don't own, such as a work or school PC, without being instructed to do so by your IT administrator.
- If you want to temporarily suspend TPM operations on Windows 11, you can turn off the TPM. For more information, see [Turn off the TPM](#turn-off-the-tpm).
- Always use functionality in the operating system (such as TPM.msc) to clear the TPM. Don't clear the TPM directly from UEFI.
- Because your TPM security hardware is a physical part of your computer, before clearing the TPM, you might want to read the manuals or instructions that came with your computer, or search the manufacturer's website.

Membership in the local Administrators group, or equivalent, is the minimum required to complete this procedure.

#### To clear the TPM

1. Open the Windows Defender Security Center app.
1. Select **Device security**.
1. Select **Security processor details**.
1. Select **Security processor troubleshooting**.
1. Select **Clear TPM**.
    - You'll be prompted to restart the computer. During the restart, you might be prompted to press a button to confirm that you wish to clear the TPM.
    - After the device restarts, your TPM will be automatically prepared for use by Windows.

## Turn on or turn off the TPM

Normally, the TPM is turned on as part of the TPM initialization process. You don't normally need to turn the TPM on or off. However, if necessary you can do so by using the TPM MMC.

### Turn on the TPM

If you want to use the TPM after you've turned it off, you can use the following procedure to turn on the TPM.

1. Open the TPM MMC (tpm.msc).
1. In the **Action** pane, select **Turn TPM On** to display the **Turn on the TPM Security Hardware** page. Read the instructions on this page.
1. Select **Shutdown** (or **Restart**), and then follow the UEFI screen prompts.

After the device restarts, but before you sign in to Windows, you'll be prompted to accept the reconfiguration of the TPM. The acceptance ensures that the user has physical access to the computer and that malicious software isn't attempting to make changes to the TPM.

### Turn off the TPM

If you want to stop using the services that are provided by the TPM, you can use the TPM MMC to turn off the TPM.

1. Open the TPM MMC (`tpm.msc`).
1. In the **Action** pane, select **Turn TPM Off** to display the **Turn off the TPM security hardware** page.
1. In the **Turn off the TPM security hardware** dialog box, select a method to enter your owner password and turning off the TPM:
   - If you saved your TPM owner password on a removable storage device, insert it, and then select **I have the owner password file**. In the **Select backup file with the TPM owner password** dialog box, select **Browse** to locate the `.tpm` file that is saved on your removable storage device, select **Open**, and then select **Turn TPM Off**.
   - If you don't have the removable storage device with your saved TPM owner password, select **I want to enter the password**. In the **Type your TPM owner password** dialog box, type your password (including hyphens), and then select **Turn TPM Off**.
   - If you didn't save your TPM owner password or no longer know it, select **I do not have the TPM owner password**, and follow the instructions that are provided in the dialog box and subsequent UEFI screens to turn off the TPM without entering the password.

## Use the TPM cmdlets

You can manage the TPM using Windows PowerShell. For details, see [TPM Cmdlets in Windows PowerShell](/powershell/module/trustedplatformmodule/?view=win10-ps&preserve-view=true).
