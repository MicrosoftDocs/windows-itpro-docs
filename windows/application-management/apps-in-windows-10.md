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
ms.date: 09/15/2017
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

The following tables list the system apps, installed Windows apps, and provisioned Windows apps in a standard Windows 10 Enterprise installation. (If you have a custom image, your specific apps might differ.) The tables list the app, the full name, show the app's status in Windows 10 version 1511, 1607, and 1703, and indicate whether an app can be uninstalled through the UI. 

Some of the apps show up in multiple tables - that's because their status changed between versions. Make sure to check the version column for the version you are currently running.

> [!TIP]
> Want to see a list of the apps installed on your specific image? You can run the following PowerShell cmdlet:
> ```powershell
> Get-AppxPackage |Select Name,PackageFamilyName
> Get-AppsProvisionedPackage -Online | select DisplayName,PackageName
> ``` 


## System apps
System apps are integral to the operating system. Here are the typical system apps in Windows 10 versions 1511, 1607, and 1703. 

| Name             | Full name                                 | 1511 | 1607 | 1703 | Uninstall through UI?                                  |
|------------------|-------------------------------------------|------|------|------|--------------------------------------------------------|
| Cortana UI       | CortanaListenUIApp                        |      |      |  x   | No                                                     |
|                  | Desktop Learning                          |      |      | x    | No                                                     |
|                  | DesktopView                               |      |      | x    | No                                                     |
|                  | EnvironmentsApp                           |      |      | x    | No                                                     |
| Mixed Reality +  | HoloCamera                                |      |      | x    | No                                                     |
| Mixed Reality +  | HoloItemPlayerApp                         |      |      | x    | No                                                     |
| Mixed Reality +  | HoloShell                                 |      |      | x    | No                                                     |
|                  | Microsoft.AAD.Broker.Plugin               | x    | x    | x    | No                                                     |
|                  | Microsoft.AccountsControl                 | x    | x    | x    | No                                                     |
| Hello setup UI   | Microsoft.BioEnrollment                   | x    | x    | x    | No                                                     |
|                  | Microsoft.CredDialogHost                  |      |      | x    | No                                                     |
|                  | Microsoft.LockApp                         | x    | x    | x    | No                                                     |
| Microsoft Edge   | Microsoft.Microsoft.Edge                  | x    | x    | x    | No                                                     |
|                  | Microsoft.PPIProjection                   |      | x    | x    | No                                                     |
|                  | Microsoft.Windows. Apprep.ChxApp           |      | x    | x    | No                                                     |
|                  | Microsoft.Windows. AssignedAccessLockApp   | x    | x    | x    | No                                                     |
|                  | Microsoft.Windows. CloudExperienceHost     | x    | x    | x    | No                                                     |
|                  | Microsoft.Windows. ContentDeliveryManager  | x    | x    | x    | No                                                     |
| Cortana          | Microsoft.Windows.Cortana                 | x    | x    | x    | No                                                     |
|                  | Microsoft.Windows. Holographic.FirstRun    |      |      | x    | No                                                     |
|                  | Microsoft.Windows. ModalSharePickerHost    |      |      | x    | No                                                     |
|                  | Microsoft.Windows. OOBENetworkCaptivePort  |      |      | x    | No                                                     |
|                  | Microsoft.Windows. OOBENetworkConnection   |      |      | x    | No                                                     |
|                  | Microsoft.Windows. ParentalControls        | x    | x    | x    | No                                                     |
|                  | Microsoft.Windows. SecHealthUI             |      |      | x    | No                                                     |
|                  | Microsoft.Windows. SecondaryTileExperience | x    | x    | x    | No                                                     |
|                  | Microsoft.Windows. SecureAssessmentBrowser |      | x    | x    | No                                                     |
| Start            | Microsoft.Windows. ShellExperienceHost     | x    | x    | x    | No                                                     |
| Windows Feedback | Microsoft.WindowsFeedback                 | x    | *    | *    | No                                                     |
|                  | Microsoft.XboxGameCallableUI              | x    | x    | x    | No                                                     |
| Xbox logon UI    | Microsoft.XboxIdentityProvider            | x    |      |      | No                                                     |
| Contact Support  | Windows.ContactSupport                    | x    | x*    | x*    | In 1511, no.* |
|                  | Windows.Devicesflow                       | x    |      |      | No                                                     |
| Settings         | Windows.ImmersiveControlPanel             | x    | x    | x    | No                                                     |
| Connect          | Windows.MiracastView                      | x    | x    | x    | No                                                     |
| Print UI         | Windows.PrintDialog                       | x    | x    | x    | No                                                     |
| Purchase UI      | Windows.PurchaseDialog                    | x    |      |      | No                                                     |

> [!NOTE] 
> - The Windows Feedback app changed to the Windows Feedback Hub in version 1607. It's listed in the installed apps table below.
> - As of Windows 10 version 1607, you can use the Optional Features app to uninstall the Contact Support app.

## Installed Windows apps
Here are the typical installed Windows apps in Windows 10 versions 1511, 1607, and 1703.

