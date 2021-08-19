---
title: Get the system apps on Windows client operating system | Microsoft Docs
ms.reviewer: 
manager: dougeby
description: Use the Windows PowerShell Get-AppxPackage command to get a list off the system apps installed in Windows OS. See a list of some common system apps installed a Windows Enterprise client computer or device, including Windows 10.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
ms.author: mandia
author: MandiOhlinger
ms.localizationpriority: medium
ms.topic: article
---

# System apps installed with the Windows client OS

> Applies to:
>
> - Windows 10

On all Windows devices, the OS automatically installs some apps. These apps are called system apps, and are typically installed in the `C:\Windows\` folder. On your Windows devices, you can use Windows PowerShell to see the system apps automatically installed.

This article lists the built-in system apps on some Windows OS versions, and lists the Windows Powershell command to get a list.

## Use Windows Powershell

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
