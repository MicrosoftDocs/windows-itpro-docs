---
title: BitLocker
description: This topic provides a high-level overview of BitLocker, including a list of system requirements, practical applications, and deprecated features.
ms.author: dansimp
ms.prod: windows-client
ms.localizationpriority: medium
author: dansimp
manager: aaroncz
ms.collection: 
  - M365-security-compliance
  - highpri
ms.topic: conceptual
ms.date: 01/26/2018
ms.custom: bitlocker
ms.technology: itpro-security
---

# BitLocker

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

This topic provides a high-level overview of BitLocker, including a list of system requirements, practical applications, and deprecated features.

## <a href="" id="bkmk-over"></a>BitLocker overview

BitLocker Drive Encryption is a data protection feature that integrates with the operating system and addresses the threats of data theft or exposure from lost, stolen, or inappropriately decommissioned computers.

BitLocker provides the maximum protection when used with a Trusted Platform Module (TPM) version 1.2 or later versions. The TPM is a hardware component installed in many newer computers by the computer manufacturers. It works with BitLocker to help protect user data and to ensure that a computer has not been tampered with while the system was offline.

On computers that do not have a TPM version 1.2 or later versions, you can still use BitLocker to encrypt the Windows operating system drive. However, this implementation requires the user to insert a USB startup key to start the computer or resume from hibernation. Starting with Windows 8, you can use an operating system volume password to protect the operating system volume on a computer without TPM. Both options do not provide the pre-startup system integrity verification offered by BitLocker with a TPM.

In addition to the TPM, BitLocker offers the option to lock the normal startup process until the user supplies a personal identification number (PIN) or inserts a removable device, such as a USB flash drive, that contains a startup key. These additional security measures provide multifactor authentication and assurance that the computer will not start or resume from hibernation until the correct PIN or startup key is presented.

## <a href="" id="bkmk-app"></a>Practical applications

Data on a lost or stolen computer is vulnerable to unauthorized access, either by running a software-attack tool against it or by transferring the computer's hard disk to a different computer. BitLocker helps mitigate unauthorized data access by enhancing file and system protections. BitLocker also helps render data inaccessible when BitLocker-protected computers are decommissioned or recycled.

There are two additional tools in the Remote Server Administration Tools which you can use to manage BitLocker.

-   **BitLocker Recovery Password Viewer**. The BitLocker Recovery Password Viewer enables you to locate and view BitLocker Drive Encryption recovery passwords that have been backed up to Active Directory Domain Services (AD DS). You can use this tool to help recover data that is stored on a drive that has been encrypted by using BitLocker. The BitLocker Recovery Password Viewer tool is an extension for the Active Directory Users and Computers Microsoft Management Console (MMC) snap-in.
    By using this tool, you can examine a computer object's **Properties** dialog box to view the corresponding BitLocker recovery passwords. Additionally, you can right-click a domain container and then search for a BitLocker recovery password across all the domains in the Active Directory forest. To view recovery passwords, you must be a domain administrator, or you must have been delegated permissions by a domain administrator.

-   **BitLocker Drive Encryption Tools**. BitLocker Drive Encryption Tools include the command-line tools, manage-bde and repair-bde, and the BitLocker cmdlets for Windows PowerShell. Both manage-bde and the BitLocker cmdlets can be used to perform any task that can be accomplished through the
BitLocker control panel, and they are appropriate to be used for automated deployments and other scripting scenarios. Repair-bde is provided for disaster recovery scenarios in which a BitLocker-protected drive cannot be unlocked normally or by using the recovery console.

## <a href="" id="bkmk-new"></a>New and changed functionality

To find out what's new in BitLocker for Windows, such as support for the XTS-AES encryption algorithm, see the [BitLocker](/windows/whats-new/whats-new-windows-10-version-1507-and-1511#bitlocker) section in "What's new in Windows 10."
 
## System requirements

BitLocker has the following hardware requirements:

For BitLocker to use the system integrity check provided by a TPM, the computer must have TPM 1.2 or later versions. If your computer does not have a TPM, enabling BitLocker makes it mandatory for you to save a startup key on a removable device, such as a USB flash drive.

A computer with a TPM must also have a Trusted Computing Group (TCG)-compliant BIOS or UEFI firmware. The BIOS or UEFI firmware establishes a chain of trust for the pre-operating system startup, and it must include support for TCG-specified Static Root of Trust Measurement. A computer without a TPM does not require TCG-compliant firmware.

The system BIOS or UEFI firmware (for TPM and non-TPM computers) must support the USB mass storage device class, including reading small files on a USB flash drive in the pre-operating system environment.