| Name               | Full name                               | 1511 | 1607 | 1703 | Uninstall through UI? |
|--------------------|-----------------------------------------|------|------|------|---------------------------|
| Remote Desktop     | Microsoft.RemoteDesktop                 |      | x    | x    | Yes                       |
| PowerBI            | Microsoft.Microsoft PowerBIforWindows    |      | x    | x    | Yes                       |
| Candy Crush        | king.com.CandyCrushSodaSaga             | x    |      |      | Yes                       |
| Code Writer        | ActiproSoftwareLLC.562882FEEB491        |      | x    | x    | Yes                       |
| Eclipse Manager    | 46928bounde.EclipseManager              |      | x    | x    | Yes                       |
| Pandora            | PandoraMediaInc.29680B314EFC2           |      | x    | x    | Yes                       |
| Photoshop Express  | AdobeSystemIncorporated. AdobePhotoshop  |      | x    | x    | Yes                       |
| Duolingo           | D5EA27B7.Duolingo- LearnLanguagesforFree |      |      | x    | Yes                       |
| Network Speed Test | Microsoft.NetworkSpeedTest              |      | x    | x    | Yes                       |
| Paid Wi-FI         |                                         | x    |      |      | Yes                       |
| Skype Video        |                                         | x    |      |      | Yes                       |
| Twitter            |                                         | x    |      |      | Yes                       |
| PicArts            |                                         | x    |      |      | Yes                       |
| Minecraft          |                                         | x    |      |      | Yes                       |
| Flipboard          |                                         | x    |      |      | Yes                       |

## Provisioned Windows apps
Here are the typical provisioned Windows apps in Windows 10 versions 1511, 1607, and 1703.

| Name                            | Full name                              | 1511 | 1607 | 1703 | Uninstall through UI?     |
|---------------------------------|----------------------------------------|------|------|------|---------------------------|
| 3D Builder                      | Microsoft.3DBuilder                    | x    |      | x    | Yes                       |
| App Connector                   | Microsoft.Appconnector                 | x    |      |      | Yes, through Settings app |
| Money                           | Microsoft.BingFinance                  | x    |      |      | Yes                       |
| News                            | Microsoft.BingNews                     | x    | *    | *    | Yes                       |
| Sports                          | Microsoft.BingSports                   | x    |      |      | Yes                       |
| Weather                         | Microsoft.BingWeather                  | x    | x    | x    | No                        |
| Phone Companion                 | Microsoft.CommsPhone                   | x    |      |      | Yes                       |
|                                 | Microsoft.ConnectivityStore            | x    |      |      | No                        |
|                                 | Microsoft.DesktopAppInstaller          |      | x    | x    | Yes, through Settings app |
| Get Started/Tips                | Microsoft.Getstarted                   | x    | x    | x    | Yes                       |
| Messaging                       | Microsoft.Messaging                    | x    | x    | x    | No                        |
| Microsoft 3D Viewer             | Microsoft.Microsoft3DViewer            |      |      | x    | No                        |
| Get Office                      | Microsoft.MicrosoftOfficeHub           | x    | x    | x    | Yes                       |
| Solitaire                       | Microsoft.Microsoft SolitaireCollection | x    | x    | x    | Yes                       |
| Sticky Notes                    | Microsoft.MicrosoftStickyNotes         |      | x    | x    | No                        |
| OneNote                         | Microsoft.Office.OneNote               | x    | x    | x    | No                        |
| Sway                            | Microsoft.Office.Sway                  | x    | *    | *    | Yes                       |
|                                 | Microsoft.OneConnect                   |      | x    | x    | No                        |
| Paint 3D                        | Microsoft.MSPaint                      |      |      | x    | No                        |
| People                          | Microsoft.People                       | x    | x    | x    | No                        |
| Get Skype/Skype (preview)/Skype | Microsoft.SkypeApp                     | x    | x    | x    | Yes                       |
|                                 | Microsoft.StorePurchaseApp             |      | x    | x    | No                        |
|                                 | Microsoft.Wallet                       |      |      | x    | No                        |
| Photos                          | Microsoft.Windows.Photos               | x    | x    | x    | No                        |
| Alarms & Clock                  | Microsoft.WindowsAlarms                | x    | x    | x    | No                        |
| Calculator                      | Microsoft.WindowsCalculator            | x    | x    | x    | No                        |
| Camera                          | Microsoft.WindowsCamera                | x    | x    | x    | No                        |
| Mail and Calendar               | Microsoft.windows communicationsapps    | x    | x    | x    | No                        |
| Feedback Hub                    | Microsoft.WindowsFeedbackHub           | *    | x    | x    | Yes                       |
| Maps                            | Microsoft.WindowsMaps                  | x    | x    | x    | No                        |
| Phone                           | Microsoft.WindowsPhone                 | x    |      |      | No                        |
| Voice Recorder                  | Microsoft.SoundRecorder                | x    | x    | x    | No                        |
| Store                           | Microsoft.WindowsStore                 | x    | x    | x    | No                        |
| Xbox                            | Microsoft.XboxApp                      | x    | x    | x    | No                        |
|                                 | Microsoft.XboxGameOverlay              |      |      | x    | No                        |
|                                 | Microsoft.XboxIdentityProvider         | *    | x    | x    | No                        |
| Groove                          | Microsoft.ZuneMusic                    | x    | x    | x    | No                        |
| Movies & TV                     | Microsoft.ZuneVideo                    | x    | x    | x    | No                        |
|                                 | Microsoft.XboxSpeech ToTextOverlay      |      |      | x    | No                        |

> [!NOTE]
> - As of Windows 10, version 1607, News and Sway are installed apps.
> - Both Feedback Hub and Microsoft.XboxIdentityProvider were installed apps in version 1511 and provisioned apps in versions 1607 and later.