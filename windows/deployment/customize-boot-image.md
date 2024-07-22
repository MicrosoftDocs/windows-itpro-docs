---
title: Customize Windows PE boot images
description: This article describes how to customize a Windows PE (WinPE) boot image including updating it with the latest cumulative update, adding drivers, and adding optional components.
ms.service: windows-client
ms.localizationpriority: medium
author: frankroj
manager: aaroncz
ms.author: frankroj
ms.topic: conceptual
ms.date: 05/09/2024
ms.subservice: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2022</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2019</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016</a>
---

# Customize Windows PE boot images

<!-- 7894697 -->

The Windows PE (WinPE) boot images that are included with the Windows ADK have a minimal number of features and drivers. However the boot images can be customized by adding drivers, optional components, and applying the latest cumulative update.

Microsoft recommends updating Windows PE boot images with the latest cumulative update for maximum security and protection. The latest cumulative updates may also resolve known issues. For example, the Windows PE boot image can be updated with the latest cumulative update to address the BlackLotus UEFI bootkit vulnerability as documented in [KB5025885: How to manage the Windows Boot Manager revocations for Secure Boot changes associated with CVE-2023-24932](https://prod.support.services.microsoft.com/topic/kb5025885-how-to-manage-the-windows-boot-manager-revocations-for-secure-boot-changes-associated-with-cve-2023-24932-41a975df-beb2-40c1-99a3-b3ff139f832d) and [CVE-2023-24932](https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-24932).

This walkthrough describes how to customize a Windows PE boot image including updating with the latest cumulative update, adding drivers, and adding optional components. Additionally this walkthrough goes over how customizations in boot images affect several different popular products that utilize boot images, such as Microsoft Configuration Manager, Microsoft Deployment Toolkit (MDT), and Windows Deployment Services (WDS).

## Prerequisites

- [Windows Assessment and Deployment Kit (Windows ADK)](/windows-hardware/get-started/adk-install) - It's recommended to use the latest version of the ADK.
- [Windows PE add-on for the Windows ADK](/windows-hardware/get-started/adk-install). Make sure the version of Windows PE matches the version of Windows ADK that is being used.
- Windows PE boot image.
- Latest cumulative update downloaded from the [Microsoft Update Catalog](https://catalog.update.microsoft.com/) site.

## Steps

- [Step 1: Download and install ADK](#step-1-download-and-install-adk)
- [Step 2: Download cumulative update (CU)](#step-2-download-cumulative-update-cu)
- [Step 3: Backup existing boot image](#step-3-backup-existing-boot-image)
- [Step 4: Mount boot image to mount folder](#step-4-mount-boot-image-to-mount-folder)
- [Step 5: Add drivers to boot image (optional)](#step-5-add-drivers-to-boot-image-optional)
- [Step 6: Add optional components to boot image](#step-6-add-optional-components-to-boot-image)
- [Step 7: Add cumulative update (CU) to boot image](#step-7-add-cumulative-update-cu-to-boot-image)
- [Step 8: Copy boot files from mounted boot image to ADK installation path](#step-8-copy-boot-files-from-mounted-boot-image-to-adk-installation-path)
- [Step 9: Perform component cleanup](#step-9-perform-component-cleanup)
- [Step 10: Verify all desired packages have been added to boot image](#step-10-verify-all-desired-packages-have-been-added-to-boot-image)
- [Step 11: Unmount boot image and save changes](#step-11-unmount-boot-image-and-save-changes)
- [Step 12: Export boot image to reduce size](#step-12-export-boot-image-to-reduce-size)
- [Step 13: Update boot images in products that utilize the boot images (optional)](#step-13-update-boot-image-in-products-that-utilize-it-if-applicable)

## Step 1: Download and install ADK

1. Download and install the **Windows Assessment and Deployment Kit (Windows ADK)** from [Download and install the Windows ADK](/windows-hardware/get-started/adk-install).

    For this walk-through, when the Windows ADK is installed, it's only necessary to install the **Deployment Tools**. Other products, such as Microsoft Configuration Manager and Microsoft Deployment Toolkit (MDT), may require additional features installed, such as the **User State Migration Tool (USMT)**.

    One of the tools installed when installing the **Deployment Tools** feature is the **Deployment and Imaging Tools Environment** command prompt. When using the **Command Line** option to run the commands in this walk-through, make sure to run the commands from an elevated **Deployment and Imaging Tools Environment** command prompt. The **Deployment and Imaging Tools Environment** command prompt can be found in the Start Menu under **Windows Kits** > **Deployment and Imaging Tools Environment**.

    The paths in this article assume the Windows ADK was installed at the default location of `C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit`. If the Windows ADK was installed in a different location, then adjust the paths during the walk-through accordingly.

1. Download and install the **Windows PE add-on for the Windows ADK** from [Download and install the Windows ADK](/windows-hardware/get-started/adk-install). The **Windows PE add-on for the Windows ADK** is a separate download and install from the **Windows Assessment and Deployment Kit (Windows ADK)**. Make sure to individually download and install both.

> [!IMPORTANT]
>
> It's strongly recommended to download and install the latest version of the Windows ADK and the Windows PE add-on for the Windows ADK.
>
> In certain instances, older versions of the Windows ADK and Windows PE add-on may need to be used instead of the latest version. For example:
>
> - Microsoft Deployment Toolkit (MDT) doesn't support versions of Windows or the Windows ADK beyond Windows 10. If using MDT, the recommendation is to instead use the [ADK for Windows 10, version 2004](/windows-hardware/get-started/adk-install#other-adk-downloads). This version was the last version of the Windows ADK supported by MDT.
>
> - The latest versions of the **Windows PE add-on for the Windows ADK** only includes a 64-bit boot image. If a 32-bit boot image is required, then the recommendation in this scenario is to also use the [ADK for Windows 10, version 2004](/windows-hardware/get-started/adk-install#other-adk-downloads). This version of the Windows ADK was the last version to include both 32-bit and 64-bit boot images.

## Step 2: Download cumulative update (CU)

1. Go to the [Microsoft Update Catalog](https://catalog.update.microsoft.com/) site and search for the latest cumulative update. The Windows version of the cumulative update should match the version of the Windows PE boot image that is being updated.

1. When searching the [Microsoft Update Catalog](https://catalog.update.microsoft.com/) site, use the search term `"<year>-<month> cumulative update for windows <x>"` where `year` is the four-digit current year, `<month>` is the two-digit current month, and `<x>` is the version of Windows that Windows PE is based on. Make sure to include the quotes (`"`). For example, to search for the latest cumulative update for Windows 11 in August 2023, use the search term `"2023-08 cumulative update for Windows 11"`, again making sure to include the quotes. If the cumulative update hasn't been released yet for the current month, then search for the previous month.

1. Once the cumulative update has been found, download the appropriate version for the version and architecture of Windows that matches the Windows PE boot image. For example, if the version of the Windows PE boot image is Windows 11 22H2 64-bit, then download the **Cumulative Update for Windows 11 Version 22H2 for x64-based Systems** version of the update.

1. Store the downloaded cumulative update in a known location for later use, for example `C:\Updates`.

> [!TIP]
>
> It is recommended to use the full cumulative update when updating boot images with a cumulative update. However, instead of downloading the full cumulative update, the cumulative update for SafeOS can be downloaded and used instead. This will reduce the size of the final updated boot image. If any issues occur with a boot image updated with the SafeOS cumulative update, then use the full cumulative update instead.

> [!NOTE]
>
> - When updating the boot image in the [ADK 10.1.25398.1 (September 2023)](/windows-hardware/get-started/adk-install#download-the-adk-101253981-september-2023), download the **Cumulative Update for Microsoft server operating system version 23H2 for x64-based Systems**.
> - When updating the boot image in the [ADK for Windows 10, version 2004](/windows-hardware/get-started/adk-install#other-adk-downloads), download the **Cumulative Update for Windows 10 Version 22H2**.

## Step 3: Backup existing boot image

Before modifying the desired boot image, make a backup copy of the boot image that needs to be updated. For example:

- For the 64-bit boot image included with the **Windows PE add-on for the Windows ADK**, the boot image is located at `C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim`.

- For the default 64-bit boot image that is generated by **Microsoft Configuration Manager**, the boot image is located at `<ConfigMgr_Install_Directory>\OSD\boot\x64\boot.wim`. For other boot images in Configuration Manager, the path to the boot image is displayed in the **Image path:** field under the **Data Source** tab in the **Properties** of the boot image.

    However, for **Microsoft Configuration Manager** it's recommended to instead modify the `winpe.wim` boot image included with the **Windows PE add-on for the Windows ADK**. For more information, see [Microsoft Configuration Manager considerations](#microsoft-configuration-manager-considerations).

- For the default 64-bit boot image that is generated by the **Microsoft Deployment Toolkit (MDT)**, the boot image is located at `<Deployment_Share>\Boot\LiteTouchPE_x64.wim`.

    However, for **Microsoft Deployment Toolkit (MDT)** it's recommended to instead modify the `winpe.wim` boot image included with the **Windows PE add-on for the Windows ADK**. For more information, see [Microsoft Deployment Toolkit (MDT) considerations](#microsoft-deployment-toolkit-mdt-considerations).

- For 64-bit boot images in **Windows Deployment Services (WDS)**, the boot images are located at `<RemoteInstall>\Boot\x64\Images`.

Adjust the above paths for 32-bit boot images (only available with Windows 10 ADKs).

The following command backs up the 64-bit boot image included with the **Windows PE add-on for the Windows ADK**:
### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

From an elevated **PowerShell** command prompt, run the following command to create a backup copy of the 64-bit boot image included with the Windows ADK. If a backed-up boot image already exists, this command needs confirmation before it overwrites the existing backed up boot image:

```powershell
Copy-Item "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.bak.wim"
```

Adjust paths and file names accordingly to back up other boot images.

To automatically overwrite an existing backed up boot image without confirmation, for example in a script, add the `-Force` parameter to the end of the command line.

For more information, see [Copy-Item](/powershell/module/microsoft.powershell.management/copy-item).

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

From an elevated command prompt, run the following command to create a backup copy of the 64-bit boot image included with the Windows ADK. If a backed-up boot image already exists, this command needs confirmation before it overwrites the existing backed up boot image:

```cmd
copy "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.bak.wim"
```

Adjust paths and file names accordingly to back up other boot images.

To automatically overwrite an existing backed up boot image without confirmation, for example in a script, add the `/Y` parameter to the end of the command line.

For more information, see [copy](/windows-server/administration/windows-commands/copy).

---

> [!IMPORTANT]
>
> When using the default `winpe.wim` boot image from the **Windows PE add-on for the Windows ADK**, it's recommended to always have a backed up copy of the original unmodified boot image. This allows reverting back to the pristine untouched original boot image in case any issues occur with any iteration of an updated boot image. Additionally, whenever a new cumulative update needs to be applied to a boot image, it's recommended to always start fresh and update from the original boot image with no updates instead of updating a previously updated boot image.

## Step 4: Mount boot image to mount folder

1. Create a new empty folder to mount the boot image to. For example, `C:\Mount`. If using a previously created mount folder, ensure that it's empty and doesn't have any previously mounted images in it.

1. Mount the boot image to the mount folder using one of the following methods:

    ### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

    From an elevated **PowerShell** command prompt, run the following command to mount the boot image to the mount folder:

    ```powershell
    Mount-WindowsImage -Path "<Mount_folder_path>" -ImagePath "<Boot_image_path>\<boot_image>.wim" -Index 1 -Verbose
    ```

    **Example**:

    ```powershell
    Mount-WindowsImage -Path "C:\Mount" -ImagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim" -Index 1 -Verbose
    ```

    For more information, see [Mount-WindowsImage](/powershell/module/dism/mount-windowsimage).

    ### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to mount the boot image to the mount folder:

    ```cmd
    DISM.exe /Mount-image /imagefile:"<Boot_image_path>" /Index:1 /MountDir:"<Mount_folder_path>"
    ```

    Example:

    ```cmd
    DISM.exe /Mount-image /imagefile:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim" /Index:1 /MountDir:"C:\Mount"
    ```

    For more information, see [Modify a Windows image using DISM: Mount an image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism) and [DISM Image Management Command-Line Options: /Mount-Image](/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14#mount-image).

  ---

## Step 5: Add drivers to boot image (optional)

If needed, add any drivers to the boot image:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

From an elevated **PowerShell** command prompt, run one of the following commands to add drivers to the boot image:

```powershell
Add-WindowsDriver -Path "<Mount_folder_path>" -Driver "<Driver_INF_source_path>\<driver>.inf"
```

or

```powershell
Add-WindowsDriver -Path "<Mount_folder_path>" -Driver "<Drivers_source_path>" -Recurse
```

**Examples**:

```powershell
Add-WindowsDriver -Path "C:\Mount" -Driver "C:\Drivers\driver.inf"
```

or

```powershell
Add-WindowsDriver -Path "C:\Mount" -Driver "C:\Drivers" -Recurse
```

For more information, see [Add-WindowsDriver](/powershell/module/dism/add-windowsdriver).

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

From an elevated **Deployment and Imaging Tools Environment** command prompt, run one of the following commands to add drivers to the boot image:

```cmd
DISM.exe /Image:"<Mount_folder_path>" /Add-Driver /Driver:"<Driver_INF_source_path>\<driver>.inf"
```

or

```cmd
DISM.exe /Image:"<Mount_folder_path>" /Add-Driver /Driver:"<Drivers_source_path>" /Recurse
```

**Examples**:

```cmd
DISM.exe /Image:"C:\Mount" /Add-Driver /Driver:"C:\Drivers\driver.inf"
```

or

```cmd
DISM.exe /Image:"C:\Mount" /Add-Driver /Driver:"C:\Drivers" /Recurse
```

For more information, see [Add and Remove Driver packages to an offline Windows Image](/windows-hardware/manufacture/desktop/add-and-remove-drivers-to-an-offline-windows-image)

---

The cumulative update installed later in this walkthrough doesn't affect drivers. Once a driver is added to a boot image, it doesn't need to be added again if a newer cumulative update is applied to the boot image.

> [!TIP]
>
> A full set of drivers is not needed in Windows PE boot images. Only a small subset of drivers is needed that provides basic functionality while in WinPE. In most cases, no drivers need to be added to an out-of-box Windows ADK boot image since it already has many drivers built in. Don't add drivers to a boot image until it is verified that they are needed. When drivers do need to be added, generally only network (NIC) drivers are needed. Occasionally, mass storage (disk) may also be needed. Some Surface devices may also need keyboard and mouse drivers.

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
    Add-WindowsPackage -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-Scripting.cab" -Path "C:\Mount" -Verbose
    ```

    These examples assume a 64-bit boot image. If a different architecture is being used, then adjust the paths in the commands accordingly.

    For more information, see [Add-WindowsPackage](/powershell/module/dism/add-windowspackage).

    ### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to add optional components to the boot image:

    ```cmd
    DISM.exe /Image:"<Mount_folder_path>" /Add-Package /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\<Component>.cab" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\<Component2>.cab"
    ```

    **Example**:

    ```cmd
    DISM.exe /Image:"C:\Mount" /Add-Package /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-Scripting.cab" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-WMI.cab" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-WDS-Tools.cab" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-SecureStartup.cab"
    ```

    These examples assume a 64-bit boot image. If a different architecture is being used, then adjust the paths in the commands accordingly.

    You can add as many desired optional components as needed on a single **DISM.exe** command line.

    For more information, see [Add or Remove Packages Offline Using DISM](/windows-hardware/manufacture/desktop/add-or-remove-packages-offline-using-dism) and [DISM Operating System Package (.cab or .msu) Servicing Command-Line Options: /Add-Package](/windows-hardware/manufacture/desktop/dism-operating-system-package-servicing-command-line-options#add-package).

    ---

1. After adding an optional component to the boot image, make sure to also add the language-specific component for that optional component.

    Not all optional components have the language-specific component. However, for optional components that do have a language-specific component, make sure that the language-specific component is installed.

    To check if an optional component has a language component, check the `C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\<Language>\` directory to see if there's a matching language component for that optional component.

    For example, to install the English United States (en-us) language component for an optional component, use the following command line:

    ### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

    From an elevated **PowerShell** command prompt, run the following command to add the language components for the optional components to the boot image:

    ```powershell
    Add-WindowsPackage -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\<Component>_en-us.cab" -Path "<Mount_folder_path>" -Verbose
    ```

    **Example**:

    ```powershell
     Add-WindowsPackage -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-Scripting_en-us.cab" -Path "C:\Mount" -Verbose   
    ```

    These examples assume a 64-bit boot image. If a different architecture is being used, then adjust the paths accordingly.

    For more information, see [Add-WindowsPackage](/powershell/module/dism/add-windowspackage).

    ### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to add the language components for the optional components to the boot image:

    ```cmd
    DISM.exe /Image:"<Mount_folder_path>" /Add-Package /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\<Component>_en-us.cab" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\<Component2>_en-us.cab"
    ```

    **Example**:

    ```cmd
    DISM.exe /Image:"C:\Mount" /Add-Package /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-Scripting_en-us.cab" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-WMI_en-us.cab" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-WDS-Tools_en-us.cab" /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-SecureStartup_en-us.cab"
    ```

    These examples assume a 64-bit boot image. If a different architecture is being used, then adjust the paths accordingly.

    You can add as many desired optional components as needed on a single DISM.exe command line.

    For more information, see [Add or Remove Packages Offline Using DISM](/windows-hardware/manufacture/desktop/add-or-remove-packages-offline-using-dism) and [DISM Operating System Package (.cab or .msu) Servicing Command-Line Options: /Add-Package](/windows-hardware/manufacture/desktop/dism-operating-system-package-servicing-command-line-options#add-package).

    ---

> [!IMPORTANT]
>
> When adding optional components, make sure to check if an optional component has a prerequisite for another optional component. When an optional component does have a prerequisite, make sure that the prerequisite component is installed first. For more information, see [WinPE Optional Components (OC) Reference: How to add Optional Components](/windows-hardware/manufacture/desktop/winpe-add-packages--optional-components-reference#how-to-add-optional-components).

> [!IMPORTANT]
>
> Cumulative updates always need to be applied or reapplied after adding optional components to the boot image. If additional optional components are added to a boot image after a cumulative update has been applied, then the cumulative update needs to be reapplied.

> [!IMPORTANT]
>
> Both **Microsoft Configuration Manager** and **Microsoft Deployment Toolkit (MDT)** boot images require certain optional components to work properly. Make sure to add these required components when using either **Microsoft Configuration Manager** and **Microsoft Deployment Toolkit (MDT)**. For more information, see [Configuration Manager boot image required components](#configuration-manager-boot-image-required-components) or [MDT boot image required components](#mdt-boot-image-required-components).
>
> Additionally, when adding any optional component for either **Microsoft Configuration Manager** or **Microsoft Deployment Toolkit (MDT)** boot images, make sure to manually add the optional components using this walkthrough instead of adding them through **Configuration Manager** or **MDT**. For more information and reasons why, see [Microsoft Configuration Manager considerations](#microsoft-configuration-manager-considerations) or [Microsoft Deployment Toolkit (MDT) considerations](#microsoft-deployment-toolkit-mdt-considerations).

### Popular optional components

The following list contains the more popular optional components that are commonly added to boot images:

| **Feature** | **File Name** | **Dependency** | **Purpose** | **Required by ConfigMgr** | **Required by MDT** |
| --- | --- | --- | --- | --- |
| Scripting/WinPE-Scripting | `WinPE-Scripting.cab` | NA | Supports running non-PowerShell scripts in WinPE | Yes | Yes |
| Network/WinPE-WDS-Tools | `WinPE-WDS-Tools.cab` | NA | Supports WDS in WinPE, including image capture and multicast | Yes | No |
| Scripting/WinPE-WMI | `WinPE-WMI.cab` | NA | Supports WMI and WMI scripting in WinPE | Yes | Yes |
| Startup/WinPE-SecureStartup | `WinPE-SecureStartup.cab` | Scripting/WinPE-WMI | Supports managing BitLocker and TPMs within WinPE | Yes | Yes|
| File management/WinPE-FMAPI | `WinPE-FMAPI.cab` | NA | Supports access to the Windows PE File Management API | No | Yes |
| Windows PowerShell/WinPE-PowerShell | `WinPE-PowerShell.cab` | Scripting/WinPE-Scripting <br> Scripting/WinPE-WMI <br> Microsoft .NET/WinPE-NetFx | Supports running PowerShell commands and scripts in WinPE | No | No |
| Microsoft .NET/WinPE-NetFx | `WinPE-NetFx.cab` | Scripting/WinPE-WMI | Supports .NET applications in WinPE | No | No |
| Network/WinPE-Dot3Svc | `WinPE-Dot3Svc.cab` | NA | Supports the 802.1X network protocol in WinPE | No | No |
| HTML/WinPE-HTA | `WinPE-HTA.cab` | Scripting/WinPE-WMI | Supports running HTML applications in WinPE | No | No |
| Database/WinPE-MDAC | `WinPE-MDAC.cab` | NA | Supports connecting to databases in WinPE | No | No |

For a full list of all available WinPE optional components including descriptions for each component, see [WinPE Optional Components (OC) Reference: WinPE Optional Components](/windows-hardware/manufacture/desktop/winpe-add-packages--optional-components-reference#winpe-optional-components).

## Step 7: Add cumulative update (CU) to boot image

Apply the cumulative update (CU) downloaded during the [Step 2: Download cumulative update (CU)](#step-2-download-cumulative-update-cu) step to the boot image:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

From an elevated **PowerShell** command prompt, run the following command to add the cumulative update (CU) to the boot image:

```powershell
Add-WindowsPackage -PackagePath "<Path_to_CU_MSU_update>\<CU>.msu" -Path "<Mount_folder_path>" -Verbose
```

**Example**:

```powershell
Add-WindowsPackage -PackagePath "C:\Updates\windows11.0-kb5029263-x64_4f5fe19bbec786f5e445d3e71bcdf234fe2cbbec.msu" -Path "C:\Mount" -Verbose
```

For more information, see [Add-WindowsPackage](/powershell/module/dism/add-windowspackage)

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to add the cumulative update (CU) to the boot image:

```cmd
DISM.exe /Image:"<Mount_folder_path>" /Add-Package /PackagePath:"<Path_to_CU_MSU_update>\<CU>.msu"
```

**Example**:

```cmd
DISM.exe /Image:"C:\Mount" /Add-Package /PackagePath:"C:\Updates\windows11.0-kb5029263-x64_4f5fe19bbec786f5e445d3e71bcdf234fe2cbbec.msu"
```

For more information, see [Add or Remove Packages Offline Using DISM](/windows-hardware/manufacture/desktop/add-or-remove-packages-offline-using-dism) and [DISM Operating System Package (.cab or .msu) Servicing Command-Line Options: /Add-Package](/windows-hardware/manufacture/desktop/dism-operating-system-package-servicing-command-line-options#add-package).

---

> [!IMPORTANT]
>
> Make sure not to apply the cumulative update (CU) until all desired optional components have been installed via the [Step 6: Add optional components to boot image](#step-6-add-optional-components-to-boot-image) step. Waiting to install the cumulative update (CU) until all optional components are installed makes sure that the optional components are also properly updated by the cumulative update. If in the future any additional optional components need to be added to the boot image, make sure to reapply the cumulative update.

### Servicing stack update (SSU) and error 0x800f0823

Sometimes when applying a cumulative update (CU) to a boot image, you may receive error `0x800f0823`:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

```powershell
VERBOSE: Target Image Version <WinPE version>
WARNING: Failed to add package <Cumulative_Update_Path>\<Cumulative_Update>.msu
WARNING: Add-WindowsPackage failed. Error code = 0x800f0823
Add-WindowsPackage : An error occurred applying the Unattend.xml file from the .msu package.
For more information, review the log file.
At line:1 char:1
+ Add-WindowsPackage -PackagePath "<Cumulative_Update_Path>\<Cumulative_Update> ...
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (:) [Add-WindowsPackage], COMException
    + FullyQualifiedErrorId : Microsoft.Dism.Commands.AddWindowsPackageCommand
```

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

```cmd
Error: 0x800f0823

Package <Cumulative_Update_Path>\<Cumulative_Update>.msu may have failed due to pending updates to servicing components in the image. Try the command again.
The DISM log file can be found at C:\Windows\Logs\DISM\dism.log
```

---

Inspecting the **DISM.log** reveals the following error:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

```powershell
Package "Package_for_RollupFix~<Cumulative_Update>" requires Servicing Stack v<Required_Servicing_Stack_Version> but current Servicing Stack is v<Current_Servicing_Stack_Version>. [HRESULT = 0x800f0823 - CBS_E_NEW_SERVICING_STACK_REQUIRED]
Failed to initialize internal package [HRESULT = 0x800f0823 - CBS_E_NEW_SERVICING_STACK_REQUIRED]
Failed to create internal package [HRESULT = 0x800f0823 - CBS_E_NEW_SERVICING_STACK_REQUIRED]
Failed to create windows update package [HRESULT = 0x800f0823 - CBS_E_NEW_SERVICING_STACK_REQUIRED]
DISM Package Manager: PID=<PID> TID=<TID> Failed opening package. - CDISMPackageManager::Internal_CreatePackageByPath(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> Failed to get the underlying CBS package. - CDISMPackageManager::OpenPackageByPath(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> The specified package cannot be added to this Windows Image due to a version mismatch. - GetCbsErrorMsg
DISM Package Manager: PID=<PID> TID=<TID> Failed to open package at location [<Temp_Path>\<Cumulative_Update>.cab]. - CPackageManagerUnattendHandler::Internal_ProcessPackageFromSource(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> Failed to install package from source [0] - trying next source location. hr = [0x800F0823] - CPackageManagerUnattendHandler::Internal_UnattendInstallPackage
DISM Package Manager: PID=<PID> TID=<TID> Failed to Install the package [Multiple_Packages~~~~0.0.0.0]. - CPackageManagerUnattendHandler::Internal_UnattendInstallPackage(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> Package failed to install [Multiple_Packages~~~~0.0.0.0]. - CPackageManagerUnattendHandler::Internal_UnattendProcessPackage(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> Failed to process package at node <package[1]>. - CPackageManagerUnattendHandler::Apply(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> Failed to Apply the unattend. - CDISMPackageManager::Apply(hr:0x800f0823)
DISM Unattend Manager: PID=<PID> TID=<TID> "Error applying unattend for provider: DISM Package Manager" - CUnattendManager::Apply(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> Failed applying the unattend file from the MSU package. - CMsuPackage::ApplyMsuUnattend(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> Failed to apply the MSU unattend file to the image. - CMsuPackage::Install(hr:0x800f0823)
API: PID=<PID> TID=<TID> Failed to install msu package <Path_to_CU_MSU_update>\<MSU_Cumulative_Update>.msu - CAddPackageCommandObject::InternalExecute(hr:0x800f0823)
API: PID=<PID> TID=<TID> InternalExecute failed - CBaseCommandObject::Execute(hr:0x800f0823)
API: PID=<PID> TID=<TID> CAddPackageCommandObject internal execution failed - DismAddPackageInternal(hr:0x800f0823)
```

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

```cmd
Package "Package_for_RollupFix~<Cumulative_Update>" requires Servicing Stack v<Required_Servicing_Stack_Version> but current Servicing Stack is v<Current_Servicing_Stack_Version>. [HRESULT = 0x800f0823 - CBS_E_NEW_SERVICING_STACK_REQUIRED]
Failed to initialize internal package [HRESULT = 0x800f0823 - CBS_E_NEW_SERVICING_STACK_REQUIRED]
Failed to create internal package [HRESULT = 0x800f0823 - CBS_E_NEW_SERVICING_STACK_REQUIRED]
Failed to create windows update package [HRESULT = 0x800f0823 - CBS_E_NEW_SERVICING_STACK_REQUIRED]
DISM Package Manager: PID=<PID> TID=<TID> Failed opening package. - CDISMPackageManager::Internal_CreatePackageByPath(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> Failed to get the underlying CBS package. - CDISMPackageManager::OpenPackageByPath(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> The specified package cannot be added to this Windows Image due to a version mismatch. - GetCbsErrorMsg
DISM Package Manager: PID=<PID> TID=<TID> Failed to open package at location [<Temp_Path>\<Cumulative_Update>.cab]. - CPackageManagerUnattendHandler::Internal_ProcessPackageFromSource(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> Failed to install package from source [0] - trying next source location. hr = [0x800F0823] - CPackageManagerUnattendHandler::Internal_UnattendInstallPackage
DISM Package Manager: PID=<PID> TID=<TID> Failed to Install the package [Multiple_Packages~~~~0.0.0.0]. - CPackageManagerUnattendHandler::Internal_UnattendInstallPackage(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> Package failed to install [Multiple_Packages~~~~0.0.0.0]. - CPackageManagerUnattendHandler::Internal_UnattendProcessPackage(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> Failed to process package at node <package[1]>. - CPackageManagerUnattendHandler::Apply(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> Failed to Apply the unattend. - CDISMPackageManager::Apply(hr:0x800f0823)
DISM Unattend Manager: PID=<PID> TID=<TID> "Error applying unattend for provider: DISM Package Manager" - CUnattendManager::Apply(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> Failed applying the unattend file from the MSU package. - CMsuPackage::ApplyMsuUnattend(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> Failed to apply the MSU unattend file to the image. - CMsuPackage::Install(hr:0x800f0823)
DISM Package Manager: PID=<PID> TID=<TID> Failed while processing command add-package. - CPackageManagerCLIHandler::ExecuteCmdLine(hr:0x800f0823)
```

---

The problem occurs when the WinPE boot image that is being serviced requires the installation of a servicing stack update (SSU) before installation of the cumulative update (CU) can occur. The problem usually occurs when using older Windows ADKs and older versions of Windows PE. The suggested fix is to upgrade to the latest version of the Windows ADK and Windows PE. The latest versions of the Windows ADK and Windows PE most likely don't need a servicing stack update (SSU) installed before installing the cumulative update (CU).

For scenarios where older versions of the Windows ADK and Windows PE need to be used, for example when using Microsoft Deployment Toolkit (MDT), the servicing stack update needs to be installed before installing the cumulative update. The servicing stack update (SSU) is contained within the cumulative update (CU). To obtain the servicing stack update (SSU) so that it can be applied, it can be extracted from the cumulative update (CU).

The following steps outline how to extract and then install the servicing stack update (SSU) to the boot image. Once the servicing stack update (SSU) has been installed in the boot image, then the cumulative update (CU) should install to the boot image without error:

> [!IMPORTANT]
>
> These steps are only necessary if the error `0x800f0823` occurs when installing the cumulative update (CU) to the boot image. If error `0x800f0823` didn't occur when installing the cumulative update (CU) to the boot image, then skip to the next step [Step 8: Copy boot files from mounted boot image to ADK installation path](#step-8-copy-boot-files-from-mounted-boot-image-to-adk-installation-path)

1. Create a folder to extract the servicing stack update (SSU) into. For example, `C:\Updates\Extract`:

1. Extract the contents of the cumulative update (CU) to the folder created in the previous step using the following command:

    ### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

    ```powershell
    Start-Process "expand.exe" -ArgumentList " -f:* `"<Cumulative_Update_Path>\<Cumulative_Update>.msu`" `"<Extract_Folder_Path>`"" -Wait -LoadUserProfile
    ```

    **Example**:

    ```powershell
    Start-Process "expand.exe" -ArgumentList " -f:* `"C:\Updates\windows10.0-kb5028166-x64_fe3aa2fef685c0e76e1f5d34d529624294273f41.msu`" `"C:\Updates\Extract`"" -Wait -LoadUserProfile
    ```

    For more information, see [Start-Process](/powershell/module/microsoft.powershell.management/start-process) and [expand](/windows-server/administration/windows-commands/expand).

    ### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    ```cmd
    expand.exe -f:* "<Cumulative_Update_Path>\<Cumulative_Update>.msu" "<Extract_Folder_Path>"
    ```

    **Example**:

    ```cmd
    expand.exe -f:* "C:\Updates\windows10.0-kb5028166-x64_fe3aa2fef685c0e76e1f5d34d529624294273f41.msu" "C:\Updates\Extract"
    ```

    For more information, see [expand](/windows-server/administration/windows-commands/expand).

    ---

1. Inspect the extracted files in the extract folder and identify the servicing stack update (SSU) CAB file. One of the files should be called `SSU-<Version>-<Arch>.cab`. For example, `SSU-19041.3205-x64.cab`. Make a note of the name of the servicing stack update (SSU) CAB file.

1. Using the name of the servicing stack update (SSU) CAB file obtained in the previous step, apply the servicing stack update (SSU) CAB file to the boot image using the following command:

    ### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

    From an elevated **PowerShell** command prompt, run the following command to add the cumulative update (CU) to the boot image:

    ```powershell
    Add-WindowsPackage -PackagePath "<Path_to_SSU_CAB_update>\<SSU>.cab" -Path "<Mount_folder_path>" -Verbose
    ```

    **Example**:

    ```powershell
    Add-WindowsPackage -PackagePath "C:\Updates\Extract\SSU-19041.3205-x64.cab" -Path "C:\Mount" -Verbose
    ```

    For more information, see [Add-WindowsPackage](/powershell/module/dism/add-windowspackage).

    ### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to add the cumulative update (CU) to the boot image:

    ```cmd
    DISM.exe /Image:"<Mount_folder_path>" /Add-Package /PackagePath:"<Path_to_SSU_CAB_update>\<SSU>.cab"
    ```

    **Example**:

    ```cmd
    DISM.exe /Image:"C:\Mount" /Add-Package /PackagePath:"C:\Updates\Extract\SSU-19041.3205-x64.cab"
    ```

    For more information, see [Add or Remove Packages Offline Using DISM](/windows-hardware/manufacture/desktop/add-or-remove-packages-offline-using-dism) and [DISM Operating System Package (.cab or .msu) Servicing Command-Line Options: /Add-Package](/windows-hardware/manufacture/desktop/dism-operating-system-package-servicing-command-line-options#add-package).

    ---

1. Attempt to apply the cumulative update (CU) to the boot image again using the commands from [Step 7: Add cumulative update (CU) to boot image](#step-7-add-cumulative-update-cu-to-boot-image).

## Step 8: Copy boot files from mounted boot image to ADK installation path

Some cumulative updates contain updated bootmgr boot files that are added to the boot image. After these bootmgr boot files have been updated in the boot image, it's recommended to copy these updated bootmgr boot files from the boot image back to the Windows ADK. Copying these files ensures that the Windows ADK has the updated bootmgr boot files.

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

From an elevated **PowerShell** command prompt, run the following commands to copy the updated bootmgr boot files from the mounted boot image to the ADK installation path. These commands also back up any existing bootmgr boot files its finds. When applicable, the commands need confirmation to overwrite any existing files:

```powershell
Copy-Item "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\bootmgr.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\bootmgr.bak.efi"

Copy-Item "<Mount_folder_path>\Windows\Boot\EFI\bootmgr.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\bootmgr.efi"

Copy-Item "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\EFI\Boot\bootx64.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\EFI\Boot\bootx64.bak.efi"

Copy-Item "<Mount_folder_path>\Windows\Boot\EFI\bootmgfw.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\EFI\Boot\bootx64.efi"
```

**Example**:

```powershell
Copy-Item "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\bootmgr.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\bootmgr.bak.efi"

Copy-Item "C:\Mount\Windows\Boot\EFI\bootmgr.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\bootmgr.efi"

Copy-Item "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\EFI\Boot\bootx64.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\EFI\Boot\bootx64.bak.efi"

Copy-Item "C:\Mount\Windows\Boot\EFI\bootmgfw.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\EFI\Boot\bootx64.efi"
```

To overwrite the bootmgr boot files and any backed up bootmgr boot file without confirmation, for example in a script, add the `-Force` parameter to the end of the command lines.

For more information, see [Copy-Item](/powershell/module/microsoft.powershell.management/copy-item).

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

From an elevated command prompt, run the following command to copy the updated bootmgr boot files from the mounted boot image to the ADK installation path. These commands also back up any existing bootmgr boot files it finds. When applicable, the commands need confirmation to overwrite any existing files:

```cmd
copy "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\bootmgr.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\bootmgr.bak.efi"

copy "<Mount_folder_path>\Windows\Boot\EFI\bootmgr.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\bootmgr.efi"

copy "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\EFI\Boot\bootx64.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\EFI\Boot\bootx64.bak.efi"

copy "<Mount_folder_path>\Windows\Boot\EFI\bootmgfw.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\EFI\Boot\bootx64.efi"
```

**Example**:

```cmd
copy "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\bootmgr.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\bootmgr.bak.efi"

copy "C:\Mount\Windows\Boot\EFI\bootmgr.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\bootmgr.efi"

copy "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\EFI\Boot\bootx64.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\EFI\Boot\bootx64.bak.efi"

copy "C:\Mount\Windows\Boot\EFI\bootmgfw.efi" "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\Media\EFI\Boot\bootx64.efi"
```

To overwrite the bootmgr boot files and any backed up bootmgr boot file without confirmation, for example in a script, add the `/Y` parameter to the end of the command lines.

For more information, see [copy](/windows-server/administration/windows-commands/copy).

---

This step doesn't update or change the boot image. However, it makes sure that the latest bootmgr boot files are available to the Windows ADK when creating bootable media via the Windows ADK. When these files are updated in the Windows ADK, products that use the Windows ADK to create bootable media, such as **Microsoft Deployment Toolkit (MDT)**, also have access to the updated bootmgr boot files.

In particular, this step is needed when addressing the BlackLotus UEFI bootkit vulnerability as documented in [KB5025885: How to manage the Windows Boot Manager revocations for Secure Boot changes associated with CVE-2023-24932](https://prod.support.services.microsoft.com/topic/kb5025885-how-to-manage-the-windows-boot-manager-revocations-for-secure-boot-changes-associated-with-cve-2023-24932-41a975df-beb2-40c1-99a3-b3ff139f832d) and [CVE-2023-24932](https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-24932).

> [!NOTE]
>
> **Microsoft Configuration Manager** and **Windows Deployment Services (WDS)** automatically extract the bootmgr boot files from the boot images when the boot images are updated in these products. They don't use the bootmgr boot files from the Windows ADK.

## Step 9: Perform component cleanup

Run **DISM.exe** commands that clean up the mounted boot image and help reduce its size:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

From an elevated **PowerShell** command prompt, run the following command to clean up the mounted boot image and help reduce its size:

```powershell
Start-Process "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\amd64\DISM\dism.exe" -ArgumentList " /Image:"<Mount_folder_path>" /Cleanup-image /StartComponentCleanup /Resetbase /Defer" -Wait -LoadUserProfile

Start-Process "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\amd64\DISM\dism.exe" -ArgumentList " /Image:"<Mount_folder_path>" /Cleanup-image /StartComponentCleanup /Resetbase" -Wait -LoadUserProfile
```

**Example**:

```powershell
Start-Process "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\amd64\DISM\dism.exe" -ArgumentList " /Image:`"C:\Mount`" /Cleanup-image /StartComponentCleanup /Resetbase /Defer" -Wait -LoadUserProfile

Start-Process "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\amd64\DISM\dism.exe" -ArgumentList " /Image:"C:\Mount" /Cleanup-image /StartComponentCleanup /Resetbase" -Wait -LoadUserProfile
```

For more information, see [Modify a Windows image using DISM: Reduce the size of an image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism#reduce-the-size-of-an-image), [DISM Operating System Package (.cab or .msu) Servicing Command-Line Options: /Cleanup-Image](/windows-hardware/manufacture/desktop/dism-operating-system-package-servicing-command-line-options#cleanup-image), and [Start-Process](/powershell/module/microsoft.powershell.management/start-process).

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to clean up the mounted boot image and help reduce its size:

```cmd
DISM.exe /Image:"<Mount_folder_path>" /Cleanup-image /StartComponentCleanup /Resetbase /Defer

DISM.exe /Image:"<Mount_folder_path>" /Cleanup-image /StartComponentCleanup /Resetbase
```

**Example**:

```cmd
DISM.exe /Image:"C:\Mount" /Cleanup-image /StartComponentCleanup /Resetbase /Defer

DISM.exe /Image:"C:\Mount" /Cleanup-image /StartComponentCleanup /Resetbase
```

For more information, see [Modify a Windows image using DISM: Reduce the size of an image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism#reduce-the-size-of-an-image) and [DISM Operating System Package (.cab or .msu) Servicing Command-Line Options: /Cleanup-Image](/windows-hardware/manufacture/desktop/dism-operating-system-package-servicing-command-line-options#cleanup-image).

---

## Step 10: Verify all desired packages have been added to boot image

After the optional components and the cumulative update (CU) have been applied to the boot image, verify that they're showing as installed:

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

From an elevated **PowerShell** command prompt, run the following command to verify that all optional components and the cumulative update (CU) have been applied to the boot image:

```powershell
Get-WindowsPackage -Path "<Mount_folder_path>"
```

**Example**:

```powershell
Get-WindowsPackage -Path "C:\Mount"
```

For more information, see [Get-WindowsPackage](/powershell/module/dism/get-windowspackage).

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to verify that all optional components and the cumulative update (CU) have been applied to the boot image:

```cmd
DISM.exe /Image:"<Mount_folder_path>" /Get-Packages
```

**Example**:

```cmd
DISM.exe /Image:"C:\Mount" /Get-Packages
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

**Example**:

```powershell
Dismount-WindowsImage -Path "C:\Mount" -Save -Verbose
```

For more information, see [Dismount-WindowsImage](/powershell/module/dism/dismount-windowsimage).

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to unmount the boot image and save changes:

```cmd
DISM.exe /Unmount-Image /MountDir:"<Mount_folder_path>" /Commit
```

**Example:**

```cmd
DISM.exe /Unmount-Image /MountDir:"C:\Mount" /Commit
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

    **Example**:

    ```powershell
    Export-WindowsImage -SourceImagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim" -SourceIndex 1 -DestinationImagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe-export.wim" -CompressionType max -Verbose
    ```

    For more information, see [Export-WindowsImage](/powershell/module/dism/export-windowsimage).

    ### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to further reduce the size of the boot image by exporting it:

    ```cmd
    DISM.exe /Export-Image /SourceImageFile:"<Boot_image_path>\<boot_image>.wim" /SourceIndex:1 /DestinationImageFile:"<Boot_image_path>\<boot_image>-export.wim"
    ```

    **Example**:

    ```cmd
    DISM.exe /Export-Image /SourceImageFile:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim" /SourceIndex:1 /DestinationImageFile:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe-export.wim"
    ```

    For more information, see [Modify a Windows image using DISM: Reduce the size of an image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism#reduce-the-size-of-an-image) and [DISM Image Management Command-Line Options: /Export-Image](/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14#export-image).

    ---

1. Once the export has completed:
  
    1. Delete the original updated boot image:

        ### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

        From an elevated **PowerShell** command prompt, run the following command to delete the original updated boot image:

        ```powershell
        Remove-Item -Path "<Boot_image_path>\<boot_image>.wim" -Force
        ```

        **Example**:

        ```powershell
        Remove-Item -Path "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim" -Force
        ```

        For more information, see [Remove-Item](/powershell/module/microsoft.powershell.management/remove-item).

        ### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

        From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to delete the original updated boot image:

        ```cmd
        del "<Boot_image_path>\<boot_image>.wim" /F
        ```

        **Example**:

        ```cmd
        del "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim" /F
        ```

        For more information, see [del](/windows-server/administration/windows-commands/del).

        ---

    1. Rename the exported boot image with the name of the original boot image:

        ### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

        From an elevated **PowerShell** command prompt, run the following command to rename the exported boot image with the name of the original boot image:

        ```powershell
        Rename-Item -Path "<Boot_image_path>\<exported_boot_image>.wim" -NewName "<original_boot_image_name>.wim"
        ```

        **Example**:

        ```powershell
        Rename-Item -Path "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe-export.wim" -NewName "winpe.wim"
        ```

        For more information, see [Rename-Item](/powershell/module/microsoft.powershell.management/rename-item).

        ### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

        From an elevated **Deployment and Imaging Tools Environment** command prompt, run the following command to rename the exported boot image with the name of the original boot image:

        ```cmd
        rename "<Boot_image_path>\<boot_image>-export.wim" "<original_boot_image_name>.wim"
        ```

        **Example**:

        ```cmd
        rename "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe-export.wim" "winpe.wim"
        ```

        For more information, see [rename](/windows-server/administration/windows-commands/rename).

        ---

## Step 13: Update boot image in products that utilize it (if applicable)

After the default `winpe.wim` boot image from the Windows ADK has been updated, additional steps usually need to take place in the product(s) that utilize the boot image. The following links contain information on how to update the boot image for several popular products that utilize boot images:

- [Microsoft Configuration Manager](#updating-the-boot-image-in-configuration-manager)
- [Microsoft Deployment Toolkit (MDT)](#updating-the-boot-image-and-boot-media-in-mdt)
- Windows Deployment Services
  - [Original WDS boot image is updated](#original-wds-boot-image-is-updated)
  - [WDS boot image is replaced with new updated boot image](#wds-boot-image-is-replaced-with-new-updated-boot-image)
  - [Add updated boot image as a new boot image in WDS](#add-updated-boot-image-as-a-new-boot-image-in-wds)

For any other products that utilize boot images, consult the product's documentation on updating the boot image.

## Microsoft Configuration Manager considerations

### How Microsoft Configuration Manager creates boot images

Microsoft Configuration Manager creates its own boot images by taking the `winpe.wim` from the Windows ADK, adding some [optional components it requires](#configuration-manager-boot-image-required-components) to function correctly, and then saving the boot image as `boot.wim` in the directory `<ConfigMgr_Install_Directory>\OSD\boot\<architecture>\boot.wim`. This `boot.wim` boot image is considered the pristine authoritative copy of the boot image by Configuration Manager. Configuration Manager never touches, modifies, or updates the `boot.wim` boot image except in some specific scenarios. Instead, when changes are done in the properties of the boot image in Configuration Manager such as:

- Adding drivers
- Adding optional components
- Enabling the command prompt

Configuration Manager makes a copy of `boot.wim`, applies the changes to the copy, and then saves the new boot image as `boot.<package_id>.wim`.

If in the future any additional changes are done to the boot image, Configuration Manager discards the previously created `boot.<package_id>.wim` boot image, makes a new copy of `boot.wim`, applies the changes to the copy, and then saves the new boot image as `boot.<package_id>.wim`. In other words, `boot.wim` is never touched. Anytime any changes are made to a boot image, both the new changes and any changes done in the past are all reapplied to a new copy of `boot.wim`.

This process has the following advantages:

1. Keeps `boot.wim` pristine.

1. Makes sure that changes done to a boot image are being done to a pristine unmodified version of the boot image. This process helps avoid corruption when a boot image is updated multiple times. I can also correct issues with existing boot images.

1. Helps manage components in the boot image. The process doesn't need to know what components may need to be removed from the boot image each time the boot image is rebuilt. Instead, it just needs to know what components need to be added to the boot image.

1. It reduces the size of the boot image which can occur when components are repeatedly added to and removed from the boot image.

Configuration Manager updates the `boot.wim` boot image in two scenarios:

1. When Configuration Manager is upgraded between versions or a hotfix roll-up (HFRU) is applied, `boot.wim` may be updated as part of the upgrade process.

1. When selecting the option **Reload this boot image with the current Windows PE version from the Windows ADK** in the **Update Distribution Points Wizard**.

In these scenarios, the `boot.wim` boot image is updated using the `winpe.wim` boot image from the Windows ADK as described earlier in this section. This process creates a new pristine copy of the `boot.wim` boot image using the current version of the `winpe.wim` boot image that is part of the Windows ADK.

### Which boot image should be updated with the cumulative update?

When manually adding a cumulative update to a Configuration Manager boot image, it's recommended to update the `winpe.wim` boot image from the Windows ADK instead of directly updating the `boot.wim` boot image generated by Configuration Manager.

The `winpe.wim` boot image from the Windows ADK should be updated because if `boot.wim` generated by Configuration Manager is updated instead, then the next time `boot.wim` is updated via a Configuration Manager upgrade or the **Reload this boot image with the current Windows PE version from the Windows ADK** option, then changes made to `boot.wim`, including the applied cumulative update, will be lost. If the `winpe.wim` boot image from the Windows ADK is updated with the cumulative update instead, then the cumulative update persists and is preserved even when Configuration Manager does update the `boot.wim` boot image.

> [!IMPORTANT]
>
> Never manually update the `boot.<package_id>.wim` boot image. In addition to facing the same issues when manually updating the `boot.wim` boot image,  the `boot.<package_id>.wim` boot image will also face additional issues such as:
>
> - Any time any changes are done to the boot image (adding drivers, enabling the command prompt, etc.), any manual changes done to the boot image, including the cumulative update, will be lost.
>
> - Manually changing the `boot.<package_id>.wim` boot image changes the hash value of the boot image. A change in the hash value of the boot image can lead to download failures when downloading the boot image from a distribution point.

Updating `winpe.wim` from the Windows ADK ensures that the cumulative update stays applied regardless of what changes are made to the `boot.wim` boot image via Configuration Manager.

### Add optional components manually to Configuration Manager boot images

For Microsoft Configuration Manager boot images, when applying a cumulative update to a boot image, make sure to add any desired optional components manually using the command lines from the walkthrough instead of adding them through Configuration Manager. Optional components are added to boot images in Configuration Manager via the **Optional Components** tab in the **Properties** of the boot image.

Optional components need to be added to the boot image manually instead of via Configuration Manager because:

- When the cumulative update is applied, it also updates any optional components as needed.

- If optional components are added through Configuration Manager on a boot image that has a cumulative update, then the optional components aren't updated with the cumulative update. Adding the optional components through Configuration Manager could lead to unexpected behaviors and problems. The cumulative update needs to be added after the optional components have been added to the boot image for the optional components to be updated properly with the cumulative update.

> [!NOTE]
>
> If an optional component is attempted to be added via the **Optional Components** tab in the **Properties** of the boot image in Configuration Manager but the optional component has already been manually added to the boot image, Configuration Manager won't add that optional component again. Instead, Configuration Manager detects that the optional component has already been added and it won't try to add the optional component again.

### Configuration Manager boot image required components

For Microsoft Configuration Manager boot images to function correctly, it requires the following optional components:

| **Feature** | **File Name** | **Dependency** | **Required by ConfigMgr** |
| --- | --- | --- | --- |
| Scripting/WinPE-Scripting | `WinPE-Scripting.cab` | NA | Yes |
| Scripting/WinPE-WMI | `WinPE-WMI.cab` | NA | Yes |
| Network/WinPE-WDS-Tools | `WinPE-WDS-Tools.cab` | NA | Yes |
| Startup/WinPE-SecureStartup | `WinPE-SecureStartup.cab` | Scripting/WinPE-WMI | Yes |

When adding optional components to any boot image used by Configuration Manager during the [Step 6: Add optional components to boot image](#step-6-add-optional-components-to-boot-image) step, make sure to first add the above required components in the above order to the boot image. After adding the required components to the boot image, add any additional desired optional components to the boot image.

For a list of all available WinPE optional components including descriptions for each component, see [WinPE Optional Components (OC) Reference: WinPE Optional Components](/windows-hardware/manufacture/desktop/winpe-add-packages--optional-components-reference#winpe-optional-components).

### Updating the boot image in Configuration Manager

After updating the `winpe.wim` boot image from the Windows ADK, generate a new `boot.wim` boot image for Configuration Manager so that it contains the cumulative update. A new `boot.wim` boot image can be generated by using the following steps:

1. Open the Microsoft Configuration Manager console.

1. In the Microsoft Configuration Manager console, navigate to **Software Library** > **Overview** > **Operating Systems** > **Boot Images**.

1. In the **Boot Images** pane, select the desired boot image.

1. In the toolbar, select **Update Distribution Points**.

1. When the **Update Distribution Points Wizard** window that appears:

    1. In the **General**/**Update distribution points with this image** page, select the **Reload this boot image with the current Windows PE version from the Windows ADK** option, and then select the **Next >** button.

    1. In the **Summary** page, select the **Next >** button.

    1. The **Progress** page appears while the boot image builds.

    1. Once the boot image finishes building, the **The task "Update Distribution Points Wizard" completed successfully**/**Completion** page appears. Select the **Close** button.

This process updates the boot image used by Configuration Manager. It also updates the boot image and the bootmgr boot files used by any PXE-enabled distribution points.

> [!IMPORTANT]
>
> If there are multiple boot images used in the environment for PXE-enabled distribution points, make sure to update all of the PXE-enabled boot images with the same cumulative update. This will ensure that the PXE-enabled distribution points all use the version of the bootmgr boot files extracted from the boot images (if applicable).

### Updating Configuration Manager boot media

After completing the walkthrough, including updating boot images in Configuration Manager, update any Configuration Manager task sequence media. Updating any Configuration Manager task sequence media ensures that the task sequence media has both the updated boot image. If applicable, it will also update bootmgr boot files on the media by extracting the latest versions from the boot image. For more information on creating Configuration Manager task sequence media, see [Create task sequence media](/mem/configmgr/osd/deploy-use/create-task-sequence-media).

## Microsoft Deployment Toolkit (MDT) considerations

When adding a cumulative update to a Microsoft Deployment Toolkit (MDT) boot image, it's recommended to update the `winpe.wim` boot image from the Windows ADK instead of directly updating the `LiteTouchPE_<arch>.wim` boot image in the MDT Deployment Share.

The `winpe.wim` boot image from the Windows ADK should be updated because if `LiteTouchPE_<arch>.wim` is updated instead, then the next time the MDT Deployment Share is updated, the changes made to `LiteTouchPE_<arch>.wim`, including the applied cumulative update, will be lost. If the `winpe.wim` boot image from the Windows ADK is updated with the cumulative update instead, then the cumulative update persists and is preserved even when the MDT Deployment Share is updated.

### MDT and Windows ADK versions

Microsoft Deployment Toolkit (MDT) doesn't support versions of Windows or the Windows ADK beyond Windows 10. When MDT is used, the recommendation is to use the [ADK for Windows 10, version 2004](/windows-hardware/get-started/adk-install#other-adk-downloads) instead of the latest version of the Windows ADK. **ADK for Windows 10, version 2004** was the last version of the Windows ADK supported by MDT. When updating the boot image for the ADK for Windows 10, version 2004 with a cumulative update, use the cumulative update for Windows 10 Version 22H2.

### MDT boot image required components

For Microsoft Deployment Toolkit (MDT) boot images to function correctly, it requires the following optional components:

| **Feature** | **File Name** | **Dependency** | **Required by MDT** |
| --- | --- | --- | --- |
| Scripting/WinPE-Scripting | `WinPE-Scripting.cab` | NA | Yes |
| Scripting/WinPE-WMI | `WinPE-WMI.cab` | NA | Yes |
| File management/WinPE-FMAPI | `WinPE-FMAPI.cab` | NA | Yes |
| Startup/WinPE-SecureStartup | `WinPE-SecureStartup.cab` | Scripting/WinPE-WMI | Yes |
| HTML/WinPE-HTA | `WinPE-HTA.cab` | Scripting/WinPE-WMI | Yes |

When adding optional components to any boot image used by MDT during the [Step 6: Add optional components to boot image](#step-6-add-optional-components-to-boot-image) step, make sure to first add the above required components in the above order to the boot image. After adding the required components to the boot image, add any additional desired optional components to the boot image.

For a list of all available WinPE optional components including descriptions for each component, see [WinPE Optional Components (OC) Reference: WinPE Optional Components](/windows-hardware/manufacture/desktop/winpe-add-packages--optional-components-reference#winpe-optional-components).

### Updating the boot image and boot media in MDT

After updating the `winpe.wim` boot image from the Windows ADK, generate a new `LiteTouchPE_<arch>.wim` boot image for MDT that contains the cumulative update followed by creating new MDT boot media. New MDT boot images and MDT boot media can be generated by using the following steps:

1. Make sure [Step 8: Copy boot files from mounted boot image to ADK installation path](#step-8-copy-boot-files-from-mounted-boot-image-to-adk-installation-path) has been completed. MDT copies the bootmgr boot files from the Windows ADK installation path to its deployment share. Following this step makes sure that the deployment share has the latest bootmgr boot files that are needed when creating MDT boot media.

1. Open the Microsoft Deployment Toolkit (MDT) Deployment Workbench console.

1. In the Deployment Workbench console, navigate to **Deployment Workbench** > **Deployment Shares** > **MDT Deployment Share**.

1. Right click on **MDT Deployment Share** and select **Update Deployment Share**.

1. In the **Update Deployment Share Wizard** window that appears:

    1. In the **Options** page, select the **Completely regenerate the boot images** option, and then select the **Next >** button.

    1. In the **Summary** page, select the **Next >** button.

    1. The **Progress** page appears while the boot image and deployment share build.

    1. Once the boot image and deployment share finish building, the **The process completed successfully**/**Confirmation** page appears. Select the **Finish** button.

These steps also update the MDT boot media in the MDT Deployment Share. After following the above steps, use the newly updated ISO files in the `<DeploymentShare>\Boot` folder to create new MDT boot media.

## Windows Deployment Services (WDS) considerations

### Original WDS boot image is updated

If the WDS boot image modified was the original WDS boot image in the `<RemoteInstall>` folder, then the only additional step to take is to restart `Windows Deployment Services Server` service. WDS can be restarted by using the following command lines:

#### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

From an elevated **PowerShell** command prompt, run the following command to restart the `Windows Deployment Services Server` service:

```powershell
Restart-Service -Name WDSServer
```

For more information, see [Restart-Service](/powershell/module/microsoft.powershell.management/restart-service).

#### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

From an elevated command prompt, run the following command to restart the `Windows Deployment Services Server` service:

```cmd
wdsutil.exe /Stop-Server
wdsutil.exe /Start-Server
```

or

```cmd
net.exe stop WDSServer
net.exe start WDSServer
```

For more information, see [wdsutil stop-server](/windows-server/administration/windows-commands/wdsutil-stop-server) and [wdsutil start-server](/windows-server/administration/windows-commands/wdsutil-start-server).

---

### WDS boot image is replaced with new updated boot image

In the following boot image replacement scenario for WDS:

- The boot image modified as part of this guide is outside of the `<RemoteInstall>` folder. For example, the `winpe.wim` boot image that comes with the Windows ADK
- An existing boot image in WDS is being replaced with the updated boot image

then follow these steps to update the boot image in WDS:

1. Replace the existing boot image in WDS with the modified boot image using the following command lines:

    #### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

    In PowerShell, the original boot image needs to be removed first and then replaced with a new image. From an elevated **PowerShell** command prompt, run the following commands to replace an existing boot image in WDS with a new boot image:

    ```powershell
    Remove-WdsBootImage -Architecture <Architecture_x64_or_x86> -ImageName "<Name_Of_Existing_Boot_Image_In_WDS>"
    Import-WdsBootImage -Path "<Path_To_Updated_Boot_Image>\<boot_image>.wim" -NewImageName "<Name_Of_Existing_Boot_Image_In_WDS>"
    ```

    **Example**:

    ```powershell
    Remove-WdsBootImage -Architecture x64 -ImageName "Microsoft Windows PE (amd64)"
    Import-WdsBootImage -Path "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim" -NewImageName "Microsoft Windows PE (amd64)"
    ```

    For more information, see [Remove-WdsBootImage](/powershell/module/wds/remove-wdsbootimage) and [Import-WdsBootImage](/powershell/module/wds/import-wdsbootimage).

    #### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    From an elevated command prompt, run the following command to replace an existing boot image in WDS with a new boot image:

    ```cmd
    wdsutil.exe /Verbose /Progress /Replace-Image /Image:"<Name_Of_Existing_Boot_Image_In_WDS>" /ImageType:Boot /Architecture:<Architecture_x64_orx86> /ReplacementImage /ImageFile:"<Path_To_Updated_Boot_Image>\<boot_image>.wim"
    ```

    **Example**:

    ```cmd
    wdsutil.exe /Verbose /Progress /Replace-Image /Image:"Microsoft Windows PE (amd64)" /ImageType:Boot /Architecture:x64 /ReplacementImage /ImageFile:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim"
    ```

    For more information, see [wdsutil replace-image](/windows-server/administration/windows-commands/wdsutil-replace-image).

    ---

1. Once the existing boot image in WDS has been replaced, restart the WDS service:

    #### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

    From an elevated **PowerShell** command prompt, run the following command to restart the `Windows Deployment Services Server` service:

    ```powershell
    Restart-Service -Name WDSServer
    ```

    For more information, see [Restart-Service](/powershell/module/microsoft.powershell.management/restart-service).

    #### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    From an elevated command prompt, run the following command to restart the `Windows Deployment Services Server` service:

    ```cmd
    wdsutil.exe /Stop-Server
    wdsutil.exe /Start-Server
    ```

    or

    ```cmd
    net.exe stop WDSServer
    net.exe start WDSServer
    ```

    For more information, see [wdsutil stop-server](/windows-server/administration/windows-commands/wdsutil-stop-server) and [wdsutil start-server](/windows-server/administration/windows-commands/wdsutil-start-server).

    ---

### Add updated boot image as a new boot image in WDS

In the following boot image scenario for WDS:

- The boot image modified as part of this guide is outside of the `<RemoteInstall>` folder. For example, the `winpe.wim` boot image that comes with the Windows ADK
- The updated boot image is being added as a new boot image in WDS

then follow these steps to add the boot image in WDS:

1. Add the updated boot image to WDS using the following command lines:

    #### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

    From an elevated **PowerShell** command prompt, run the following commands to add the updated boot image in WDS as a new boot image:

    ```powershell
    Import-WdsBootImage -Path "<Path_To_Updated_Boot_Image>\<boot_image>.wim" -NewImageName "<Boot_Image_Name_In_WDS>"
    ```

    **Example**:

    ```powershell
    Import-WdsBootImage -Path "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim" -NewImageName "Microsoft Windows PE (amd64) - Updated"
    ```

    For more information, see [Import-WdsBootImage](/powershell/module/wds/import-wdsbootimage).

    #### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    From an elevated command prompt, run the following command to replace an existing boot image in WDS with a new boot image:

    ```cmd
    wdsutil.exe /Verbose /Progress /Add-Image /ImageFile:"<Path_To_Updated_Boot_Image>\<boot_image>.wim" /ImageType:Boot /Name:"<Boot_Image_Name_In_WDS>"

    ```

    **Example**:

    ```cmd
    wdsutil.exe /Verbose /Progress /Add-Image /ImageFile:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim" /ImageType:Boot /Name:"Microsoft Windows PE (amd64) - Updated"

    ```

    For more information, see [wdsutil add-image](/windows-server/administration/windows-commands/wdsutil-add-image).

    ---

1. Once the existing boot image in WDS has been replaced, restart the WDS service:

    #### [:::image type="icon" source="images/icons/powershell-18.svg"::: **PowerShell**](#tab/powershell)

    From an elevated **PowerShell** command prompt, run the following command to restart the `Windows Deployment Services Server` service:

    ```powershell
    Restart-Service -Name WDSServer
    ```

    For more information, see [Restart-Service](/powershell/module/microsoft.powershell.management/restart-service).

    #### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Command Line**](#tab/command-line)

    From an elevated command prompt, run the following command to restart the `Windows Deployment Services Server` service:

    ```cmd
    wdsutil.exe /Stop-Server
    wdsutil.exe /Start-Server
    ```

    or

    ```cmd
    net.exe stop WDSServer
    net.exe start WDSServer
    ```

    For more information, see [wdsutil stop-server](/windows-server/administration/windows-commands/wdsutil-stop-server) and [wdsutil start-server](/windows-server/administration/windows-commands/wdsutil-start-server).

    ---

## Boot.wim support

The **boot.wim** that is part of Windows installation media isn't supported for deploying Windows 11 with Windows Deployment Services (WDS). Additionally, the **boot.wim** from Windows 11 installation media isn't supported for deploying any version of Windows with Windows Deployment Services (WDS). For more information, see [Windows Deployment Services (WDS) boot.wim support](wds-boot-support.md).

## Windows Server 2012 R2

This walk-through isn't intended for use with Windows Server 2012 R2. The steps in this article may work with Windows Server 2012 R2 when using older versions of the Windows ADK. However, it may have compatibility problems with versions of the Windows ADK that are newer than the [ADK for Windows 10, version 2004](/windows-hardware/get-started/adk-install#other-adk-downloads). To resolve compatibility problems with newer ADKs and Windows Server 2012 R2:

1. Upgrade Windows Server 2012 R2 to a newer version of Windows Server.
1. Perform the boot image customizations on a computer running a version of Windows that supports the newer ADKs, for example Windows 10 or Windows 11, and then transfer the modified boot image to the Windows Server 2012 R2 server.

For more information, see [Windows Server 2012 R2 Lifecycle](/lifecycle/products/windows-server-2012-r2).

## Related articles

- [Create bootable Windows PE media: Update the Windows PE add-on for the Windows ADK](/windows-hardware/manufacture/desktop/winpe-create-usb-bootable-drive#update-the-windows-pe-add-on-for-the-windows-adk)
- [Update Windows installation media with Dynamic Update: Update WinPE](/windows/deployment/update/media-dynamic-update#update-winpe)
- [KB5025885: How to manage the Windows Boot Manager revocations for Secure Boot changes associated with CVE-2023-24932: Updating bootable media](https://prod.support.services.microsoft.com/topic/kb5025885-how-to-manage-the-windows-boot-manager-revocations-for-secure-boot-changes-associated-with-cve-2023-24932-41a975df-beb2-40c1-99a3-b3ff139f832d?preview=true#updatebootable5025885)
