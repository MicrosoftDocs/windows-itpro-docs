---
title: Windows deployment scenarios and tools
description: Learn about the tools that can be used to deploy Windows and related applications to your organization. Explore deployment scenarios.
manager: aaroncz
ms.author: frankroj
author: frankroj
ms.service: windows-client
ms.topic: conceptual
ms.date: 08/30/2024
ms.subservice: itpro-deploy
---

# Windows deployment scenarios and tools

To successfully deploy the Windows operating system and applications for your organization, it's important to understand the available tools to help with the process. This article covers the most commonly used tools for Windows 10 deployment.

Microsoft provides many tools, services, and solutions. These tools include Windows Deployment Services (WDS), the Volume Activation Management Tool (VAMT), the User State Migration Tool (USMT), Windows System Image Manager (Windows SIM), Windows Preinstallation Environment (Windows PE), and Windows Recovery Environment (Windows RE). These tools aren't a complete solution on their own. Combine these tools with solutions like [Configuration Manager](/mem/configmgr) to get a complete deployment solution.

This article also covers the different types of reference images that can be built, and why reference images are beneficial for most organizations.

## Windows Assessment and Deployment Kit

The Windows Assessment and Deployment Kit (Windows ADK) contains core assessment and deployment tools and technologies, including:

- [Deployment Image Servicing and Management (DISM)](/windows-hardware/manufacture/desktop/dism---deployment-image-servicing-and-management-technical-reference-for-windows).
- [Windows Configuration Designer](/windows/configuration/provisioning-packages/provisioning-packages).
- [Windows System Image Manager (Windows SIM)](/windows-hardware/customize/desktop/wsim/windows-system-image-manager-technical-reference).
- [User State Migration Tool (USMT)](/windows/deployment/usmt/usmt-overview).
- [Volume Activation Management Tool (VAMT)](/windows/deployment/volume-activation/volume-activation-management-tool).
- [Windows Preinstallation Environment (Windows PE)](/windows-hardware/manufacture/desktop/winpe-intro).
- [Windows Assessment Toolkit](/windows-hardware/test/assessments/).
- [Windows Performance Toolkit (WPT)](/windows-hardware/test/wpt/).

For more information, see the following articles:

- [Download and install the Windows ADK](/windows-hardware/get-started/adk-install).
- [Windows ADK for Windows scenarios for IT Pros](windows-adk-scenarios-for-it-pros.md).
- [Kits and tools overview](/windows-hardware/get-started/kits-and-tools-overview).

### Deployment Image Servicing and Management (DISM)

DISM is one of the deployment tools included in the Windows ADK. It's used for capturing, servicing, and deploying both boot images and operating system images.

DISM services online and offline images. For example, with DISM you can install the Microsoft .NET Framework while Windows is online, which means that you can start the installation in the running operating system. The `/LimitAccess` switch configures DISM to get the files only from a local source. For example:

```cmd
Dism.exe /Online /Enable-Feature /FeatureName:NetFX3 /All /Source:D:\Sources\SxS /LimitAccess
```

