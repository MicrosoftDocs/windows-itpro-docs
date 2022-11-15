---
title: Troubleshoot the TPM (Windows)
description: This article for the IT professional describes how to view status for, clear, or troubleshoot the Trusted Platform Module (TPM).
ms.reviewer: 
ms.prod: windows-client
author: dansimp
ms.author: dansimp
manager: aaroncz
ms.collection: 
  - M365-security-compliance
  - highpri
ms.topic: conceptual
ms.date: 09/06/2021
ms.technology: itpro-security
---

# Troubleshoot the TPM

**Applies to**
-   Windows 10
-   Windows 11
-   Windows Server 2016 and above

This article provides information for the IT professional to troubleshoot the Trusted Platform Module (TPM):

-   [Troubleshoot TPM initialization](#troubleshoot-tpm-initialization)

-   [Clear all the keys from the TPM](#clear-all-the-keys-from-the-tpm)

With TPM 1.2 and Windows 10, version 1507 or 1511, or Windows 11, you can also take the following actions:

-   [Turn on or turn off the TPM](#turn-on-or-turn-off)

For information about the TPM cmdlets, see [TPM Cmdlets in Windows PowerShell](/powershell/module/trustedplatformmodule/?view=win10-ps&preserve-view=true).

## About TPM initialization and ownership

Starting with Windows 10 and Windows 11, the operating system automatically initializes and takes ownership of the TPM. This is a change from previous operating systems, where you would initialize the TPM and create an owner password.

## Troubleshoot TPM initialization

If you find that Windows isn't able to initialize the TPM automatically, review the following information:

-   You can try clearing the TPM to the factory default values and allowing Windows to re-initialize it. For important precautions for this process, and instructions for completing it, see [Clear all the keys from the TPM](#clear-all-the-keys-from-the-tpm), later in this article.

-   If the TPM is a TPM 2.0 and isn't detected by Windows, verify that your computer hardware contains a Unified Extensible Firmware Interface (UEFI) that is Trusted Computing Group-compliant. Also, ensure that in the UEFI settings, the TPM hasn't been disabled or hidden from the operating system.

-   If you have TPM 1.2 with Windows 10, version 1507 or 1511, or Windows 11, the TPM might be turned off, and need to be turned back on, as described in [Turn on the TPM](#turn-on-the-tpm). When it's turned back on, Windows will re-initialize it.

-   If you're attempting to set up BitLocker with the TPM, check which TPM driver is installed on the computer. We recommend always using one of the TPM drivers that is provided by Microsoft and is protected with BitLocker. If a non-Microsoft TPM driver is installed, it may prevent the default TPM driver from loading and cause BitLocker to report that a TPM isn't present on the computer. If you have a non-Microsoft driver installed, remove it and then allow the operating system to initialize the TPM.

### Troubleshoot network connection issues for Windows 10, versions 1507 and 1511, or Windows 11

If you have Windows 10, version 1507 or 1511, or Windows 11, the initialization of the TPM can't complete when your computer has network connection issues and both of the following conditions exist:

-   An administrator has configured your computer to require that TPM recovery information be saved in Active Directory Domain Services (AD DS). This requirement can be configured through Group Policy.

-   A domain controller can't be reached. This can occur on a computer that is currently disconnected from the network, separated from the domain by a firewall, or experiencing a network component failure (such as an unplugged cable or a faulty network adapter).

If these issues occur, an error message appears, and you can't complete the initialization process. To avoid this issue, allow Windows to initialize the TPM while you're connected to the corporate network and you can contact a domain controller.

### Troubleshoot systems with multiple TPMs

Some systems may have multiple TPMs and the active TPM may be toggled in UEFI. Windows does not support this behavior. If you switch TPMs, Windows might not properly detect or interact with the new TPM. If you plan to switch TPMs you should toggle to the new TPM, clear it, and reinstall Windows. For more information, see [Clear all the keys from the TPM](#clear-all-the-keys-from-the-tpm), later in this article.

For example, toggling TPMs will cause BitLocker to enter recovery mode. We strongly recommend that, on systems with two TPMs, one TPM is selected to be used and the selection isn't changed.

## Clear all the keys from the TPM

You can use the Windows Defender Security Center app to clear the TPM as a troubleshooting step, or as a final preparation before a clean installation of a new operating system. Preparing for a clean installation in this way helps ensure that the new operating system can fully deploy any TPM-based functionality that it includes, such as attestation. However, even if the TPM isn't cleared before a new operating system is installed, most TPM functionality will probably work correctly.

Clearing the TPM resets it to an unowned state. After you clear the TPM, the Windows operating system will automatically re-initialize it and take ownership again.

> [!WARNING]
> Clearing the TPM can result in data loss. For more information, see the next section, “Precautions to take before clearing the TPM.”

### Precautions to take before clearing the TPM

Clearing the TPM can result in data loss. To protect against such loss, review the following precautions:

-   Clearing the TPM causes you to lose all created keys associated with the TPM, and data protected by those keys, such as a virtual smart card or a sign-in PIN. Make sure that you have a backup and recovery method for any data that is protected or encrypted by the TPM.

-   Don't clear the TPM on a device you don't own, such as a work or school PC, without being instructed to do so by your IT administrator.

-   If you want to temporarily suspend TPM operations and you have TPM 1.2 with Windows 10, version 1507 or 1511, or Windows 11, you can turn off the TPM. For more information, see [Turn off the TPM](#turn-off-the-tpm), later in this article.

-   Always use functionality in the operating system (such as TPM.msc) to the clear the TPM. Don't clear the TPM directly from UEFI.

-   Because your TPM security hardware is a physical part of your computer, before clearing the TPM, you might want to read the manuals or instructions that came with your computer, or search the manufacturer's website.

Membership in the local Administrators group, or equivalent, is the minimum required to complete this procedure.

**To clear the TPM**

1. Open the Windows Defender Security Center app.

2. Select **Device security**.

3. Select **Security processor details**.

4. Select **Security processor troubleshooting**.

5. Select **Clear TPM**.

6.  You will be prompted to restart the computer. During the restart, you might be prompted by the UEFI to press a button to confirm that you wish to clear the TPM.

7.  After the PC restarts, your TPM will be automatically prepared for use by Windows.

## <a href="" id="turn-on-or-turn-off"></a>Turn on or turn off the TPM (available only with TPM 1.2 with Windows 10, version 1507 and higher)

Normally, the TPM is turned on as part of the TPM initialization process. You don't normally need to turn the TPM on or off. However, if necessary you can do so by using the TPM MMC.

### Turn on the TPM

If you want to use the TPM after you have turned it off, you can use the following procedure to turn on the TPM.

**To turn on the TPM (TPM 1.2 with Windows 10, version 1507 and higher)**

1.  Open the TPM MMC (tpm.msc).

2.  In the **Action** pane, select **Turn TPM On** to display the **Turn on the TPM Security Hardware** page. Read the instructions on this page.

3.  Select **Shutdown** (or **Restart**), and then follow the UEFI screen prompts.

    After the computer restarts, but before you sign in to Windows, you will be prompted to accept the reconfiguration of the TPM. This ensures that the user has physical access to the computer and that malicious software isn't attempting to make changes to the TPM.

### Turn off the TPM

If you want to stop using the services that are provided by the TPM, you can use the TPM MMC to turn off the TPM.

**To turn off the TPM (TPM 1.2 with Windows 10, version 1507 and higher)**

1. Open the TPM MMC (tpm.msc).

2. In the **Action** pane, select **Turn TPM Off** to display the **Turn off the TPM security hardware** page.

3. In the **Turn off the TPM security hardware** dialog box, select a method to enter your owner password and turning off the TPM:

   -   If you saved your TPM owner password on a removable storage device, insert it, and then select **I have the owner password file**. In the **Select backup file with the TPM owner password** dialog box, select **Browse** to locate the .tpm file that is saved on your removable storage device, select **Open**, and then select **Turn TPM Off**.

   -   If you don't have the removable storage device with your saved TPM owner password, select **I want to enter the password**. In the **Type your TPM owner password** dialog box, type your password (including hyphens), and then select **Turn TPM Off**.

   -   If you didn't save your TPM owner password or no longer know it, select **I do not have the TPM owner password**, and follow the instructions that are provided in the dialog box and subsequent UEFI screens to turn off the TPM without entering the password.
  
## Use the TPM cmdlets

You can manage the TPM using Windows PowerShell. For details, see [TPM Cmdlets in Windows PowerShell](/powershell/module/trustedplatformmodule/?view=win10-ps&preserve-view=true).

## Related articles

- [Trusted Platform Module](trusted-platform-module-top-node.md) (list of articles)
