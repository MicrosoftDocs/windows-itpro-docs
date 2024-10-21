---
title: Update Windows installation media with Dynamic Update
description: Learn how to acquire and apply Dynamic Update packages to existing Windows images prior to deployment
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: conceptual
author: mestew
ms.author: mstewart
manager: aaroncz
ms.reviewer: stevedia
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server</a>
ms.date: 10/15/2024
---

# Update Windows installation media with Dynamic Update

This article explains how to acquire and apply Dynamic Update packages to existing Windows images *prior to deployment* and includes Windows PowerShell scripts you can use to automate this process.

Volume-licensed media is available for each release of Windows in the Volume Licensing Service Center (VLSC) and other relevant channels such as Windows Update for Business, Windows Server Update Services (WSUS), and Visual Studio Subscriptions. You can use Dynamic Update to ensure that Windows devices have the latest feature update packages as part of an in-place upgrade while preserving language pack and Features on Demand (FODs) that might have been previously installed. Dynamic Update also eliminates the need to install a separate quality update as part of the in-place upgrade process.

## Dynamic Update

Whenever installation of a feature update starts (whether from media or an environment connected to Windows Update), *Dynamic Update* is one of the first steps. Windows Setup contacts a Microsoft endpoint to fetch Dynamic Update packages, and then applies those updates to your operating system installation media. The update packages include the following kinds of updates:

- Updates to Setup.exe binaries or other files that Setup uses for feature updates
- Updates for the "safe operating system" (SafeOS) that is used for the Windows recovery environment
- Updates to the servicing stack necessary to complete the feature update For more information, see [Servicing stack updates](servicing-stack-updates.md).
- The latest cumulative (quality) update
- Updates to applicable drivers already published by manufacturers specifically intended for Dynamic Update

Dynamic Update preserves language pack and Features on Demand packages by reacquiring them.

Devices must be able to connect to the internet to obtain Dynamic Updates. In some environments, it's not an option to obtain Dynamic Updates. You can still do a media-based feature update by acquiring Dynamic Update packages and applying it to the image prior to starting Setup on the device.

## Acquire Dynamic Update packages

