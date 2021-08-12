---
title: Windows 10 - Apps
ms.reviewer: 
manager: dansimp
description: Use this article to understand the different types of apps that run on Windows 10, such as UWP and Win32 apps.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
ms.author: greglin
author: greg-lindsay
ms.localizationpriority: medium
ms.topic: article
---
# Understand the different apps included in Windows 10

>Applies to: Windows 10

On your Windows 10 devices, you can run the following app types:

- **Windows apps**: These apps are included with the Windows OS, and are also installed from the Microsoft Store app. There are two categories:

  - **Apps**: All apps installed in `C:\Program Files\WindowsApps`. There are two classes of apps:

    - **Provisioned**: Installed in user account the first time you sign in with a new user account.
    - **Installed**: Installed as part of the OS.

  - **System apps**: Apps installed in the `C:\Windows\` directory. These apps are part of the Windows OS.

- **Universal Windows Platform (UWP) apps**: These apps run and can be installed on many Windows platforms, including tablets, Microsoft HoloLens, Xbox, and more. All UWP apps are Windows apps. But, not all Windows apps are UWP apps.
- **Win32 apps**: These apps are traditional Windows applications.

This article lists the system apps, installed Windows apps, and provisioned Windows apps in a standard Windows 10 Enterprise installation. If you use custom images, your specific apps might be different.

Some of the apps show up in multiple areas. That's because their status changed between versions. Make sure to check the version column for the version you're currently running.

## Provisioned Windows apps

The first time a user signs into a Windows device, some apps are automatically provisioned. To get a list of all provisioned Windows apps, run the following Windows PowerShell command:

```Powershell
Get-AppxProvisionedPackage -Online | Format-Table DisplayName, PackageName
```

The following information lists the provisioned apps on the supported Windows 10 OS versions:

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

  - The Store app shouldn't be removed. If you remove the Store app, and want to reinstall it, you can restore your system from a backup, or reset your system. Instead of removing the Store app, use group policies to hide or disable it.

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

## System apps

System apps are used by the operating system. To get a list of all the system apps, run the following Windows PowerShell command:

```Powershell
Get-AppxPackage -PackageTypeFilter Main | ? { $_.SignatureKind -eq "System" } | Sort Name | Format-Table Name, InstallLocation
```

The following information lists the system apps on some Windows 10 OS versions:

- File Picker | Package name: 1527c705-839a-4832-9118-54d4Bd6a0c89

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- File Explorer | Package name: c5e2524a-ea46-4f67-841f-6a9465d9d515

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- App Resolver UX | Package name: E2A4F912-2574-4A75-9BB0-0D023378592B

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Add Suggested Folders To Library | Package name: F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- InputApp

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ |  | | ✔️ |

  ---

- Microsoft.AAD.Broker.Plugin | Package name: Microsoft.AAD.Broker.Plugin

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.AccountsControl | Package name: Microsoft.AccountsControl

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.AsyncTextService | Package name: Microsoft.AsyncTextService

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Hello setup UI | Package name: Microsoft.BioEnrollment

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.CredDialogHost

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.ECApp

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.LockApp

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft Edge | Package name: Microsoft.MicrosoftEdge

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.MicrosoftEdgeDevToolsClient

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.PPIProjection

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ |  | | ✔️ |

  ---

- Microsoft.Win32WebViewHost

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.Windows.Apprep.ChxApp

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.Windows.AssignedAccessLockApp

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.Windows.CapturePicker

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.Windows.CloudExperienceHost

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.Windows.ContentDeliveryManager

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Cortana | Package name: Microsoft.Windows.Cortana

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ |  | | ✔️ |

  ---

- Microsoft.Windows.OOBENetworkCaptivePort

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.Windows.OOBENetworkConnectionFlow

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.Windows.ParentalControls

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- People Hub | Package name: Microsoft.Windows.PeopleExperienceHost

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.Windows.PinningConfirmationDialog

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.Windows.SecHealthUI

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.Windows.SecureAssessmentBrowser

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Start | Package name: Microsoft.Windows.ShellExperienceHost

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Microsoft.XboxGameCallableUI

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Windows.CBSPreview

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Settings | Package name: Windows.immersivecontrolpanel

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

- Print 3D | Package name: Windows.Print3D

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ✔️ |  | | ✔️ |

  ---

- Print UI | Package name: Windows.PrintDialog

  ---
  | Uninstall through UI? | 21H1 | 20H2 | 1809 |
  | --- | --- | --- | --- |
  | ❌ | ✔️ | ✔️| ✔️ |

  ---

