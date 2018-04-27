---
title: Windows 10 - Apps
description: What are Windows, UWP, and Win32 apps
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
ms.author: elizapo
author: lizap
ms.localizationpriority: low
ms.date: 04/30/2018
---
# Understand the different apps included in Windows 10

The following types of apps run on Windows 10:
- Windows apps - introduced in Windows 8, primarily installed from the Store app.
- Universal Windows Platform (UWP) apps - designed to work across platforms, can be installed on multiple platforms including Windows client, Windows Phone, and Xbox. All UWP apps are also Windows apps, but not all Windows apps are UWP apps.
- "Win32" apps - traditional Windows applications, built for 32-bit systems.

Digging into the Windows apps, there are two categories:
- System apps - Apps that are installed in the c:\Windows\* directory. These apps are integral to the OS.
- Apps - All other apps, installed in c:\Program Files\WindowsApps. There are two classes of apps:
   - Provisioned: Installed the first time you sign into Windows. You'll see a tile or Start menu item for these apps, but they aren't installed until the first sign-in.
   - Installed: Installed as part of the OS.

The following tables list the system apps, installed Windows apps, and provisioned Windows apps in a standard Windows 10 Enterprise installation. (If you have a custom image, your specific apps might differ.) The tables list the app, the full name, show the app's status in Windows 10 version 1607, 1703, and 1709, and indicate whether an app can be uninstalled through the UI.

Some of the apps show up in multiple tables - that's because their status changed between versions. Make sure to check the version column for the version you are currently running.

> [!TIP]
> Want to see a list of the apps installed on your specific image? You can run the following PowerShell cmdlet:
> ```powershell
> Get-AppxPackage |Select Name,PackageFamilyName
> Get-AppxProvisionedPackage -Online | select DisplayName,PackageName
> ```

## System apps

System apps are integral to the operating system. Here are the typical system apps in Windows 10 versions 1703, 1709, and 1803.