> [!IMPORTANT]
> From Windows 7, you can encrypt an OS drive without a TPM and USB flash drive. For this procedure, see [Tip of the Day: Bitlocker without TPM or USB](https://social.technet.microsoft.com/Forums/en-US/eac2cc67-8442-42db-abad-2ed173879751/bitlocker-without-tpm?forum=win10itprosetup).

> [!NOTE]
> TPM 2.0 is not supported in Legacy and Compatibility Support Module (CSM) modes of the BIOS. Devices with TPM 2.0 must have their BIOS mode configured as native UEFI only. The Legacy and CSM options must be disabled. For added security, enable the secure boot feature.

> Installed Operating System on hardware in Legacy mode stops the OS from booting when the BIOS mode is changed to UEFI. Use the tool [MBR2GPT](/windows/deployment/mbr-to-gpt) before changing the BIOS mode, which prepares the OS and the disk to support UEFI.

The hard disk must be partitioned with at least two drives:

-   The operating system drive (or boot drive) contains the operating system and its support files. It must be formatted with the NTFS file system.
-   The system drive contains the files that are needed to load Windows after the firmware has prepared the system hardware. BitLocker is not enabled on this drive. For BitLocker to work, the system drive must not be encrypted, must differ from the operating system drive, and must be formatted with the FAT32 file system on computers that use UEFI-based firmware or with the NTFS file system on computers that use BIOS firmware. We recommend that system drive be approximately 350 MB in size. After BitLocker is turned on, it should have approximately 250 MB of free space.

When installed on a new computer, Windows automatically creates the partitions that are required for BitLocker.

A partition subject to encryption cannot be marked as an active partition (this applies to the operating system, fixed data, and removable data drives).


When installing the BitLocker optional component on a server, you will also need to install the Enhanced Storage feature, which is used to support hardware encrypted drives.

## In this section

| Topic | Description |
| - | - |
| [Overview of BitLocker Device Encryption in Windows 10](bitlocker-device-encryption-overview-windows-10.md) | This topic provides an overview of the ways in which BitLocker Device Encryption can help protect data on devices running Windows 10.  |
| [BitLocker frequently asked questions (FAQ)](bitlocker-frequently-asked-questions.yml) | This topic answers frequently asked questions concerning the requirements to use, upgrade, deploy and administer, and key management policies for BitLocker.|
| [Prepare your organization for BitLocker: Planning and policies](prepare-your-organization-for-bitlocker-planning-and-policies.md)| This topic explains the procedure you can use to plan your BitLocker deployment. |
| [BitLocker basic deployment](bitlocker-basic-deployment.md) | This topic explains how BitLocker features can be used to protect your data through drive encryption. |
| [BitLocker: How to deploy on Windows Server](bitlocker-how-to-deploy-on-windows-server.md)| This topic explains how to deploy BitLocker on Windows Server.|
| [BitLocker: How to enable Network Unlock](bitlocker-how-to-enable-network-unlock.md) | This topic describes how BitLocker Network Unlock works and how to configure it. |
| [BitLocker: Use BitLocker Drive Encryption Tools to manage BitLocker](bitlocker-use-bitlocker-drive-encryption-tools-to-manage-bitlocker.md)| This topic describes how to use tools to manage BitLocker.|
| [BitLocker: Use BitLocker Recovery Password Viewer](bitlocker-use-bitlocker-recovery-password-viewer.md) | This topic describes how to use the BitLocker Recovery Password Viewer. |
| [BitLocker Group Policy settings](bitlocker-group-policy-settings.md) | This topic describes the function, location, and effect of each group policy setting that is used to manage BitLocker. |
| [BCD settings and BitLocker](bcd-settings-and-bitlocker.md) | This topic describes the BCD settings that are used by BitLocker.|
| [BitLocker Recovery Guide](bitlocker-recovery-guide-plan.md)| This topic describes how to recover BitLocker keys from AD DS. |
| [Protect BitLocker from pre-boot attacks](./bitlocker-countermeasures.md)| This detailed guide helps you understand the circumstances under which the use of pre-boot authentication is recommended for devices running Windows 10, Windows 8.1, Windows 8, or Windows 7; and when it can be safely omitted from a device’s configuration. |
| [Troubleshoot BitLocker](troubleshoot-bitlocker.md) | This guide describes the resources that can help you troubleshoot BitLocker issues, and provides solutions for several common BitLocker issues. |
| [Protecting cluster shared volumes and storage area networks with BitLocker](protecting-cluster-shared-volumes-and-storage-area-networks-with-bitlocker.md)| This topic describes how to protect CSVs and SANs with BitLocker.|
| [Enabling Secure Boot and BitLocker Device Encryption on Windows IoT Core](/windows/iot-core/secure-your-device/SecureBootAndBitLocker) | This topic describes how to use BitLocker with Windows IoT Core |



