---
title: Windows 10 - Apps
ms.reviewer: 
manager: dansimp
description: What are Windows, UWP, and Win32 apps
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
ms.author: tracyp
author: msfttracyp
ms.localizationpriority: medium
ms.topic: article
---
# Understand the different apps included in Windows 10

>Applies to: Windows 10

The following types of apps run on Windows 10:
- Windows apps - introduced in Windows 8, primarily installed from the Store app.
- Universal Windows Platform (UWP) apps - designed to work across platforms, can be installed on multiple platforms including Windows client, Windows Phone, and Xbox. All UWP apps are also Windows apps, but not all Windows apps are UWP apps.
- "Win32" apps - traditional Windows applications.

Digging into the Windows apps, there are two categories:
- Apps - All other apps, installed in C:\Program Files\WindowsApps. There are two classes of apps:
   - Provisioned: Installed in user account the first time you sign in with a new user account.
   - Installed: Installed as part of the OS.
- System apps - Apps that are installed in the C:\Windows\* directory. These apps are integral to the OS.

The following tables list the system apps, installed Windows apps, and provisioned Windows apps in a standard Windows 10 Enterprise installation. (If you have a custom image, your specific apps might differ.) The tables list the app, the full name, show the app's status in Windows 10 version 1709, 1803, and 1809 and indicate whether an app can be uninstalled through the UI.

Some of the apps show up in multiple tables - that's because their status changed between versions. Make sure to check the version column for the version you are currently running.


## Provisioned Windows apps

Here are the provisioned Windows apps in Windows 10 versions 1703, 1709, 1803 and 1809.

> [!TIP]
> You can list all provisioned Windows apps with this PowerShell command:
> ```
> Get-AppxProvisionedPackage -Online | Format-Table DisplayName, PackageName
> ```

<br>

