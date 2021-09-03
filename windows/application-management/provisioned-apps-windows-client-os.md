---
title: Get the provisioned apps on Windows client operating system | Microsoft Docs
ms.reviewer: 
manager: dougeby
description: Use the Windows PowerShell Get-AppxProvisionedPackage command to get a list off the provisioned apps installed in Windows OS. See a list of some common provisioned apps installed a Windows Enterprise client computer or device, including Windows 10.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
ms.author: mandia
author: MandiOhlinger
ms.localizationpriority: medium
ms.topic: article
---

# Provisioned apps installed with the Windows client OS

> Applies to:
>
> - Windows 10

Provisioned apps are included with the OS, and automatically installed when a user signs into a Windows device the first time. They are per-user apps, and typically installed in the `C:\Program Files\WindowsApps` folder. On your Windows devices, you can use Windows PowerShell to see the provisioned apps automatically installed.

This article lists some of the built-in provisioned apps on the different Windows client OS versions, and lists the Windows PowerShell command to get a list.

## Use Windows PowerShell

To get a list of all the provisioned apps, use Windows PowerShell:

1. Open the Windows PowerShell app as administrator.
2. Run the following script:

    ```Powershell
    Get-AppxProvisionedPackage -Online | Format-Table DisplayName, PackageName
    ```

The output lists all the provisioned apps, and their package names. For more information on this command, see [Get-AppxProvisionedPackage](/powershell/module/dism/get-appxprovisionedpackage) (opens another Microsoft website).

## Built-in provisioned apps list

