---
title: Update Windows PE boot image with the latest cumulative updates
description: This article describes how to update a Windows PE (WinPE) boot image with the latest cumulative update.
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
manager: aaroncz
ms.author: frankroj
ms.topic: article
ms.date: 07/26/2023
ms.technology: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2022</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2019</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016</a>
---

# Update Windows PE boot image with the latest cumulative update

<!-- 7894697 -->

This walkthrough describes how to update a Windows PE (WinPE) boot image with the latest cumulative update.

## Prerequisites

- [Windows Assessment and Deployment Kit (Windows ADK)](/windows-hardware/get-started/adk-install) - It's recommended to use the latest version of the ADK.
- [Windows PE add-on for the Windows ADK](/windows-hardware/get-started/adk-install). Make sure the version of Windows PE matches the version of Windows ADK that is being used.
- Boot image - This can be `winpe.wim` included with the Windows ADK.
- Latest cumulative update downloaded from the [Microsoft Update Catalog](https://catalog.update.microsoft.com/) site.

## Overview

Note about boot.wim from installation media
Note about Win11 ADK only having x64 boot images
Note about Windows Server 2012 R2

## Steps

- [Step 1: Download and install ADK](#step-1-download-and-install-adk)
- [Step 2: Download cumulative update (CU)](#step-2-download-cumulative-update-cu)
- [Step 3: Backup existing boot image](#step-3-backup-existing-boot-image)
- [Step 4: Mount boot image to temporary mount folder](#step-4-mount-boot-image-to-temporary-mount-folder)
- [Step 5: Add drivers to boot image](#step-5-add-drivers-to-boot-image)
- [Step 6: Add optional components to boot image](#step-6-add-optional-components-to-boot-image)
- [Step 7: Add cumulative update (CU) to boot image](#step-7-add-cumulative-update-cu-to-boot-image)
- [Step 8: Copy boot files from mounted image to ADK installation path](#step-8-copy-boot-files-from-mounted-image-to-adk-installation-path)
- [Step 9: Perform component cleanup](#step-9-perform-component-cleanup)
- [Step 10: Verify all desired packages have been added to boot image](#step-10-verify-all-desired-packages-have-been-added-to-boot-image)
- [Step 11: Unmount boot image and save changes](#step-11-unmount-boot-image-and-save-changes)
- [Step 12: Export boot image to reduce size](#step-12-export-boot-image-to-reduce-size)

## Step 1: Download and install ADK

1. Download and install the **Windows Assessment and Deployment Kit (Windows ADK)** from [Download and install the Windows ADK](/windows-hardware/get-started/adk-install).

1. Download and install the **Windows PE add-on for the Windows ADK** from [Download and install the Windows ADK](/windows-hardware/get-started/adk-install). Make sure to download and install both components.

It's strongly recommended to download and install the latest version of the ADK. When installing the Windows ADK, it's only necessary to install the **Deployment Tools**.

The paths in this article assume the Windows ADK was installed to the default location of `C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit`. If the Windows ADK was installed to a different location, then adjust the paths accordingly.

## Step 2: Download cumulative update (CU)

1. Go to the [Microsoft Update Catalog](https://catalog.update.microsoft.com/) site and search for the latest cumulative update for the version of Windows that matches the version of Windows PE that was downloaded in [Step 1](#step-1-download-and-install-adk) or the version of the Windows PE boot image that will be updated.

1. When searching the [Microsoft Update Catalog](https://catalog.update.microsoft.com/) site, use the search term `"<year>-<month> cumulative update for windows <x>"` where `year` is the four digit current year, `<month>` is the two digit current month, and `<x>` is the version of Windows that Windows PE is based on. For example, to search for the latest cumulative update for Windows 11 in July 2023, use the search term `"2023-07 cumulative update for windows 11"`. If the cumulative update hasn't been released yet for the current month, then search on the previous month.

1. Once the cumulative update has been found, download the appropriate version for the version and architecture of Windows that matches the Windows PE boot image. For example, if the version of the Windows PE boot image is Windows 11 22H2 64-bit, then download the **Cumulative Update for Windows 11 Version 22H2 for x64-based Systems** version of the update.

1. Store the downloaded cumulative update in a known location for later use.

> [!TIP]
>
> It is recommended to use the full cumulative update when updating boot images with a cumulative update. However, instead of downloading the full cumulative update, the cumulative update for SafeOS can be downloaded and used instead. This will reduce the size of the final updated boot image. If any issues occur with a boot image updated with the SafeOS cumulative update, then use the full cumulative update instead.
>
> The SafeOS cumulative update can be found in the [Microsoft Update Catalog](https://catalog.update.microsoft.com/) site by searching on...

## Step 3: Backup existing boot image

Before modifying the desired boot image, make a backup copy of the boot image. For example:

- For the boot image included with the **Windows PE add-on for the Windows ADK**, the boot image is located at `C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim`.

- For the boot image included with Microsoft Configuration Manager, the boot image is located at `<ConfigMgr_Install_Directory>\OSD\boot\x64\boot.wim`

## Step 4: Mount boot image to temporary mount folder

Create a new empty empty folder to mount the boot image to. For example, `C:\Mount`.

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

```powershell
Mount-WindowsImage -Path "<Mount_folder_path>" -ImagePath "<Boot_image_path>\<boot_image>.wim" -Index 1 -Verbose
```

For more information, see [Mount-WindowsImage](/powershell/module/dism/mount-windowsimage).

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

```cmd
DISM.exe /Mount-image /imagefile:"<Boot_image_path>" /Index:1 /MountDir:"<Mount_folder_path>"
```

For more information, see [Modify a Windows image using DISM: Mount an image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism) and [DISM Image Management Command-Line Options: /Mount-Image](/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14#mount-image).

---

## Step 5: Add drivers to boot image

If needed, add any drivers to the boot image:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

```powershell
Command to be determined
```

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

```cmd
DISM.exe /Image:"<Mount_folder_path>" /Add-Driver /Driver:"<Driver_INF_source_path>\<driver>.inf"
```

or

```cmd
DISM.exe /Image:"<Mount_folder_path>" /Add-Driver /Driver:"<Drivers_source_path" /Recurse
```

For more information, see [Add and Remove Driver packages to an offline Windows Image](/windows-hardware/manufacture/desktop/add-and-remove-drivers-to-an-offline-windows-image)

---

> [!IMPORTANT]
>
> For Microsoft Configuration Manager boot images, don't manually add drivers to the boot image using the above steps. Instead, add drivers through Configuration Manager via the **Drivers** tab in the **Properties** of the boot image. This will ensure that the drivers in the boot image can be properly managed through Configuration Manager. Drivers are not affected by the cumulative update installed later in this walkthrough.

## Step 6: Add optional components to boot image

1. Add any desired optional components to the boot image:

    ### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

    ```powershell
    Add-WindowsPackage -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\<Component>.cab" -Path "<Mount_folder_path>" -Verbose
    ```

    This example assumes an x64 boot image. If a different architecture is being used, then adjust the commands accordingly.

    For more information, see [Add-WindowsPackage](/powershell/module/dism/add-windowspackage).

    ### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    ```cmd
    DISM.exe /Image:"<Mount_folder_path>" /Add-Package /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\<Component>.cab" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\<Component2>.cab"
    ```

    This example assumes an x64 boot image. If a different architecture is being used, then adjust the commands accordingly.

    You can add as many desired optional components as needed on a single **DISM.exe** command line.

    For more information, see [Add or Remove Packages Offline Using DISM](/windows-hardware/manufacture/desktop/add-or-remove-packages-offline-using-dism) and [DISM Operating System Package (.cab or .msu) Servicing Command-Line Options: /Add-Package](/windows-hardware/manufacture/desktop/dism-operating-system-package-servicing-command-line-options#add-package).

    ---

1. Make sure that after adding the optional component to also add the language specific component for that optional component. This needs to be done for every optional component that is added to the boot image.

    For example, for English United States (en-us), add the following:

    ### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

    ```powershell
    Add-WindowsPackage -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\<Component>_en-us.cab" -Path "<Mount_folder_path>" -Verbose
    ```

    This example assumes an x64 boot image. If a different architecture is being used, then adjust the commands accordingly.

    ### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    ```cmd
    DISM.exe /Image:"<Mount_folder_path>" /Add-Package /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\<Component>_en-us.cab" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\<Component2>_en-us.cab"
    ```

    This example assumes an x64 boot image. If a different architecture is being used, then adjust the commands accordingly.

    You can add as many desired optional components as needed on a single DISM.exe command line.

    ---

> [!IMPORTANT]
>
> For Microsoft Configuration Manager boot images, make sure to add any desired optional components manually using the above command lines instead of adding them through Configuration Manager via the **Optional Components** tab in the **Properties** of the boot image. This is because the cumulative update being applied at the next step will also update any optional components as needed. If the optional components are instead added through Configuration Manager, then the optional components will not be updated with the cumulative update. This could lead to unexpected behaviors and problems.
>
> For this reason, make sure to add the following required optional components need by Configuration Manager:
>
> - Scripting (WinPE-Scripting)
> - Startup (WinPE-SecureStartup)
> - Network (WinPE-WDS-Tools)
> - WMI (WinPE-WMI)
>
> Once any optional components has been manually added to a boot image, Configuration Manager will detect that the optional component has already been added. It will not try to add the optional component again whenever it is updating the boot image.

### List of optional components

## Step 7: Add cumulative update (CU) to boot image

Apply the cumulative update (CU) downloaded earlier in the walkthrough to the boot image:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

```powershell
Add-WindowsPackage -PackagePath "<Path_to_CU_MSU_update>" -Path "<Mount_folder_path>" -Verbose
```

For more information, see [Add-WindowsPackage](/powershell/module/dism/add-windowspackage)

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

```cmd
DISM.exe /Image:"<Mount_folder_path>" /Add-Package /PackagePath:"<Path_to_CU_MSU_update>"
```

For more information, see [Add or Remove Packages Offline Using DISM](/windows-hardware/manufacture/desktop/add-or-remove-packages-offline-using-dism) and [DISM Operating System Package (.cab or .msu) Servicing Command-Line Options: /Add-Package](/windows-hardware/manufacture/desktop/dism-operating-system-package-servicing-command-line-options#add-package).

---

> [!IMPORTANT]
>
> Make sure not to apply the cumulative update (CU) until all desired optional components have been installed. This will make sure that the optional components are also properly updated by the cumulative update. If in the future any additional optional components need to be added to the boot image, make sure to reapply the cumulative update.

## Step 8: Copy boot files from mounted image to ADK installation path

Copy the updated bootmgr files from the updated boot image to the ADK installation path:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

```powershell
Copy-Item "<Mount_folder_path>\Windows\Boot\EFI\bootmgr.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\bootmgr.efi" -Force

Copy-Item "<Mount_folder_path>\Windows\Boot\EFI\bootmgfw.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\EFI\Boot\bootx64.efi" -Force
```

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

```cmd
Command to be determined
```

---

This step doesn't update or change the boot image. However, it makes sure that the latest bootmgr files are available to the ADK when creating bootable media. In particular, this step is needed when addressing the BlackLotus UEFI bootkit vulnerability as documented in [KB5025885: How to manage the Windows Boot Manager revocations for Secure Boot changes associated with CVE-2023-24932](https://prod.support.services.microsoft.com/topic/kb5025885-how-to-manage-the-windows-boot-manager-revocations-for-secure-boot-changes-associated-with-cve-2023-24932-41a975df-beb2-40c1-99a3-b3ff139f832d) and [CVE-2023-24932](https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-24932).

## Step 9: Perform component cleanup

Run **DISM.exe** commands that will clean up the mounted image and help reduce its size:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

```powershell
Start-Process "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\amd64\DISM\dism.exe" -ArgumentList " /Image:"<Mount_folder_path>" /Cleanup-image /StartComponentCleanup /Resetbase /Defer" -Wait -LoadUserProfile

Start-Process "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\amd64\DISM\dism.exe" -ArgumentList " /Image:"<Mount_folder_path>" /Cleanup-image /StartComponentCleanup /Resetbase" -Wait -LoadUserProfile
```

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

```cmd
DISM.exe /Image:"<Mount_folder_path>" /Cleanup-image /StartComponentCleanup /Resetbase /Defer

DISM.exe /Image:"<Mount_folder_path>" /Cleanup-image /StartComponentCleanup /Resetbase
```

For more information, see [Modify a Windows image using DISM: Reduce the size of an image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism#reduce-the-size-of-an-image) and [DISM Operating System Package (.cab or .msu) Servicing Command-Line Options: /Cleanup-Image](/windows-hardware/manufacture/desktop/dism-operating-system-package-servicing-command-line-options#cleanup-image).

---

## Step 10: Verify all desired packages have been added to boot image

After the optional components and the cumulative update (CU) have been applied to the boot image, verify that they are showing as installed:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

```powershell
Get-WindowsPackage -Path "<Mount_folder_path>"
```

For more information, see [Get-WindowsPackage](/powershell/module/dism/get-windowspackage).

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

```cmd
DISM.exe /Image:"<Mount_folder_path>" /Get-Packages
```

For more information, see [DISM Operating System Package (.cab or .msu) Servicing Command-Line Options: /Get-Packages](/windows-hardware/manufacture/desktop/dism-operating-system-package-servicing-command-line-options#get-packages).

---

## Step 11: Unmount boot image and save changes

Once drivers, optional components, and the cumulative update (CU) have been applied to the boot image, unmount the boot image and save changes.

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

```powershell
Dismount-WindowsImage -Path "<Mount_folder_path>" -Save -Verbose
```

For more information, see [Dismount-WindowsImage](/powershell/module/dism/dismount-windowsimage).

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

```cmd
DISM.exe /Unmount-Image /MountDir:"<Mount_folder_path>" /Commit
```

For more information, see [Modify a Windows image using DISM: Unmounting an image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism#unmounting-an-image) and [DISM Image Management Command-Line Options: /Unmount-Image](/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14#unmount-image).

---

## Step 12: Export boot image to reduce size

1. Once the boot image has been unmounted and saved, its size can be further reduced by exporting it:

    ### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

    ```powershell
    Export-WindowsImage -SourceImagePath "<Boot_image_path>\<boot_image>.wim" -SourceIndex 1 -DestinationImagePath "<Boot_image_path>\<boot_image>-export.wim" -CompressionType max -Verbose
    ```

    For more information, see [Export-WindowsImage](/powershell/module/dism/export-windowsimage).

    ### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    ```cmd
    DISM.exe /Export-Image /SourceImageFile:"<Boot_image_path>\<boot_image>.wim" /SourceIndex:1 /DestinationImageFile:"<Boot_image_path>\<boot_image>-export.wim"
    ```

    For more information, see [Modify a Windows image using DISM: Reduce the size of an image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism#reduce-the-size-of-an-image) and [DISM Image Management Command-Line Options: /Export-Image](/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14#export-image).

    ---

1. Once the export has completed, delete the original updated boot image and then rename the exported boot image with the name of the original updated boot image.

## Microsoft Configuration Manager considerations

## Microsoft Deployment Toolkit (MDT) considerations

## Windows Deployment Services (WDS) considerations