| Package name                           | App name                                                                                                           | 1703 | 1709 | 1803 | 1809 | Uninstall through UI? |
|----------------------------------------|--------------------------------------------------------------------------------------------------------------------|:----:|:----:|:----:|:----:|:---------------------:|
| Microsoft.3DBuilder                    | [3D Builder](ms-windows-store://pdp/?PFN=Microsoft.3DBuilder_8wekyb3d8bbwe)                                        | x    |      |      |      | Yes                   |
| Microsoft.BingWeather                  | [MSN Weather](ms-windows-store://pdp/?PFN=Microsoft.BingWeather_8wekyb3d8bbwe)                                     | x    | x    | x    | x    | Yes                   |
| Microsoft.DesktopAppInstaller          | [App Installer](ms-windows-store://pdp/?PFN=Microsoft.DesktopAppInstaller_8wekyb3d8bbwe)                           | x    | x    | x    | x    | Via Settings App      |
| Microsoft.GetHelp                      | [Get Help](ms-windows-store://pdp/?PFN=Microsoft.Gethelp_8wekyb3d8bbwe)                                            |      | x    | x    | x    | No                    |
| Microsoft.Getstarted                   | [Microsoft Tips](ms-windows-store://pdp/?PFN=Microsoft.Getstarted_8wekyb3d8bbwe)                                   | x    | x    | x    | x    | No                    |
| Microsoft.HEIFImageExtension           | [HEIF Image Extensions](ms-windows-store://pdp/?PFN=Microsoft.HEIFImageExtension_8wekyb3d8bbwe)                    |      |      |      | x    | No                    |
| Microsoft.Messaging                    | [Microsoft Messaging](ms-windows-store://pdp/?PFN=Microsoft.Messaging_8wekyb3d8bbwe)                               | x    | x    | x    | x    | No                    |
| Microsoft.Microsoft3DViewer            | [Mixed Reality Viewer](ms-windows-store://pdp/?PFN=Microsoft.Microsoft3DViewer_8wekyb3d8bbwe)                      | x    | x    | x    | x    | No                    |
| Microsoft.MicrosoftOfficeHub           | [My Office](ms-windows-store://pdp/?PFN=Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe)                                | x    | x    | x    | x    | Yes                   |
| Microsoft.MicrosoftSolitaireCollection | [Microsoft Solitaire Collection](ms-windows-store://pdp/?PFN=Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe) | x    | x    | x    | x    | Yes                   |
| Microsoft.MicrosoftStickyNotes         | [Microsoft Sticky Notes](ms-windows-store://pdp/?PFN=Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe)                 | x    | x    | x    | x    | No                    |
| Microsoft.MixedReality.Portal          | [Mixed Reality Portal](ms-windows-store://pdp/?PFN=Microsoft.MixedReality.Portal_8wekyb3d8bbwe)                    |      |      |      | x    | No                    |
| Microsoft.MSPaint                      | [Paint 3D](ms-windows-store://pdp/?PFN=Microsoft.MSPaint_8wekyb3d8bbwe)                                            | x    | x    | x    | x    | No                    |
| Microsoft.Office.OneNote               | [OneNote](ms-windows-store://pdp/?PFN=Microsoft.Office.OneNote_8wekyb3d8bbwe)                                      | x    | x    | x    | x    | Yes                   |
| Microsoft.OneConnect                   | [Paid Wi-Fi & Cellular](ms-windows-store://pdp/?PFN=Microsoft.OneConnect_8wekyb3d8bbwe)                            | x    | x    | x    | x    | No                    |
| Microsoft.People                       | [Microsoft People](ms-windows-store://pdp/?PFN=Microsoft.People_8wekyb3d8bbwe)                                     | x    | x    | x    | x    | No                    |
| Microsoft.Print3D                      | [Print 3D](ms-windows-store://pdp/?PFN=Microsoft.Print3D_8wekyb3d8bbwe)                                            |      | x    | x    | x    | No                    |
| Microsoft.ScreenSketch                 | [Snip & Sketch](ms-windows-store://pdp/?PFN=Microsoft.ScreenSketch_8wekyb3d8bbwe)                                  |      |      |      | x    | No                    |
| Microsoft.SkypeApp                     | [Skype](ms-windows-store://pdp/?PFN=Microsoft.SkypeApp_kzf8qxf38zg5c)                                              | x    | x    | x    | x    | No                    |
| Microsoft.StorePurchaseApp             | [Store Purchase App](ms-windows-store://pdp/?PFN=Microsoft.StorePurchaseApp_8wekyb3d8bbwe)                         | x    | x    | x    | x    | No                    |
| Microsoft.VP9VideoExtensions           |                                                                                                                    |      |      |      | x    | No                    |
| Microsoft.Wallet                       | [Microsoft Pay](ms-windows-store://pdp/?PFN=Microsoft.Wallet_8wekyb3d8bbwe)                                        | x    | x    | x    | x    | No                    |
| Microsoft.WebMediaExtensions           | [Web Media Extensions](ms-windows-store://pdp/?PFN=Microsoft.WebMediaExtensions_8wekyb3d8bbwe)                     |      |      | x    | x    | No                    |
| Microsoft.WebpImageExtension           | [Webp Image Extension](ms-windows-store://pdp/?PFN=Microsoft.WebpImageExtension_8wekyb3d8bbwe)                     |      |      |      | x    | No                    |
| Microsoft.Windows.Photos               | [Microsoft Photos](ms-windows-store://pdp/?PFN=Microsoft.Windows.Photos_8wekyb3d8bbwe)                             | x    | x    | x    | x    | No                    |
| Microsoft.WindowsAlarms                | [Windows Alarms & Clock](ms-windows-store://pdp/?PFN=Microsoft.WindowsAlarms_8wekyb3d8bbwe)                        | x    | x    | x    | x    | No                    |
| Microsoft.WindowsCalculator            | [Windows Calculator](ms-windows-store://pdp/?PFN=Microsoft.WindowsCalculator_8wekyb3d8bbwe)                        | x    | x    | x    | x    | No                    |
| Microsoft.WindowsCamera                | [Windows Camera](ms-windows-store://pdp/?PFN=Microsoft.WindowsCamera_8wekyb3d8bbwe)                                | x    | x    | x    | x    | No                    |
| microsoft.windowscommunicationsapps    | [Mail and Calendar](ms-windows-store://pdp/?PFN=microsoft.windowscommunicationsapps_8wekyb3d8bbwe)                 | x    | x    | x    | x    | No                    |
| Microsoft.WindowsFeedbackHub           | [Feedback Hub](ms-windows-store://pdp/?PFN=Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe)                             | x    | x    | x    | x    | No                    |
| Microsoft.WindowsMaps                  | [Windows Maps](ms-windows-store://pdp/?PFN=Microsoft.WindowsMaps_8wekyb3d8bbwe)                                    | x    | x    | x    | x    | No                    |
| Microsoft.WindowsSoundRecorder         | [Windows Voice Recorder](ms-windows-store://pdp/?PFN=Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe)                 | x    | x    | x    | x    | No                    |
| Microsoft.WindowsStore                 | [Microsoft Store](ms-windows-store://pdp/?PFN=Microsoft.WindowsStore_8wekyb3d8bbwe)                                | x    | x    | x    | x    | No                    |
| Microsoft.Xbox.TCUI                    | [Xbox TCUI](ms-windows-store://pdp/?PFN=Microsoft.Xbox.TCUI_8wekyb3d8bbwe)                                         |      | x    | x    | x    | No                    |
| Microsoft.XboxApp                      | [Xbox](ms-windows-store://pdp/?PFN=Microsoft.XboxApp_8wekyb3d8bbwe)                                                | x    | x    | x    | x    | No                    |
| Microsoft.XboxGameOverlay              | [Xbox Game Bar](ms-windows-store://pdp/?PFN=Microsoft.XboxGameOverlay_8wekyb3d8bbwe)                               | x    | x    | x    | x    | No                    |
| Microsoft.XboxGamingOverlay            | [Xbox Gaming Overlay](ms-windows-store://pdp/?PFN=Microsoft.XboxGamingOverlay_8wekyb3d8bbwe)                       |      |      | x    | x    | No                    |
| Microsoft.XboxIdentityProvider         | [Xbox Identity Provider](ms-windows-store://pdp/?PFN=Microsoft.XboxIdentityProvider_8wekyb3d8bbwe)                 | x    | x    | x    | x    | No                    |
| Microsoft.XboxSpeechToTextOverlay      |                                                                                                                    | x    | x    | x    | x    | No                    |
| Microsoft.YourPhone                    | [Your Phone](ms-windows-store://pdp/?PFN=Microsoft.YourPhone_8wekyb3d8bbwe)                                        |      |      |      | x    | No                    |
| Microsoft.ZuneMusic                    | [Groove Music](ms-windows-store://pdp/?PFN=Microsoft.ZuneMusic_8wekyb3d8bbwe)                                      | x    | x    | x    | x    | No                    |
| Microsoft.ZuneVideo                    | [Movies & TV](ms-windows-store://pdp/?PFN=Microsoft.ZuneVideo_8wekyb3d8bbwe)                                       | x    | x    | x    | x    | No                    |



## Provisioned Windows apps in 1903


| Name of the application             |          Package Name                          | 1903  |Uninstall through UI? |
|----------------------------------   |------------------------------------------------|:-----:|----------------------|
| Microsoft.BingWeather                 |Microsoft.BingWeather                         |   x   |
| Microsoft.DesktopAppInstaller         |Microsoft.DesktopAppInstaller                 |   x   |
| Microsoft.GetHelp                     |Microsoft.GetHelp                             |   x   |
| Microsoft.Getstarted                  | Microsoft.Getstarted                         |   x   |
| Microsoft.HEIFImageExtension          | Microsoft.HEIFImageExtension                 |   x   |
| Microsoft.Messaging                   | Microsoft.Messaging                          |   x   |
| Microsoft.Microsoft3DViewer           | Microsoft.Microsoft3DViewer                  |   x   |
| Microsoft.MicrosoftOfficeHub          | Microsoft.MicrosoftOfficeHub                 |   x   |
| Microsoft.MicrosoftSolitaireCollection| Microsoft.MicrosoftSolitaireCollection       |   x   |
| Microsoft.MicrosoftStickyNotes        | Microsoft.MicrosoftStickyNotes               |   x   |
| Microsoft.MixedReality.Portal         | Microsoft.MixedReality.Portal                |   x   |
| Microsoft.MSPaint                     | Microsoft.MSPaint                            |   x   |
| Microsoft.Office.OneNote              | Microsoft.Office.OneNote                     |   x   |
| Microsoft.OneConnect                  | Microsoft.OneConnect                         |   x   |
| Microsoft.People                      | Microsoft.People                             |   x   |
| Microsoft.Print3D                     | Microsoft.Print3D                            |   x   |
| Microsoft.ScreenSketch                | Microsoft.ScreenSketch                       |   x   |
| Microsoft.SkypeApp                    | Microsoft.SkypeApp                           |   x   |
| Microsoft.StorePurchaseApp            | Microsoft.StorePurchaseApp                   |   x   |
| Microsoft.VP9VideoExtensions          | Microsoft.VP9VideoExtensions                 |   x   |
| Microsoft.Wallet                      | Microsoft.Wallet                             |   x   |
| Microsoft.WebMediaExtensions          | Microsoft.WebMediaExtensions                 |   x   |
| Microsoft.WebpImageExtension          | Microsoft.WebpImageExtension                 |   x   |
| Microsoft.Windows.Photos              | Microsoft.Windows.Photos                     |   x   |
| Microsoft.WindowsAlarms               | Microsoft.WindowsAlarms                      |   x   |
| Microsoft.WindowsCalculator           | Microsoft.WindowsCalculator                  |   x   |
| Microsoft.WindowsCamera               | Microsoft.WindowsCamera                      |   x   |
| Microsoft.windowscommunicationsapps   | Microsoft.windowscommunicationsapps          |   x   |
| Microsoft.WindowsFeedbackHub          | Microsoft.WindowsFeedbackHub                 |   x   |
| Microsoft.WindowsMaps                 | Microsoft.WindowsMaps                        |   x   |
| Microsoft.WindowsSoundRecorder        | Microsoft.WindowsSoundRecorder               |   x   |
| Microsoft.WindowsStore                | Microsoft.WindowsStore                       |   x   |
| Microsoft.Xbox.TCUI                   | Microsoft.Xbox.TCUI                          |   x   |
| Microsoft.XboxApp                     | Microsoft.XboxApp                            |   x   |
| Microsoft.XboxGameOverlay             | Microsoft.XboxGameOverlay                    |   x   |
| Microsoft.XboxGamingOverlay           | Microsoft.XboxGamingOverlay                  |   x   |
| Microsoft.XboxIdentityProvider        | Microsoft.XboxIdentityProvider               |   x   |
| Microsoft.XboxSpeechToTextOverlay     | Microsoft.XboxSpeechToTextOverlay            |   x   |
| Microsoft.YourPhone                   | Microsoft.YourPhone                          |   x   |
| Microsoft.ZuneMusic                   | Microsoft.ZuneMusic                          |   x   |
| Microsoft.ZuneVideo                   | Microsoft.ZuneVideo                          |   x   |



>[!NOTE]
>The Store app can't be removed. If you want to remove and reinstall the Store app, you can only bring Store back by either restoring your system from a backup or resetting your system. Instead of removing the Store app, you should use group policies to hide or disable it.

## System apps

System apps are integral to the operating system. Here are the typical system apps in Windows 10 versions 1709, 1803, and 1809.

> [!TIP]
> You can list all system apps with this PowerShell command:
> ```
> Get-AppxPackage -PackageTypeFilter Main | ? { $_.SignatureKind -eq "System" } | Sort Name | Format-Table Name, InstallLocation
> ```

<br>

| Name                             | Package Name                                | 1709 | 1803 | 1809 |Uninstall through UI? |
|----------------------------------|---------------------------------------------|:-----:|:----:|:----:|-----------------------|
| File Picker                      | 1527c705-839a-4832-9118-54d4Bd6a0c89        |       | x    | x    | No                    |
| File Explorer                    | c5e2524a-ea46-4f67-841f-6a9465d9d515        |       | x    | x    | No                    |
| App Resolver UX                  | E2A4F912-2574-4A75-9BB0-0D023378592B        |       | x    | x    | No                    |
| Add Suggested Folders To Library | F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE        |       | x    | x    | No                    |
|                                  | InputApp                                    | x     | x    | x    | No                    |
| Microsoft.AAD.Broker.Plugin      | Microsoft.AAD.Broker.Plugin                 | x     | x    | x    | No                    |
| Microsoft.AccountsControl        | Microsoft.AccountsControl                   | x     | x    | x    | No                    |
| Microsoft.AsyncTextService       | Microsoft.AsyncTextService                  |       | x    | x    | No                    |
| Hello setup UI                   | Microsoft.BioEnrollment                     | x     | x    | x    | No                    |
|                                  | Microsoft.CredDialogHost                    | x     | x    | x    | No                    |
|                                  | Microsoft.ECApp                             | x     | x    | x    | No                    |
|                                  | Microsoft.LockApp                           | x     | x    | x    | No                    |
| Microsoft Edge                   | Microsoft.MicrosoftEdge                     | x     | x    | x    | No                    |
|                                  | Microsoft.MicrosoftEdgeDevToolsClient       |       | x    | x    | No                    |
|                                  | Microsoft.PPIProjection                     | x     | x    | x     | No                    |
|                                  | Microsoft.Win32WebViewHost                  |       | x    | x    | No                    |
|                                  | Microsoft.Windows.Apprep.ChxApp             | x     | x    | x    | No                    |
|                                  | Microsoft.Windows.AssignedAccessLockApp     | x     | x    | x    | No                    |
|                                  | Microsoft.Windows.CapturePicker             |       | x    | x    | No                    |
|                                  | Microsoft.Windows.CloudExperienceHost       | x     | x    | x    | No                    |
|                                  | Microsoft.Windows.ContentDeliveryManager    | x     | x    | x    | No                    |
| Cortana                          | Microsoft.Windows.Cortana                   | x     | x    | x    | No                    |
|                                  | Microsoft.Windows.Holographic.FirstRun      | x     | x    |      | No                    |
|                                  | Microsoft.Windows.OOBENetworkCaptivePort    | x     | x    | x    | No                    |
|                                  | Microsoft.Windows.OOBENetworkConnectionFlow | x     | x    | x    | No                    |
|                                  | Microsoft.Windows.ParentalControls          | x     | x    | x    | No                    |
| People Hub                       | Microsoft.Windows.PeopleExperienceHost      | x     | x    | x    | No                    |
|                                  | Microsoft.Windows.PinningConfirmationDialog | x     | x    | x    | No                    |
|                                  | Microsoft.Windows.SecHealthUI               | x     | x    | x    | No                    |
|                                  | Microsoft.Windows.SecondaryTileExperience   | x     |      |      | No                    |
|                                  | Microsoft.Windows.SecureAssessmentBrowser   | x     | x    | x    | No                    |
| Start                            | Microsoft.Windows.ShellExperienceHost       | x     | x    | x    | No                    |
| Windows Feedback                 | Microsoft.WindowsFeedback                   | *     |      |      | No                    |
|                                  | Microsoft.XboxGameCallableUI                | x     | x    | x    | No                    |
|                                  | Windows.CBSPreview                          |       | x    | x    | No                    |
| Contact Support*                 | Windows.ContactSupport                      | *     |      |      | Via Settings App      |
| Settings                         | Windows.immersivecontrolpanel               | x     | x    | x    | No                    |
| Print 3D                         | Windows.Print3D                             |       | x    | x    | Yes                   |
| Print UI                         | Windows.PrintDialog                         | x     | x    | x    | No                    |


## System apps in 1903
Location of system apps is  C:\Windows\SystemApps\

|         Name                                 |                Full name                     |1903 | Uninstall through UI? |
|----------------------------------------------|----------------------------------------------|:---:|:---------------------:|
| File Picker                                  | 1527c705-839a-4832-9118-54d4Bd6a0c89         |  x  |                          
| File Explorer                                | C5e2524a-ea46-4f67-841f-6a9465d9d515         |  x  |
| App Resolver UX                              | E2A4F912-2574-4A75-9BB0-0D023378592B         |  x  |
| Add Suggested Folders To Library             | F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE         |  x  |   
| InputApp                                     | InputApp                                     |  x  |
| Microsoft.AAD.BrokerPlugin                   | Microsoft.AAD.BrokerPlugin                   |  x  |
| Microsoft.AccountsControl                    | Microsoft.AccountsControl                    |  x  |
| Microsoft.AsyncTextService                   | Microsoft.AsyncTextService                   |  x  |
| Hello setup UI                               | Microsoft.BioEnrollment                      |  x  |
| Microsoft.CredDialogHost                     | Microsoft.CredDialogHost                     |  x  |
| Microsoft.ECApp                              | Microsoft.ECApp                              |  x  |
| Microsoft.EdgeDevtoolsPlugin                 | Microsoft.EdgeDevtoolsPlugin                 |  x  |
| Microsoft.LockApp                            | Microsoft.LockApp                            |  x  |
| Microsoft.MicrosoftEdge                      | Microsoft.MicrosoftEdge                      |  x  |
| Microsoft.MicrosoftEdgeDevToolsClient        | Microsoft.MicrosoftEdgeDevToolsClient        |  x  |
| Microsoft.PPIProjection                      | Microsoft.PPIProjection                      |  x  |
| Microsoft.Win32WebViewHost                   | Microsoft.Win32WebViewHost                   |  x  |
| Microsoft.Windows.Apprep.ChxApp              | Microsoft.Windows.AppRep.ChxApp              |  x  |
| Microsoft.Windows.AssignedAccessLockApp      | Microsoft.Windows.AssignedAccessLockApp      |  x  |
| Microsoft.Windows.CallingShellApp            | Microsoft.Windows.CallingShellApp            |  x  |
| Microsoft.Windows.CapturePicker              | Microsoft.Windows.CapturePicker              |  x  |
| Microsoft.Windows.CloudExperienceHost        | Microsoft.Windows.CloudExperienceHost        |  x  |
| Microsoft.Windows.ContentDeliveryManager     | Microsoft.Windows.ContentDeliveryManager     |  x  |
| Microsoft.Windows.Cortana                    | Microsoft.Windows.Cortana                    |  x  |
| Microsoft.Windows.NarratorQuickStart         | Microsoft.Windows.NarratorQuickStart         |  x  |
| Microsoft.Windows.OOBENetworkCaptivePortal   | Microsoft.Windows.OOBENetworkCaptivePortal   |  x  |
| Microsoft.Windows.OOBENetworkConnectionFlow  | Microsoft.Windows.OOBENetworkConnectionFlow  |  x  |
| Microsoft.Windows.ParentalControls           | Microsoft.Windows.ParentalControls           |  x  |
| Microsoft.Windows.PeopleExperienceHost       | Microsoft.Windows.PeopleExperienceHost       |  x  |
| Microsoft.Windows.PinningConfirmationDialog  | Microsoft.Windows.PinningConfirmationDialog  |  x  |
| Microsoft.Windows.SecHealthUI                | Microsoft.Windows.SecHealthUI                |  x  |
| Microsoft.Windows.SecureAssessmentBrowser    | Microsoft.Windows.SecureAssessmentBrowser    |  x  |
| Microsoft.Windows.ShellExperienceHost        | Microsoft.Windows.ShellExperienceHost        |  x  |
| Microsoft.Windows.StartMenuExperienceHost    | Microsoft.Windows.StartMenuExperienceHost    |  x  |
| Microsoft.Windows.XGpuEjectDialog            | Microsoft.Windows.XGpuEjectDialog            |  x  |
| Microsoft.XboxGameCallableUI                 | Microsoft.XboxGameCallableUI                 |  x  |
| Windows.CBSPreview                           | Windows.CBSPreview                           |  x  |
| Windows.ImmersiveControlPanel                | Windows.ImmersiveControlPanel                        |  x  |
| Windows.PrintDialog                          | Windows.PrintDialog                                  |  x  |

> [!NOTE]
> - The Contact Support app changed to Get Help in version 1709. Get Help is a provisioned app (instead of system app like Contact Support).

## Installed Windows apps

Here are the typical installed Windows apps in Windows 10 versions 1709, 1803, and 1809.


|         Name          |                Full name                 | 1709 | 1803 | 1809 | Uninstall through UI? |
|-----------------------|------------------------------------------|:----:|:----:|:----:|:---------------------:|
|    Remote Desktop     |         Microsoft.RemoteDesktop          |  x   |      |  x   |          Yes          |
|      Code Writer      |     ActiproSoftwareLLC.562882FEEB491     |  x   |  x   |      |          Yes          |
|    Eclipse Manager    |        46928bounde.EclipseManager        |  x   |  x   |      |          Yes          |
|        Pandora        |      PandoraMediaInc.29680B314EFC2       |  x   |  x   |      |          Yes          |
|   Photoshop Express   | AdobeSystemIncorporated. AdobePhotoshop  |  x   |  x   |      |          Yes          |
|       Duolingo        | D5EA27B7.Duolingo- LearnLanguagesforFree |  x   |  x   |      |          Yes          |
|  Network Speed Test   |        Microsoft.NetworkSpeedTest        |  x   |  x   |  x   |          Yes          |
|         News          |            Microsoft.BingNews            |  x   |  x   |  x   |          Yes          |
|         Sway          |          Microsoft.Office.Sway           |  x   |  x   |  x   |          Yes          |
| Microsoft.Advertising |        Microsoft.Advertising.Xaml        |  x   |  x   |  x   |          Yes          |
|                       |    Microsoft.NET.Native.Framework.1.2    |  x   |  x   |      |          Yes          |
|                       |    Microsoft.NET.Native.Framework.1.3    |  x   |  x   |      |          Yes          |
|                       |    Microsoft.NET.Native.Framework.1.6    |  x   |  x   |  x   |          Yes          |
|                       |    Microsoft.NET.Native.Framework.1.7    |      |  x   |  x   |          Yes          |
|                       |    Microsoft.NET.Native.Framework.2.0    |  x   |  x   |      |          Yes          |
|                       |     Microsoft.NET.Native.Runtime.1.1     |  x   |  x   |      |          Yes          |
|                       |     Microsoft.NET.Native.Runtime.1.3     |  x   |      |      |          Yes          |
|                       |     Microsoft.NET.Native.Runtime.1.4     |  x   |  x   |      |          Yes          |
|                       |     Microsoft.NET.Native.Runtime.1.6     |  x   |  x   |  x   |          Yes          |
|                       |     Microsoft.NET.Native.Runtime.1.7     |  x   |  x   |  x   |          Yes          |
|                       |     Microsoft.NET.Native.Runtime.2.0     |  x   |  x   |      |          Yes          |
|                       |   Microsoft.Services.Store.Engagement    |  x   |  x   |      |          Yes          |
|                       |         Microsoft.VCLibs.120.00          |  x   |  x   |      |          Yes          |
|                       |         Microsoft.VCLibs.140.00          |  x   |  x   |  x   |          Yes          |
|                       |    Microsoft.VCLibs.120.00.Universal     |  x   |      |      |          Yes          |
|                       |    Microsoft.VCLibs.140.00.UWPDesktop    |      |  x   |      |          Yes          |