| Name             | Full name                                 |1703  | 1709 | 1803 |Uninstall through UI?                                  |
|------------------|-------------------------------------------|:------:|:------:|:------:|-------------------------------------------------------|
| Cortana UI       | CortanaListenUIApp                        | x    |      |      |No                                                     |
|                  | Desktop Learning                          | x    |      |      |No                                                     |
|                  | DesktopView                               | x    |      |      |No                                                     |
|                  | EnvironmentsApp                           | x    |      |      |No                                                     |
| Mixed Reality +  | HoloCamera                                | x    |      |      |No                                                     |
| Mixed Reality +  | HoloItemPlayerApp                         | x    |      |      |No                                                     |
| Mixed Reality +  | HoloShell                                 | x    |      |      |No                                                     |
|                  | InputApp                                  |      |  x   | x    |No                                                     |
|                  | Microsoft.AAD.Broker.Plugin               | x    |  x   | x    |No                                                     |
|                  | Microsoft.AccountsControl                 | x    |  x   | x    |No                                                     |
| Hello setup UI   | Microsoft.BioEnrollment                   | x    |  x   | x    |No                                                     |
|                  | Microsoft.CredDialogHost                  | x    |  x   | x    |No                                                     |
|                  | Microsoft.ECApp                           |      |  x   | x    |No                                                     |
|                  | Microsoft.LockApp                         | x    |  x   | x    |No                                                     |
| Microsoft Edge   | Microsoft.Microsoft.Edge                  | x    |  x   | x    |No                                                     |
|                  | Microsoft.PPIProjection                   | x    |  x   | x    |No                                                     |
|                  | Microsoft.Windows. Apprep.ChxApp           | x    |  x  | x    |No                                                     |
|                  | Microsoft.Windows. AssignedAccessLockApp   | x    |  x  | x    |No                                                     |
|                  | Microsoft.Windows. CloudExperienceHost     | x    |  x  | x    |No                                                     |
|                  | Microsoft.Windows. ContentDeliveryManager  | x    |  x  | x    |No                                                     |
| Cortana          | Microsoft.Windows.Cortana                  | x    |  x  | x    |No                                                     |
|                  | Microsoft.Windows. Holographic.FirstRun    | x    |  x  | x    |No                                                     |
|                  | Microsoft.Windows. ModalSharePickerHost    | x    |     |      |No                                                     |
|                  | Microsoft.Windows. OOBENetworkCaptivePort  | x    |  x  | x    |No                                                     |
|                  | Microsoft.Windows. OOBENetworkConnectionFlow  | x |  x  | x    |No                                                     |
|                  | Microsoft.Windows. ParentalControls        | x    |  x  | x    |No                                                     |
| People Hub       | Microsoft.Windows. PeopleExperienceHost    |      |  x  | x    |No                                                     |
|                  | Microsoft.Windows. PinningConfirmationDialog  |   |  x  | x    |No                                                     |
|                  | Microsoft.Windows. SecHealthUI             | x    |  x  | x    |No                                                     |
|                  | Microsoft.Windows. SecondaryTileExperience | x    |  x  |      |No                                                     |
|                  | Microsoft.Windows. SecureAssessmentBrowser | x    |  x  | x    |No                                                     |
| Start            | Microsoft.Windows. ShellExperienceHost     | x    |  x  | x    |No                                                     |
| Windows Feedback | Microsoft.WindowsFeedback                  | *    |  *  |      |No                                                     |
|                  | Microsoft.XboxGameCallableUI               | x    |  x  |  x   |No                                                     |
| Contact Support* | Windows.ContactSupport                     | x    |  *  |      |Through the Optional Features app                      |
| Settings         | Windows.ImmersiveControlPanel              | x    |  x  |      |No                                                     |
| Connect          | Windows.MiracastView                       | x    |     |      |No                                                     |
| Print 3D         | Windows.Print3D                            |      |  x  |      |Yes                                                    |
| Print UI         | Windows.PrintDialog                        | x    |  x  |  x   |No                                                     |
| Purchase UI      | Windows.PurchaseDialog                     |      |     | x    |No                                                     |
|                  | Microsoft.AsyncTextService                 |      |     | x    |No                                                     |
|                  | Microsoft.MicrosoftEdgeDevToolsClient      |      |     | x    |No                                                     |
|                  | Microsoft.Win32WebViewHost                 |      |     | x    |No                                                     |
|                  | Microsoft.Windows.CapturePicker            |      |     | x    |No                                                     |
|                  | Windows.CBSPreview                         |      |     | x    |No                                                     |
|File Picker       | 1527c705-839a-4832-9118-54d4Bd6a0c89       |      |     | x    |No                                                     |
|File Explorer     | c5e2524a-ea46-4f67-841f-6a9465d9d515       |      |     | x    |No                                                     |
|App Resolver      | E2A4F912-2574-4A75-9BB0-0D023378592B       |      |     | x    |No                                                     |
|Add Suggested folder Dialog box| F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE||     | x    |No                                                     |

> [!NOTE]
> - The Contact Support app changed to Get Help in version 1709. Get Help is a provisioned app (instead of system app like Contact Support).

## Installed Windows apps
Here are the typical installed Windows apps in Windows 10 versions 1703, 1709, and 1803.

| Name               | Full name                                | 1703 | 1709 | 1803 |Uninstall through UI? |
|--------------------|------------------------------------------|:------:|:------:|:------:|----------------------|
| Remote Desktop     | Microsoft.RemoteDesktop                  | x    | x    |      | Yes                  |
| PowerBI            | Microsoft.Microsoft PowerBIforWindows    | x    |      |      | Yes                  |
| Code Writer        | ActiproSoftwareLLC.562882FEEB491         | x    | x    | x    | Yes                  |
| Eclipse Manager    | 46928bounde.EclipseManager               | x    | x    | x    | Yes                  |
| Pandora            | PandoraMediaInc.29680B314EFC2            | x    | x    | x    | Yes                  |
| Photoshop Express  | AdobeSystemIncorporated. AdobePhotoshop  | x    | x    | x    | Yes                  |
| Duolingo           | D5EA27B7.Duolingo- LearnLanguagesforFree | x    | x    | x    | Yes                  |
| Network Speed Test | Microsoft.NetworkSpeedTest               | x    | x    | x    | Yes                  |
| News                            | Microsoft.BingNews                     | x    |  x   | x    | Yes                       |
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

