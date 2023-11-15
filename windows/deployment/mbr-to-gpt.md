---
title: MBR2GPT
description: Use MBR2GPT.EXE to convert a disk from the Master Boot Record (MBR) to the GUID Partition Table (GPT) partition style without modifying or deleting data on the disk.
ms.prod: windows-client
author: frankroj
ms.author: frankroj
ms.date: 10/17/2023
manager: aaroncz
ms.localizationpriority: high
ms.topic: how-to
ms.collection:
  - highpri
  - tier2
ms.technology: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# MBR2GPT.EXE

**MBR2GPT.EXE** converts a disk from the Master Boot Record (MBR) to the GUID Partition Table (GPT) partition style without modifying or deleting data on the disk. The tool runs from a Windows Preinstallation Environment (Windows PE) command prompt, but can also be run from the full Windows 10 operating system (OS) by using the **`/allowFullOS`** option.

**MBR2GPT.EXE** is located in the **`Windows\System32`** directory on a computer running Windows.

The tool is available in both the full OS environment and Windows PE.

See the following video for a detailed description and demonstration of MBR2GPT.

> [!VIDEO https://www.youtube-nocookie.com/embed/hfJep4hmg9o]

You can use MBR2GPT to:

- Convert any attached MBR-formatted system disk to the GPT partition format. You can't use the tool to convert non-system disks from MBR to GPT.
- Convert an MBR disk with BitLocker-encrypted volumes as long as protection has been suspended. To resume BitLocker after conversion, you'll need to delete the existing protectors and recreate them.
- Convert an operating system disk from MBR to GPT using Microsoft Configuration Manager or Microsoft Deployment Toolkit (MDT).

Offline conversion of system disks with earlier versions of Windows installed, such as Windows 7, 8, or 8.1 aren't officially supported. The recommended method to convert these disks is to upgrade the operating system to a currently supported version of Windows, then perform the MBR to GPT conversion.

> [!IMPORTANT]
>
> After the disk has been converted to GPT partition style, the firmware must be reconfigured to boot in UEFI mode.
>
> Make sure that your device supports UEFI before attempting to convert the disk.

## Disk Prerequisites

Before any change to the disk is made, MBR2GPT validates the layout and geometry of the selected disk to ensure that:

- The disk is currently using MBR
- There's enough space not occupied by partitions to store the primary and secondary GPTs:
  - 16 KB + 2 sectors at the front of the disk
  - 16 KB + 1 sector at the end of the disk
- There are at most three primary partitions in the MBR partition table
- One of the partitions is set as active and is the system partition
- The disk doesn't have any extended/logical partition
- The BCD store on the system partition contains a default OS entry pointing to an OS partition
- The volume IDs can be retrieved for each volume that has a drive letter assigned
- All partitions on the disk are of MBR types recognized by Windows or has a mapping specified using the `/map` command-line option

If any of these checks fails, the conversion doesn't proceed, and an error is returned.

## Syntax

`MBR2GPT /validate|convert [/disk:<diskNumber>] [/logs:<logDirectory>] [/map:<source>=<destination>] [/allowFullOS]`

### Options

| Option | Description |
|----|-------------|
|**/validate**| Instructs `MBR2GPT.exe` to perform only the disk validation steps and report whether the disk is eligible for conversion. |
|**/convert**| Instructs `MBR2GPT.exe` to perform the disk validation and to proceed with the conversion if all validation tests pass. |
|**/disk:*\<diskNumber\>***| Specifies the disk number of the disk to be converted to GPT. If not specified, the system disk is used. The mechanism used is the same as used by the diskpart.exe tool **SELECT DISK SYSTEM** command.|
|**/logs:*\<logDirectory\>***| Specifies the directory where `MBR2GPT.exe` logs should be written. If not specified, **%windir%** is used. If specified, the directory must already exist, it isn't automatically created or overwritten.|
|**/map:*\<source\>*=*\<destination\>***| Specifies other partition type mappings between MBR and GPT. The MBR partition number is specified in decimal notation, not hexadecimal. The GPT GUID can contain brackets, for example: **/map:42={af9b60a0-1431-4f62-bc68-3311714a69ad}**. Multiple /map options can be specified if multiple mappings are required. |
|**/allowFullOS**| By default, `MBR2GPT.exe` is blocked unless it's run from Windows PE. This option overrides this block and enables disk conversion while running in the full Windows environment. <br>**Note**: Since the existing MBR system partition is in use while running the full Windows environment, it can't be reused. In this case, a new EFI system partition is created by shrinking the OS partition.|

## Examples

### Validation example

In the following example, disk 0 is validated for conversion. Errors and warnings are logged to the default location of **`%windir%`**.

```cmd
X:\> mbr2gpt.exe /validate /disk:0
MBR2GPT: Attempting to validate disk 0
MBR2GPT: Retrieving layout of disk
MBR2GPT: Validating layout, disk sector size is: 512
MBR2GPT: Validation completed successfully
```

### Conversion example

In the following example:

1. The current disk partition layout is displayed prior to conversion using DiskPart - three partitions are present on the MBR disk (disk 0):

    - A system reserved partition.
    - A Windows partition.
    - A recovery partition.
    - A DVD-ROM is also present as volume 0.

1. The OS volume is selected, partitions are listed, and partition details are displayed for the OS partition. The [MBR partition type](/windows/win32/fileio/disk-partition-types) is **07** corresponding to the installable file system (IFS) type.

1. The MBR2GPT tool is used to convert disk 0.

1. The DiskPart tool displays that disk 0 is now using the GPT format.

1. The new disk layout is displayed - four partitions are present on the GPT disk: three are identical to the previous partitions and one is the new EFI system partition (volume 3).

1. The OS volume is selected again, and detail displays that it has been converted to the [GPT partition type](/windows/win32/api/winioctl/ns-winioctl-partition_information_gpt) of **ebd0a0a2-b9e5-4433-87c0-68b6b72699c7** corresponding to the **PARTITION_BASIC_DATA_GUID** type.

As noted in the output from the MBR2GPT tool, you must make changes to the computer firmware so that the new EFI system partition boots properly.

<br>
<details>
  <summary>Expand to show MBR2GPT example</summary>

```cmd
X:\>DiskPart.exe

Microsoft DiskPart version 10.0.15048.0

Copyright (C) Microsoft Corporation.
On computer: MININT-K71F13N

DISKPART> list volume

  Volume ###  Ltr  Label        Fs     Type        Size     Status     Info
  ----------  ---  -----------  -----  ----------  -------  ---------  --------
  Volume 0     F   CENA_X64FRE  UDF    DVD-ROM     4027 MB  Healthy
  Volume 1     C   System Rese  NTFS   Partition    499 MB  Healthy
  Volume 2     D   Windows      NTFS   Partition     58 GB  Healthy
  Volume 3     E   Recovery     NTFS   Partition    612 MB  Healthy    Hidden

DISKPART> select volume 2

Volume 2 is the selected volume.

DISKPART> list partition

  Partition ###  Type              Size     Offset
  -------------  ----------------  -------  -------
  Partition 1    Primary            499 MB  1024 KB
* Partition 2    Primary             58 GB   500 MB
  Partition 3    Recovery           612 MB    59 GB

DISKPART> detail partition

Partition 2
Type  : 07
Hidden: No
Active: No
Offset in Bytes: 524288000

  Volume ###  Ltr  Label        Fs     Type        Size     Status     Info
  ----------  ---  -----------  -----  ----------  -------  ---------  --------
* Volume 2     D   Windows      NTFS   Partition     58 GB  Healthy

DISKPART> exit

Leaving DiskPart...

X:\>mbr2gpt /convert /disk:0

MBR2GPT will now attempt to convert disk 0.
If conversion is successful the disk can only be booted in GPT mode.
These changes cannot be undone!

MBR2GPT: Attempting to convert disk 0
MBR2GPT: Retrieving layout of disk
MBR2GPT: Validating layout, disk sector size is: 512 bytes
MBR2GPT: Trying to shrink the system partition
MBR2GPT: Trying to shrink the OS partition
MBR2GPT: Creating the EFI system partition
MBR2GPT: Installing the new boot files
MBR2GPT: Performing the layout conversion
MBR2GPT: Migrating default boot entry
MBR2GPT: Adding recovery boot entry
MBR2GPT: Fixing drive letter mapping
MBR2GPT: Conversion completed successfully
MBR2GPT: Before the new system can boot properly you need to switch the firmware to boot to UEFI mode!

X:\>DiskPart

Microsoft DiskPart version 10.0.15048.0

Copyright (C) Microsoft Corporation.
On computer: MININT-K71F13N

DISKPART> list disk

  Disk ###  Status         Size     Free     Dyn  Gpt
  --------  -------------  -------  -------  ---  ---
  Disk 0    Online           60 GB      0 B        *

DISKPART> select disk 0

Disk 0 is now the selected disk.

DISKPART> list volume

  Volume ###  Ltr  Label        Fs     Type        Size     Status     Info
  ----------  ---  -----------  -----  ----------  -------  ---------  --------
  Volume 0     F   CENA_X64FRE  UDF    DVD-ROM     4027 MB  Healthy
  Volume 1     D   Windows      NTFS   Partition     58 GB  Healthy
  Volume 2     C   System Rese  NTFS   Partition    499 MB  Healthy    Hidden
  Volume 3                      FAT32  Partition    100 MB  Healthy    Hidden
  Volume 4     E   Recovery     NTFS   Partition    612 MB  Healthy    Hidden

DISKPART> select volume 1

Volume 1 is the selected volume.

DISKPART> list partition

  Partition ###  Type              Size     Offset
  -------------  ----------------  -------  -------
  Partition 1    Recovery           499 MB  1024 KB
* Partition 2    Primary             58 GB   500 MB
  Partition 4    System             100 MB    59 GB
  Partition 3    Recovery           612 MB    59 GB

DISKPART> detail partition

Partition 2
Type    : ebd0a0a2-b9e5-4433-87c0-68b6b72699c7
Hidden  : No
Required: No
Attrib  : 0000000000000000
Offset in Bytes: 524288000

  Volume ###  Ltr  Label        Fs     Type        Size     Status     Info
  ----------  ---  -----------  -----  ----------  -------  ---------  --------
* Volume 1     D   Windows      NTFS   Partition     58 GB  Healthy
```

</details>

## Specifications

### Disk conversion workflow

The following steps illustrate high-level phases of the MBR-to-GPT conversion process:

1. Disk validation is performed.
2. The disk is repartitioned to create an EFI system partition if one doesn't already exist.
3. UEFI boot files are installed to the EFI system partition.
4. GPT metadata and layout information are applied.
5. The boot configuration data (BCD) store is updated.
6. Drive letter assignments are restored.

### Creating an EFI system partition

For Windows to remain bootable after the conversion, an EFI system partition must be in place. MBR2GPT creates the EFI system partition using the following rules:

1. The existing MBR system partition is reused if it meets these requirements:

   - It isn't also the OS or Windows Recovery Environment partition.
   - It is at least 100 MB (or 260 MB for 4K sector size disks) in size.
   - It's less than or equal to 1 GB in size. This size is a safety precaution to ensure it isn't a data partition.
   - The conversion isn't being performed from the full OS. In this case, the existing MBR system partition is in use and can't be repurposed.

2. If the existing MBR system partition can't be reused, a new EFI system partition is created by shrinking the OS partition. This new partition has a size of 100 MB (or 260 MB for 4K sector size disks) and is formatted FAT32.

If the existing MBR system partition isn't reused for the EFI system partition, it's no longer used by the boot process after the conversion. Other partitions aren't modified.

> [!IMPORTANT]
>
> If the existing MBR system partition is not reused for the EFI system partition, it might be assigned a drive letter. If you do not wish to use this small partition, you must manually hide the drive letter.

### Partition type mapping and partition attributes

Since GPT partitions use a different set of type IDs than MBR partitions, each partition on the converted disk must be assigned a new type ID. The partition type mapping follows these rules:

1. The EFI system partition is always set to partition type **PARTITION_SYSTEM_GUID** (**c12a7328-f81f-11d2-ba4b-00a0c93ec93b**).
2. If an MBR partition is of a type that matches one of the entries specified in the `/map` switch, the specified GPT partition type ID is used.
3. If the MBR partition is of type **0x27**, the partition is converted to a GPT partition of type **PARTITION_MSFT_RECOVERY_GUID** (**de94bba4-06d1-4d40-a16a-bfd50179d6ac**).
4. All other MBR partitions recognized by Windows are converted to GPT partitions of type **PARTITION_BASIC_DATA_GUID** (**ebd0a0a2-b9e5-4433-87c0-68b6b72699c7**).

In addition to applying the correct partition types, partitions of type PARTITION_MSFT_RECOVERY_GUID also have the following GPT attributes set:

- **GPT_ATTRIBUTE_PLATFORM_REQUIRED** (**0x0000000000000001**)
- **GPT_BASIC_DATA_ATTRIBUTE_NO_DRIVE_LETTER** (**0x8000000000000000**)

For more information about partition types, see:

- [GPT partition types](/windows/win32/api/winioctl/ns-winioctl-partition_information_gpt)
- [MBR partition types](/windows/win32/fileio/disk-partition-types)

### Persisting drive letter assignments

The conversion tool attempts to remap all drive letter assignment information contained in the registry that corresponds to the volumes of the converted disk. If a drive letter assignment can't be restored, an error is displayed at the console and in the log, so that you can manually perform the correct assignment of the drive letter.

> [!IMPORTANT]
>
> This code runs after the layout conversion has taken place, so the operation cannot be undone at this stage.

The conversion tool will obtain volume unique ID data before and after the layout conversion, organizing this information into a lookup table. It then iterates through all the entries in **HKLM\SYSTEM\MountedDevices**, and for each entry it does the following:

1. Check if the unique ID corresponds to any of the unique IDs for any of the volumes that are part of the converted disk.
2. If found, set the value to be the new unique ID, obtained after the layout conversion.
3. If the new unique ID can't be set and the value name starts with **\DosDevices**, issue a console and log warning about the need for manual intervention in properly restoring the drive letter assignment.

## Troubleshooting

The tool displays status information in its output. Both validation and conversion are clear if any errors are encountered. For example, if one or more partitions don't translate properly, this information is displayed and the conversion not performed. To view more detail about any errors that are encountered, see the associated [log files](#logs).

### Logs

Four log files are created by the MBR2GPT tool:

- diagerr.xml
- diagwrn.xml
- setupact.log
- setuperr.log

These files contain errors and warnings encountered during disk validation and conversion. Information in these files can be helpful in diagnosing problems with the tool. The `setupact.log` and `setuperr.log` files have the most detailed information about disk layouts, processes, and other information pertaining to disk validation and conversion.

> [!NOTE]
>
> The **setupact*.log** files are different than the Windows Setup files that are found in the `%Windir%\Panther` directory.

The default location for all these log files in Windows PE is **%windir%**.

### Interactive help

To view a list of options available when using the tool, enter the following command in an elevated command prompt:

```cmd
mbr2gpt.exe /?
```

The following text is displayed:

```cmd
C:\> mbr2gpt.exe /?

Converts a disk from MBR to GPT partitioning without modifying or deleting data on the disk.

MBR2GPT.exe /validate|convert [/disk:<diskNumber>] [/logs:<logDirectory>] [/map:<source>=<destination>] [/allowFullOS]

Where:

 /validate
         - Validates that the selected disk can be converted
           without performing the actual conversion.

 /convert
         - Validates that the selected disk can be converted
           and performs the actual conversion.

 /disk:<diskNumber>
         - Specifies the disk number of the disk to be processed.
           If not specified, the system disk is processed.

 /logs:<logDirectory>
         - Specifies the directory for logging. By default logs
           are created in the %windir% directory.

 /map:<source>=<destination>
         - Specifies the GPT partition type to be used for a
           given MBR partition type not recognized by Windows.
           Multiple /map switches are allowed.

 /allowFullOS
         - Allows the tool to be used from the full Windows
           environment. By default, this tool can only be used
           from the Windows Preinstallation Environment.
```

### Return codes

MBR2GPT has the following associated return codes:

| Return code | Description |
|----|-------------|
|**0**| Conversion completed successfully.|
|**1**| Conversion was canceled by the user.|
|**2**| Conversion failed due to an internal error.|
|**3**| Conversion failed due to an initialization error.|
|**4**| Conversion failed due to invalid command-line parameters. |
|**5**| Conversion failed due to error reading the geometry and layout of the selected disk.|
|**6**| Conversion failed because one or more volumes on the disk is encrypted.|
|**7**| Conversion failed because the geometry and layout of the selected disk don't meet requirements.|
|**8**| Conversion failed due to error while creating the EFI system partition.|
|**9**| Conversion failed due to error installing boot files.|
|**10**| Conversion failed due to error while applying GPT layout.|
|**100**| Conversion to GPT layout succeeded, but some boot configuration data entries couldn't be restored.|

### Determining the partition type

The partition type can be determined in one of three ways:

- Using Windows PowerShell
- Using the Disk Management tool
- Using the DiskPart tool

#### Windows PowerShell

You can enter the following command at a Windows PowerShell prompt to display the disk number and partition type:

```powershell
Get-Disk | ft -Auto
``````

Example output:

```powershell
PS C:\> Get-Disk | ft -Auto

Number Friendly Name      Serial Number        HealthStatus OperationalStatus Total Size Partition Style
------ -------------      -------------        ------------ ----------------- ---------- ---------------
0      MTFDDAK256MAM-1K1  13050928F47C         Healthy      Online             238.47 GB MBR
1      ST1000DM003-1ER162 Z4Y3GD8F             Healthy      Online             931.51 GB GPT
```

#### Disk Management tool

You can view the partition type of a disk by using the Disk Management tool:

1. Right-click on the Start Menu and select **Disk Management**. Alternatively, right-click on the Start Menu and select **Run**. In the **Run** dialog box that appears, enter `diskmgmt.msc` and then select **OK**.

1. In the **Disk Management** window that appears:

    1. On the bottom pane, select the disk number of interest.

    1. Select the **Action** menu and then select **All Tasks > Properties**. Alternatively, right-click on the disk number of interest and select **Properties**.

    1. In the **Properties** dialog box that appears for the disk, select the **Volumes** tab.

    1. Under the **Volumes** tab, the partition type is displayed next to **Partition style:**.

#### DiskPart tool

The partition type can be determined with the DiskPart tool. The DiskPart tool is useful in scenarios where the Disk Management tool and PowerShell aren't available, such as in WinPE when the PowerShell optional component in WinPE isn't loaded. To use the DiskPart tool to determine the partition type:

1. Open an elevated command prompt.

1. In the elevated command prompt that opens enter the following command:

   ```cmd
   DiskPart.exe
   ```

1. The **DISKPART>** prompt is displayed in the command prompt windows. At the **DISKPART>** prompt, enter the following command:

   ```cmd
   list disk
   ```

1. The partition type is displayed in the **Gpt** column. If the partition is GPT, an asterisk (**\***) is displayed in the column. If the partition is MBR, the column will be blank.

The following shows an example output of the DiskPart tool showing the partition type for two disks:

```cmd
X:\>DiskPart.exe

Microsoft DiskPart version 10.0.15048.0

Copyright (C) Microsoft Corporation.
On computer: MININT-K71F13N

DISKPART> list disk

  Disk ###  Status         Size     Free     Dyn  Gpt
  --------  -------------  -------  -------  ---  ---
  Disk 0    Online          238 GB      0 B
  Disk 1    Online          931 GB      0 B        *
```

In this example, Disk 0 is formatted with the MBR partition style, and Disk 1 is formatted using GPT.

## Known issue

### MBR2GPT.exe can't run in Windows PE

When you start a Windows 10, version 1903-based computer in the Windows Preinstallation Environment (Windows PE), you encounter the following issues:

**Issue 1** When you run the `MBR2GPT.exe` command, the process exits without converting the drive.

**Issue 2** When you manually run the `MBR2GPT.exe` command in a Command Prompt window, there's no output from the tool.

**Issue 3** When `MBR2GPT.exe` runs inside an imaging process such as a Microsoft Configuration Manager task sequence, an MDT task sequence, or by using a script, you receive the following exit code: 0xC0000135/3221225781.

#### Cause

This issue occurs because in Windows 10, version 1903 and later versions, `MBR2GPT.exe` requires access to the ReAgent.dll file. However, this dll file and its associated libraries are currently not included in the Windows PE boot image for Windows 10, version 1903 and later.

#### Workaround

To fix this issue, mount the Windows PE image (WIM), copy the missing file from the [Windows 10, version 1903 Assessment and Development Kit (ADK)](https://go.microsoft.com/fwlink/?linkid=2086042) source, and then commit the changes to the WIM. Use follow these steps:

1. Mount the Windows PE WIM to a path (for example, C:\WinPE_Mount). For more information about how to mount WIM files, see [Mount an image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism#mount-an-image).

2. Copy the ReAgent files and the ReAgent localization files from the Windows 10, version 1903 ADK source folder to the mounted WIM.

    For example, if the ADK is installed to the default location of C:\Program Files (x86)\Windows Kits\10 and the Windows PE image is mounted to C:\WinPE_Mount, run the following commands from an elevated Command Prompt window:

    > [!NOTE]
    > You can access the ReAgent files if you have installed the User State Migration Tool (USMT) as a feature while installing Windows Assessment and Deployment Kit.

    **Command 1:**
  
    ```cmd
    copy "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Setup\amd64\Sources\ReAgent*.*" "C:\WinPE_Mount\Windows\System32"
    ```

    This command copies three files:

    - ReAgent.admx
    - ReAgent.dll
    - ReAgent.xml

    **Command 2:**
  
    ```cmd
    copy "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Setup\amd64\Sources\En-Us\ReAgent*.*" "C:\WinPE_Mount\Windows\System32\En-Us"
    ```

    This command copies two files:

    - ReAgent.adml
    - ReAgent.dll.mui

    > [!NOTE]
    > If you aren't using an English version of Windows, replace "En-Us" in the path with the appropriate string that represents the system language.

3. After you copy all the files, commit the changes and unmount the Windows PE WIM. `MBR2GPT.exe` now functions as expected in Windows PE. For information about how to unmount WIM files while committing changes, see [Unmounting an image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism#unmounting-an-image).

## Related articles

- [Windows 10 Enterprise system requirements](https://technet.microsoft.com/windows/dn798752.aspx)
- [Windows 10 Specifications](https://www.microsoft.com/windows/Windows-10-specifications)
