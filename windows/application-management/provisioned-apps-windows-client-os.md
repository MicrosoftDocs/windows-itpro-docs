---
title: Get the provisioned apps on Windows client operating system | Microsoft Docs
description: Use the Windows PowerShell Get-AppxProvisionedPackage command to get a list off the provisioned apps installed in Windows OS. See a list of some common provisioned apps installed a Windows Enterprise client computer or device, including Windows 10/11.
author: nicholasswhite
ms.author: nwhite
manager: aaroncz
ms.date: 01/12/2023
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-apps
ms.localizationpriority: medium
ms.collection: tier1
ms.reviewer:
---

# Provisioned apps installed with the Windows client OS

**Applies to**:

- Windows 10
- Windows 11

Provisioned apps are included with the OS, and automatically installed when a user signs into a Windows device the first time. They're per-user apps, and typically installed in the `C:\Program Files\WindowsApps` folder. On your Windows devices, you can use Windows PowerShell to see the provisioned apps automatically installed.

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
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ | ✔️ | ✔️ | ✔️️|

    ---

- [Clipchamp](ms-windows-store://pdp/?ProductId=9P1J8S7CCWWT) | Package name: Clipchamp.Clipchamp
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 |
    | --- | --- | --- | --- |
    | ✔️ | ✔️ | ✔️ | ❌️|

    ---

- [Cortana](ms-windows-store://pdp/?PFN=Microsoft.549981C3f5f10_8wekyb3d8bbwe) | Package name: Microsoft.549981C3f5f10
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 |
    | --- | --- | --- | --- |
    | ❌ | ✔️ | ✔️ | ✔️️|

    ---

- [Microsoft News](ms-windows-store://pdp/?PFN=Microsoft.BingNews_8wekyb3d8bbwe) | Package name: Microsoft.BingNews
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 |
    | --- | --- | --- | --- |
    | ✔️ | ✔️ | ✔️ | ✔️️|

    ---

- [MSN Weather](ms-windows-store://pdp/?PFN=Microsoft.BingWeather_8wekyb3d8bbwe) | Package name: Microsoft.BingWeather
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ | ✔️ | ✔️ | ✔️️|

    ---

- [Desktop App Installer](ms-windows-store://pdp/?PFN=Microsoft.DesktopAppInstaller_8wekyb3d8bbwe) | Package name: Microsoft.DesktopAppInstaller
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | Use Settings App | ✔️ | ✔️ | ✔️|

    ---

- [Xbox App](ms-windows-store://pdp/?PFN=Microsoft.GamingApp_8wekyb3d8bbwe) | Package name: Microsoft.GamingApp
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ | ✔️ | ✔️ | ✔️️|

    ---

- [Get Help](ms-windows-store://pdp/?PFN=Microsoft.Gethelp_8wekyb3d8bbwe) | Package name: Microsoft.GetHelp
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    |---| --- | --- | --- |
    | ❌ |  ✔️| ✔️| ✔️|

    ---

- [Microsoft Tips](ms-windows-store://pdp/?PFN=Microsoft.Getstarted_8wekyb3d8bbwe) | Package name: Microsoft.Getstarted
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️| ✔️|

    ---

- [HEIF Image Extensions](ms-windows-store://pdp/?PFN=Microsoft.HEIFImageExtension_8wekyb3d8bbwe) | Package name: Microsoft.HEIFImageExtension
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️| ✔️| ✔️|

    ---
    
- [HEVC Video Extensions](ms-windows-store://pdp/?productid=9NMZLZ57R3T7) | Package name: Microsoft.HEVCVideoExtension 
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️| ✔️| ✔️|
    
    ---  
    >[!NOTE]
    >For devices running Windows 11, version 21H2, and any supported version of Windows 10, you need to acquire the [HEVC Video Extensions](ms-windows-store://pdp/?productid=9NMZLZ57R3T7) from the Microsoft Store.

- [Microsoft Edge](ms-windows-store://pdp/?productid=XPFFTQ037JWMHS) | Package name:Microsoft.MicrosoftEdge.Stable
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Microsoft Messaging](ms-windows-store://pdp/?PFN=Microsoft.Messaging_8wekyb3d8bbwe) | Package name:Microsoft.Messaging
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️ | ✔️|  

    ---

- [3D Viewer](ms-windows-store://pdp/?PFN=Microsoft.Microsoft3DViewer_8wekyb3d8bbwe) | Package name: Microsoft.Microsoft3DViewer
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️ | ✔️|  

    ---

- [Microsoft 365 (Office)](ms-windows-store://pdp/?PFN=Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe) | Package name: Microsoft.MicrosoftOfficeHub
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ | ✔️ | ✔️ | ✔️️|

    ---

- [Microsoft Solitaire Collection](ms-windows-store://pdp/?PFN=Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe) | Package name: Microsoft.MicrosoftSolitaireCollection
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ | ✔️ | ✔️ | ✔️️|

    ---

- [Microsoft Sticky Notes](ms-windows-store://pdp/?PFN=Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe) | Package name: Microsoft.MicrosoftStickyNotes
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️ | ✔️|  

    ---

- [Mixed Reality Portal](ms-windows-store://pdp/?PFN=Microsoft.MixedReality.Portal_8wekyb3d8bbwe) | Package name: Microsoft.MixedReality.Portal
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️ | ✔️|  

    ---

- [MPEG2 Video Extension](ms-windows-store://pdp/?PFN=Microsoft.MPEG2VideoExtension_8wekyb3d8bbwe) | Package name: Microsoft.MPEG2VideoExtension
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️ | ✔️|  

    ---

- [OneNote for Windows 10](ms-windows-store://pdp/?PFN=Microsoft.Office.OneNote_8wekyb3d8bbwe) | Package name: Microsoft.Office.OneNote
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ | ❌ | ✔️ | ✔️️|

    ---

- [Mobile Plans](ms-windows-store://pdp/?PFN=Microsoft.OneConnect_8wekyb3d8bbwe) | Package name: Microsoft.OneConnect
  - Supported versions:

    ---
    | Uninstall through UI? |22H2| 21H1 | 20H2 |
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️ | ✔️|  

    ---

- OneDrive Sync | Package name: Microsoft.OneDriveSync
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- Outlook Desktop Integration | Package name: Microsoft.OutlookDesktopIntegrationServices
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️ | ✔️|  

    ---

- [Paint](ms-windows-store://pdp/?PFN=Microsoft.paint_8wekyb3d8bbwe) | Package name: Microsoft.Paint
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️ | ✔️|  

    ---

- [People](ms-windows-store://pdp/?PFN=Microsoft.people_8wekyb3d8bbwe) | Package name: Microsoft.People
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Print 3D](ms-windows-store://pdp/?PFN=Microsoft.Print3D_8wekyb3d8bbwe) | Package name: Microsoft.Print3D
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ❌ | ✔️ | ✔️|  

    ---

- [Raw Image Extension](ms-windows-store://pdp/?PFN=Microsoft.RawImageExtension_8wekyb3d8bbwe) | Package name: Microsoft.RawImageExtension
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Snipping Tool](ms-windows-store://pdp/?PFN=Microsoft.ScreenSketch_8wekyb3d8bbwe) | Package name: Microsoft.ScreenSketch
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️ | ✔️|  

    ---

- [Store Purchase App](ms-windows-store://pdp/?PFN=Microsoft.StorePurchaseApp_8wekyb3d8bbwe) | Package name: Microsoft.StorePurchaseApp
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Microsoft To Do](ms-windows-store://pdp/?PFN=Microsoft.ToDos_8wekyb3d8bbwe) | Package name: Microsoft.ToDos
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️ | ✔️|  

    ---

- UI.Xaml | Package name: Microsoft.UI.Xaml
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- VCLibs | Package name: Microsoft.VCLibs
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---


- [VP9 Video Extensions](ms-windows-store://pdp/?PFN=Microsoft.VP9VideoExtensions_8wekyb3d8bbwe) | Microsoft.VP9VideoExtensions
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Web Media Extensions](ms-windows-store://pdp/?PFN=Microsoft.WebMediaExtensions_8wekyb3d8bbwe) | Package name: Microsoft.WebMediaExtensions
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Webp Image Extension](ms-windows-store://pdp/?PFN=Microsoft.WebpImageExtension_8wekyb3d8bbwe) | Package name: Microsoft.WebpImageExtension
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Whiteboard](ms-windows-store://pdp/?PFN=Microsoft.Whiteboard_8wekyb3d8bbwe) | Package name: Microsoft.Whiteboard
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️| ✔️|  

    ---

- [Microsoft Photos](ms-windows-store://pdp/?PFN=Microsoft.Windows.Photos_8wekyb3d8bbwe) | Package name: Microsoft.Windows.Photos
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Windows Alarms & Clock](ms-windows-store://pdp/?PFN=Microsoft.WindowsAlarms_8wekyb3d8bbwe) | Package name: Microsoft.WindowsAlarms
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Windows Calculator](ms-windows-store://pdp/?PFN=Microsoft.WindowsCalculator_8wekyb3d8bbwe) | Package name: Microsoft.WindowsCalculator
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️ | ✔️|  

    ---

- [Windows Camera](ms-windows-store://pdp/?PFN=Microsoft.WindowsCamera_8wekyb3d8bbwe) | Package name: Microsoft.WindowsCamera
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Mail and Calendar](ms-windows-store://pdp/?PFN=microsoft.windowscommunicationsapps_8wekyb3d8bbwe) | Package name: microsoft.windowscommunicationsapps
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Feedback Hub](ms-windows-store://pdp/?PFN=Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe) | Package name: Microsoft.WindowsFeedbackHub
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Windows Maps](ms-windows-store://pdp/?PFN=Microsoft.WindowsMaps_8wekyb3d8bbwe) | Package name: Microsoft.WindowsMaps
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️ | ✔️|  

    ---

- [Windows Notepad](ms-windows-store://pdp/?PFN=Microsoft.WindowsNotepad_8wekyb3d8bbwe) | Package name: Microsoft.Notepad
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️ | ✔️|  

    ---

- [Windows Sound Recorder](ms-windows-store://pdp/?PFN=Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe) | Package name: Microsoft.WindowsSoundRecorder
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️ | ✔️|  

    ---

- [Microsoft Store](ms-windows-store://pdp/?PFN=Microsoft.WindowsStore_8wekyb3d8bbwe) | Package name: Microsoft.WindowsStore
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Xbox Live in-game experience](ms-windows-store://pdp/?PFN=Microsoft.Xbox.TCUI_8wekyb3d8bbwe) | Package name: Microsoft.Xbox.TCUI
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Xbox Game Bar Plugin](ms-windows-store://pdp/?PFN=Microsoft.XboxGameOverlay_8wekyb3d8bbwe) | Package name: Microsoft.XboxGameOverlay
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Xbox Game Bar](ms-windows-store://pdp/?PFN=Microsoft.XboxGamingOverlay_8wekyb3d8bbwe) | Package name: Microsoft.XboxGamingOverlay
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Xbox Identity Provider](ms-windows-store://pdp/?PFN=Microsoft.XboxIdentityProvider_8wekyb3d8bbwe) | Package name: Microsoft.XboxIdentityProvider
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- Xbox speech to text overlay | Package name: Microsoft.XboxSpeechToTextOverlay
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Phone Link](ms-windows-store://pdp/?PFN=Microsoft.YourPhone_8wekyb3d8bbwe) | Package name: Microsoft.YourPhone
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Windows Media Player](ms-windows-store://pdp/?PFN=Microsoft.ZuneMusic_8wekyb3d8bbwe) | Package name: Microsoft.ZuneMusic
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Movies & TV](ms-windows-store://pdp/?PFN=Microsoft.ZuneVideo_8wekyb3d8bbwe) | Package name: Microsoft.ZuneVideo
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ✔️|  

    ---

- [Quick Assist](ms-windows-store://pdp/?PFN=MicrosoftCorporationII.QuickAssist_8wekyb3d8bbwe) | Package name: MicrosoftCorporationII.QuickAssist
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ✔️ |  ✔️ | ✔️ | ✔️|  

    ---

- Windows Web Experience | Package name: MicrosoftWindows.Client.WebExperience
  - Supported versions:

    ---
    | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
    | --- | --- | --- | --- |
    | ❌ |  ✔️ | ✔️ | ❌|  

    ---
