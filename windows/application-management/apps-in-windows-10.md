---
title: Windows 10 - Apps
description: What are Windows, UWP, and Win32 apps
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
ms.author: elizapo
author: lizap
ms.localizationpriority: medium
ms.date: 08/22/2018
---
# Understand the different apps included in Windows 10

The following types of apps run on Windows 10:
- Windows apps - introduced in Windows 8, primarily installed from the Store app.
- Universal Windows Platform (UWP) apps - designed to work across platforms, can be installed on multiple platforms including Windows client, Windows Phone, and Xbox. All UWP apps are also Windows apps, but not all Windows apps are UWP apps.
- "Win32" apps - traditional Windows applications, built for 32-bit systems.

Digging into the Windows apps, there are two categories:
- System apps - Apps that are installed in the c:\Windows\* directory. These apps are integral to the OS.
- Apps - All other apps, installed in c:\Program Files\WindowsApps. There are two classes of apps:
   - Provisioned: Installed in user account the first time you sign in with a new user account.
   - Installed: Installed as part of the OS.

The following tables list the system apps, installed Windows apps, and provisioned Windows apps in a standard Windows 10 Enterprise installation. (If you have a custom image, your specific apps might differ.) The tables list the app, the full name, show the app's status in Windows 10 version 1607, 1703, and 1709, and indicate whether an app can be uninstalled through the UI.

Some of the apps show up in multiple tables - that's because their status changed between versions. Make sure to check the version column for the version you are currently running.

> [!TIP]
> Want to see a list of the apps installed on your specific image? You can run the following PowerShell cmdlet:
> ```powershell
> Get-AppxPackage | select Name,PackageFamilyName
> Get-AppxProvisionedPackage -Online | select DisplayName,PackageName
> ```

## System apps

System apps are integral to the operating system. Here are the typical system apps in Windows 10 versions 1703, 1709, and 1803.

| Name             | Full name                                  | 1703 | 1709 | 1803 |Uninstall through UI?             |
|------------------|--------------------------------------------|:----:|:----:|:----:|----------------------------------|
| Cortana UI       | CortanaListenUIApp                         | x    |      |      |No                                |
|                  | Desktop Learning                           | x    |      |      |No                                |
|                  | DesktopView                                | x    |      |      |No                                |
|                  | EnvironmentsApp                            | x    |      |      |No                                |
| Mixed Reality +  | HoloCamera                                 | x    |      |      |No                                |
| Mixed Reality +  | HoloItemPlayerApp                          | x    |      |      |No                                |
| Mixed Reality +  | HoloShell                                  | x    |      |      |No                                |
|                  | InputApp                                   |      | x    | x    |No                                |
|                  | Microsoft.AAD.Broker.Plugin                | x    | x    | x    |No                                |
|                  | Microsoft.AccountsControl                  | x    | x    | x    |No                                |
| Hello setup UI   | Microsoft.BioEnrollment                    | x    | x    | x    |No                                |
|                  | Microsoft.CredDialogHost                   | x    | x    | x    |No                                |
|                  | Microsoft.ECApp                            |      | x    | x    |No                                |
|                  | Microsoft.LockApp                          | x    | x    | x    |No                                |
| Microsoft Edge   | Microsoft.Microsoft.Edge                   | x    | x    | x    |No                                |
|                  | Microsoft.PPIProjection                    | x    | x    | x    |No                                |
|                  | Microsoft.Windows.Apprep.ChxApp            | x    | x    | x    |No                                 |
|                  | Microsoft.Windows.AssignedAccessLockApp    | x    | x    | x    |No                                 |
|                  | Microsoft.Windows.CloudExperienceHost      | x    | x    | x    |No                                 |
|                  | Microsoft.Windows.ContentDeliveryManager   | x    | x    | x    |No                                 |
| Cortana          | Microsoft.Windows.Cortana                  | x    | x    | x    |No                                 |
|                  | Microsoft.Windows.Holographic.FirstRun     | x    | x    | x    |No                                 |
|                  | Microsoft.Windows.ModalSharePickerHost     | x    |      |      |No                                 |
|                  | Microsoft.Windows.OOBENetworkCaptivePort   | x    | x    | x    |No                                 |
|                  | Microsoft.Windows.OOBENetworkConnectionFlow| x    | x    | x    |No                                 |
|                  | Microsoft.Windows.ParentalControls         | x    | x    | x    |No                                 |
| People Hub       | Microsoft.Windows.PeopleExperienceHost     |      | x    | x    |No                                 |
|                  | Microsoft.Windows.PinningConfirmationDialog|      | x    | x    |No                                 |
|                  | Microsoft.Windows.SecHealthUI              | x    | x    | x    |No                                 |
|                  | Microsoft.Windows.SecondaryTileExperience  | x    | x    |      |No                                 |
|                  | Microsoft.Windows.SecureAssessmentBrowser  | x    | x    | x    |No                                 |
| Start            | Microsoft.Windows.ShellExperienceHost      | x    | x    | x    |No                                 |
| Windows Feedback | Microsoft.WindowsFeedback                  | *    | *    |      |No                                |
|                  | Microsoft.XboxGameCallableUI               | x    | x    | x    |No                                |
| Contact Support* | Windows.ContactSupport                     | x    | *    |      |Through the Optional Features app |
| Settings         | Windows.ImmersiveControlPanel              | x    | x    |      |No                                |
| Connect          | Windows.MiracastView                       | x    |      |      |No                                |
| Print 3D         | Windows.Print3D                            |      | x    |      |Yes                               |
| Print UI         | Windows.PrintDialog                        | x    | x    | x    |No                                |
| Purchase UI      | Windows.PurchaseDialog                     |      |      | x    |No                                |
|                  | Microsoft.AsyncTextService                 |      |      | x    |No                                |
|                  | Microsoft.MicrosoftEdgeDevToolsClient      |      |      | x    |No                                |
|                  | Microsoft.Win32WebViewHost                 |      |      | x    |No                                |
|                  | Microsoft.Windows.CapturePicker            |      |      | x    |No                                |
|                  | Windows.CBSPreview                         |      |      | x    |No                                |
|File Picker       | 1527c705-839a-4832-9118-54d4Bd6a0c89       |      |      | x    |No                                |
|File Explorer     | c5e2524a-ea46-4f67-841f-6a9465d9d515       |      |      | x    |No                                |
|App Resolver      | E2A4F912-2574-4A75-9BB0-0D023378592B       |      |      | x    |No                                |
|Add Suggested folder Dialog box| F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE||      | x    |No                                                     |

