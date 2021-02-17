---
title: Migrating and acquiring optional Windows content
description: Keep language resources and Features on Demand during operating system updates
ms.prod: w10
ms.mktglfcycl: manage
audience: itpro
itproauthor: jaimeo
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
manager: laurawi
ms.collection: M365-modern-desktop
ms.topic: article
---

# Migrating and acquiring optional Windows content during updates

This article provides some background on the problem of keeping language resources and Features on Demand during operating system updates and offers guidance to help you move forward in the short term and prepare for the long term.

When you update the operating system, it’s critical to keep language resources and Features on Demand (FODs). Many commercial organizations use Configuration Manager or other management tools to distribute and orchestrate Windows 10 setup using a local Windows image or WIM file (a “media-based” or “task-sequence-based” update). Others do in-place updates using an approved Windows 10 feature update by using Windows Server Update Services (WSUS), Configuration Manager, or equivalent tools (a "servicing-based” update). 

Neither approach contains the full set of Windows optional features that a user’s device might need, so those features are not migrated to the new operating system. Further, those features are not available in Configuration Manager or WSUS for on-premises acquisition after a feature update 

## What is optional content?

Optional content includes the following items:

- General Features on Demand also referred to as FODs (for example, Windows Mixed Reality)
- Language-based and regional FODs (for example, Language.Basic~~~ja-jp~0.0.1.0)
- Local Experience Packs 

Optional content isn’t included by default in the Windows image file that is part of the operating system media available in the Volume Licensing Service Center (VLSC). Instead, it’s released as an additional ISO file on VLSC. Shipping these features out of the operating system media and shipping them separately reduces the disk footprint of Windows. This provides more space for user’s data. It also reduces the time needed to service the operating system, whether installing a monthly quality update or upgrading to a newer version. A smaller default Windows image also means less data to transmit over the network.

## Why is acquiring optional content challenging?

The challenges surrounding optional content typically fall into two groups:

### Incomplete operating system updates

The first challenge is related to content migration during a feature update. When Windows Setup performs an in-place update, the new operating is written to the user’s disk alongside the old version. This is a temporary folder, where a second clean operating system is installed and prepared for the user to "move into." When this happens, Windows Setup enumerates optional content installed already in the current version and plans to install the new version of this content in the new operating system. 
 
Windows Setup needs access to the optional content to do this. Since optional content is not in the Windows image by default, Windows Setup must look elsewhere to get the Windows packages, stage them, and then install them in the new operating system. When the content can’t be found, the result is an update that is missing features on the device, a frustrated end user, and likely a help desk call. This pain point is sometimes referred to "failure to migrate optional content during update." For media-based updates, Windows will automatically try again once the new operating system boots. We call this “latent acquisition.” 

### User-initiated feature acquisition failure

The second challenge involves a failure to acquire features when a user requests them. Imagine a user running a device with a new version of Windows 10, either by using a clean installation or an in-place update. The user visits Settings, and attempts to install a second language, additional language experience features, or other optional content. Again, since these features are not in the operating system, the packages need to be acquired. For a typical user with internet access, Windows will acquire the features from a nearby Microsoft content delivery network, and everything works as designed. For commercial users, some might not have internet access or have policies to prevent acquisition over the internet. In these situations, Windows must acquire the content from an alternative location. When the content can’t be found, users are frustrated and another help desk call could result. This pain point is sometimes referred to as "failure to acquire optional content.”

## Options for acquiring optional content

Most commercial organizations understand the pain points outlined above, and discussions typically start with them asking what plans are available to address these challenges. The following table includes multiple options for consideration, depending on how you are currently deploying Windows 10. In this table,

- Migration means it supports optional content migration during an update.
- Acquisition means it supports optional content acquisition (that is, initiated by the user).
- Media means it's applicable with media-based deployments.
- Servicing means applicable with servicing-based deployments.


|Method  |Migration  |Acquisition  |Media  | Servicing |
|---------|---------|---------|---------|--------------|
|Option 1: Use Windows Update     | Yes        | Yes        | No        | Yes |
|Option 2: Enable Dynamic Update     | Yes        | No        | Yes        |Yes  |
|Option 3: Customize the Windows image before deployment     | Yes        | No       | Yes        |No |
|Option 4: Install language features during deployment     | Partial        | No        | Yes        | No |
|Option 5: Install optional content after deployment | Yes  | No |Yes | Yes |
|Option 6: Configure alternative source for Features on Demand | No  | Partial | Yes | Yes |



### Option 1: Use Windows Update

Windows Update for Business solves the optional content problem. Optional content is published and available for acquisition by Windows Setup from a nearby Microsoft content delivery network and acquired using the Unified Update Platform. Optional content migration and acquisition scenarios "just work" when the device is connected to an update service that uses the Unified Update Platform, such as Windows Update or Windows Update for Business. If for some reason a language pack fails to install during the update, the update will automatically roll back.

Starting with Windows 10, version 1709, we introduced the [Unified Update Platform](https://blogs.windows.com/windowsexperience/2016/11/03/introducing-unified-update-platform-uup/). The Unified Update Platform is an improvement in the underlying Windows update technology that results in smaller download sizes and a more efficient protocol for checking for updates, acquiring and installing the packages needed, and getting current in one update step. The technology is "unified" because it brings together the update stack for Windows 10, Windows Server, and other products, such as HoloLens. The Unified Update Platform is not currently integrated with WSUS.

You should consider moving to Windows Update for Business. Not only will the optional content scenario work seamlessly (as it does for consumer devices today), but you also get the full benefits of smaller download sizes also known as Express Updates. Further, devices that use  devices are immune to the challenge of upgrading a Windows 10 device where the operating system installation language is inadvertently changed to a new language. Otherwise, any future media-based feature updates can fail when the installation media has a different installation language. See [Upgrading Windows 10 devices with installation media different than the original OS install language](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/upgrading-windows-10-devices-with-installation-media-different/ba-p/746126) for more details, as well as our [Ignite 2019 theater session THR4002](https://medius.studios.ms/video/asset/HIGHMP4/IG19-THR4002) on this topic.

### Option 2: Enable Dynamic Update

If you’re not ready to move to Windows Update, another option is to enable Dynamic Update during a feature update. As soon as a Windows 10 feature update starts, whether via a media-based update or a WSUS-based feature update, Dynamic Update is one of the first steps invoked. Windows 10 Setup connects to an internet-facing URL hosted by Microsoft to fetch Dynamic Update content, and then applies those updates to the operating system installation media. The content acquired includes the following:

- Setup updates: Fixes to Setup.exe binaries or any files that Setup uses for feature updates.
- Safe OS updates: Fixes for the "safe OS" that are used to update Windows recovery environment (WinRE).
- Servicing stack updates: Fixes that are necessary to address the Windows 10 servicing stack issue and thus required to complete the feature update.
- Latest cumulative update: Installs the latest cumulative quality update.
- Driver updates: Latest version of applicable drivers that have already been published by manufacturers into Windows Update and meant specifically for Dynamic Update.

In addition to these updates for the new operating system, Dynamic Update will acquire optional content during the update process to ensure that the device has this content present when the update completes. So, although the device is not connected to Windows Update, it will fetch content from a nearby Microsoft content download network (CDN). This addresses the first pain point with optional content, but not user-initiated acquisition. By default, [Dynamic Update](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-command-line-options#dynamicupdate) is enabled by Windows 10 Setup. You can enable or disable Dynamic Update by using the /DynamicUpdate option in Windows Setup. If you use the servicing-based approach, you can set this with setupconfig.ini. See [Windows Setup Automation Overview](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-automation-overview) for details.

Starting in Windows 10, version 2004, Dynamic Update can be configured with additional options. For example, you might want to have the benefits of optional content migration without automatically acquiring the latest quality update. You can do that with the /DynamicUpdate NoLCU option of Windows Setup. Afterward, you would separately follow your existing process for testing and approving monthly updates. The downside of this approach is the device will go through an additional reboot for the latest cumulative update since it was not available during the feature update.

One additional consideration when using Dynamic Update is the impact to your network. One of the top blockers for this approach is the concern that each device will separately fetch this content from Microsoft. Windows 10, version 2004 setup now downloads Dynamic Update content using Delivery Optimization when available.
 For devices that aren’t connected to the internet, a subset of the Dynamic Update content is available by using WSUS and the Microsoft catalog. 

### Option 3: Customize the Windows Image before deployment

 For many organizations, the deployment workflow involves a Configuration Manager task sequence that performs a media-based update. Some customers either don’t have internet connectivity, or the connectivity is poor and so they can’t enable Dynamic Update. In these cases, we recommend installing optional content prior to deployment. This is sometimes referred to as customizing the installation media.

You can customize the Windows image in these ways:

- Applying a cumulative (quality) update
- Applying updates to the servicing stack 
- Applying updates to Setup.exe binaries or other files that Setup uses for feature updates
- Applying updates for the "safe operating system" (SafeOS) that is used for the Windows recovery environment
- Adding or removing languages
- Adding or removing Features on Demand

The benefit of this option is that the Windows image can include those additional languages, language experience features, and other Features on Demand through one-time updates to the image. Then you can use them in an existing task sequence or custom deployment where Setup.exe is involved. The downside of this approach is that it requires some preparation of the image in advance, including scripting with DISM to install the additional packages. It also means the image is the same for all devices that consume it and might contain more features than some users need. For more information on customizing your media, see [Updating Windows 10 media with Dynamic Update packages](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/updating-windows-10-media-with-dynamic-update-packages/ba-p/982477) and our [Ignite 2019 theater session THR3073](https://medius.studios.ms/video/asset/HIGHMP4/IG19-THR3073). Also like Option 2, you still have a solution for migration of optional content, but not supporting user-initiated optional content acquisition. Also, there is a variation of this option in which media is updated *on the device* just before installation. This allows for device-specific image customization based on what's currently installed.


### Option 4: Install language features during deployment

A partial solution to address the first pain point of failing to migrate optional content during upgrade is to inject a subset of optional content during the upgrade process. This approach uses the Windows 10 Setup option [/InstallLangPacks](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-command-line-options#installlangpacks) to add Language Packs and language capabilities such as text-to-speech recognition from a folder that contains the packages. This approach lets an IT pro take a subset of optional content and stage them within their network. If you use the servicing-based approach, you can configure InstallLangPacks using setupconfig.ini. See [Windows Setup Automation Overview](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-automation-overview) for details.

When Setup runs, it will inject these packages into the new operating system during installation. This means it can be an alternative to enabling Dynamic Update or customizing the operating system image before deployment. You must take care with this approach, because the packages cannot be renamed. Further, the content is coming from two separate release media ISOs. The key is to copy both the FOD packages and the FOD metadata .cab from the FOD ISO into the folder, as well as the architecture-specific Language Pack .cabs from the LPLIP ISO. Also, starting with Windows 10, version 1903, the behavior changed. In Windows 10, version 1809 and earlier, failure to install the packages wasn’t a fatal error. Starting with Windows 10, version 1903, we treat InstallLangPacks failures as fatal, and roll back the entire upgrade. The idea is to not leave the user in a bad state since media-based upgrades don’t migrate FOD and languages (unless Dynamic Update is enabled).

This approach has some interesting benefits. The original Windows image doesn’t need to be modified, possibly saving time and scripting. For some commercial customers, this is implemented as their primary pain point has to do with language support immediately after the update. 

### Option 5: Install optional content after deployment

This option is like Option 3 in that you customize the operating system image with additional optional content after it’s deployed. IT pros can extend the behavior of Windows Setup by running their own custom action scripts during and after a feature update. See [Run custom actions during feature update](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-enable-custom-actions) for details. With this approach, you can create a device-specific migration of optional content by capturing the optional content that is installed in the operating system, and then saving this list to install the same optional content in the new operating system. Like Option 4, you would internally host a network share that contains the source of the optional content packages. Then, during the execution of Setup on the device, capture the list of installed optional content from the source operating system and save. Later, after Setup completes, you use the list to install the optional content, which leaves the user’s device without loss of functionality. 

### Option 6: Configure an alternative source for optional content

Several of the options address ways to address optional content migration issues during an in-place update. To address the second pain point of easily acquiring optional content in the user-initiated case, you can configure each device by using the Specify settings for optional component installation and component repair Group Policy. This policy setting specifies the network locations that will be used for the repair of operating system corruption and for enabling optional features that have had their payload files removed. This approach has the disadvantage of additional content to be hosted within your network (additional to the operating system image you might be still deploying to some clients) but has the advantage of acquiring content within your network. Some reminders about this policy:

- The file path to the alternate source must be a fully qualified path; multiple locations can be separated by a semicolon.
- This setting does not support installing language packs from Alternate source file path, only Features on Demand. If the policy is configured to acquire content from Windows Update, language packs will be acquired.
- If this setting is not configured or disabled, files will be downloaded from the default Windows Update location, for example Windows Update for Business or WSUS).

See [Configure a Windows Repair Source](https://docs.microsoft.com/windows-hardware/manufacture/desktop/configure-a-windows-repair-source) for more information.


## Learn more

For more information about the Unified Update Platform and the approaches outlined in this article, see the following resources:

- [/InstallLangPacks](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-command-line-options#installlangpacks)
- [/DynamicUpdate](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-command-line-options#dynamicupdate)
- [Configure a Windows Repair Source](https://docs.microsoft.com/windows-hardware/manufacture/desktop/configure-a-windows-repair-source)
- [Ignite 2019 theater session THR3073](https://medius.studios.ms/video/asset/HIGHMP4/IG19-THR3073)  
- [Ignite 2019 theater session THR4002](https://medius.studios.ms/video/asset/HIGHMP4/IG19-THR4002)
- [Run custom actions during feature update](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-enable-custom-actions)
- [Unified Update Platform](https://blogs.windows.com/windowsexperience/2016/11/03/introducing-unified-update-platform-uup/)
- [Updating Windows 10 media with Dynamic Update packages](media-dynamic-update.md)
- [Windows Setup Automation Overview](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-automation-overview) 


## Sample scripts

Options 3 and 5 involve the most scripting. Sample scripts for Option 3 already exist, so we’ll look at sample scripts for [Option 5](#option-5-install-optional-content-after-deployment): Install Optional Content after Deployment.

### Creating an optional content repository

To get started, we’ll build a repository of optional content and host on a network share. This content is a subset of content from the FOD and language pack ISOs that ship with each release. We’ll configure this repository or repo with only those FODs our organization needs, using DISM /Export. For example, a superset based on taking inventory of optional features installed on existing devices. In this case, we exclude the Windows Mixed Reality feature. In addition, we copy all language packs to the root of the repository. 



```powershell
# Declare media for FOD and LPs
$LP_ISO_PATH = "C:\_IMAGE\2004_ISO\CLIENTLANGPACKDVD_OEM_MULTI.iso"
$FOD_ISO_PATH = "C:\_IMAGE\2004_ISO\FOD-PACKAGES_OEM_PT1_amd64fre_MULTI.iso"

# Declare folders 
$WORKING_PATH = "C:\_IMAGE\BuildRepo"
$MEDIA_PATH = "C:\_IMAGE\2004_SETUP"

$MAIN_OS_MOUNT = $WORKING_PATH + "\MainOSMount"
$REPO_PATH = $WORKING_PATH + "\Repo"

# Create folders for mounting image optional content repository
if (Test-Path $MAIN_OS_MOUNT) { 
    Remove-Item -Path $MAIN_OS_MOUNT -Force -Recurse -ErrorAction stop| Out-Null  
}

if (Test-Path $REPO_PATH) { 
    Remove-Item -Path $REPO_PATH -Force -Recurse -ErrorAction stop| Out-Null  
}

New-Item -ItemType Directory -Force -Path $MAIN_OS_MOUNT -ErrorAction stop| Out-Null  
New-Item -ItemType Directory -Force -Path $REPO_PATH -ErrorAction stop| Out-Null  

# Mount the main OS, I'll use this throughout the script
Write-Host "Mounting main OS"
Mount-WindowsImage -ImagePath $MEDIA_PATH"\sources\install.wim" -Index 1 -Path $MAIN_OS_MOUNT -ErrorAction stop| Out-Null  

# Mount the LP ISO
Write-Host "Mounting LP ISO"
$LP_ISO_DRIVE_LETTER = (Mount-DiskImage -ImagePath $LP_ISO_PATH -ErrorAction stop | Get-Volume).DriveLetter

# Declare language related cabs
$OS_LP_PATH = $LP_ISO_DRIVE_LETTER + ":\x64\langpacks\" + "*.cab"

# Mount the FOD ISO
Write-Host "Mounting FOD ISO"
$FOD_ISO_DRIVE_LETTER = (Mount-DiskImage -ImagePath $FOD_ISO_PATH -ErrorAction stop | Get-Volume).DriveLetter
$FOD_PATH = $FOD_ISO_DRIVE_LETTER + ":\" 

# Export the FODs from the ISO that we are interested in 
Write-Host "Exporting FODs to Repo"
DISM /image:$MAIN_OS_MOUNT /export-source /source:$FOD_PATH /target:$REPO_PATH `
    /capabilityname:Accessibility.Braille~~~~0.0.1.0 `
    /capabilityname:App.StepsRecorder~~~~0.0.1.0 `
    /capabilityname:App.WirelessDisplay.Connect~~~~0.0.1.0 `
    /capabilityname:Browser.InternetExplorer~~~~0.0.11.0 `
    /capabilityname:DirectX.Configuration.Database~~~~0.0.1.0 `
    /capabilityname:Language.Basic~~~af-za~0.0.1.0 `
    /capabilityname:Language.Basic~~~ar-sa~0.0.1.0 `
    /capabilityname:Language.Basic~~~as-in~0.0.1.0 `
    /capabilityname:Language.Basic~~~az-latn-az~0.0.1.0 `
    /capabilityname:Language.Basic~~~ba-ru~0.0.1.0 `
    /capabilityname:Language.Basic~~~be-by~0.0.1.0 `
    /capabilityname:Language.Basic~~~bg-bg~0.0.1.0 `
    /capabilityname:Language.Basic~~~bn-bd~0.0.1.0 `
    /capabilityname:Language.Basic~~~bn-in~0.0.1.0 `
    /capabilityname:Language.Basic~~~bs-latn-ba~0.0.1.0 `
    /capabilityname:Language.Basic~~~ca-es~0.0.1.0 `
    /capabilityname:Language.Basic~~~cs-cz~0.0.1.0 `
    /capabilityname:Language.Basic~~~cy-gb~0.0.1.0 `
    /capabilityname:Language.Basic~~~da-dk~0.0.1.0 `
    /capabilityname:Language.Basic~~~de-ch~0.0.1.0 `
    /capabilityname:Language.Basic~~~de-de~0.0.1.0 `
    /capabilityname:Language.Basic~~~el-gr~0.0.1.0 `
    /capabilityname:Language.Basic~~~en-au~0.0.1.0 `
    /capabilityname:Language.Basic~~~en-ca~0.0.1.0 `
    /capabilityname:Language.Basic~~~en-gb~0.0.1.0 `
    /capabilityname:Language.Basic~~~en-in~0.0.1.0 `
    /capabilityname:Language.Basic~~~en-us~0.0.1.0 `
    /capabilityname:Language.Basic~~~es-es~0.0.1.0 `
    /capabilityname:Language.Basic~~~es-mx~0.0.1.0 `
    /capabilityname:Language.Basic~~~es-us~0.0.1.0 `
    /capabilityname:Language.Basic~~~et-ee~0.0.1.0 `
    /capabilityname:Language.Basic~~~eu-es~0.0.1.0 `
    /capabilityname:Language.Basic~~~fa-ir~0.0.1.0 `
    /capabilityname:Language.Basic~~~fi-fi~0.0.1.0 `
    /capabilityname:Language.Basic~~~fil-ph~0.0.1.0 `
    /capabilityname:Language.Basic~~~fr-be~0.0.1.0 `
    /capabilityname:Language.Basic~~~fr-ca~0.0.1.0 `
    /capabilityname:Language.Basic~~~fr-ch~0.0.1.0 `
    /capabilityname:Language.Basic~~~fr-fr~0.0.1.0 `
    /capabilityname:Language.Basic~~~ga-ie~0.0.1.0 `
    /capabilityname:Language.Basic~~~gd-gb~0.0.1.0 `
    /capabilityname:Language.Basic~~~gl-es~0.0.1.0 `
    /capabilityname:Language.Basic~~~gu-in~0.0.1.0 `
    /capabilityname:Language.Basic~~~ha-latn-ng~0.0.1.0 `
    /capabilityname:Language.Basic~~~haw-us~0.0.1.0 `
    /capabilityname:Language.Basic~~~he-il~0.0.1.0 `
    /capabilityname:Language.Basic~~~hi-in~0.0.1.0 `
    /capabilityname:Language.Basic~~~hr-hr~0.0.1.0 `
    /capabilityname:Language.Basic~~~hu-hu~0.0.1.0 `
    /capabilityname:Language.Basic~~~hy-am~0.0.1.0 `
    /capabilityname:Language.Basic~~~id-id~0.0.1.0 `
    /capabilityname:Language.Basic~~~ig-ng~0.0.1.0 `
    /capabilityname:Language.Basic~~~is-is~0.0.1.0 `
    /capabilityname:Language.Basic~~~it-it~0.0.1.0 `
    /capabilityname:Language.Basic~~~ja-jp~0.0.1.0 `
    /capabilityname:Language.Basic~~~ka-ge~0.0.1.0 `
    /capabilityname:Language.Basic~~~kk-kz~0.0.1.0 `
    /capabilityname:Language.Basic~~~kl-gl~0.0.1.0 `
    /capabilityname:Language.Basic~~~kn-in~0.0.1.0 `
    /capabilityname:Language.Basic~~~kok-deva-in~0.0.1.0 `
    /capabilityname:Language.Basic~~~ko-kr~0.0.1.0 `
    /capabilityname:Language.Basic~~~ky-kg~0.0.1.0 `
    /capabilityname:Language.Basic~~~lb-lu~0.0.1.0 `
    /capabilityname:Language.Basic~~~lt-lt~0.0.1.0 `
    /capabilityname:Language.Basic~~~lv-lv~0.0.1.0 `
    /capabilityname:Language.Basic~~~mi-nz~0.0.1.0 `
    /capabilityname:Language.Basic~~~mk-mk~0.0.1.0 `
    /capabilityname:Language.Basic~~~ml-in~0.0.1.0 `
    /capabilityname:Language.Basic~~~mn-mn~0.0.1.0 `
    /capabilityname:Language.Basic~~~mr-in~0.0.1.0 `
    /capabilityname:Language.Basic~~~ms-bn~0.0.1.0 `
    /capabilityname:Language.Basic~~~ms-my~0.0.1.0 `
    /capabilityname:Language.Basic~~~mt-mt~0.0.1.0 `
    /capabilityname:Language.Basic~~~nb-no~0.0.1.0 `
    /capabilityname:Language.Basic~~~ne-np~0.0.1.0 `
    /capabilityname:Language.Basic~~~nl-nl~0.0.1.0 `
    /capabilityname:Language.Basic~~~nn-no~0.0.1.0 `
    /capabilityname:Language.Basic~~~nso-za~0.0.1.0 `
    /capabilityname:Language.Basic~~~or-in~0.0.1.0 `
    /capabilityname:Language.Basic~~~pa-in~0.0.1.0 `
    /capabilityname:Language.Basic~~~pl-pl~0.0.1.0 `
    /capabilityname:Language.Basic~~~ps-af~0.0.1.0 `
    /capabilityname:Language.Basic~~~pt-br~0.0.1.0 `
    /capabilityname:Language.Basic~~~pt-pt~0.0.1.0 `
    /capabilityname:Language.Basic~~~rm-ch~0.0.1.0 `
    /capabilityname:Language.Basic~~~ro-ro~0.0.1.0 `
    /capabilityname:Language.Basic~~~ru-ru~0.0.1.0 `
    /capabilityname:Language.Basic~~~rw-rw~0.0.1.0 `
    /capabilityname:Language.Basic~~~sah-ru~0.0.1.0 `
    /capabilityname:Language.Basic~~~si-lk~0.0.1.0 `
    /capabilityname:Language.Basic~~~sk-sk~0.0.1.0 `
    /capabilityname:Language.Basic~~~sl-si~0.0.1.0 `
    /capabilityname:Language.Basic~~~sq-al~0.0.1.0 `
    /capabilityname:Language.Basic~~~sr-cyrl-rs~0.0.1.0 `
    /capabilityname:Language.Basic~~~sr-latn-rs~0.0.1.0 `
    /capabilityname:Language.Basic~~~sv-se~0.0.1.0 `
    /capabilityname:Language.Basic~~~sw-ke~0.0.1.0 `
    /capabilityname:Language.Basic~~~ta-in~0.0.1.0 `
    /capabilityname:Language.Basic~~~te-in~0.0.1.0 `
    /capabilityname:Language.Basic~~~tg-cyrl-tj~0.0.1.0 `
    /capabilityname:Language.Basic~~~th-th~0.0.1.0 `
    /capabilityname:Language.Basic~~~tk-tm~0.0.1.0 `
    /capabilityname:Language.Basic~~~tn-za~0.0.1.0 `
    /capabilityname:Language.Basic~~~tr-tr~0.0.1.0 `
    /capabilityname:Language.Basic~~~tt-ru~0.0.1.0 `
    /capabilityname:Language.Basic~~~ug-cn~0.0.1.0 `
    /capabilityname:Language.Basic~~~uk-ua~0.0.1.0 `
    /capabilityname:Language.Basic~~~ur-pk~0.0.1.0 `
    /capabilityname:Language.Basic~~~uz-latn-uz~0.0.1.0 `
    /capabilityname:Language.Basic~~~vi-vn~0.0.1.0 `
    /capabilityname:Language.Basic~~~wo-sn~0.0.1.0 `
    /capabilityname:Language.Basic~~~xh-za~0.0.1.0 `
    /capabilityname:Language.Basic~~~yo-ng~0.0.1.0 `
    /capabilityname:Language.Basic~~~zh-cn~0.0.1.0 `
    /capabilityname:Language.Basic~~~zh-hk~0.0.1.0 `
    /capabilityname:Language.Basic~~~zh-tw~0.0.1.0 `
    /capabilityname:Language.Basic~~~zu-za~0.0.1.0 `
    /capabilityname:Language.Fonts.Arab~~~und-Arab~0.0.1.0 `
    /capabilityname:Language.Fonts.Beng~~~und-Beng~0.0.1.0 `
    /capabilityname:Language.Fonts.Cans~~~und-Cans~0.0.1.0 `
    /capabilityname:Language.Fonts.Cher~~~und-Cher~0.0.1.0 `
    /capabilityname:Language.Fonts.Deva~~~und-Deva~0.0.1.0 `
    /capabilityname:Language.Fonts.Ethi~~~und-Ethi~0.0.1.0 `
    /capabilityname:Language.Fonts.Gujr~~~und-Gujr~0.0.1.0 `
    /capabilityname:Language.Fonts.Guru~~~und-Guru~0.0.1.0 `
    /capabilityname:Language.Fonts.Hans~~~und-Hans~0.0.1.0 `
    /capabilityname:Language.Fonts.Hant~~~und-Hant~0.0.1.0 `
    /capabilityname:Language.Fonts.Hebr~~~und-Hebr~0.0.1.0 `
    /capabilityname:Language.Fonts.Jpan~~~und-Jpan~0.0.1.0 `
    /capabilityname:Language.Fonts.Khmr~~~und-Khmr~0.0.1.0 `
    /capabilityname:Language.Fonts.Knda~~~und-Knda~0.0.1.0 `
    /capabilityname:Language.Fonts.Kore~~~und-Kore~0.0.1.0 `
    /capabilityname:Language.Fonts.Laoo~~~und-Laoo~0.0.1.0 `
    /capabilityname:Language.Fonts.Mlym~~~und-Mlym~0.0.1.0 `
    /capabilityname:Language.Fonts.Orya~~~und-Orya~0.0.1.0 `
    /capabilityname:Language.Fonts.PanEuropeanSupplementalFonts~~~0.0.1.0 `
    /capabilityname:Language.Fonts.Sinh~~~und-Sinh~0.0.1.0 `
    /capabilityname:Language.Fonts.Syrc~~~und-Syrc~0.0.1.0 `
    /capabilityname:Language.Fonts.Taml~~~und-Taml~0.0.1.0 `
    /capabilityname:Language.Fonts.Telu~~~und-Telu~0.0.1.0 `
    /capabilityname:Language.Fonts.Thai~~~und-Thai~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~af-za~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~bs-latn-ba~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~ca-es~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~cs-cz~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~cy-gb~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~da-dk~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~de-de~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~el-gr~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~en-gb~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~en-us~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~es-es~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~es-mx~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~eu-es~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~fi-fi~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~fr-fr~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~ga-ie~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~gd-gb~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~gl-es~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~hi-in~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~hr-hr~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~id-id~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~it-it~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~ja-jp~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~ko-kr~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~lb-lu~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~mi-nz~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~ms-bn~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~ms-my~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~nb-no~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~nl-nl~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~nn-no~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~nso-za~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~pl-pl~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~pt-br~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~pt-pt~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~rm-ch~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~ro-ro~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~ru-ru~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~rw-rw~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~sk-sk~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~sl-si~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~sq-al~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~sr-cyrl-rs~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~sr-latn-rs~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~sv-se~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~sw-ke~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~tn-za~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~tr-tr~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~wo-sn~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~xh-za~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~zh-cn~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~zh-hk~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~zh-tw~0.0.1.0 `
    /capabilityname:Language.Handwriting~~~zu-za~0.0.1.0 `
    /capabilityname:Language.LocaleData~~~zh-tw~0.0.1.0 `
    /capabilityname:Language.OCR~~~ar-sa~0.0.1.0 `
    /capabilityname:Language.OCR~~~bg-bg~0.0.1.0 `
    /capabilityname:Language.OCR~~~bs-latn-ba~0.0.1.0 `
    /capabilityname:Language.OCR~~~cs-cz~0.0.1.0 `
    /capabilityname:Language.OCR~~~da-dk~0.0.1.0 `
    /capabilityname:Language.OCR~~~de-de~0.0.1.0 `
    /capabilityname:Language.OCR~~~el-gr~0.0.1.0 `
    /capabilityname:Language.OCR~~~en-gb~0.0.1.0 `
    /capabilityname:Language.OCR~~~en-us~0.0.1.0 `
    /capabilityname:Language.OCR~~~es-es~0.0.1.0 `
    /capabilityname:Language.OCR~~~es-mx~0.0.1.0 `
    /capabilityname:Language.OCR~~~fi-fi~0.0.1.0 `
    /capabilityname:Language.OCR~~~fr-ca~0.0.1.0 `
    /capabilityname:Language.OCR~~~fr-fr~0.0.1.0 `
    /capabilityname:Language.OCR~~~hr-hr~0.0.1.0 `
    /capabilityname:Language.OCR~~~hu-hu~0.0.1.0 `
    /capabilityname:Language.OCR~~~it-it~0.0.1.0 `
    /capabilityname:Language.OCR~~~ja-jp~0.0.1.0 `
    /capabilityname:Language.OCR~~~ko-kr~0.0.1.0 `
    /capabilityname:Language.OCR~~~nb-no~0.0.1.0 `
    /capabilityname:Language.OCR~~~nl-nl~0.0.1.0 `
    /capabilityname:Language.OCR~~~pl-pl~0.0.1.0 `
    /capabilityname:Language.OCR~~~pt-br~0.0.1.0 `
    /capabilityname:Language.OCR~~~pt-pt~0.0.1.0 `
    /capabilityname:Language.OCR~~~ro-ro~0.0.1.0 `
    /capabilityname:Language.OCR~~~ru-ru~0.0.1.0 `
    /capabilityname:Language.OCR~~~sk-sk~0.0.1.0 `
    /capabilityname:Language.OCR~~~sl-si~0.0.1.0 `
    /capabilityname:Language.OCR~~~sr-cyrl-rs~0.0.1.0 `
    /capabilityname:Language.OCR~~~sr-latn-rs~0.0.1.0 `
    /capabilityname:Language.OCR~~~sv-se~0.0.1.0 `
    /capabilityname:Language.OCR~~~tr-tr~0.0.1.0 `
    /capabilityname:Language.OCR~~~zh-cn~0.0.1.0 `
    /capabilityname:Language.OCR~~~zh-hk~0.0.1.0 `
    /capabilityname:Language.OCR~~~zh-tw~0.0.1.0 `
    /capabilityname:Language.Speech~~~da-dk~0.0.1.0 `
    /capabilityname:Language.Speech~~~de-de~0.0.1.0 `
    /capabilityname:Language.Speech~~~en-au~0.0.1.0 `
    /capabilityname:Language.Speech~~~en-ca~0.0.1.0 `
    /capabilityname:Language.Speech~~~en-gb~0.0.1.0 `
    /capabilityname:Language.Speech~~~en-in~0.0.1.0 `
    /capabilityname:Language.Speech~~~en-us~0.0.1.0 `
    /capabilityname:Language.Speech~~~es-es~0.0.1.0 `
    /capabilityname:Language.Speech~~~es-mx~0.0.1.0 `
    /capabilityname:Language.Speech~~~fr-ca~0.0.1.0 `
    /capabilityname:Language.Speech~~~fr-fr~0.0.1.0 `
    /capabilityname:Language.Speech~~~it-it~0.0.1.0 `
    /capabilityname:Language.Speech~~~ja-jp~0.0.1.0 `
    /capabilityname:Language.Speech~~~pt-br~0.0.1.0 `
    /capabilityname:Language.Speech~~~zh-cn~0.0.1.0 `
    /capabilityname:Language.Speech~~~zh-hk~0.0.1.0 `
    /capabilityname:Language.Speech~~~zh-tw~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~ar-eg~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~ar-sa~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~bg-bg~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~ca-es~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~cs-cz~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~da-dk~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~de-at~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~de-ch~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~de-de~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~el-gr~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~en-au~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~en-ca~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~en-gb~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~en-ie~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~en-in~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~en-us~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~es-es~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~es-mx~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~fi-fi~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~fr-ca~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~fr-ch~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~fr-fr~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~he-il~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~hi-in~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~hr-hr~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~hu-hu~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~id-id~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~it-it~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~ja-jp~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~ko-kr~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~ms-my~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~nb-no~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~nl-be~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~nl-nl~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~pl-pl~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~pt-br~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~pt-pt~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~ro-ro~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~ru-ru~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~sk-sk~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~sl-si~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~sv-se~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~ta-in~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~th-th~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~tr-tr~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~vi-vn~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~zh-cn~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~zh-hk~0.0.1.0 `
    /capabilityname:Language.TextToSpeech~~~zh-tw~0.0.1.0 `
    /capabilityname:MathRecognizer~~~~0.0.1.0 `
    /capabilityname:Microsoft.Onecore.StorageManagement~~~~0.0.1.0 `
    /capabilityname:Microsoft.WebDriver~~~~0.0.1.0 `
    /capabilityname:Microsoft.Windows.MSPaint~~~~0.0.1.0 `
    /capabilityname:Microsoft.Windows.Notepad~~~~0.0.1.0 `
    /capabilityname:Microsoft.Windows.PowerShell.ISE~~~~0.0.1.0 `
    /capabilityname:Microsoft.Windows.StorageManagement~~~~0.0.1.0 `
    /capabilityname:Microsoft.Windows.WordPad~~~~0.0.1.0 `
    /capabilityname:Msix.PackagingTool.Driver~~~~0.0.1.0 `
    /capabilityname:NetFX3~~ `
    /capabilityname:Network.Irda~~~~0.0.1.0 `
    /capabilityname:OneCoreUAP.OneSync~~~~0.0.1.0 `
    /capabilityname:OpenSSH.Client~~~~0.0.1.0 `
    /capabilityname:OpenSSH.Server~~~~0.0.1.0 `
    /capabilityname:Print.EnterpriseCloudPrint~~~~0.0.1.0 `
    /capabilityname:Print.Fax.Scan~~~~0.0.1.0 `
    /capabilityname:Print.Management.Console~~~~0.0.1.0 `
    /capabilityname:Print.MopriaCloudService~~~~0.0.1.0 `
    /capabilityname:RasCMAK.Client~~~~0.0.1.0 `
    /capabilityname:RIP.Listener~~~~0.0.1.0 `
    /capabilityname:Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.BitLocker.Recovery.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.CertificateServices.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.DHCP.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.Dns.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.FailoverCluster.Management.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.FileServices.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.GroupPolicy.Management.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.IPAM.Client.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.LLDP.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.NetworkController.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.NetworkLoadBalancing.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.RemoteAccess.Management.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.RemoteDesktop.Services.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.ServerManager.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.Shielded.VM.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.StorageMigrationService.Management.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.StorageReplica.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.SystemInsights.Management.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.VolumeActivation.Tools~~~~0.0.1.0 `
    /capabilityname:Rsat.WSUS.Tools~~~~0.0.1.0 `
    /capabilityname:ServerCore.AppCompatibility~~~~0.0.1.0 `
    /capabilityname:SNMP.Client~~~~0.0.1.0 `
    /capabilityname:Tools.DeveloperMode.Core~~~~0.0.1.0 `
    /capabilityname:Tools.Graphics.DirectX~~~~0.0.1.0 `
    /capabilityname:Windows.Client.ShellComponents~~~~0.0.1.0 `
    /capabilityname:Windows.Desktop.EMS-SAC.Tools~~~~0.0.1.0 `
    /capabilityname:WMI-SNMP-Provider.Client~~~~0.0.1.0 `
    /capabilityname:XPS.Viewer~~~~0.0.1.0     

    # This one is large, lets skip for now
    #/capabilityname:Analog.Holographic.Desktop~~~~0.0.1.0 `
    

# Copy language caps to the repo
Copy-Item -Path $OS_LP_PATH -Destination $REPO_PATH -Force -ErrorAction stop | Out-Null

# Dismount OS image
Dismount-WindowsImage -Path $MAIN_OS_MOUNT -Discard -ErrorAction ignore | Out-Null

# Dismount ISO images
Write-Host "Dismounting ISO images"
Dismount-DiskImage -ImagePath $LP_ISO_PATH -ErrorAction ignore | Out-Null
Dismount-DiskImage -ImagePath $FOD_ISO_PATH -ErrorAction ignore | Out-Null 

```

### Saving optional content in the source operating system

To save optional content state in the source operating system, we create a custom action script to run before the operating system installs. In this script, we save optional features and language resources to a file. We also make a local copy of the repo with only those files needed based on the languages installed on the source operating system. This will limit the files to copy.


```powershell
$OUTPUT_PATH = "C:\TEMP\"
$LOG_PATH = $OUTPUT_PATH + "log.txt"
$OUTPUT_PATH = "C:\TEMP\"
$LOG_PATH = $OUTPUT_PATH + "log.txt"
$LANG_PATH = $OUTPUT_PATH + "sourceLang.txt"
$CAP_PATH = $OUTPUT_PATH + "sourceCapability.txt"
$OSVERSION_PATH = $OUTPUT_PATH + "sourceVersion.txt"
$REPO_PATH = "Z:\Repo\"
$LOCAL_REPO_PATH = $OUTPUT_PATH + "Local_Repo\"

Function Get-TS { return "{0:HH:mm:ss}" -f (Get-Date) } 

Function Log
{
	param (
        [Parameter(Mandatory=$True)]
        [string]$MESSAGE
	)

    $M = "$(Get-TS): PreInstall: $MESSAGE"
    Write-Host $M
    Add-Content -Path $LOG_PATH -Value $M
    
 }

Function IsLangFile
{
	param (
        [Parameter(Mandatory=$True)]
        [string]$PATH
	)

    if (($PATH -match '[-_~]ar[-_~]') -or ($PATH -match '[-_~]bg[-_~]') -or ($PATH -match '[-_~]cs[-_~]') -or `
        ($PATH -match '[-_~]da[-_~]') -or ($PATH -match '[-_~]de[-_~]') -or ($PATH -match '[-_~]el[-_~]') -or `
        ($PATH -match '[-_~]en[-_~]') -or ($PATH -match '[-_~]es[-_~]') -or ($PATH -match '[-_~]et[-_~]') -or `        
        ($PATH -match '[-_~]fi[-_~]') -or ($PATH -match '[-_~]fr[-_~]') -or ($PATH -match '[-_~]he[-_~]') -or `
        ($PATH -match '[-_~]hr[-_~]') -or ($PATH -match '[-_~]hu[-_~]') -or ($PATH -match '[-_~]it[-_~]') -or `
        ($PATH -match '[-_~]ja[-_~]') -or ($PATH -match '[-_~]ko[-_~]') -or ($PATH -match '[-_~]lt[-_~]') -or `
        ($PATH -match '[-_~]lv[-_~]') -or ($PATH -match '[-_~]nb[-_~]') -or ($PATH -match '[-_~]nl[-_~]') -or `
        ($PATH -match '[-_~]pl[-_~]') -or ($PATH -match '[-_~]pt[-_~]') -or ($PATH -match '[-_~]ro[-_~]') -or `
        ($PATH -match '[-_~]ru[-_~]') -or ($PATH -match '[-_~]sk[-_~]') -or ($PATH -match '[-_~]sl[-_~]') -or `
        ($PATH -match '[-_~]sv[-_~]') -or ($PATH -match '[-_~]th[-_~]') -or ($PATH -match '[-_~]tr[-_~]') -or `
        ($PATH -match '[-_~]uk[-_~]') -or ($PATH -match '[-_~]zh[-_~]') -or ($PATH -match '[-_~]sr[-_~]')) {
        return $True
    }
    else {
        return $False
    }
 }

# Remove the log
Remove-Item -Path $LOG_PATH -Force -ErrorAction ignore | Out-Null
Log "Starting"

# Remove state files, keep repo if it exists
Remove-Item -Path $LANG_PATH -Force -ErrorAction ignore | Out-Null
Remove-Item -Path $CAP_PATH -Force -ErrorAction ignore | Out-Null
Remove-Item -Path $OSVERSION_PATH -Force -ErrorAction ignore | Out-Null

# Get OS version, to use later for detecting compat scans versus OS installation
$OSINFO = Get-CimInstance Win32_OperatingSystem
Log "OS Version: $($OSINFO.Version)"
Add-Content -Path $OSVERSION_PATH -Value $OSINFO.Version

# Get installed languages from international settings
$INTL = DISM.exe /Online /Get-Intl /English 

# Save only output lines with installed languages
$LANGUAGES = $INTL | Select-String -SimpleMatch 'Installed language(s)'

# Replace with null so we have a simple list of language codes
$LANGUAGES = $LANGUAGES | ForEach-Object {$_.Line.Replace("Installed language(s): ","")}

# Save System Language, save only output line with default system language
$SYSLANG = $INTL | Select-String -SimpleMatch 'Default system UI language'

# Replace with null so we have the language code
$SYSLANG = $SYSLANG | ForEach-Object {$_.Line.Replace("Default system UI language : ","")}

# Save these languages
Log "Default system UI language on source OS: $($SYSLANG)"
ForEach ($ITEM in $LANGUAGES) { 
    Log "Installed language on source OS: $($ITEM)"
    Add-Content -Path $LANG_PATH -Value $ITEM
}

# Get and save installed packages, we'll use this for debugging
$PACKAGES = Get-WindowsPackage -Online
ForEach ($ITEM in $PACKAGES) { 
    if($ITEM.PackageState -eq "Installed") {
        Log "Package $($ITEM.PackageName) is installed"        
    }
}

# Get and save capabilities
$CAPABILITIES = Get-WindowsCapability -Online 
ForEach ($ITEM in $CAPABILITIES) { 
    if($ITEM.State -eq "Installed") {
        Log "Capability $($ITEM.Name) is installed"
        Add-Content -Path $CAP_PATH -Value $ITEM.Name
    }
}

# Copy a subset of the Repo files locally, all neutral files and the languages needed
$REPO_FILES = Get-ChildItem $REPO_PATH -file -Recurse
ForEach ($FILE in $REPO_FILES) {
    $PATH = ($FILE.DirectoryName + "\") -Replace [Regex]::Escape($REPO_PATH), $LOCAL_REPO_PATH
    If (!(Test-Path $Path)) {
        New-Item -ItemType Directory -Path $PATH -Force | Out-Null
    }
    If ((IsLangFile $FILE.Name)) { 

        # Only copy those files where we need the primary languages from the source OS
        ForEach ($ITEM in $LANGUAGES) { 
            if ($FILE.Name -match $Item) {

                If (!(Test-Path (Join-Path $Path $File.Name))) {
                    Copy-Item $FILE.FullName -Destination $PATH -Force
                    Log "Copied file $($FILE.FullName) to local repository"
                }
                else {
                    Log "File $($FILE.Name) already exists in local repository"
                }
            } 
        }
    } Else {

        # Copy all 'neutral files' and those language specific that are not in the core 38
        If (!(Test-Path (Join-Path $Path $File.Name))) {
            Copy-Item $FILE.FullName -Destination $PATH -Force
            Log "Copied file $($FILE.FullName) to local repository"
        }
        else {
            Log "File $($FILE.Name) already exists in local repository"
        }
    }
}

Log ("Exiting")
 
```

### Adding optional content in the target operating system

After setup has completed successfully, we use success.cmd to retrieve the optional content state from the source operating system and install in the new operating system only if that’s missing. Then, apply the latest monthly update as a final step. 


```powershell
$OUTPUT_PATH = "C:\TEMP\"
$LOG_PATH = $OUTPUT_PATH + "log.txt"
$LANG_PATH = $OUTPUT_PATH + "sourceLang.txt"
$CAP_PATH = $OUTPUT_PATH + "sourceCapability.txt"
$OSVERSION_PATH = $OUTPUT_PATH + "sourceVersion.txt"
$LOCAL_REPO_PATH = $OUTPUT_PATH + "Local_Repo\"
$LCU_PATH = $OUTPUT_PATH + "Windows10.0-KB4565503-x64_PSFX.cab"
$PENDING = $false

Function Get-TS { return "{0:HH:mm:ss}" -f (Get-Date) } 

Function Log
{
	param (
        [Parameter(Mandatory=$True)]
        [string]$MESSAGE
	)

    $M = "$(Get-TS): PostInstall: $MESSAGE"
    Write-Host $M
    Add-Content -Path $LOG_PATH -Value $M
    
 }

Log "Starting"

# Get OS version
$OSINFO = Get-CimInstance Win32_OperatingSystem
Log "OS Version: $($OSINFO.Version)"

# Check for source OS state, just to be sure
if (!(Test-Path $LANG_PATH) -or !(Test-Path $CAP_PATH) -or !(Test-Path $OSVERSION_PATH) ) {
    Log "Source OS state is missing."
}

# If this script is executing and the OS version hasn't changed, let's exit out.
else {

    # Retrive OS version from source OS
    $SOURCE_OSVERSION  = Get-Content -Path $OSVERSION_PATH 
    if ($OSINFO.Version -eq $SOURCE_OSVERSION) {
        Log "OS Version hasn't changed."
    }

    else {

        # Retrive language list from source OS
        $SOURCE_LANGUAGES  = Get-Content -Path $LANG_PATH 

        # Get installed languages from International Settings
        $INTL = DISM.exe /Online /Get-Intl /English 

        # Save System Language, save only output line with default system language
        $SYS_LANG = $INTL | Select-String -SimpleMatch 'Default system UI language'

        # Replace with null so we have the language code
        $SYS_LANG = $SYS_LANG | ForEach-Object {$_.Line.Replace("Default system UI language : ","")}

        # Get and save installed packages, we'll use this for debugging
        $PACKAGES = Get-WindowsPackage -Online
        ForEach ($ITEM in $PACKAGES) { 
            if($ITEM.PackageState -eq "Installed") {
                Log "Package $($ITEM.PackageName) is installed"
            }
        }

        # Loop through source OS languages, and install if missing on target OS
        ForEach ($SOURCE_ITEM in $SOURCE_LANGUAGES) { 
            if ($SOURCE_ITEM -ne $SYS_LANG) {

                # add missing languages except the system language
                Log "Adding language Microsoft-Windows-Client-Language-Pack_x64_$($SOURCE_ITEM).cab"
                try {
                    Add-WindowsPackage -Online -PackagePath "$($LOCAL_REPO_PATH)\Microsoft-Windows-Client-Language-Pack_x64_$($SOURCE_ITEM).cab" -ErrorAction stop | Out-Null  
                }
                catch {
                    Log $_.Exception.Message
                }
            }
        }
    
        # Retrieve capabilities from source OS and target OS
        $SOURCE_CAPABILITIES  = Get-Content -Path $CAP_PATH
        $CAPABILITIES = Get-WindowsCapability -Online 

        # Loop through source OS capabilities, and install if missing on target OS
        ForEach ($SOURCE_ITEM in $SOURCE_CAPABILITIES) { 
            $INSTALLED = $false
            ForEach ($ITEM in $CAPABILITIES) { 
                if ($ITEM.Name -eq $($SOURCE_ITEM)) {
                    if ($ITEM.State -eq "Installed") {
                        $INSTALLED = $true
                        break
                    }
                }
            }    

            # Add if not already installed
            if (!($INSTALLED)) {
                Log "Adding capability $SOURCE_ITEM"
                try {
                    Add-WindowsCapability -Online -Name $SOURCE_ITEM -Source $LOCAL_REPO_PATH -ErrorAction stop | Out-Null  
                }
                catch {
                    Log $_.Exception.Message
                }
            } 
            else {
                Log "Capability $SOURCE_ITEM is already installed"
            }
        }

        # Add LCU, this is required after adding FODs and languages
        Log ("Adding LCU")
        Add-WindowsPackage -Online -PackagePath $LCU_PATH -NoRestart 

        # Get packages, we'll use this for debugging and to see if we need to restart to install
        $PACKAGES = Get-WindowsPackage -Online
        ForEach ($ITEM in $PACKAGES) { 
            Log "Package $($ITEM.PackageName) is $($ITEM.PackageState)"
            if ($ITEM.PackageState -eq "InstallPending") {
                $PENDING = $true
            }
        }
    }
}

# Remove local repository and state files
Remove-Item -Path $LANG_PATH -Force -ErrorAction ignore | Out-Null
Remove-Item -Path $CAP_PATH -Force -ErrorAction ignore | Out-Null
Remove-Item -Path $OSVERSION_PATH -Force -ErrorAction ignore | Out-Null
Remove-Item -Path $LOCAL_REPO_PATH -Force -Recurse -ErrorAction ignore | Out-Null

# Restarting the computer to let setup process to exit cleanly
if ($PENDING) {
    Log ("Install pending packages exists, restarting in 10 seconds")
    Start-Process -FilePath cmd -ArgumentList "/C shutdown /r /t 10 /f"
}

Log ("Exiting")
```