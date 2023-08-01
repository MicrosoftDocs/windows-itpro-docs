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

Microsoft recommends updating Windows PE (WinPE) boot images with the latest cumulative update for maximum security and protection. The latest cumulative updates may also resolve known issues. This walkthrough describes how to update a WinPE boot image with the latest cumulative update.

## Prerequisites

- [Windows Assessment and Deployment Kit (Windows ADK)](/windows-hardware/get-started/adk-install) - It's recommended to use the latest version of the ADK.
- [Windows PE add-on for the Windows ADK](/windows-hardware/get-started/adk-install). Make sure the version of Windows PE matches the version of Windows ADK that is being used.
- Windows PE boot image
- Latest cumulative update downloaded from the [Microsoft Update Catalog](https://catalog.update.microsoft.com/) site.

## Steps

- [Step 1: Download and install ADK](#step-1-download-and-install-adk)
- [Step 2: Download cumulative update (CU)](#step-2-download-cumulative-update-cu)
- [Step 3: Backup existing boot image](#step-3-backup-existing-boot-image)
- [Step 4: Mount boot image to mount folder](#step-4-mount-boot-image-to-mount-folder)
- [Step 5: Add drivers to boot image](#step-5-add-drivers-to-boot-image)
- [Step 6: Add optional components to boot image](#step-6-add-optional-components-to-boot-image)
- [Step 7: Add cumulative update (CU) to boot image](#step-7-add-cumulative-update-cu-to-boot-image)
- [Step 8: Copy boot files from mounted boot image to ADK installation path](#step-8-copy-boot-files-from-mounted-boot-image-to-adk-installation-path)
- [Step 9: Perform component cleanup](#step-9-perform-component-cleanup)
- [Step 10: Verify all desired packages have been added to boot image](#step-10-verify-all-desired-packages-have-been-added-to-boot-image)
- [Step 11: Unmount boot image and save changes](#step-11-unmount-boot-image-and-save-changes)
- [Step 12: Export boot image to reduce size](#step-12-export-boot-image-to-reduce-size)

## Step 1: Download and install ADK

1. Download and install the **Windows Assessment and Deployment Kit (Windows ADK)** from [Download and install the Windows ADK](/windows-hardware/get-started/adk-install).

    When installing the Windows ADK, for the purpose of this walk-through, it's only necessary to install the **Deployment Tools**. One of the tools installed will be the **Deployment and Imaging Tools Environment** command prompt. When using the **Command Line** option instead of the **PowerShell** option to run the commands in this walk-through, make sure to run the commands from the **Deployment and Imaging Tools Environment** command prompt. The **Deployment and Imaging Tools Environment** command prompt can be found in the Start Menu under **Windows Kits** > **Deployment and Imaging Tools Environment**.

    The paths in this article assume the Windows ADK was installed to the default location of `C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit`. If the Windows ADK was installed to a different location, then adjust the paths during the walk-through accordingly.

1. Download and install the **Windows PE add-on for the Windows ADK** from [Download and install the Windows ADK](/windows-hardware/get-started/adk-install). The **Windows PE add-on for the Windows ADK** is a separate download and install from the **Windows Assessment and Deployment Kit (Windows ADK)**. Make sure to individually download and install both.

> [!IMPORTANT]
>
> It's strongly recommended to download and install the latest version of the Windows ADK and the Windows PE add-on for the Windows ADK.
>
> However, the Microsoft Deployment Toolkit (MDT) doesn't support versions of Windows or the Windows ADK beyond Windows 10. If using MDT, the recommendation is to instead use the [ADK for Windows 10, version 2004](/windows-hardware/get-started/adk-install#other-adk-downloads). This version was the last version of the Windows ADK supported by MDT.
>
> Additionally, the latest versions of the **Windows PE add-on for the Windows ADK** only includes 64-bit boot images. If a 32-bit boot image is required, then the recommendation in this scenario is to also use the [ADK for Windows 10, version 2004](/windows-hardware/get-started/adk-install#other-adk-downloads). This version of the Windows ADK was the last version to include both 32-bit and 64-bit boot images.

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

Before modifying the desired boot image, make a backup copy of the boot image that needs to be updated. For example:

- For the 64-bit boot image included with the **Windows PE add-on for the Windows ADK**, the boot image is located at `C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim`.

- For the default 64-bit boot image that is generated by **Microsoft Configuration Manager**, the boot image is located at `<ConfigMgr_Install_Directory>\OSD\boot\x64\boot.wim`. However, for **Microsoft Configuration Manager** it's recommended to modify the `winpe.wim` boot image included with the **Windows PE add-on for the Windows ADK**. For more information, see [Microsoft Configuration Manager considerations](#microsoft-configuration-manager-considerations).

- For the default 64-bit boot image that is generated by the **Microsoft Deployment Toolkit (MDT)**, the boot image is located at `<Deployment_Share>\Boot\LiteTouchPE_x64.wim`. However, for **Microsoft Deployment Toolkit (MDT)** it's recommended to modify the `winpe.wim` boot image included with the **Windows PE add-on for the Windows ADK**. For more information, see [Microsoft Deployment Toolkit (MDT) considerations](#microsoft-deployment-toolkit-mdt-considerations).

- For 64-bit boot images in **Windows Deployment Services (WDS)**, the boot images are located at `<RemoteInstall>\Boot\x64\Images`.

Adjust the above paths for 32-bit boot images (only available in Windows 10 ADKs).

## Step 4: Mount boot image to mount folder

1. Create a new empty empty folder to mount the boot image to. For example, `C:\Mount`.

1. Mount the boot image to the mount folder using one of the following methods:

    ### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

    From an elevated **PowerShell** command prompt, run the following command to mount the boot image to the mount folder:

    ```powershell
    Mount-WindowsImage -Path "<Mount_folder_path>" -ImagePath "<Boot_image_path>\<boot_image>.wim" -Index 1 -Verbose
    ```

    **Example**:

    `Mount-WindowsImage -Path "C:\Mount" -ImagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim" -Index 1 -Verbose`

    For more information, see [Mount-WindowsImage](/powershell/module/dism/mount-windowsimage).

    ### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to mount the boot image to the mount folder:

    ```cmd
    DISM.exe /Mount-image /imagefile:"<Boot_image_path>" /Index:1 /MountDir:"<Mount_folder_path>"
    ```

    Example:

    **DISM.exe /Mount-image /imagefile:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim" /Index:1 /MountDir:"C:\Mount"**

    For more information, see [Modify a Windows image using DISM: Mount an image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism) and [DISM Image Management Command-Line Options: /Mount-Image](/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14#mount-image).

  ---

## Step 5: Add drivers to boot image

If needed, add any drivers to the boot image:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

From an elevated **PowerShell** command prompt, run the following command to add drivers to the boot image:

```powershell
Add-WindowsDriver -Path "<Mount_folder_path>" -Driver "<Driver_INF_source_path>\<driver>.inf"

# Example:

# Add-WindowsDriver -Path "C:\Mount" -Driver "C:\Drivers\driver.inf"
```

or

```powershell
Add-WindowsDriver -Path "<Mount_folder_path>" -Driver "<Drivers_source_path>" -Recurse
```

**Example**:

Add-WindowsDriver -Path "C:\Mount" -Driver "C:\Drivers\" -Recurse


### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

From an elevated **Deployment and Imaging Tools Environment** command prompt, run one of the following command to add drivers to the boot image:

```cmd
DISM.exe /Image:"<Mount_folder_path>" /Add-Driver /Driver:"<Driver_INF_source_path>\<driver>.inf"
```

or

```cmd
DISM.exe /Image:"<Mount_folder_path>" /Add-Driver /Driver:"<Drivers_source_path>" /Recurse
```

For more information, see [Add and Remove Driver packages to an offline Windows Image](/windows-hardware/manufacture/desktop/add-and-remove-drivers-to-an-offline-windows-image)

---

Drivers are not affected by the cumulative update installed later in this walkthrough. Once a driver is added to a boot image, it does not need to be added again if a newer cumulative update is applied to the boot image at a later point in time.

> [!TIP]
>
> A full set of drivers is not needed in Windows PE boot images. Only a small subset of drivers is needed that provide basic functionality while in WinPE. In most cases, no drivers need to be added to an out of box Windows ADK boot image since it already has many drivers built in. Don't add drivers to a boot image until it is verified that they are needed. When drivers do need to be added, generally only network (NIC) drivers are needed. Occasionally, mass storage (disk) may also be needed. Some Surface devices may also need keyboard and mouse drivers.

> [!IMPORTANT]
>
> For Microsoft Configuration Manager and Microsoft Deployment Toolkit (MDT) boot images, don't manually add drivers to the boot image using the above steps. Instead, add drivers to the boot images via Microsoft Configuration Manager or Microsoft Deployment Toolkit (MDT):
>
> - In Configuration Manager, via the **Drivers** tab in the **Properties** of the boot image.
> - In Microsoft Deployment Toolkit (MDT), via the **Drivers and Patches** tab under the **Windows PE** tab in the **Properties** of the deployment share.
>
> This will ensure that the drivers in the boot image can be properly managed through Configuration Manager or Microsoft Deployment Toolkit (MDT).

## Step 6: Add optional components to boot image

1. Add any desired optional components to the boot image:

    ### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

    From an elevated **PowerShell** command prompt, run the following command to add optional components to the boot image:

    ```powershell
    Add-WindowsPackage -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\<Component>.cab" -Path "<Mount_folder_path>" -Verbose
    ```

    **Example**:

    ```powershell
    Add-WindowsPackage -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-WMI.cab" -Path "C:\Mount" -Verbose
    ```

    This example assumes an x64 boot image. If a different architecture is being used, then adjust the commands accordingly.

    For more information, see [Add-WindowsPackage](/powershell/module/dism/add-windowspackage).

    ### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to add optional components to the boot image:

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

    From an elevated **PowerShell** command prompt, run the following command to add the language components for the optional components to the boot image:

    ```powershell
    Add-WindowsPackage -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\<Component>_en-us.cab" -Path "<Mount_folder_path>" -Verbose
    ```

    This example assumes a 64-bit boot image. If a different architecture is being used, then adjust the paths accordingly.

    ### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to add the language components for the optional components to the boot image:

    ```cmd
    DISM.exe /Image:"<Mount_folder_path>" /Add-Package /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\<Component>_en-us.cab" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\<Component2>_en-us.cab"
    ```

    This example assumes a 64-bit boot image. If a different architecture is being used, then adjust the paths accordingly.

    You can add as many desired optional components as needed on a single DISM.exe command line.

    ---

For a list of all available WinPE optional components including descriptions for each component, see [WinPE Optional Components](/windows-hardware/manufacture/desktop/winpe-add-packages--optional-components-reference#winpe-optional-components).

> [!IMPORTANT]
>
> When adding optional components, make sure to install optional components that are prerequisites of other optional components. Additionally, make sure that the prerequisite is installed first. For more information on adding optional components, see [WinPE Optional Components (OC) Reference: How to add Optional Components](/windows-hardware/manufacture/desktop/winpe-add-packages--optional-components-reference#how-to-add-optional-components).

> [!IMPORTANT]
>
> Both **Microsoft Configuration Manager** and **Microsoft Deployment Toolkit (MDT)** boot images require certain optional components to work properly. Make sure to add these required components when using either **Microsoft Configuration Manager** and **Microsoft Deployment Toolkit (MDT)**
>
> Additionally, when adding any optional component for either **Microsoft Configuration Manager** or **Microsoft Deployment Toolkit (MDT)** boot images, make sure to add the components manually using the above command lines instead of adding them through **Configuration Manager** or **MDT**. For more information, see [Microsoft Configuration Manager considerations](#microsoft-configuration-manager-considerations) or [Microsoft Deployment Toolkit (MDT) considerations](#microsoft-deployment-toolkit-mdt-considerations).

## Step 7: Add cumulative update (CU) to boot image

Apply the cumulative update (CU) downloaded earlier in the walkthrough to the boot image:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

From an elevated **PowerShell** command prompt, run the following command to add the cumulative update (CU) to the boot image:

```powershell
Add-WindowsPackage -PackagePath "<Path_to_CU_MSU_update>" -Path "<Mount_folder_path>" -Verbose
```

For more information, see [Add-WindowsPackage](/powershell/module/dism/add-windowspackage)

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to add the cumulative update (CU) to the boot image:

```cmd
DISM.exe /Image:"<Mount_folder_path>" /Add-Package /PackagePath:"<Path_to_CU_MSU_update>"
```

For more information, see [Add or Remove Packages Offline Using DISM](/windows-hardware/manufacture/desktop/add-or-remove-packages-offline-using-dism) and [DISM Operating System Package (.cab or .msu) Servicing Command-Line Options: /Add-Package](/windows-hardware/manufacture/desktop/dism-operating-system-package-servicing-command-line-options#add-package).

---

> [!IMPORTANT]
>
> Make sure not to apply the cumulative update (CU) until all desired optional components have been installed. This will make sure that the optional components are also properly updated by the cumulative update. If in the future any additional optional components need to be added to the boot image, make sure to reapply the cumulative update.

## Step 8: Copy boot files from mounted boot image to ADK installation path

Copy the updated bootmgr files from the updated boot image to the ADK installation path:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

From an elevated **PowerShell** command prompt, run the following command to copy the boot files from the mounted boot image to the ADK installation path:

```powershell
Copy-Item "<Mount_folder_path>\Windows\Boot\EFI\bootmgr.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\bootmgr.efi" -Force

Copy-Item "<Mount_folder_path>\Windows\Boot\EFI\bootmgfw.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\EFI\Boot\bootx64.efi" -Force
```

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to copy the boot files from the mounted boot image to the ADK installation path:

```cmd
Command to be determined
```

---

This step doesn't update or change the boot image. However, it makes sure that the latest bootmgr files are available to the ADK when creating bootable media. In particular, this step is needed when addressing the BlackLotus UEFI bootkit vulnerability as documented in [KB5025885: How to manage the Windows Boot Manager revocations for Secure Boot changes associated with CVE-2023-24932](https://prod.support.services.microsoft.com/topic/kb5025885-how-to-manage-the-windows-boot-manager-revocations-for-secure-boot-changes-associated-with-cve-2023-24932-41a975df-beb2-40c1-99a3-b3ff139f832d) and [CVE-2023-24932](https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-24932).

## Step 9: Perform component cleanup

Run **DISM.exe** commands that will clean up the mounted boot image and help reduce its size:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

From an elevated **PowerShell** command prompt, run the following command to clean up the mounted boot image and help reduce its size:

```powershell
Start-Process "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\amd64\DISM\dism.exe" -ArgumentList " /Image:"<Mount_folder_path>" /Cleanup-image /StartComponentCleanup /Resetbase /Defer" -Wait -LoadUserProfile

Start-Process "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\amd64\DISM\dism.exe" -ArgumentList " /Image:"<Mount_folder_path>" /Cleanup-image /StartComponentCleanup /Resetbase" -Wait -LoadUserProfile
```

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to clean up the mounted boot image and help reduce its size:

```cmd
DISM.exe /Image:"<Mount_folder_path>" /Cleanup-image /StartComponentCleanup /Resetbase /Defer

DISM.exe /Image:"<Mount_folder_path>" /Cleanup-image /StartComponentCleanup /Resetbase
```

For more information, see [Modify a Windows image using DISM: Reduce the size of an image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism#reduce-the-size-of-an-image) and [DISM Operating System Package (.cab or .msu) Servicing Command-Line Options: /Cleanup-Image](/windows-hardware/manufacture/desktop/dism-operating-system-package-servicing-command-line-options#cleanup-image).

---

## Step 10: Verify all desired packages have been added to boot image

After the optional components and the cumulative update (CU) have been applied to the boot image, verify that they are showing as installed:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

From an elevated **PowerShell** command prompt, run the following command to verify that all optional components and the cumulative update (CU) have been applied to the boot image:

```powershell
Get-WindowsPackage -Path "<Mount_folder_path>"
```

For more information, see [Get-WindowsPackage](/powershell/module/dism/get-windowspackage).

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to verify that all optional components and the cumulative update (CU) have been applied to the boot image:

```cmd
DISM.exe /Image:"<Mount_folder_path>" /Get-Packages
```

For more information, see [DISM Operating System Package (.cab or .msu) Servicing Command-Line Options: /Get-Packages](/windows-hardware/manufacture/desktop/dism-operating-system-package-servicing-command-line-options#get-packages).

---

## Step 11: Unmount boot image and save changes

Once drivers, optional components, and the cumulative update (CU) have been applied to the boot image, unmount the boot image and save changes.

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

From an elevated **PowerShell** command prompt, run the following command to unmount the boot image and save changes:

```powershell
Dismount-WindowsImage -Path "<Mount_folder_path>" -Save -Verbose
```

For more information, see [Dismount-WindowsImage](/powershell/module/dism/dismount-windowsimage).

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to unmount the boot image and save changes:

```cmd
DISM.exe /Unmount-Image /MountDir:"<Mount_folder_path>" /Commit
```

For more information, see [Modify a Windows image using DISM: Unmounting an image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism#unmounting-an-image) and [DISM Image Management Command-Line Options: /Unmount-Image](/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14#unmount-image).

---

## Step 12: Export boot image to reduce size

1. Once the boot image has been unmounted and saved, its size can be further reduced by exporting it:

    ### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

    From an elevated **PowerShell** command prompt, run the following command to further reduce the size of the boot image by exporting it:

    ```powershell
    Export-WindowsImage -SourceImagePath "<Boot_image_path>\<boot_image>.wim" -SourceIndex 1 -DestinationImagePath "<Boot_image_path>\<boot_image>-export.wim" -CompressionType max -Verbose
    ```

    For more information, see [Export-WindowsImage](/powershell/module/dism/export-windowsimage).

    ### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to further reduce the size of the boot image by exporting it:

    ```cmd
    DISM.exe /Export-Image /SourceImageFile:"<Boot_image_path>\<boot_image>.wim" /SourceIndex:1 /DestinationImageFile:"<Boot_image_path>\<boot_image>-export.wim"
    ```

    For more information, see [Modify a Windows image using DISM: Reduce the size of an image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism#reduce-the-size-of-an-image) and [DISM Image Management Command-Line Options: /Export-Image](/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14#export-image).

    ---

1. Once the export has completed:
  
    1. Delete the original updated boot image.
    1. Rename the exported boot image with the name of the original updated boot image.

## Microsoft Configuration Manager considerations

### How Microsoft Configuration Manager creates boot images

Microsoft Configuration Manager creates its own boot images by taking the `winpe.wim` from the Windows ADK, adding some [optional components it requires](#configuration-manager-boot-image-required-components) to function correctly, and then saving the boot image as `boot.wim` in the directory `<ConfigMgr_Install_Directory>\OSD\boot\<architecture>\boot.wim`. This `boot.wim` boot image is considered the pristine authoritative copy of the boot image by Configuration Manager and is never touched, modified, or updated by Configuration Manager except in some very specific scenarios. Instead, when changes such as:

- Adding drivers
- Adding optional components
- Enabling the command prompt

are done in the properties of the boot image in Configuration Manager, Configuration Manager makes a copy of `boot.wim`, applies the changes to the copy, and then saves the new boot image as `boot.<package_id>.wim`. If any additional changes are done to the boot image, Configuration Manager discards the previously created `boot.<package_id>.wim` boot image, makes a new copy of `boot.wim`, applies the changes to the copy, and then saves the new boot image as `boot.<package_id>.wim`. In other words, `boot.wim` is never touched. Any time any changes are made to a boot image, both the new changes and any changes done in the past are all reapplied to a new copy of `boot.wim`.

This process makes has the following advantages:

1. Keeps `boot.wim` pristine.

1. Makes sure that when changes are made to a boot image, they are being done to a copy of a pristine version of the boot image that hasn't had been modified in the past. This helps avoid corruption and/or corrects issues with existing boot images.

1. Helps manage components in the boot image. The process doesn't need to know what components it might need to remove from the boot image each time the boot image is rebuilt. Instead, it just needs to know what components to add to the boot image.

1. Reduces the size of the boot image that can occur when components are removed from the boot image.

There are two scenarios when the `boot.wim` boot image is updated by Configuration Manager:

1. When upgrading between versions of Configuration Manager or when applying hotfix roll ups (HFRUs) to Configuration Manager, `boot.wim` may be updated as part of the upgrade process.

1. When selecting the option **Reload this boot image with the current Windows PE version from the Windows ADK** in the **Update Distribution Points Wizard**.

In theses scenarios, the `boot.wim` boot image is updated using the `winpe.wim` boot image from the Windows ADK as described earlier in this section. This process creates a new pristine copy of the `boot.wim` boot image using the current version of the `winpe.wim` boot image that is part of the Windows ADK.

### Which boot image should be updated with the cumulative update?

When adding a cumulative update to a Configuration Manager boot image, it's recommended to update the `winpe.wim` boot image from the Windows ADK. After updating the `winpe.wim` boot image from the Windows ADK, generate a new `boot.wim` boot image for Configuration Manager by using the following steps:

1. Open the Microsoft Configuration manager console.

1. In the Microsoft Configuration manager console, navigate to **Software Library** > **Overview** > **Operating Systems** > **Boot Images**.

1. In the **Boot Images** pane, select the desired boot image.

1. In the toolbar, select **Update Distribution Points**.

1. In the **Update Distribution Points Wizard** window that appears:

    1. In the **General**/**Update distribution points with this image** page, select the **Reload this boot image with the current Windows PE version from the Windows ADK** option, and then select the **Next >** button.

    1. In the **Summary** page, select the **Next >** button.

    1. The **Progress** page will appears while the boot image builds.

    1. Once the boot image finishes building, the **Completion**/**The task "Update Distribution Points Wizard" completed successfully** page will appear. Select the **Close** button.

When using Configuration Manager, the `winpe.wim` boot image from the Windows ADK should be updated instead of the `boot.wim` from Configuration Manager because:

1. If `boot.wim` is updated, then the next time `boot.wim` is updated via a Configuration Manager upgrade or the **Reload this boot image with the current Windows PE version from the Windows ADK** option, the changes made to `boot.wim` including the cumulative updates applied will be lost. If the `winpe.wim` boot image from the Windows ADK is updated instead, then the changes to the boot image including the cumulative updates applied will persist and be preserved.

1. If `boot.<package_id>.wim` is updated, then it will not only face the issues when `boot.wim` is updated, but it will also lose any changes, including the cumulative update, when any changes are done to the boot image (e.g. adding drivers, enabling the command prompt, etc.). Additionally, it will change the hash value of the boot image which can lead to download failures when downloading the boot image from a distribution point.

By updating `winpe.wim` from the Windows ADK, this will ensure that the cumulative update will stay applied regardless of what changes are made to the boot image via Configuration Manager.

### Configuration Manager boot image required components

The following components are required by Microsoft Configuration Manager boot images for Configuration Manager to function correctly:

| Feature | File Name | Dependance |
|---------|-----------|------------|
| Scripting/WinPE-Scripting | `WinPE-Scripting.cab` | NA |
| Network/WinPE-WDS-Tools | `WinPE-WDS-Tools.cab` | NA |
| Scripting/WinPE-WMI | `WinPE-WMI.cab` | NA |
| Startup/WinPE-SecureStartup | `WinPE-SecureStartup.cab` | Scripting/WinPE-WMI (`WinPE-WMI.cab`) |

When adding optional components to any boot image used by Configuration Manager during the [Step 6: Add optional components to boot image](#step-6-add-optional-components-to-boot-image) step, make sure to add the above components in the above order to the boot image.

After adding the required components to the boot image, any additional optional components can also be added to the boot image.

### Add optional components manually

For Microsoft Configuration Manager boot images, when applying a cumulative update to a boot image, make sure to add any desired optional components manually using the above command lines instead of adding them through Configuration Manager via the **Optional Components** tab in the **Properties** of the boot image. Optional components need to be added to the boot image manually instead of via Configuration Manager because:

- When the cumulative update is applied, it will also update any optional components as needed.
- If the optional components are instead added through Configuration Manager after a cumulative update has been applied to the boot image, then the optional components will not be updated with the cumulative update. This could lead to unexpected behaviors and problems.

Once any optional components has been manually added to a boot image, if that optional component is attempted to be added via the **Optional Components** tab in the **Properties** of the boot image in Configuration Manager, Configuration Manager will detect that the optional component has already been added and it will not try to add the optional component again.

## Microsoft Deployment Toolkit (MDT) considerations

Copy boot files

since the Microsoft Deployment Toolkit (MDT) doesn't support versions of Windows or the Windows ADK beyond Windows 10, the recommendation is to instead use the [ADK for Windows 10, version 2004](/windows-hardware/get-started/adk-install#other-adk-downloads). This version was the last version of the Windows ADK supported by MDT.

## Windows Deployment Services (WDS) considerations

The **boot.wim** that is part of Windows installation media isn't supported for deploying Windows 11 with Windows Deployment Services (WDS). Additionally, the **boot.wim** from Windows 11 installation media isn't supported for deploying any version of Windows with Windows Deployment Services (WDS). For more information, see [Windows Deployment Services (WDS) boot.wim support](wds-boot-support.md).

## Windows Server 2012 R2

This walk-through isn't intended for use with Windows Server 2012 R2. There may be additional steps necessary when using Windows Server 2012 R2, such as also having to apply the latest servicing stack update (SSU) to the WinPE boot image. For server OSes, it's strongly recommended to use Windows Server 2016 or later for this walk-through. For more information see, [Windows Server 2012 R2 Lifecycle](/lifecycle/products/windows-server-2012-r2).