The following information lists some of the provisioned apps on the different Windows Enterprise client OS versions. Your specific OS version and image may have different apps. To confirm your app list, run the [PowerShell Get-AppxProvisionedPackage command](#use-windows-powershell) (in this article).

Provisioned apps are also listed in **Settings** > **Apps and Features**.

- [3D Builder](ms-windows-store://pdp/?PFN=Microsoft.3DBuilder_8wekyb3d8bbwe) | Package name: Microsoft.3DBuilder
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ✔️ | ✔️ | | | | | |

    ---

- [Bing Weather](ms-windows-store://pdp/?PFN=Microsoft.BingWeather_8wekyb3d8bbwe) | Package name: Microsoft.BingWeather
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ✔️ | ✔️ | ✔️|✔️ | ✔️| ✔️| ✔️|

    ---

- [Desktop App Installer](ms-windows-store://pdp/?PFN=Microsoft.DesktopAppInstaller_8wekyb3d8bbwe) | Package name: Microsoft.DesktopAppInstaller
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | Use Settings App | ✔️ | ✔️|✔️ | ✔️| ✔️| ✔️|

    ---

- [Get Help](ms-windows-store://pdp/?PFN=Microsoft.Gethelp_8wekyb3d8bbwe) | Package name: Microsoft.GetHelp
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️|✔️ | ✔️| ✔️| ✔️|

    ---

- [Microsoft Tips](ms-windows-store://pdp/?PFN=Microsoft.Getstarted_8wekyb3d8bbwe) | Package name: Microsoft.Getstarted
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️|✔️ | ✔️| ✔️| ✔️|

    ---

- [HEIF Image Extensions](ms-windows-store://pdp/?PFN=Microsoft.HEIFImageExtension_8wekyb3d8bbwe) | Package name: Microsoft.HEIFImageExtension
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️|✔️ | ✔️| ✔️| ✔️|

    ---

- [Microsoft Messaging](ms-windows-store://pdp/?PFN=Microsoft.Messaging_8wekyb3d8bbwe) | Package name:Microsoft.Messaging
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| | ✔️| ✔️| ✔️|

    ---

- [Microsoft 3D Viewer](ms-windows-store://pdp/?PFN=Microsoft.Microsoft3DViewer_8wekyb3d8bbwe) | Package name: Microsoft.Microsoft3DViewer
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Office](ms-windows-store://pdp/?PFN=Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe) | Package name: Microsoft.MicrosoftOfficeHub
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ✔️ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Microsoft Solitaire Collection](ms-windows-store://pdp/?PFN=Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe) | Package name: Microsoft.MicrosoftSolitaireCollection
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ✔️ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Microsoft Sticky Notes](ms-windows-store://pdp/?PFN=Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe) | Package name: Microsoft.MicrosoftStickyNotes
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Mixed Reality Portal](ms-windows-store://pdp/?PFN=Microsoft.MixedReality.Portal_8wekyb3d8bbwe) | Package name: Microsoft.MixedReality.Portal
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Paint 3D](ms-windows-store://pdp/?PFN=Microsoft.MSPaint_8wekyb3d8bbwe) | Package name: Microsoft.MSPaint
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [OneNote for Windows 10](ms-windows-store://pdp/?PFN=Microsoft.Office.OneNote_8wekyb3d8bbwe) | Package name: Microsoft.Office.OneNote
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ✔️ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Mobile Plans](ms-windows-store://pdp/?PFN=Microsoft.OneConnect_8wekyb3d8bbwe) | Package name: Microsoft.OneConnect
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| | ✔️| ✔️| ✔️|

    ---

- Microsoft.Outlook.DesktopIntegrationServices
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    |  | ✔️ | ✔️| | ✔️| | |

    ---

- [Microsoft People](ms-windows-store://pdp/?PFN=Microsoft.People_8wekyb3d8bbwe) | Package name: Microsoft.People
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Print 3D](ms-windows-store://pdp/?PFN=Microsoft.Print3D_8wekyb3d8bbwe) | Package name: Microsoft.Print3D
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| | ✔️| ✔️| ✔️|

    ---

- [Snip & Sketch](ms-windows-store://pdp/?PFN=Microsoft.ScreenSketch_8wekyb3d8bbwe) | Package name: Microsoft.ScreenSketch
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Skype](ms-windows-store://pdp/?PFN=Microsoft.SkypeApp_kzf8qxf38zg5c) | Package name: Microsoft.SkypeApp
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Store Purchase App](ms-windows-store://pdp/?PFN=Microsoft.StorePurchaseApp_8wekyb3d8bbwe) | Package name: Microsoft.StorePurchaseApp
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- Microsoft.VP9VideoExtensions
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Microsoft Pay](ms-windows-store://pdp/?PFN=Microsoft.Wallet_8wekyb3d8bbwe) | Package name: Microsoft.Wallet
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Web Media Extensions](ms-windows-store://pdp/?PFN=Microsoft.WebMediaExtensions_8wekyb3d8bbwe) | Package name: Microsoft.WebMediaExtensions
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Webp Image Extension](ms-windows-store://pdp/?PFN=Microsoft.WebpImageExtension_8wekyb3d8bbwe) | Package name: Microsoft.WebpImageExtension
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Microsoft Photos](ms-windows-store://pdp/?PFN=Microsoft.Windows.Photos_8wekyb3d8bbwe) | Package name: Microsoft.Windows.Photos
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Windows Alarms & Clock](ms-windows-store://pdp/?PFN=Microsoft.WindowsAlarms_8wekyb3d8bbwe) | Package name: Microsoft.WindowsAlarms
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Windows Calculator](ms-windows-store://pdp/?PFN=Microsoft.WindowsCalculator_8wekyb3d8bbwe) | Package name: Microsoft.WindowsCalculator
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Windows Camera](ms-windows-store://pdp/?PFN=Microsoft.WindowsCamera_8wekyb3d8bbwe) | Package name: Microsoft.WindowsCamera
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Mail and Calendar](ms-windows-store://pdp/?PFN=microsoft.windowscommunicationsapps_8wekyb3d8bbwe) | Package name: microsoft.windowscommunicationsapps
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Feedback Hub](ms-windows-store://pdp/?PFN=Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe) | Package name: Microsoft.WindowsFeedbackHub
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Windows Maps](ms-windows-store://pdp/?PFN=Microsoft.WindowsMaps_8wekyb3d8bbwe) | Package name: Microsoft.WindowsMaps
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Windows Voice Recorder](ms-windows-store://pdp/?PFN=Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe) | Package name: Microsoft.WindowsSoundRecorder
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Microsoft Store](ms-windows-store://pdp/?PFN=Microsoft.WindowsStore_8wekyb3d8bbwe) | Package name: Microsoft.WindowsStore
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

  - The Store app shouldn't be removed. If you remove the Store app, and want to reinstall it, you must restore your system from a backup, or reset your system. Instead of removing the Store app, use group policies to hide or disable it.

- [Xbox Live in-game experience](ms-windows-store://pdp/?PFN=Microsoft.Xbox.TCUI_8wekyb3d8bbwe) | Package name: Microsoft.Xbox.TCUI
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Xbox Console Companion](ms-windows-store://pdp/?PFN=Microsoft.XboxApp_8wekyb3d8bbwe) | Package name: Microsoft.XboxApp
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Xbox Game Bar Plugin](ms-windows-store://pdp/?PFN=Microsoft.XboxGameOverlay_8wekyb3d8bbwe) | Package name: Microsoft.XboxGameOverlay
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Xbox Game Bar](ms-windows-store://pdp/?PFN=Microsoft.XboxGamingOverlay_8wekyb3d8bbwe) | Package name: Microsoft.XboxGamingOverlay
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Xbox Identity Provider](ms-windows-store://pdp/?PFN=Microsoft.XboxIdentityProvider_8wekyb3d8bbwe) | Package name: Microsoft.XboxIdentityProvider
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- Microsoft.XboxSpeechToTextOverlay
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Your Phone](ms-windows-store://pdp/?PFN=Microsoft.YourPhone_8wekyb3d8bbwe) | Package name: Microsoft.YourPhone
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Groove Music](ms-windows-store://pdp/?PFN=Microsoft.ZuneMusic_8wekyb3d8bbwe) | Package name: Microsoft.ZuneMusic
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---

- [Movies & TV](ms-windows-store://pdp/?PFN=Microsoft.ZuneVideo_8wekyb3d8bbwe) | Package name: Microsoft.ZuneVideo
  - Supported versions:

    ---
    | Uninstall through UI? | 21H1 | 20H2 | 2004 | 1909| 1903| 1809 |
    | --- | --- | --- | --- | --- | --- |--- |
    | ❌ | ✔️ | ✔️| ✔️ | ✔️| ✔️| ✔️|

    ---
