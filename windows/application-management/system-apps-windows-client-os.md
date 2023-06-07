---
title: Get the system apps on Windows client operating system | Microsoft Docs
description: Use the Windows PowerShell Get-AppxPackage command to get a list off the system apps installed in Windows OS. See a list of some common system apps installed a Windows Enterprise client computer or device, including Windows 10/11.
author: nicholasswhite
ms.author: nwhite
manager: aaroncz
ms.date: 6/05/2023
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-apps
ms.localizationpriority: medium
ms.collection: tier1
ms.reviewer:
---

# System apps installed with the Windows client OS

**Applies to**:

- Windows 10
- Windows 11

On all Windows devices, the OS automatically installs some apps. These apps are called system apps, and are typically installed in the `C:\Windows\` folder. On your Windows devices, you can use Windows PowerShell to see the system apps automatically installed.

This article lists the built-in system apps on some Windows OS versions, and lists the Windows PowerShell command to get a list.

## Use Windows PowerShell

To get a list of all the system apps, use Windows PowerShell:

1. Open the Windows PowerShell app as administrator.
2. Run the following script:

    ```Powershell
    Get-AppxPackage -PackageTypeFilter Main | ? { $_.SignatureKind -eq "System" } | Sort Name | Format-Table Name, InstallLocation
    ```

The output lists all the system apps, and their installation location. For more information on this command, see [Get-AppxPackage](/powershell/module/appx/get-appxpackage) (opens another Microsoft website).

## Built-in system apps list

The following information lists the system apps on some Windows Enterprise OS versions. Your specific OS version and image may have different apps. To confirm your app list, run the [PowerShell Get-AppxPackage command](#use-windows-powershell) (in this article).

- File Picker | Package name: 1527c705-839a-4832-9118-54d4Bd6a0c89

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- File Explorer | Package name: c5e2524a-ea46-4f67-841f-6a9465d9d515

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- App Resolver UX | Package name: E2A4F912-2574-4A75-9BB0-0D023378592B

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Add Suggested Folders To Library | Package name: F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.AAD.Broker.Plugin | Package name: Microsoft.AAD.Broker.Plugin

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.AccountsControl | Package name: Microsoft.AccountsControl

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.AsyncTextService | Package name: Microsoft.AsyncTextService

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Hello setup UI | Package name: Microsoft.BioEnrollment

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.CredDialogHost

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.ECApp

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.LockApp

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft Edge | Package name: Microsoft.MicrosoftEdge

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.MicrosoftEdgeDevToolsClient

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.Win32WebViewHost

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.Windows.Apprep.ChxApp

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.Windows.CapturePicker

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.Windows.CloudExperienceHost

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.Windows.ContentDeliveryManager

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Narrator QuckStart | Package name: Microsoft.Windows.NarratorQuickStart

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.Windows.OOBENetworkCaptivePort

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.Windows.OOBENetworkConnectionFlow

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.Windows.ParentalControls

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- People Hub | Package name: Microsoft.Windows.PeopleExperienceHost

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.Windows.PinningConfirmationDialog

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.Windows.PrintQueueActionCenter

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.Windows.ShellExperienceHost

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Start | Microsoft.Windows.StartMenuExperienceHost

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.Windows.XGpuEjectDialog

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Microsoft.XboxGameCallableUI

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- MicrosoftWindows.Client.CBS

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- MicrosoftWindows.Client.Core

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- MicrosoftWindows.UndockedDevKit

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- NcsiUwpApp

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Windows.CBSPreview

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Settings | Package name: Windows.immersivecontrolpanel

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---

- Print UI | Package name: Windows.PrintDialog

  ---
  | Uninstall through UI? | KB5026446 | 22H2 | 21H2 | 
  | --- | --- | --- | --- |
  | | ✔️ | ✔️ | ✔️|

  ---