Windows PowerShell can be used in Windows for many of the functions done by **DISM.exe**. The equivalent command in Windows using PowerShell is:

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName NetFx3 -All
-Source D:\Sources\SxS -LimitAccess
```

For more information on DISM, see [DISM technical reference](/windows-hardware/manufacture/desktop/dism---deployment-image-servicing-and-management-technical-reference-for-windows).

### User State Migration Tool (USMT)

USMT is a backup and restore tool that allows you to migrate user state, data, and settings from one installation to another. Microsoft Configuration Manager uses USMT as part of the operating system deployment process.

USMT includes several command-line tools, the most important of which are **ScanState** and **LoadState**:

- **ScanState.exe**: This tool performs the user-state backup.
- **LoadState.exe**: This tool performs the user-state restore.
- **UsmtUtils.exe**: This tool supplements the functionality in **ScanState.exe** and **LoadState.exe**.

In addition to these tools, there are also XML templates that manage which data is migrated. You can customize the templates, or create new ones, to manage the backup process at a high level of detail. USMT uses the following terms for its templates:

- **Migration templates**: The default templates in USMT.
- **Custom templates**: Custom templates that you create.
- **Config template**: An optional template called **Config.xml** which you can use to exclude or include components in a migration without modifying the other standard XML templates.

USMT supports capturing and restoring both data and settings from currently supported versions of Windows. It also supports migrating from a 32-bit operating system to a 64-bit operating system, but not the other way around. For example, you can use USMT to migrate from Windows 10 x86 to Windows 11 x64.

By default USMT migrates many settings, most of which are related to the user profile but also to Control Panel configurations, file types, and more. The default templates that are used in Windows deployments are **MigUser.xml** and **MigApp.xml**. These two default templates migrate the following data and settings:

- Folders from each profile, including those folders from user profiles, and shared and public profiles. For example, the My Documents, My Video, My Music, My Pictures, desktop files, Start menu, Quick Launch settings, and Favorites folders are migrated.

- The following specific file types:

    `.accdb`, `.ch3`, `.csv`, `.dif`, `.doc*`, `.dot*`, `.dqy`, `.iqy`, `.mcw`, `.mdb*`, `.mpp`, `.one*`, `.oqy`, `.or6`, `.pot*`, `.ppa`, `.pps*`, `.ppt*`, `.pre`, `.pst`, `.pub`, `.qdf`, `.qel`, `.qph`, `.qsd`, `.rqy`, `.rtf`, `.scd`, `.sh3`, `.slk`, `.txt`, `.vl*`, `.vsd`, `.wk*`, `.wpd`, `.wps`, `.wq1`, `.wri`, `.xl*`, `.xla`, `.xlb`, `.xls*`

    > [!NOTE]
    > The asterisk (`*`) stands for zero or more characters.

    > [!NOTE]
    > The OpenDocument extensions (`*.odt`, `*.odp`, `*.ods`) used by Microsoft Office applications aren't migrated by default.

- Operating system component settings.

- Application settings.

These settings are migrated by the default **MigUser.xml** and **MigApp.xml** templates. For more information, see [What does USMT migrate?](./usmt/usmt-what-does-usmt-migrate.md) For more general information on USMT, see [User State Migration Tool (USMT) overview](./usmt/usmt-overview.md).

### Windows Configuration Designer

Windows Configuration Designer is a tool designed to assist with the creation of provisioning packages that can be used to dynamically configure a Windows device. This tool is useful for setting up new devices without the need for reimaging the device with a custom image.

For more information, see [Provisioning packages for Windows](/windows/configuration/provisioning-packages/provisioning-packages).

### Windows System Image Manager (Windows SIM)

Windows System Image Manager (Windows SIM) is an authoring tool for **Unattend.xml** files. Windows SIM isn't normally needed when using Microsoft Configuration Manager. Microsoft Configuration Manager automatically creates and updates the **Unattend.xml** file based on settings specified in the task sequence, primarily at the **Apply Windows Settings** task. The automation in Microsoft Configuration Manager greatly simplifies the overall process.

For more information, see [Windows System Image Manager Technical Reference](/windows-hardware/customize/desktop/wsim/windows-system-image-manager-technical-reference).

### Volume Activation Management Tool (VAMT)

If not using [Key Management Services (KMS)](/windows-server/get-started/kms-client-activation-keys), Multiple Activation Keys (MAKs) can be centrally managed with the Volume Activation Management Tool (VAMT). Use this tool to install and manage product keys throughout the organization. VAMT can also activate on behalf of clients without internet access, acting as a MAK proxy.

VAMT can also be used to create reports, switch from MAK to KMS, manage Active Directory-based activation, and manage Office volume activation. VAMT also supports PowerShell. For example, to get information from the VAMT database, enter:

```powershell
Get-VamtProduct
```

For more information on the VAMT, see the following articles:

- [Volume Activation Management Tool (VAMT)](/windows/deployment/volume-activation/volume-activation-management-tool).
- [VAMT technical reference](./volume-activation/volume-activation-management-tool.md).

### Windows Preinstallation Environment (Windows PE)

Windows PE is a "lite" version of Windows used as a deployment platform.

Windows PE is like any other operating system and it needs drivers. However, it doesn't need a full set of drivers. It only needs a minimalist set of drivers necessary to deploy Windows. Normally only network and storage drivers are needed. Windows PE already includes a set of drivers out of the box so most devices work without the need to add any additional drivers.

For more information on Windows PE, see [Windows PE (WinPE)](/windows-hardware/manufacture/desktop/winpe-intro).

## Windows Recovery Environment

Windows Recovery Environment (Windows RE) is a diagnostics and recovery toolset included in currently supported versions of Windows. Windows RE is based on Windows PE. If needed, Windows RE can also be extended with custom tools. If a Windows fails to start and Windows RE is installed, an automatic failover into Windows RE occurs.

For more information on Windows RE, see [Windows Recovery Environment](/windows-hardware/manufacture/desktop/windows-recovery-environment--windows-re--technical-reference).

## Windows Deployment Services

The main functions of Windows Deployment Services (WDS) are:

- PXE boot support.
- Multicast.
- BitLocker Network Unlock.

The following considerations should be observed when using WDS for operating system deployment:

- WDS can be configured for stand-alone mode or for Active Directory integration. Active Directory integration mode is recommended in most scenarios.

- WDS has the capability to manage drivers. However, driver management through Microsoft Configuration Manager is more suitable for deployment due to its flexibility.

- WDS can pre-stage unknown devices as a known computer in Active Directory. However, Microsoft Configuration Manager also has the capability of staging unknown devices as known devices in it's database. In most scenarios, Microsoft Configuration Manager is a better solution for pre-staging devices since it allows greater control and management.

- Trivial File Transfer Protocol (TFTP) block size and windows size settings can be configured with WDS to increase performance and download speeds during PXE booting. However, although an increase in TFTP settings can increase performance and download speeds, it can also decrease reliability and cause failures, including a reduction of download speeds. There are many variables involved when determining TFTP settings, including networking equipment, network configuration, and device compatibility.

    For stand-alone WDS, TFTP settings can be configured in the WDS console under the **TFTP** tab in the properties of the WDS server. For Microsoft Configuration manager, see [Customize the RamDisk TFTP block and window sizes on PXE-enabled distribution points](/mem/configmgr/osd/get-started/prepare-site-system-roles-for-operating-system-deployments#customize-the-ramdisk-tftp-block-and-window-sizes-on-pxe-enabled-distribution-points).

## Windows Server Update Services

WSUS is a server role in Windows Server that enables a local repository of Microsoft updates. The Microsoft Update can then be distributed from the WSUS server to devices in the organization's environment without having to go out to the public Microsoft Update site. WSUS offers approval control and reporting of update status in the environment.

For more information on WSUS, see the [Windows Server Update Services (WSUS)](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus).

## Unified Extensible Firmware Interface

Unified Extensible Firmware Interface (**UEFI**) is used to initialize and boot a device. It's the successor for BIOS, the method used for many years to initialize and boot a device.

This section will go over the advantages of UEFI over BIOS, how the two differ, and now it affects operating system deployment.

### Introduction to UEFI

Although BIOS was used successfully on devices for many years, it has some limitations. For example:

- 16-bit code
- 1-MB address space
- Poor performance on ROM initialization
- MBR maximum bootable disk size of 2.2 TB

As the replacement to BIOS, UEFI has many features BIOS doesn't have. Windows can take advantage of many of these UEFI features. UEFI has the following features not available in BIOS:

- **Support for large disks** - UEFI requires a GUID Partition Table (GPT) based disk. GPT can support disks up to approximately 16.8 million TB in disk size. GPT also supports more than 100 primary disks.

- **Faster boot time** - UEFI replaces BIOS interrupt call INT 13h, improving boot time, especially when resuming from hibernate.

- **Multicast deployment** - UEFI firmware can use multicast directly when it boots up. With solutions such as WDS and Microsoft Configuration Manager, multicast support is only available by first booting into Windows PE. With UEFI, multicast can run directly from UEFI.

- **Compatibility with earlier BIOS** - Older devices with UEFI had a UEFI implementation that included a compatibility support module (CSM) that emulates BIOS. However, due to the current wide support of UEFI, modern devices generally don't have a CSM and therefore aren't backward compatible with BIOS. For example, Windows 11 and newer doesn't support BIOS so therefore only runs on modern devices that have UEFI.

- **CPU-independent architecture** - BIOS can run both 32-bit and 64-bit versions of firmware. However, all firmware device drivers on BIOS systems must be 16-bit. This limitation affects performance and only 64 KB of memory can be addressed. UEFI removes these limitations.

- **CPU-independent drivers** - On BIOS systems, PCI add-on cards must include a ROM that contains a separate driver for all supported CPU architectures. This limitation isn't needed for UEFI because UEFI has the ability to use EFI Byte Code (EBC) images. EBC images allow for a processor-independent device driver environment.

- **Flexible pre-operating system environment** - UEFI supports UEFI application that can run before the OS is loaded. UEFI applications allow many additional features such as diagnostics, automatic repairs, and the ability to call home to report errors.

- **Secure boot** - Currently supported versions of Windows use the UEFI firmware validation process, called [secure boot](/windows-hardware/design/device-experiences/oem-secure-boot). When secure boot is used, UEFI ensures that it launches only a verified operating system loader and that malware can't switch the boot loader.

### Hardware support for UEFI

In regard to UEFI, hardware is divided into four device classes:

- **Class 0 devices.** Devices in this class are BIOS, or non-UEFI, devices.

- **Class 1 devices.** Devices in this class behave like a standard BIOS device, but they run EFI internally. They should be treated as normal BIOS-based machines. Class 1 devices use a CSM to emulate BIOS.

- **Class 2 devices.** Devices in this class have the capability to behave as either a BIOS device or as a UEFI device. The boot process or the configuration in the firmware of the device determines the mode. Class 2 devices use a CSM to emulate BIOS.

- **Class 3 devices.** The devices in this class are UEFI-only devices. They don't have backwards compatibility with BIOS. Devices in this class must run an operating system that supports UEFI. All currently supported versions of Windows support UEFI. Class 3 devices don't have a CSM to emulate BIOS.

In general, all modern devices are Class 3 devices. Class 0, Class 1, and Class 2 devices are older devices and are no longer manufactured.

### Windows support for UEFI

- Windows 10 supports both x86 and x64 versions of UEFI.

- Windows 11 and newer only supports x64 versions of UEFI.

- UEFI doesn't support cross-platform boot.

  - UEFI x64 devices can only run a 64-bit operating system. Most modern UEFI devices are x64.
  - UEFI x86 devices can run only a 32-bit operating system. For Windows, only Windows 10 x86 supports UEFI x86. Windows 11 and newer doesn't support UEFI x86. Lack of UEFI x86 support in Windows 11 generally isn't an issue since UEFI x86 devices are rare.

### UEFI considerations for operating system deployment

There are many things that affect operating system deployment as soon as you run on UEFI/EFI-based hardware. Here are considerations to keep in mind when working with UEFI devices:

- Class 2 devices can switch between BIOS and UEFI via the device's firmware. Make sure the desired mode for the device is selected in the device's firmware. Microsoft recommends using Class 2 devices in UEFI mode due to the added benefits and security that UEFI provides.

    When a Class 2 device is switched from BIOS to UEFI, one of the following two actions needs to take place:

  - The disk needs to be converted from MBR to GPT and then partitioned accordingly to support UEFI. This conversion can be done via a tool such as [diskpart](/windows-server/administration/windows-commands/diskpart). For example, while Windows running on BIOS only requires one partition that can be either FAT32 or NTFS, Windows running on a UEFI device requires the following partitions:

    - FAT32 boot/system partition.
    - NTFS OS partition.
    - Microsoft reserved partition (MSR) partition (unique to Windows).
    - Recovery partition (optional).

    Because the existing disk is wiped as part of this process, the following actions need to take place:

    - Windows need to be reinstalled.
    - Applications need to be reinstalled.
    - Data and settings need to be backed up and restored.

    For more information, see [UEFI/GPT-based hard drive partitions](/windows-hardware/manufacture/desktop/configure-uefigpt-based-hard-drive-partitions).

  - The [MBR2GPT.EXE](mbr-to-gpt.md) tool can be used to convert the disk from MBR to GPT for use with UEFI in a non-destructive way. **MBR2GPT.EXE** also reconfigures the partitioning on the disk with the correct partitioning for Windows to run on UEFI. The benefit of using the **MBR2GPT.EXE** is that it converts the disk and repartitions it without wiping the disk and without data loss. Since the disk isn't wiped and there's no data loss, the following actions don't need to be performed:

    - Windows doesn't need to be reinstalled.
    - Applications don't need to be reinstalled.
    - Data and settings don't need to be backed up and restored.

- When you deploy a Class 2 device, make sure the boot option is set to the proper boot device (hard drive, flash drive, PXE, etc.) The boot options available on Class 2 devices might differ between BIOS and UEFI modes.

- When a UEFI device boots from media, the media has to be FAT32. UEFI only supports booting from FAT32 partitions, which is why the boot/system partition on the disk is FAT32. Additionally, FAT32 has a file-size limitation of 4 GB. OS images larger than 4 GB need to be split with a tool such as [DISM](/windows-hardware/manufacture/desktop/what-is-dism). For more information, see [Split-WindowsImage](/powershell/module/dism/split-windowsimage) or [/Split-Image](/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14#split-image).

- UEFI doesn't support cross architecture booting. x64 devices require x64 boot media and x86 devices require x86 boot media.

- Most modern UEFI devices are x64. UEFI x86 devices are rare.

For more information on UEFI, see the [UEFI firmware](/previous-versions/windows/it-pro/windows-8.1-and-8/hh824898(v=win.10)) overview and related resources.

## Related content

- [Windows ADK for Windows scenarios for IT Pros](windows-adk-scenarios-for-it-pros.md).
- [MBR2GPT.EXE](mbr-to-gpt.md).
- [UEFI/GPT-based hard drive partitions](/windows-hardware/manufacture/desktop/configure-uefigpt-based-hard-drive-partitions).
- [UEFI firmware](/previous-versions/windows/it-pro/windows-8.1-and-8/hh824898(v=win.10)).
