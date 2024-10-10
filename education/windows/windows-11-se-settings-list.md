---
title: Windows 11 SE settings list
description: Windows 11 SE automatically configures settings in the operating system. Learn more about the settings you can control and manage, and the settings you can't change.
ms.topic: reference
ms.date: 10/10/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE</a>
ms.collection:
  - education
  - tier1
---

# Windows 11 SE for Education settings list

Windows 11 SE automatically configures certain settings and features in the operating system. You can use Microsoft Intune to customize these settings.

This article lists the settings automatically configured. For more information on Windows 11 SE, see [Windows 11 SE for Education overview](windows-11-se-overview.md).

## Settings that can be changed

The following table lists and describes the settings that can be changed by administrators.

| Setting  | Description | Default Value |
| --- | --- | --- |
| Block manual unenrollment  | When blocked, users can't unenroll their devices from device management services. <br/> <br/> [Experience/AllowManualMDMUnenrollment CSP](/windows/client-management/mdm/policy-csp-experience#experience-allowmanualmdmunenrollment) | Blocked |
| Allow option to Show Network  | When allowed, it gives users the option to see the **Show Network** folder in File Explorer. | Allowed |
| Allow option to Show This PC  | When allowed, it gives users the option to see the **Show This PC** folder in File Explorer. | Allowed |
| Set Allowed Folder location  | Gives user access to these folders. | Default folders: Documents, Desktop, Pictures, and Downloads |
| Set Allowed Storage Locations  | Blocks user access to these storage locations. | Blocks local drives and network drives |
| Allow News and Interests | Hides widgets. | Hide |
| Disable advertising ID  | Blocks apps from using usage data to tailor advertisements. <br/> <br/> [Privacy/DisableAdvertisingId CSP](/windows/client-management/mdm/policy-csp-privacy#privacy-disableadvertisingid) | Disabled |
| Visible settings pages  | Default: <br/> <br/> ||
| Enable App Install Control  | When enabled, users can't download apps from the internet.<br/> <br/> [SmartScreen/EnableAppInstallControl CSP](/windows/client-management/mdm/policy-csp-smartscreen#smartscreen-enableappinstallcontrol)| Enabled |
| Configure Storage Sense Cloud Content Dehydration Threshold | If a file hasn't been opened in 30 days, it becomes an online-only file. Online-only files can be opened when there's an internet connection. When an online-only file is opened on a device, it downloads and becomes locally available on that device. The file is available until it's unopened for the specified number of days, and becomes online-only again. <br/> <br/> [Storage/ConfigStorageSenseCloudContentDehydrationThreshold CSP](/windows/client-management/mdm/policy-csp-storage#storage-configstoragesensecloudcontentdehydrationthreshold) | 30 days |
| Allow Telemetry  | With *Required Telemetry Only*, it sends only basic device info, including quality-related data, app compatibility, and similar data to keep the device secure and up-to-date. <br/> <br/> [System/AllowTelemetry CSP](/windows/client-management/mdm/policy-csp-system#system-allowtelemetry) | Required Telemetry Only |
| Allow Experimentation  | When disabled, Microsoft can't experiment with the product to study user preferences or device behavior. <br/> <br/>[System/AllowExperimentation CSP](/windows/client-management/mdm/policy-csp-system#system-allowexperimentation) | Disabled |
| Block external extensions  | When blocked, in Microsoft Edge users can't install external extensions. <br/> <br/> [BlockExternalExtensions](/DeployEdge/microsoft-edge-policies#blockexternalextensions) | Blocked |
| Configure new tab page  | Set the new tab page defaults to a specific url. <br/> <br/> [Configure the new tab page URL](/DeployEdge/microsoft-edge-policies#configure-the-new-tab-page-url) | `Office.com` |
| Configure homepage  | Set the Microsoft Edge's homepage default. <br/> <br/> [HomepageIsNewTabPage](/DeployEdge/microsoft-edge-policies#homepageisnewtabpage) | `Office.com` |
| Prevent SmartScreen prompt override  | When enabled, in Microsoft Edge, users can't override Windows Defender SmartScreen warnings. <br/> <br/>[PreventSmartScreenPromptOverride](/DeployEdge/microsoft-edge-policies#preventsmartscreenpromptoverride) | Enabled |
| Wallpaper Image Customization  | Specify a jpg, jpeg, or png image to be used as the desktop image. This setting can take an http or https URL to a remote image to be downloaded, a file URL to a local image. <br/> <br/>[DesktopImageUrl](/windows/client-management/mdm/personalization-csp) | Not configured |
| Lock Screen Image Customization  | Specify a jpg, jpeg, or png image to be used as lock screen image. This setting can take an http or https URL to a remote image to be downloaded, a file URL to a local image. <br/> <br/>[LockScreenImageUrl](/windows/client-management/mdm/personalization-csp) | Not configured |

## Settings that can't be changed

The following settings can't be changed.

| Category  | Description |
| --- | --- |
| Visible Folders in File Explorer | By default, the Desktop, Downloads, Documents, and Pictures folders are visible to users in File Explorer. Users can make other folders, like **This PC**, visible in **View** > **Options**. |
| Launch Windows Maximized  | All Windows are opened in the maximized view.  |
| Windows Snapping  | Windows snapping is limited to two Windows.  |
| Allowed Account Types  | Microsoft accounts and Microsoft Entra accounts are allowed. |
| Virtual Desktops  | Virtual Desktops are blocked. |
| Microsoft Store  | The Microsoft Store is blocked. |
| Administrative tools  | Administrative tools, such as the command prompt and Windows PowerShell, can't be opened. Windows PowerShell scripts deployed using Microsoft Intune can run. |
| Apps  | Only certain apps are allowed to run on Windows 11 SE. For more info on what apps can run on Windows 11 SE, see [Windows 11 SE for Education overview](windows-11-se-overview.md).  |

## Next steps

[Windows 11 SE for Education overview](windows-11-se-overview.md)