You can obtain Dynamic Update packages from the [Microsoft Update Catalog](https://catalog.update.microsoft.com). At that site, use the search bar in the upper right to find the Dynamic Update packages for a particular release. The various Dynamic Update packages might not all be present in the results from a single search, so you might have to search with different keywords to find all of the updates. Check various parts of the results to be sure you've identified the files needed. The following tables show the key values to search for or look for in the results. 

### Windows 11, version 22H2 and later Dynamic Update packages
**Title** can distinguish each Dynamic Package. Latest cumulative updates have the servicing stack embedded. The servicing stack is published only if necessary for a given cumulative update.Titles below are for Windows 11, version 22H2. Windows 11, version 23H2 and 24H2 have a similar format.

| Update packages                   |Title                                                          |
|-----------------------------------|---------------------------------------------------------------|
|Safe OS Dynamic Update             | YYYY-MM Safe OS Dynamic Update for Windows 11 Version 22H2    |
|Setup Dynamic Update               | YYYY-MM Setup Dynamic Update for Windows 11 Version 22H2      |
|Latest cumulative update           | YYYY-MM Cumulative Update for Windows 11 Version 22H2         |
|Servicing stack Dynamic Update     | YYYY-MM Servicing Stack Update for Windows 11 Version 22H2    |


### Windows 11, version 21H2 Dynamic Update packages
**Title**, **Product** and **Description** are required to distinguish each Dynamic Package. Latest cumulative update has the servicing stack embedded. Servicing stack published separately only if necessary as a prerequisite for a given cumulative update.

| Update packages                   |Title                                                          |Product                                       |Description       |
|-----------------------------------|---------------------------------------------------------------|----------------------------------------------|------------------|
|Safe OS Dynamic Update             | YYYY-MM Dynamic Update for Windows 11                         |Windows Safe OS Dynamic Update                | ComponentUpdate  |
|Setup Dynamic Update               | YYYY-MM Dynamic Update for Windows 11                         |Windows 10 and later Dynamic Update           | SetupUpdate      |
|Latest cumulative update           | YYYY-MM Cumulative Update for Windows 11                      |                                              |                  |
|Servicing stack Dynamic Update     | YYYY-MM Servicing Stack Update for Windows 11 Version 21H2    |                                              |                  |

### Windows 10, version 22H2 Dynamic Update packages
**Title**, **Product** and **Description** are required to distinguish each Dynamic Package. Latest cumulative update has the servicing stack embedded. Servicing stack published separately only if necessary as a prerequisite for a given cumulative update.

| Update packages                   |Title                                                          |Product                                       |Description       |
|-----------------------------------|---------------------------------------------------------------|----------------------------------------------|------------------|
|Safe OS Dynamic Update             | YYYY-MM Dynamic Update for Windows 10 Version 22H2            |Windows Safe OS Dynamic Update                | ComponentUpdate  |
|Setup Dynamic Update               | YYYY-MM Dynamic Update for Windows 10 Version 22H2            |Windows 10 and later Dynamic Update           | SetupUpdate      |
|Latest cumulative update           | YYYY-MM Cumulative Update for Windows 10 Version 22H2         |                                              |                  |
|Servicing stack Dynamic Update     | YYYY-MM Servicing Stack Update for Windows 10 Version 22H2    |                                              |                  |

If you want to customize the image with additional languages or Features on Demand, download supplemental media ISO files from the [Volume Licensing Service Center](https://www.microsoft.com/licensing/servicecenter/default.aspx). For example, if Dynamic Update will be disabled for your devices, and if users require specific Features on Demand, you can preinstall these into the image.

## Update Windows installation media

Properly updating the installation media involves many actions operating on several different targets (image files). Some actions are repeated on different targets. The target images files include:

- Windows Preinstallation Environment (WinPE): a small operating system used to install, deploy, and repair Windows operating systems
- Windows Recovery Environment (WinRE): repairs common causes of unbootable operating systems. WinRE is based on WinPE and can be customized with additional drivers, languages, optional packages, and other troubleshooting or diagnostic tools.
- Windows operating system: one or more editions of Windows stored in \sources\install.wim
- Windows installation media: the complete collection of files and folders in the Windows installation media. For example, \sources folder, \boot folder, Setup.exe, and so on.

This table shows the correct sequence for applying the various tasks to the files. For example, the full sequence starts with adding the servicing stack update to WinRE (1) and concludes with adding boot manager from WinPE to the new media (28).

|Task                                       |WinRE (winre.wim)  |Operating system (install.wim)  | WinPE (boot.wim) | New media |
|-------------------------------------------|-------------------|--------------------------------|------------------|-----------|
|Add servicing stack Dynamic Update         | 1                 | 9                              | 17               |           |
|Add language pack                          | 2                 | 10                             | 18               |           |
|Add localized optional packages            | 3                 |                                | 19               |           |
|Add font support                           | 4                 |                                | 20               |           |
|Add text-to-speech                         | 5                 |                                | 21               |           |
|Update Lang.ini                            |                   |                                | 22               |           |
|Add Features on Demand                     |                   | 11                             |                  |           |
|Add Safe OS Dynamic Update                 | 6                 |                                |                  |           |
|Add Setup Dynamic Update                   |                   |                                |                  | 26        |
|Add setup.exe and setuphost.exe from WinPE |                   |                                |                  | 27        |
|Add boot manager from WinPE                |                   |                                |                  | 28        |
|Add latest cumulative update               |                   | 12                             | 23               |           |
|Clean up the image                         | 7                 | 13                             | 24               |           |
|Add Optional Components                    |                   | 14                             |                  |           |
|Add .NET and .NET cumulative updates       |                   | 15                             |                  |           |
|Export image                               | 8                 | 16                             | 25               |           |

> [!NOTE]
> Starting in February 2021, the latest cumulative update and servicing stack update will be combined and distributed in the Microsoft Update Catalog as a new combined cumulative update. For Steps 1, 9, and 18 that require the servicing stack update for updating the installation media, you should use the combined cumulative update. For more information on the combined cumulative update, see [Servicing stack updates](./servicing-stack-updates.md).

> [!NOTE]
> Microsoft will remove the Flash component from Windows through KB4577586, "Update for Removal of Adobe Flash Player". You can also remove Flash anytime by deploying the update in KB4577586 (available on the Catalog) between steps 20 and 21. As of July 2021, KB4577586, "Update for Removal of Adobe Flash Player" will be included in the latest cumulative update for Windows 10, versions 1607 and 1507. The update will also be included in the Monthly Rollup and the Security Only Update for Windows 8.1, Windows Server 2012, and Windows Embedded 8 Standard. For more information, see [Update on Adobe Flash Player End of Support](https://blogs.windows.com/msedgedev/2020/09/04/update-adobe-flash-end-support/).

### Multiple Windows editions

The main operating system file (install.wim) might contain multiple editions of Windows. It's possible that only an update for a given edition is required to deploy it, based on the index. Or, it might be that all editions need an update. Further, ensure that languages are installed before Features on Demand, and the latest cumulative update is always applied last.

### Additional languages and features

You don't have to add more languages and features to the image to accomplish the updates, but it's an opportunity to customize the image with more languages, Optional Components, and Features on Demand beyond what's in your starting image. When you add more languages and features, it's important to make these changes in the correct order: first apply servicing stack updates, followed by language additions, then by feature additions, and finally the latest cumulative update. The provided sample script installs a second language (in this case Japanese (ja-JP)). Since this language is backed by an lp.cab, there's no need to add a Language Experience Pack. Japanese is added to both the main operating system and to the recovery environment to allow the user to see the recovery screens in Japanese. This includes adding localized versions of the packages currently installed in the recovery image.

Optional Components, along with the .NET feature, can be installed offline, however doing so creates pending operations that require the device to restart. As a result, the call to perform image cleanup would fail. There are two options to avoid the cleanup failure. One option is to skip the image cleanup step, though that results in a larger install.wim. Another option is to install the .NET and Optional Components in a step after cleanup but before export. This is the option in the sample script. By doing this, you'll have to start with the original install.wim (with no pending actions) when you maintain or update the image the next time (for example, the next month).


### Checkpoint cumulative updates
Starting with Windows 11, version 24H2, the latest cumulative update may have a prerequisite cumulative update that is required to be installed first. These are known as checkpoint cumulative updates. In these cases, the cumulative update file level differentials are based on a previous cumulative update instead of the Windows RTM release. The benefit is a smaller update package and faster installation. When you obtain the latest cumulative update from the [Microsoft Update Catalog](https://catalog.update.microsoft.com), checkpoint cumulative updates will be available from the download button. In addition, the knowledge base article for the cumulative update will provide additional information. 

To install the checkpoint(s) when servicing the Windows OS (steps 9 & 12) and WinPE (steps 17 & 23), call `Add-WindowsPackage` with the target cumulative update. The folder from `-PackagePath` will be used to discover and install one or more checkpoints as needed. Only the target cumulative update and checkpoint cumulative updates should be in the `-PackagePath` folder. Cumulative update packages with a revision <= the target cumulative update will be processed. If you are not customizing the image with additional languages and/or optional features, then separate calls to `Add-WindowsPackage` (checkpoint cumulative updates first) can be used for steps 9 & 17 above. Separate calls cannot be used for steps 12 and 23.


## Windows PowerShell scripts to apply Dynamic Updates to an existing image

These examples are for illustration only, and therefore lack error handling. The script assumes that the following packages are stored locally in this folder structure:

|Folder                     |Description                                                                                                                              |
|---------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|
|C:\mediaRefresh            | Parent folder that contains the PowerShell script                                                                                       |
|C:\mediaRefresh\oldMedia   | Folder that contains the original media that will be refreshed. For example, contains Setup.exe, and \sources folder.                   |
|C:\mediaRefresh\newMedia   | Folder that will contain the updated media. It's copied from \oldMedia, then used as the target for all update and cleanup operations. |

### Get started

The script starts by declaring global variables and creating folders to use for mounting images. Then, make a copy of the original media, from \oldMedia to \newMedia, keeping the original media in case there's a script error and it's necessary to start over from a known state. Also, it provides a comparison of old versus new media to evaluate changes. To ensure that the new media updates, make sure they aren't read-only.

```powershell
#Requires -RunAsAdministrator

function Get-TS { return "{0:HH:mm:ss}" -f [DateTime]::Now }

Write-Output "$(Get-TS): Starting media refresh"

# Declare language for showcasing adding optional localized components
$LANG  = "ja-jp"
$LANG_FONT_CAPABILITY = "jpan"

# Declare media for FOD and LPs
# Note: Starting with Windows 11, version 21H2, the language pack (LANGPACK) ISO has been superseded by the FOD ISO.
# Language packs and the \Windows Preinstallation Environment packages are part of the LOF ISO.
# If you are using this script for Windows 10, modify to mount and use the LANGPACK ISO.
$FOD_ISO_PATH    = "C:\mediaRefresh\packages\FOD-PACKAGES_OEM_PT1_amd64fre_MULTI.iso"

# Declare Dynamic Update packages. A dedicated folder is used for the latest cumulative update, and as needed
# checkpoint cumulative updates.
$LCU_PATH        = "C:\mediaRefresh\packages\CU\LCU.msu"
$SSU_PATH        = "C:\mediaRefresh\packages\Other\SSU_DU.msu"
$SETUP_DU_PATH   = "C:\mediaRefresh\packages\Other\Setup_DU.cab"
$SAFE_OS_DU_PATH = "C:\mediaRefresh\packages\Other\SafeOS_DU.cab"
$DOTNET_CU_PATH  = "C:\mediaRefresh\packages\Other\DotNet_CU.msu"

# Declare folders for mounted images and temp files
$MEDIA_OLD_PATH  = "C:\mediaRefresh\oldMedia"
$MEDIA_NEW_PATH  = "C:\mediaRefresh\newMedia"
$WORKING_PATH    = "C:\mediaRefresh\temp"
$MAIN_OS_MOUNT   = "C:\mediaRefresh\temp\MainOSMount"
$WINRE_MOUNT     = "C:\mediaRefresh\temp\WinREMount"
$WINPE_MOUNT     = "C:\mediaRefresh\temp\WinPEMount"

# Mount the Features on Demand ISO
Write-Output "$(Get-TS): Mounting FOD ISO"
$FOD_ISO_DRIVE_LETTER = (Mount-DiskImage -ImagePath $FOD_ISO_PATH -ErrorAction stop | Get-Volume).DriveLetter

# Note: Starting with Windows 11, version 21H2, the correct path for main OS language and optional features
# moved to \LanguagesAndOptionalFeatures instead of the root. For Windows 10, use $FOD_PATH = $FOD_ISO_DRIVE_LETTER + ":\"
$FOD_PATH = $FOD_ISO_DRIVE_LETTER + ":\LanguagesAndOptionalFeatures"

# Declare language related cabs
$WINPE_OC_PATH              = "$FOD_ISO_DRIVE_LETTER`:\Windows Preinstallation Environment\x64\WinPE_OCs"
$WINPE_OC_LANG_PATH         = "$WINPE_OC_PATH\$LANG"
$WINPE_OC_LANG_CABS         = Get-ChildItem $WINPE_OC_LANG_PATH -Name
$WINPE_OC_LP_PATH           = "$WINPE_OC_LANG_PATH\lp.cab"
$WINPE_FONT_SUPPORT_PATH    = "$WINPE_OC_PATH\WinPE-FontSupport-$LANG.cab"
$WINPE_SPEECH_TTS_PATH      = "$WINPE_OC_PATH\WinPE-Speech-TTS.cab"
$WINPE_SPEECH_TTS_LANG_PATH = "$WINPE_OC_PATH\WinPE-Speech-TTS-$LANG.cab"
$OS_LP_PATH                 = "$FOD_PATH\Microsoft-Windows-Client-Language-Pack_x64_$LANG.cab"

# Create folders for mounting images and storing temporary files
New-Item -ItemType directory -Path $WORKING_PATH -ErrorAction Stop | Out-Null
New-Item -ItemType directory -Path $MAIN_OS_MOUNT -ErrorAction stop | Out-Null
New-Item -ItemType directory -Path $WINRE_MOUNT -ErrorAction stop | Out-Null
New-Item -ItemType directory -Path $WINPE_MOUNT -ErrorAction stop | Out-Null

# Keep the original media, make a copy of it for the new, updated media.
Write-Output "$(Get-TS): Copying original media to new media path"
Copy-Item -Path $MEDIA_OLD_PATH"\*" -Destination $MEDIA_NEW_PATH -Force -Recurse -ErrorAction stop | Out-Null
Get-ChildItem -Path $MEDIA_NEW_PATH -Recurse | Where-Object { -not $_.PSIsContainer -and $_.IsReadOnly } | ForEach-Object { $_.IsReadOnly = $false }
```

### Update WinRE and each main OS Windows edition

The script will update each edition of Windows within the main operating system file (install.wim). For each edition, the main OS image is mounted. 

For the first image, Winre.wim is copied to the working folder, and mounted. It then applies servicing stack Dynamic Update, since its components are used for updating other components. Since the script is optionally adding Japanese, it adds the language pack to the image, and installs the Japanese versions of all optional packages already installed in Winre.wim. Then, it applies the Safe OS Dynamic Update package. It finishes by cleaning and exporting the image to reduce the image size. 

Next, for the mounted OS image, the script starts by applying the servicing stack Dynamic Update. Then, it adds Japanese language support and then the Japanese language features. Unlike the Dynamic Update packages, it uses `Add-WindowsCapability` to add these features. For a full list of such features, and their associated capability name, see [Available Features on Demand](/windows-hardware/manufacture/desktop/features-on-demand-non-language-fod). Now is the time to enable other Optional Components or add other Features on Demand. If such a feature has an associated cumulative update (for example, .NET), this is the time to apply those. The script then proceeds with applying the latest cumulative update. Finally, the script cleans and exports the image. You can install Optional Components, along with the .NET feature, offline, but that requires the device to be restarted. This is why the script installs .NET and Optional Components after cleanup and before export.

This process is repeated for each edition of Windows within the main operating system file. To reduce size, the serviced Winre.wim file from the first image is saved, and used to update each subsequent Windows edition. This reduces the final size of install.wim. 


```powershell
#
# Update each main OS Windows image including the Windows Recovery Environment (WinRE)
#

# Get the list of images contained within the main OS
$WINOS_IMAGES = Get-WindowsImage -ImagePath $MEDIA_NEW_PATH"\sources\install.wim"

Foreach ($IMAGE in $WINOS_IMAGES) {

    # first mount the main OS image
    Write-Output "$(Get-TS): Mounting main OS, image index $($IMAGE.ImageIndex)"
    Mount-WindowsImage -ImagePath $MEDIA_NEW_PATH"\sources\install.wim" -Index $IMAGE.ImageIndex -Path $MAIN_OS_MOUNT -ErrorAction stop| Out-Null

    if ($IMAGE.ImageIndex -eq "1") {

        #
        # update Windows Recovery Environment (WinRE) within this OS image
        #
        Copy-Item -Path $MAIN_OS_MOUNT"\windows\system32\recovery\winre.wim" -Destination $WORKING_PATH"\winre.wim" -Force -ErrorAction stop | Out-Null
        Write-Output "$(Get-TS): Mounting WinRE"
        Mount-WindowsImage -ImagePath $WORKING_PATH"\winre.wim" -Index 1 -Path $WINRE_MOUNT -ErrorAction stop | Out-Null

        # Add servicing stack update (Step 1 from the table)

        # Depending on the Windows release that you are updating, there are 2 different approaches for updating the servicing stack
        # The first approach is to use the combined cumulative update. This is for Windows releases that are shipping a combined 
        # cumulative update that includes the servicing stack updates (i.e. SSU + LCU are combined). Windows 11, version 21H2 and 
        # Windows 11, version 22H2 are examples. In these cases, the servicing stack update is not published seperately; the combined 
        # cumulative update should be used for this step. However, in hopefully rare cases, there may breaking change in the combined 
        # cumulative update format, that requires a standalone servicing stack update to be published, and installed first before the 
        # combined cumulative update can be installed.

        # This is the code to handle the rare case that the SSU is published and required for the combined cumulative update
        # Write-Output "$(Get-TS): Adding package $SSU_PATH"
        # Add-WindowsPackage -Path $WINRE_MOUNT -PackagePath $SSU_PATH | Out-Null

        # Now, attempt the combined cumulative update.
        # There is a known issue where the servicing stack update is installed, but the cumulative update will fail. This error should 
        # be caught and ignored, as the last step will be to apply the Safe OS update and thus the image will be left with the correct 
        # packages installed.

        
        Write-Output "$(Get-TS): Adding package $LCU_PATH to WinRE"        
        try
        {
            
            Add-WindowsPackage -Path $WINRE_MOUNT -PackagePath $LCU_PATH | Out-Null  
        }
        Catch
        {
            $theError = $_
            Write-Output "$(Get-TS): $theError"
    
            if ($theError.Exception -like "*0x8007007e*") {
                Write-Output "$(Get-TS): This failure is a known issue with combined cumulative update, we can ignore."
            }
            else {
                throw
            }
        }

        # The second approach for Step 1 is for Windows releases that have not adopted the combined cumulative update
        # but instead continue to have a seperate servicing stack update published. In this case, we'll install the SSU
        # update. This second approach is commented out below.

        # Write-Output "$(Get-TS): Adding package $SSU_PATH"
        # Add-WindowsPackage -Path $WINRE_MOUNT -PackagePath $SSU_PATH | Out-Null

        #
        # Optional: Add the language to recovery environment
        #
        # Install lp.cab cab
        Write-Output "$(Get-TS): Adding package $WINPE_OC_LP_PATH to WinRE"
        Add-WindowsPackage -Path $WINRE_MOUNT -PackagePath $WINPE_OC_LP_PATH -ErrorAction stop | Out-Null

        # Install language cabs for each optional package installed
        $WINRE_INSTALLED_OC = Get-WindowsPackage -Path $WINRE_MOUNT
        Foreach ($PACKAGE in $WINRE_INSTALLED_OC) {

            if ( ($PACKAGE.PackageState -eq "Installed") -and ($PACKAGE.PackageName.startsWith("WinPE-")) -and ($PACKAGE.ReleaseType -eq "FeaturePack") ) {

                $INDEX = $PACKAGE.PackageName.IndexOf("-Package")
                if ($INDEX -ge 0) {
                    $OC_CAB = $PACKAGE.PackageName.Substring(0, $INDEX) + "_" + $LANG + ".cab"
                    if ($WINPE_OC_LANG_CABS.Contains($OC_CAB)) {
                        $OC_CAB_PATH = Join-Path $WINPE_OC_LANG_PATH $OC_CAB
                        Write-Output "$(Get-TS): Adding package $OC_CAB_PATH to WinRE"
                        Add-WindowsPackage -Path $WINRE_MOUNT -PackagePath $OC_CAB_PATH -ErrorAction stop | Out-Null  
                    }
                }
            }
        }

        # Add font support for the new language
        if ( (Test-Path -Path $WINPE_FONT_SUPPORT_PATH) ) {
            Write-Output "$(Get-TS): Adding package $WINPE_FONT_SUPPORT_PATH to WinRE"
            Add-WindowsPackage -Path $WINRE_MOUNT -PackagePath $WINPE_FONT_SUPPORT_PATH -ErrorAction stop | Out-Null
        }

        # Add TTS support for the new language
        if (Test-Path -Path $WINPE_SPEECH_TTS_PATH) {
            if ( (Test-Path -Path $WINPE_SPEECH_TTS_LANG_PATH) ) {

                Write-Output "$(Get-TS): Adding package $WINPE_SPEECH_TTS_PATH to WinRE"
                Add-WindowsPackage -Path $WINRE_MOUNT -PackagePath $WINPE_SPEECH_TTS_PATH -ErrorAction stop | Out-Null

                Write-Output "$(Get-TS): Adding package $WINPE_SPEECH_TTS_LANG_PATH to WinRE"
                Add-WindowsPackage -Path $WINRE_MOUNT -PackagePath $WINPE_SPEECH_TTS_LANG_PATH -ErrorAction stop | Out-Null
            }
        }

        # Add Safe OS
        Write-Output "$(Get-TS): Adding package $SAFE_OS_DU_PATH to WinRE"
        Add-WindowsPackage -Path $WINRE_MOUNT -PackagePath $SAFE_OS_DU_PATH -ErrorAction stop | Out-Null

        # Perform image cleanup
        Write-Output "$(Get-TS): Performing image cleanup on WinRE"
        DISM /image:$WINRE_MOUNT /cleanup-image /StartComponentCleanup /ResetBase /Defer | Out-Null

        # Dismount
        Dismount-WindowsImage -Path $WINRE_MOUNT  -Save -ErrorAction stop | Out-Null

        # Export
        Write-Output "$(Get-TS): Exporting image to $WORKING_PATH\winre.wim"
        Export-WindowsImage -SourceImagePath $WORKING_PATH"\winre.wim" -SourceIndex 1 -DestinationImagePath $WORKING_PATH"\winre2.wim" -ErrorAction stop | Out-Null

    }
    
    Copy-Item -Path $WORKING_PATH"\winre2.wim" -Destination $MAIN_OS_MOUNT"\windows\system32\recovery\winre.wim" -Force -ErrorAction stop | Out-Null
    
    #
    # update Main OS
    #

    # Add servicing stack update (Step 18 from the table)

    # Depending on the Windows release that you are updating, there are 2 different approaches for updating the servicing stack
    # The first approach is to use the combined cumulative update. This is for Windows releases that are shipping a combined cumulative update that
    # includes the servicing stack updates (i.e. SSU + LCU are combined). Windows 11, version 21H2 and Windows 11, version 22H2 are examples. In these
    # cases, the servicing stack update is not published seperately; the combined cumulative update should be used for this step. However, in hopefully
    # rare cases, there may breaking change in the combined cumulative update format, that requires a standalone servicing stack update to be published, 
    # and installed first before the combined cumulative update can be installed.

    # This is the code to handle the rare case that the SSU is published and required for the combined cumulative update
    # Write-Output "$(Get-TS): Adding package $SSU_PATH"
    # Add-WindowsPackage -Path $MAIN_OS_MOUNT -PackagePath $SSU_PATH | Out-Null

    # Now, attempt the combined cumulative update. Unlike WinRE and WinPE, we don't need to check for error 0x8007007e
    Write-Output "$(Get-TS): Adding package $LCU_PATH to main OS, index $($IMAGE.ImageIndex)"
    Add-WindowsPackage -Path $MAIN_OS_MOUNT -PackagePath $LCU_PATH | Out-Null

    # The second approach for Step 18 is for Windows releases that have not adopted the combined cumulative update
    # but instead continue to have a seperate servicing stack update published. In this case, we'll install the SSU
    # update. This second approach is commented out below.

    # Write-Output "$(Get-TS): Adding package $SSU_PATH to main OS, index $($IMAGE.ImageIndex)"
    # Add-WindowsPackage -Path $MAIN_OS_MOUNT -PackagePath $SSU_PATH | Out-Null

    # Optional: Add language to main OS
    Write-Output "$(Get-TS): Adding package $OS_LP_PATH to main OS, index $($IMAGE.ImageIndex)"
    Add-WindowsPackage -Path $MAIN_OS_MOUNT -PackagePath $OS_LP_PATH -ErrorAction stop | Out-Null

    # Optional: Add a Features on Demand to the image
    Write-Output "$(Get-TS): Adding language FOD: Language.Fonts.Jpan~~~und-JPAN~0.0.1.0 to main OS, index $($IMAGE.ImageIndex)"
    Add-WindowsCapability -Name "Language.Fonts.$LANG_FONT_CAPABILITY~~~und-$LANG_FONT_CAPABILITY~0.0.1.0" -Path $MAIN_OS_MOUNT -Source $FOD_PATH -ErrorAction stop | Out-Null

    Write-Output "$(Get-TS): Adding language FOD: Language.Basic~~~$LANG~0.0.1.0 to main OS, index $($IMAGE.ImageIndex)"
    Add-WindowsCapability -Name "Language.Basic~~~$LANG~0.0.1.0" -Path $MAIN_OS_MOUNT -Source $FOD_PATH -ErrorAction stop | Out-Null

    Write-Output "$(Get-TS): Adding language FOD: Language.OCR~~~$LANG~0.0.1.0 to main OS, index $($IMAGE.ImageIndex)"
    Add-WindowsCapability -Name "Language.OCR~~~$LANG~0.0.1.0" -Path $MAIN_OS_MOUNT -Source $FOD_PATH -ErrorAction stop | Out-Null

    Write-Output "$(Get-TS): Adding language FOD: Language.Handwriting~~~$LANG~0.0.1.0 to main OS, index $($IMAGE.ImageIndex)"
    Add-WindowsCapability -Name "Language.Handwriting~~~$LANG~0.0.1.0" -Path $MAIN_OS_MOUNT -Source $FOD_PATH -ErrorAction stop | Out-Null

    Write-Output "$(Get-TS): Adding language FOD: Language.TextToSpeech~~~$LANG~0.0.1.0 to main OS, index $($IMAGE.ImageIndex)"
    Add-WindowsCapability -Name "Language.TextToSpeech~~~$LANG~0.0.1.0" -Path $MAIN_OS_MOUNT -Source $FOD_PATH -ErrorAction stop | Out-Null

    Write-Output "$(Get-TS): Adding language FOD: Language.Speech~~~$LANG~0.0.1.0 to main OS, index $($IMAGE.ImageIndex)"
    Add-WindowsCapability -Name "Language.Speech~~~$LANG~0.0.1.0" -Path $MAIN_OS_MOUNT -Source $FOD_PATH -ErrorAction stop | Out-Null

    # Note: If I wanted to enable additional Features on Demand, I'd add these here.

    # Add latest cumulative update
    Write-Output "$(Get-TS): Adding package $LCU_PATH to main OS, index $($IMAGE.ImageIndex)"
    Add-WindowsPackage -Path $MAIN_OS_MOUNT -PackagePath $LCU_PATH -ErrorAction stop | Out-Null

    # Perform image cleanup
    Write-Output "$(Get-TS): Performing image cleanup on main OS, index $($IMAGE.ImageIndex)"
    DISM /image:$MAIN_OS_MOUNT /cleanup-image /StartComponentCleanup | Out-Null

    #
    # Note: If I wanted to enable additional Optional Components, I'd add these here.
    # In addition, we'll add .NET 3.5 here as well. Both .NET and Optional Components might require
    # the image to be booted, and thus if we tried to cleanup after installation, it would fail.
    #

    Write-Output "$(Get-TS): Adding NetFX3~~~~ to main OS, index $($IMAGE.ImageIndex)"
    Add-WindowsCapability -Name "NetFX3~~~~" -Path $MAIN_OS_MOUNT -Source $FOD_PATH -ErrorAction stop | Out-Null

    # Add .NET Cumulative Update
    Write-Output "$(Get-TS): Adding package $DOTNET_CU_PATH to main OS, index $($IMAGE.ImageIndex)"
    Add-WindowsPackage -Path $MAIN_OS_MOUNT -PackagePath $DOTNET_CU_PATH -ErrorAction stop | Out-Null

    # Dismount
    Dismount-WindowsImage -Path $MAIN_OS_MOUNT -Save -ErrorAction stop | Out-Null

    # Export
    Write-Output "$(Get-TS): Exporting image to $WORKING_PATH\install2.wim"
    Export-WindowsImage -SourceImagePath $MEDIA_NEW_PATH"\sources\install.wim" -SourceIndex $IMAGE.ImageIndex -DestinationImagePath $WORKING_PATH"\install2.wim" -ErrorAction stop | Out-Null

}

Move-Item -Path $WORKING_PATH"\install2.wim" -Destination $MEDIA_NEW_PATH"\sources\install.wim" -Force -ErrorAction stop | Out-Null

```

### Update WinPE

This script is similar to the one that updates WinRE, but instead it mounts Boot.wim, applies the packages with the latest cumulative update last, and saves. It repeats this for all images inside of Boot.wim, typically two images. It starts by applying the servicing stack Dynamic Update. Since the script is customizing this media with Japanese, it installs the language pack from the WinPE folder on the language pack ISO. Additionally, it adds font support and text to speech (TTS) support. Since the script is adding a new language, it rebuilds lang.ini, used to identify languages installed in the image. For the second image, we'll save setup.exe and setuphost.exe for later use, to ensure these versions matches the \sources\setup.exe and \sources\setuphost.exe version from the installation media. If these binaries aren't identical, Windows Setup will fail during installation. We'll also save the serviced boot manager files for later use in the script. Finally, the script cleans and exports Boot.wim, and copies it back to the new media.

```powershell
#
# update Windows Preinstallation Environment (WinPE)
#

# Get the list of images contained within WinPE
$WINPE_IMAGES = Get-WindowsImage -ImagePath $MEDIA_NEW_PATH"\sources\boot.wim"

Foreach ($IMAGE in $WINPE_IMAGES) {

    # update WinPE
    Write-Output "$(Get-TS): Mounting WinPE, image index $($IMAGE.ImageIndex)"
    Mount-WindowsImage -ImagePath $MEDIA_NEW_PATH"\sources\boot.wim" -Index $IMAGE.ImageIndex -Path $WINPE_MOUNT -ErrorAction stop | Out-Null

    # Add servicing stack update (Step 9 from the table)

    # Depending on the Windows release that you are updating, there are 2 different approaches for updating the servicing stack
    # The first approach is to use the combined cumulative update. This is for Windows releases that are shipping a combined 
    # cumulative update that includes the servicing stack updates (i.e. SSU + LCU are combined). Windows 11, version 21H2 and 
    # Windows 11, version 22H2 are examples. In these cases, the servicing stack update is not published separately; the combined 
    # cumulative update should be used for this step. However, in hopefully rare cases, there may breaking change in the combined 
    # cumulative update format, that requires a standalone servicing stack update to be published, and installed first before the 
    # combined cumulative update can be installed.

    # This is the code to handle the rare case that the SSU is published and required for the combined cumulative update
    # Write-Output "$(Get-TS): Adding package $SSU_PATH"
    # Add-WindowsPackage -Path $WINPE_MOUNT -PackagePath $SSU_PATH | Out-Null

    # Now, attempt the combined cumulative update.
    # There is a known issue where the servicing stack update is installed, but the cumulative update will fail.
    # This error should be caught and ignored, as the last step will be to apply the cumulative update 
    # (or in this case the combined cumulative update) and thus the image will be left with the correct packages installed.

    try
    {
        Write-Output "$(Get-TS): Adding package $LCU_PATH to WinPE, image index $($IMAGE.ImageIndex)"
        Add-WindowsPackage -Path $WINPE_MOUNT -PackagePath $LCU_PATH | Out-Null  
    }
    Catch
    {
        $theError = $_
        Write-Output "$(Get-TS): $theError"

        if ($theError.Exception -like "*0x8007007e*") {
            Write-Output "$(Get-TS): This failure is a known issue with combined cumulative update, we can ignore."
        }
        else {
            throw
        }
    }

    # The second approach for Step 9 is for Windows releases that have not adopted the combined cumulative update
    # but instead continue to have a separate servicing stack update published. In this case, we'll install the SSU
    # update. This second approach is commented out below.

    # Write-Output "$(Get-TS): Adding package $SSU_PATH"
    # Add-WindowsPackage -Path $WINPE_MOUNT -PackagePath $SSU_PATH | Out-Null

    # Install lp.cab cab
    Write-Output "$(Get-TS): Adding package $WINPE_OC_LP_PATH to WinPE, image index $($IMAGE.ImageIndex)"
    Add-WindowsPackage -Path $WINPE_MOUNT -PackagePath $WINPE_OC_LP_PATH -ErrorAction stop | Out-Null

    # Install language cabs for each optional package installed
    $WINPE_INSTALLED_OC = Get-WindowsPackage -Path $WINPE_MOUNT
    Foreach ($PACKAGE in $WINPE_INSTALLED_OC) {

        if ( ($PACKAGE.PackageState -eq "Installed") -and ($PACKAGE.PackageName.startsWith("WinPE-")) -and ($PACKAGE.ReleaseType -eq "FeaturePack") ) {

            $INDEX = $PACKAGE.PackageName.IndexOf("-Package")
            if ($INDEX -ge 0) {

                $OC_CAB = $PACKAGE.PackageName.Substring(0, $INDEX) + "_" + $LANG + ".cab"
                if ($WINPE_OC_LANG_CABS.Contains($OC_CAB)) {
                    $OC_CAB_PATH = Join-Path $WINPE_OC_LANG_PATH $OC_CAB
                    Write-Output "$(Get-TS): Adding package $OC_CAB_PATH to WinPE, image index $($IMAGE.ImageIndex)"
                    Add-WindowsPackage -Path $WINPE_MOUNT -PackagePath $OC_CAB_PATH -ErrorAction stop | Out-Null  
                }
            }
        }
    }

    # Add font support for the new language
    if ( (Test-Path -Path $WINPE_FONT_SUPPORT_PATH) ) {
        Write-Output "$(Get-TS): Adding package $WINPE_FONT_SUPPORT_PATH to WinPE, image index $($IMAGE.ImageIndex)"
        Add-WindowsPackage -Path $WINPE_MOUNT -PackagePath $WINPE_FONT_SUPPORT_PATH -ErrorAction stop | Out-Null
    }

    # Add TTS support for the new language
    if (Test-Path -Path $WINPE_SPEECH_TTS_PATH) {
        if ( (Test-Path -Path $WINPE_SPEECH_TTS_LANG_PATH) ) {

            Write-Output "$(Get-TS): Adding package $WINPE_SPEECH_TTS_PATH to WinPE, image index $($IMAGE.ImageIndex)"
            Add-WindowsPackage -Path $WINPE_MOUNT -PackagePath $WINPE_SPEECH_TTS_PATH -ErrorAction stop | Out-Null

            Write-Output "$(Get-TS): Adding package $WINPE_SPEECH_TTS_LANG_PATH to WinPE, image index $($IMAGE.ImageIndex)"
            Add-WindowsPackage -Path $WINPE_MOUNT -PackagePath $WINPE_SPEECH_TTS_LANG_PATH -ErrorAction stop | Out-Null
        }
    }

    # Generates a new Lang.ini file which is used to define the language packs inside the image
    if ( (Test-Path -Path $WINPE_MOUNT"\sources\lang.ini") ) {
        Write-Output "$(Get-TS): Updating lang.ini"
        DISM /image:$WINPE_MOUNT /Gen-LangINI /distribution:$WINPE_MOUNT | Out-Null
    }

    # Add latest cumulative update
    Write-Output "$(Get-TS): Adding package $LCU_PATH to WinPE, image index $($IMAGE.ImageIndex)"
    Add-WindowsPackage -Path $WINPE_MOUNT -PackagePath $LCU_PATH -ErrorAction stop | Out-Null

    # Perform image cleanup
    Write-Output "$(Get-TS): Performing image cleanup on WinPE, image index $($IMAGE.ImageIndex)"
    DISM /image:$WINPE_MOUNT /cleanup-image /StartComponentCleanup /ResetBase /Defer | Out-Null

    if ($IMAGE.ImageIndex -eq "2") {

        # Save setup.exe for later use. This will address possible binary mismatch with the version in the main OS \sources folder
        Copy-Item -Path $WINPE_MOUNT"\sources\setup.exe" -Destination $WORKING_PATH"\setup.exe" -Force -ErrorAction stop | Out-Null
        
        # Save setuphost.exe for later use. This will address possible binary mismatch with the version in the main OS \sources folder
        # This is only required starting with Windows 11 version 24H2
        $TEMP = Get-WindowsImage -ImagePath $MEDIA_NEW_PATH"\sources\boot.wim" -Index $IMAGE.ImageIndex
        if ([System.Version]$TEMP.Version -ge [System.Version]"10.0.26100") {
            
            Copy-Item -Path $WINPE_MOUNT"\sources\setuphost.exe" -Destination $WORKING_PATH"\setuphost.exe" -Force -ErrorAction stop | Out-Null
        }
        else {

            Write-Output "$(Get-TS): Skipping copy of setuphost.exe; image version $($TEMP.Version)"
        }
        
        # Save serviced boot manager files later copy to the root media.
        Copy-Item -Path $WINPE_MOUNT"\Windows\boot\efi\bootmgfw.efi" -Destination $WORKING_PATH"\bootmgfw.efi" -Force -ErrorAction stop | Out-Null
        Copy-Item -Path $WINPE_MOUNT"\Windows\boot\efi\bootmgr.efi" -Destination $WORKING_PATH"\bootmgr.efi" -Force -ErrorAction stop | Out-Null
    
    }
        
    # Dismount
    Dismount-WindowsImage -Path $WINPE_MOUNT -Save -ErrorAction stop | Out-Null

    #Export WinPE
    Write-Output "$(Get-TS): Exporting image to $WORKING_PATH\boot2.wim"
    Export-WindowsImage -SourceImagePath $MEDIA_NEW_PATH"\sources\boot.wim" -SourceIndex $IMAGE.ImageIndex -DestinationImagePath $WORKING_PATH"\boot2.wim" -ErrorAction stop | Out-Null

}

Move-Item -Path $WORKING_PATH"\boot2.wim" -Destination $MEDIA_NEW_PATH"\sources\boot.wim" -Force -ErrorAction stop | Out-Null
```

### Update remaining media files

This part of the script updates the Setup files. It simply copies the individual files in the Setup Dynamic Update package to the new media. This step brings in updated Setup files as needed, along with the latest compatibility database, and replacement component manifests. This script also does a final replacement of setup.exe, setuphost.exe and boot manager files using the previously saved versions from WinPE.

```powershell
#
# update remaining files on media
#

# Add Setup DU by copy the files from the package into the newMedia
Write-Output "$(Get-TS): Adding package $SETUP_DU_PATH"
cmd.exe /c $env:SystemRoot\System32\expand.exe $SETUP_DU_PATH -F:* $MEDIA_NEW_PATH"\sources" | Out-Null

# Copy setup.exe from boot.wim, saved earlier.
Write-Output "$(Get-TS): Copying $WORKING_PATH\setup.exe to $MEDIA_NEW_PATH\sources\setup.exe"
Copy-Item -Path $WORKING_PATH"\setup.exe" -Destination $MEDIA_NEW_PATH"\sources\setup.exe" -Force -ErrorAction stop | Out-Null

# Copy setuphost.exe from boot.wim, saved earlier.
if (Test-Path -Path $WORKING_PATH"\setuphost.exe") {

    Write-Output "$(Get-TS): Copying $WORKING_PATH\setuphost.exe to $MEDIA_NEW_PATH\sources\setuphost.exe"
    Copy-Item -Path $WORKING_PATH"\setuphost.exe" -Destination $MEDIA_NEW_PATH"\sources\setuphost.exe" -Force -ErrorAction stop | Out-Null
}

# Copy bootmgr files from boot.wim, saved earlier.
$MEDIA_NEW_FILES = Get-ChildItem $MEDIA_NEW_PATH -Force -Recurse -Filter b*.efi

Foreach ($File in $MEDIA_NEW_FILES){
    if (($File.Name -ieq "bootmgfw.efi") -or ($File.Name -ieq "bootx64.efi") -or ($File.Name -ieq "bootia32.efi") -or ($File.Name -ieq "bootaa64.efi")) 
    {

        Write-Output "$(Get-TS): Copying $WORKING_PATH\bootmgfw.efi to $($File.FullName)"
        Copy-Item -Path $WORKING_PATH"\bootmgfw.efi" -Destination $File.FullName -Force -ErrorAction stop | Out-Null
    }
    elseif ($File.Name -ieq "bootmgr.efi") 
    {

        Write-Output "$(Get-TS): Copying $WORKING_PATH\bootmgr.efi to $($File.FullName)"
        Copy-Item -Path $WORKING_PATH"\bootmgr.efi" -Destination $File.FullName -Force -ErrorAction stop | Out-Null
    }
}

```

### Finish up

As a last step, the script removes the working folder of temporary files, and unmounts our language pack and Features on Demand ISOs.

```powershell
#
# Perform final cleanup
#

# Remove our working folder
Remove-Item -Path $WORKING_PATH -Recurse -Force -ErrorAction stop | Out-Null

# Dismount ISO images
Write-Output "$(Get-TS): Dismounting ISO images"
Dismount-DiskImage -ImagePath $FOD_ISO_PATH -ErrorAction stop | Out-Null

Write-Output "$(Get-TS): Media refresh completed!"
```