> [!NOTE]
> - The Contact Support app changed to Get Help in version 1709. Get Help is a provisioned app (instead of system app like Contact Support).

## Provisioned Windows apps

Here are the typical provisioned Windows apps in Windows 10 versions 1703, 1709, and 1803.

| App Name (Canonical)           | Display Name                           | Microsoft Store                                                                                | 1703 | 1709 | 1803 | Uninstall via UI? |
|--------------------------------|----------------------------------------|:----------------------------------------------------------------------------------------------:|:----:|:----:|:----:|-------------------|
| 3D Builder                     | Microsoft.3DBuilder                    | [🔗](ms-windows-store://pdp/?PFN=Microsoft.3DBuilder_8wekyb3d8bbwe)                             | x    |      |      | Yes               |
| App Installer                  | Microsoft.DesktopAppInstaller          | [🔗](ms-windows-store://pdp/?PFN=Microsoft.DesktopAppInstaller_8wekyb3d8bbwe)                   | x    | x    | x    | Via Settings App  |
| Feedback Hub                   | Microsoft.WindowsFeedbackHub           | [🔗](ms-windows-store://pdp/?PFN=Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe)                    | x    | x    | x    | Yes               |
| Get Help                       | Microsoft.GetHelp                      | [🔗](ms-windows-store://pdp/?PFN=Microsoft.Gethelp_8wekyb3d8bbwe)                               |      | x    | x    | No                |
| Get Office                     | Microsoft.MicrosoftOfficeHub           | [🔗](ms-windows-store://pdp/?PFN=Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe)                    | x    | x    | x    | Yes               |
| Groove Music                   | Microsoft.ZuneMusic                    | [🔗](ms-windows-store://pdp/?PFN=Microsoft.ZuneMusic_8wekyb3d8bbwe)                             | x    | x    | x    | No                |
| Mail and Calendar              | Microsoft.windowscommunicationsapps    | [🔗](ms-windows-store://pdp/?PFN=microsoft.windowscommunicationsapps_8wekyb3d8bbwe)             | x    | x    | x    | No                |
| Microsoft Messaging            | Microsoft.Messaging                    | [🔗](ms-windows-store://pdp/?PFN=Microsoft.Messaging_8wekyb3d8bbwe)                             | x    | x    | x    | No                |
| Microsoft People               | Microsoft.People                       | [🔗](ms-windows-store://pdp/?PFN=Microsoft.People_8wekyb3d8bbwe)                                | x    | x    | x    | No                |
| Microsoft Photos               | Microsoft.Windows.Photos               | [🔗](ms-windows-store://pdp/?PFN=Microsoft.Windows.Photos_8wekyb3d8bbwe)                        | x    | x    | x    | No                |
| Microsoft Solitaire Collection | Microsoft.MicrosoftSolitaireCollection | [🔗](ms-windows-store://pdp/?PFN=Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe)          | x    | x    | x    | Yes               |
| Microsoft Sticky Notes         | Microsoft.MicrosoftStickyNotes         | [🔗](ms-windows-store://pdp/?PFN=Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe)                  | x    | x    | x    | No                |
| Microsoft Tips                 | Microsoft.Getstarted                   | [🔗](ms-windows-store://pdp/?PFN=Microsoft.Getstarted_8wekyb3d8bbwe)                            | x    | x    | x    | Yes               |
| Mixed Reality Viewer           | Microsoft.Microsoft3DViewer            | [🔗](ms-windows-store://pdp/?PFN=Microsoft.Microsoft3DViewer_8wekyb3d8bbwe)                     | x    | x    | x    | No                |
| Movies & TV                    | Microsoft.ZuneVideo                    | [🔗](ms-windows-store://pdp/?PFN=Microsoft.ZuneVideo_8wekyb3d8bbwe)                             | x    | x    | x    | No                |
| MSN Weather (BingWeather       | Microsoft.BingWeather                  | [🔗](ms-windows-store://pdp/?PFN=Microsoft.BingWeather_8wekyb3d8bbwe)                           | x    | x    | x    | Yes               |
| One Note                       | Microsoft.Office.OneNote               | [🔗](ms-windows-store://pdp/?PFN=Microsoft.Office.OneNote_8wekyb3d8bbwe)                        | x    | x    | x    | Yes               |
| Paid Wi-Fi & Cellular          | Microsoft.OneConnect                   | [🔗](ms-windows-store://pdp/?PFN=Microsoft.OneConnect_8wekyb3d8bbwe)                            | x    | x    | x    | Yes               |
| Paint 3D                       | Microsoft.MSPaint                      | [🔗](ms-windows-store://pdp/?PFN=Microsoft.MSPaint_8wekyb3d8bbwe)                               | x    | x    | x    | No                |
| Print 3D                       | Microsoft.Print3D                      | [🔗](ms-windows-store://pdp/?PFN=Microsoft.Print3D_8wekyb3d8bbwe)                               |      | x    | x    | No                |
| Skype                          | Microsoft.SkypeApp                     | [🔗](ms-windows-store://pdp/?PFN=Microsoft.SkypeApp_kzf8qxf38zg5c)                              | x    | x    | x    | Yes               |
| Store Purchase App             | Microsoft.StorePurchaseApp             | [🔗](ms-windows-store://pdp/?PFN=Microsoft.StorePurchaseApp_8wekyb3d8bbwe)<sup>1</sup>          | x    | x    | x    | No                |
| Wallet                         | Microsoft.Wallet                       | [🔗](ms-windows-store://pdp/?PFN=Microsoft.Wallet_8wekyb3d8bbwe)<sup>1</sup>                    | x    | x    | x    | No                |
| Web Media Extensions           | Microsoft.WebMediaExtensions           | [🔗](ms-windows-store://pdp/?PFN=Microsoft.WebMediaExtensions_8wekyb3d8bbwe)                    |      |      | x    | No                |
| Windows Alarms & Clock         | Microsoft.WindowsAlarms                | [🔗](ms-windows-store://pdp/?PFN=Microsoft.WindowsAlarms_8wekyb3d8bbwe)                         | x    | x    | x    | No                |
| Windows Calculator             | Microsoft.WindowsCalculator            | [🔗](ms-windows-store://pdp/?PFN=Microsoft.WindowsCalculator_8wekyb3d8bbwe)                     | x    | x    | x    | No                |
| Windows Camera                 | Microsoft.WindowsCamera                | [🔗](ms-windows-store://pdp/?PFN=Microsoft.WindowsCamera_8wekyb3d8bbwe)                         | x    | x    | x    | No                |
| Windows Maps                   | Microsoft.WindowsMaps                  | [🔗](ms-windows-store://pdp/?PFN=Microsoft.WindowsMaps_8wekyb3d8bbwe)                           | x    | x    | x    | No                |
| Windows Store                  | Microsoft.WindowsStore                 | [🔗](ms-windows-store://pdp/?PFN=Microsoft.WindowsStore_8wekyb3d8bbwe)                          | x    | x    | x    | No                |
| Windows Voice Recorder         | Microsoft.SoundRecorder                | [🔗](ms-windows-store://pdp/?PFN=Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe)                  | x    | x    | x    | No                |
| Xbox                           | Microsoft.XboxApp                      | [🔗](ms-windows-store://pdp/?PFN=Microsoft.XboxApp_8wekyb3d8bbwe)                               | x    | x    | x    | No                |
| Xbox Game Bar                  | Microsoft.XboxGameOverlay              | [🔗](ms-windows-store://pdp/?PFN=Microsoft.XboxGameOverlay_8wekyb3d8bbwe)                       | x    | x    | x    | No                |
| Xbox Gaming Overlay            | Microsoft.XboxGamingOverlay            | [🔗](ms-windows-store://pdp/?PFN=Microsoft.XboxGamingOverlay_8wekyb3d8bbwe)                     |      |      | x    | No                |
| Xbox Identity Provider         | Microsoft.XboxIdentityProvider         | [🔗](ms-windows-store://pdp/?PFN=Microsoft.XboxIdentityProvider_8wekyb3d8bbwe)                  | x    | x    | x    | No                |
| Xbox Speech to Text Overlay    | Microsoft.XboxSpeech ToTextOverlay     | [🔗](ms-windows-store://pdp/?PFN=Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe)<sup>1</sup>   | x    | x    | x    | No                |
| Xbox TCUI                      | Microsoft.Xbox.TCUI                    | [🔗](ms-windows-store://pdp/?PFN=Microsoft.Xbox.TCUI_8wekyb3d8bbwe)                             |      | x    | x    | No                |

> [!NOTE]
> <sup>1</sup> unavailable in Microsoft Store
>
> The Store app can't be removed. If you want to remove and reinstall the Store app, you can only bring Store back by either restoring your system from a backup or resetting your system. Instead of removing the Store app, you should use group policies to hide or disable it.



## Installed Windows apps

Here are the typical installed Windows apps in Windows 10 versions 1703, 1709, and 1803.

| Name               | DisplayName                              | 1703 | 1709 | 1803 |Uninstall through UI? |
|--------------------|------------------------------------------|:----:|:----:|:----:|----------------------|
| Remote Desktop     | Microsoft.RemoteDesktop                  | x    | x    |      | Yes                  |
| PowerBI            | Microsoft.Microsoft PowerBIforWindows    | x    |      |      | Yes                  |
| Code Writer        | ActiproSoftwareLLC.562882FEEB491         | x    | x    | x    | Yes                  |
| Eclipse Manager    | 46928bounde.EclipseManager               | x    | x    | x    | Yes                  |
| Pandora            | PandoraMediaInc.29680B314EFC2            | x    | x    | x    | Yes                  |
| Photoshop Express  | AdobeSystemIncorporated. AdobePhotoshop  | x    | x    | x    | Yes                  |
| Duolingo           | D5EA27B7.Duolingo- LearnLanguagesforFree | x    | x    | x    | Yes                  |
| Network Speed Test | Microsoft.NetworkSpeedTest               | x    | x    | x    | Yes                  |
| News               | Microsoft.BingNews                       | x    | x    | x    | Yes                  |
| Flipboard          |                                          |      |      |      | Yes                  |
|                    | Microsoft.Advertising.Xaml               | x    | x    | x    | Yes                  |
|                    | Microsoft.NET.Native.Framework.1.2       | x    | x    | x    | Yes                  |
|                    | Microsoft.NET.Native.Framework.1.3       | x    | x    | x    | Yes                  |
|                    | Microsoft.NET.Native.Framework.1.6       |      | x    | x    | Yes                  |
|                    | Microsoft.NET.Native.Framework.1.7       |      |      | x    | Yes                  |
|                    | Microsoft.NET.Native.Framework.2.0       |      | x    | x    | Yes                  |
|                    | Microsoft.NET.Native.Runtime.1.1         |      | x    | x    | Yes                  |
|                    | Microsoft.NET.Native.Runtime.1.3         | x    | x    |      | Yes                  |
|                    | Microsoft.NET.Native.Runtime.1.4         | x    | x    | x    | Yes                  |
|                    | Microsoft.NET.Native.Runtime.1.6         |      | x    | x    | Yes                  |
|                    | Microsoft.NET.Native.Runtime.1.7         |      |      | x    | Yes                  |
|                    | Microsoft.NET.Native.Runtime.2.0         |      | x    | x    | Yes                  |
|                    | Microsoft.Services.Store.Engagement      |      | x    | x    | Yes                  |
|                    | Microsoft.VCLibs.120.00                  | x    | x    | x    | Yes                  |
|                    | Microsoft.VCLibs.140.00                  | x    | x    | x    | Yes                  |
|                    | Microsoft.VCLibs.120.00.Universal        |      | x    |      | Yes                  |
|                    | Microsoft.VCLibs.140.00.UWPDesktop       |      |      | x    | Yes                  |
|                    | Microsoft.WinJS.2.0                      | x    |      |      | Yes                  |
