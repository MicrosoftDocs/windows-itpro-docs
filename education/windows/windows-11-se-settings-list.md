---
title: Windows 11 SE settings list
description: Windows 11 SE automatically configures settings in the operating system. Learn more about the settings you can control and manage, and the settings you can't change.
ms.reviewer: 
manager: dougeby
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
ms.author: mandia
author: MandiOhlinger
ms.localizationpriority: medium
ms.topic: article
---

# Windows 11 SE for Education settings list

**Applies to**:

- Windows 11 SE
- Microsoft Intune for Education

Windows 11 SE automatically configures settings and features in the operating system. These settings use the Configuration Service Provider (CSPs) provided by Microsoft. You can use an MDM provider to configure these settings.

This article lists the settings automatically configured. For more information on Windows 11 SE, see [Windows 11 SE for Education overview](windows-11-se-overview.md).

## Settings that can be changed

The following table lists and describes the settings that can be changed by administrators.

| Setting  | Description |
| --- | --- |
| Block manual unenrollment  | Default: Blocked<br/><br/>Users can't unenroll their devices from device management services. <br/><br/>[Experience/AllowManualMDMUnenrollment CSP](/windows/client-management/mdm/policy-csp-experience#experience-allowmanualmdmunenrollment)|
| Allow option to Show Network  | Default: Allowed<br/><br/>Gives users the option to see the **Show Network** folder in File Explorer. |
| Allow option to Show This PC  | Default: Allowed<br/><br/>Gives user the option to see the **Show This PC** folder in File Explorer. |
| Set Allowed Folder location  | Default folders: Documents, Desktop, Pictures, and Downloads<br/><br/>Gives user access to these folders. |
| Set Allowed Storage Locations  | Default: Blocks Local Drives and Network Drives<br/><br/>Blocks user access to these storage locations. |
| Allow News and Interests | Default: Hide<br/><br/>Hides Widgets. |
| Disable advertising ID  | Default: Disabled<br/><br/>Blocks apps from using usage data to tailor advertisements. <br/><br/>[Privacy/DisableAdvertisingId CSP](/windows/client-management/mdm/policy-csp-privacy#privacy-disableadvertisingid) |
| Visible settings pages  | Default: <br/><br/> | 
| Enable App Install Control  | Default: Turned On<br/><br/>Users can’t download apps from the internet.<br/><br/>[SmartScreen/EnableAppInstallControl CSP](/windows/client-management/mdm/policy-csp-smartscreen#smartscreen-enableappinstallcontrol)|
| Configure Storage Sense Cloud Content Dehydration Threshold | Default: 30 days<br/><br/>If a file hasn’t been opened in 30 days, it becomes an online-only file. Online-only files can be opened when there's an internet connection. When an online-only file is opened on a device, it downloads and becomes locally available on that device. The file is available until it's unopened for the specified number of days, and becomes online-only again. <br/><br/>[Storage/ConfigStorageSenseCloudContentDehydrationThreshold CSP](/windows/client-management/mdm/policy-csp-storage#storage-configstoragesensecloudcontentdehydrationthreshold) |
| Allow Telemetry  | Default: Required Telemetry Only<br/><br/>Sends only basic device info, including quality-related data, app compatibility, and similar data to keep the device secure and up-to-date. <br/><br/>[System/AllowTelemetry CSP](/windows/client-management/mdm/policy-csp-system#system-allowtelemetry) |
| Allow Experimentation  | Default: Disabled<br/><br/>Microsoft can't experiment with the product to study user preferences or device behavior. <br/><br/>[System/AllowExperimentation CSP](/windows/client-management/mdm/policy-csp-system#system-allowexperimentation) |
| Block external extensions  | Default: Blocked<br/><br/>In Microsoft Edge, users can't install external extensions. <br/><br/>[BlockExternalExtensions](/DeployEdge/microsoft-edge-policies#blockexternalextensions)|
| Configure new tab page  | Default: `Office.com`<br/><br/>In Microsoft Edge, the new tab page defaults to `office.com`. <br/><br/>[Configure the new tab page URL](/DeployEdge/microsoft-edge-policies#configure-the-new-tab-page-url)|
| Configure homepage  | Default: `Office.com`<br/><br/>In Microsoft Edge, the homepage defaults to `office.com`. <br/><br/>[HomepageIsNewTabPage](/DeployEdge/microsoft-edge-policies#homepageisnewtabpage)|
| Prevent SmartScreen prompt override  | Default: Enabled<br/><br/>In Microsoft Edge, users can't override Windows Defender SmartScreen warnings. <br/><br/>[PreventSmartScreenPromptOverride](/DeployEdge/microsoft-edge-policies#preventsmartscreenpromptoverride)|

## Settings that can't be changed

The following settings can't be changed.

| Category  | Description |
| --- | --- |
| Visible Folders in File Explorer | By default, the Desktop, Downloads, Documents, and Pictures folders are visible to users in File Explorer. Users can make other folders, like **This PC**, visible in **View** > **Options**. |
| Launch Windows Maximized  | All Windows are opened in the maximized view.  |
| Windows Snapping  | Windows snapping is limited to two Windows.  |
| Allowed Account Types  | Microsoft accounts and Azure AD accounts are allowed. |
| Virtual Desktops  | Virtual Desktops are blocked. |
| Microsoft Store  | The Microsoft Store is blocked. |
| Administrative tools  | Administrative tools, such as the command prompt and Windows PowerShell, can't be opened. Windows PowerShell scripts deployed using Microsoft Endpoint Manager can run. |
| Apps  | Only certain apps are allowed to run on Windows 11 SE. For more info on what apps can run on Windows 11 SE, see [Windows 11 SE for Education overview](windows-11-se-overview.md).  |

## What's available in the Settings app

On Windows 11 SE devices, the Settings app shows the following setting pages. Depending on the hardware, some setting pages might not be shown.

- Accessibility

- Accounts
  - Email & accounts

- Apps

- Bluetooth & devices
  - Bluetooth
  - Printers & scanners
  - Mouse
  - Touchpad
  - Typing
  - Pen
  - AutoPlay

- Network & internet
  - WiFi
  - VPN

- Personalization
  - Taskbar

- Privacy & security

- System
  - Display
  - Notifications
  - Tablet mode
  - Multitasking
  - Projecting to this PC

- Time & Language
  - Language & region

## Next steps

[Windows 11 SE for Education overview](windows-11-se-overview.md)