## Provisioned Windows apps

Here are the typical provisioned Windows apps in Windows 10 versions 1703, 1709, and 1803.

| Name                            | Full name                              | 1703 | 1709 | 1803 | Uninstall through UI?     |
|---------------------------------|----------------------------------------|:------:|:------:|:------:|---------------------------|
| 3D Builder                      | Microsoft.3DBuilder                    | x    |      |      | Yes                       |
| Alarms & Clock                  | Microsoft.WindowsAlarms                | x    |  x   | x    | No                        |
| App Installer                   | Microsoft.DesktopAppInstaller          | x    |  x   | x    | Via Settings App          |
| Calculator                      | Microsoft.WindowsCalculator            | x    |  x   | x    | No                        |
| Camera                          | Microsoft.WindowsCamera                | x    |  x   | x    | No                        |
| Feedback Hub                    | Microsoft.WindowsFeedbackHub           | x    |  x   | x    | Yes                       |
| Get Help                        | Microsoft.GetHelp                      |      |  x   | x    | No                        |
| Get Office/My Office            | Microsoft.Microsoft OfficeHub          | x    |  x   | x    | Yes                       |
| Get Skype/Skype (preview)/Skype | Microsoft.SkypeApp                     | x    |  x   | x    | Yes                       |
| Get Started/Tips                | Microsoft.Getstarted                   | x    |  x   | x    | Yes                       |
| Groove                          | Microsoft.ZuneMusic                    | x    |  x   | x    | No                        |
| Mail and Calendar               | Microsoft.windows communicationsapps   | x    |  x   | x    | No                        |
| Maps                            | Microsoft.WindowsMaps                  | x    |  x   | x    | No                        |
| Messaging                       | Microsoft.Messaging                    | x    |  x   | x    | No                        |
| Microsoft 3D Viewer             | Microsoft.Microsoft3DViewer            | x    |  x   | x    | No                        |
| Movies & TV                     | Microsoft.ZuneVideo                    | x    |  x   | x    | No                        |
| OneNote                         | Microsoft.Office.OneNote               | x    |  x   | x    | Yes                       |
| Paid Wi-FI                      | Microsoft.OneConnect                   | x    | x    | x    | Yes                       |
| Paint 3D                        | Microsoft.MSPaint                      | x    |  x   | x    | No                        |
| People                          | Microsoft.People                       | x    |  x   | x    | No                        |
| Photos                          | Microsoft.Windows.Photos               | x    |  x   | x    | No                        |
| Print 3D                        | Microsoft.Print3D                      |      |  x   | x    | No                        |
| Solitaire                       | Microsoft.Microsoft SolitaireCollection| x    |  x   | x    | Yes                       |
| Sticky Notes                    | Microsoft.MicrosoftStickyNotes         | x    |  x   | x    | No                        |
| Store                           | Microsoft.WindowsStore                 | x    |  x   | x    | No                        |
| Sway                            | Microsoft.Office.Sway                  | *    |  x   | x    | Yes                       |
| Voice Recorder                  | Microsoft.SoundRecorder                | x    |  x   | x    | No                        |
| Wallet                          | Microsoft.Wallet                       | x    |  x   | x    | No                        |
| Weather                         | Microsoft.BingWeather                  | x    |  x   | x    | Yes                       |
| Xbox                            | Microsoft.XboxApp                      | x    |  x   | x    | No                        |
|                                 | Microsoft.OneConnect                   | x    |  x   | x    | No                        |
|                                 | Microsoft.DesktopAppInstaller          |      |      | x    | No                        |
|                                 | Microsoft.StorePurchaseApp             | x    |  x   | x    | No                        |
|                                 | Microsoft.WebMediaExtensions           |      |      | x    | No                        |
|                                 | Microsoft.Xbox.TCUI                    |      |  x   | x    | No                        |
|                                 | Microsoft.XboxGameOverlay              | x    |  x   | x    | No                        |
|                                 | Microsoft.XboxGamingOverlay            |      |      | x    | No                        |
|                                 | Microsoft.XboxIdentityProvider         | x    |  x   | x    | No                        |
|                                 | Microsoft.XboxSpeech ToTextOverlay     | x    |  x   | x    | No                        |