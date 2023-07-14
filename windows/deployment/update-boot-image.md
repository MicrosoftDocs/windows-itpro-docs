---
title: Update Windows PE boot image with the latest cumulative updates
description: This article describes how to update a Windows PE (WinPE) boot image with the latest cumulative update.
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
manager: aaroncz
ms.author: frankroj
ms.topic: article
ms.date: 07/13/2023
ms.technology: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2022</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2019</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016</a>
---
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

1. Download and install ADK
2. Download cumulative update (CU)
3. Backup existing boot image (e.g. winpe.wim or boot.wim)
4. Mount boot image to temporary mount folder
5. Add optional components to boot image
6. Add optional components OCs to boot image
7. Add cumulative update (CU) to boot image
8. Copy boot files from mounted image to ADK installation location
9. Perform component cleanup
10. Unmount boot image and save changes
11. Export boot image to reduce size

## Step 1: Download and install ADK

- Download and install the **Windows Assessment and Deployment Kit (Windows ADK)** from [Download and install the Windows ADK](windows-hardware/get-started/adk-install).

- Download and install the **Windows PE add-on for the Windows ADK** from [Download and install the Windows ADK](windows-hardware/get-started/adk-install). Make sure to download and install both components.

- It's strongly recommended to download and install the latest version of the ADK.

- When installing the Windows ADK, it's only necessary to install the **Deployment Tools**.

## Step 2: Download cumulative update (CU)

- Go to the [Microsoft Update Catalog](https://catalog.update.microsoft.com/) site and search for the latest cumulative update for the version of Windows that matches the version of Windows PE that was downloaded in [Step 1](#step-1-download-and-install-adk) or the version of the Windows PE boot image that will be updated.

- When searching the [Microsoft Update Catalog](https://catalog.update.microsoft.com/) site, use the search term `"<year>-<month> cumulative update for windows <x>"` where `year` is the four digit current year, `<month>` is the two digit current month, and `<x>` is the version of Windows that Windows PE is based on. For example, to search for the latest cumulative update for Windows 11 in July 2023, use the search term `"2023-07 cumulative update for windows 11"`. If the cumulative update hasn't been released yet for the current month, then search on the previous month.

- Once the cumulative update has been found, download the appropriate version for the version and architecture of Windows that matches the Windows PE boot image. For example, if the version of the Windows PE boot image is Windows 11 22H2 64-bit, then download the **Cumulative Update for Windows 11 Version 22H2 for x64-based Systems" version of the update.

- Store the downloaded cumulative update in a known location for later use.

## Step 3: Backup existing boot image

Before modifying the desired boot image, make a backup copy of the boot image being modified. For example,

- For the boot image included with the **Windows PE add-on for the Windows ADK**, the boot image is located at `C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\en-us\winpe.wim`.

- For the boot image included with Microsoft Configuration Manager, the boot image is located at `<ConfigMgr_Install_Directory>\OSD\boot\x64\boot.wim`

## Step 4: Mount boot image to temporary mount folder

## Step 5: Add optional components to boot image

## Step 6: Add optional components OCs to boot image

## Step 7: Add cumulative update (CU) to boot image

## Step 8: Copy boot files from mounted image to ADK installation location

## Step 9: Perform component cleanup

## Step 10: Unmount boot image and save changes

## Step 11: Export boot image to reduce size

## Script outline

This PowerShell script appears to be a patching script for the Windows Assessment and Deployment Kit (ADK) and the Windows Preinstallation Environment (WinPE). Here's a breakdown of what the script does:

1. It begins with some comments explaining the purpose of the script and providing links to relevant documentation.

2. The script defines various variables such as `$SMSProvider2012R2`, `$MountFolder`, `$downloads`, and several `$CUDownloadUrl` variables. These variables specify download URLs for cumulative updates (CUs) and other files.

3. The script includes functions like `Test-RegistryValue` and `Get-RegistryValue` for checking and retrieving registry values.

4. It checks if the ADK is installed on the system by checking the registry key `HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows Kits\Installed Roots`. If the ADK is detected, it retrieves the installation location from the registry.

5. The script verifies the existence of the WinPE image file (`winpe.wim`) and extracts the version information from it.

6. Depending on the WinPE version, the script selects the appropriate CU download URL and sets the `$SSURequired` flag if a Servicing Stack Update (SSU) is needed.

7. It checks if certain folders exist and creates them if necessary (`$downloads`, `$downloads\SSU`, and `$MountFolder`).

8. If the CU file does not already exist in the specified download folder, it uses `Start-BitsTransfer` to download it from the provided URL.

9. If an SSU is required, it performs a similar download process for the SSU file.

10. The script creates a backup of the existing `winpe.wim` file by copying it to `winpe.bak`. If a previous backup already exists, it renames it with the current date appended.

11. It mounts the `winpe.wim` file using `Mount-WindowsImage` to a temporary mount folder (`$MountFolder`).

12. If an SSU is required, it adds the SSU package to the mounted image using `Add-WindowsPackage`.

13. It then iterates through a list of optional components (`$OptionalComponents`) and adds the corresponding packages to the mounted image using `Add-WindowsPackage`. It also checks for language-specific versions of the components and adds them if available.

14. The script adds the downloaded CU package to the mounted image using `Add-WindowsPackage`.

15. It copies updated boot manager files (`bootmgr.efi` and `bootmgfw.efi`) from the mounted image back to the ADK installation location.

16. It performs a component cleanup operation on the mounted image using `dism.exe` to reduce the image size.

17. The script exports the list of installed packages in the modified image to a text file.

18. Finally, it dismounts the image with the modifications, saves the changes, and exports the modified `winpe.wim` file as a new file with reduced file size. It also creates a backup of the original `winpe.wim` file and cleans up temporary files.

The script appears to be designed to update and patch the WinPE image in the ADK installation based on the installed ADK version and the provided CU and SSU files.
