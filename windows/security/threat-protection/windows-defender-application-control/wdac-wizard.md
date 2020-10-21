---
title: Windows Defender Application Control Wizard
description: Microsoft WDAC Wizard allows users to create, edit and merge application control policies in a simple to use Windows application.
keywords: allowlisting, blocklisting, security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jgeurten
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.topic: conceptual
ms.date: 10/14/2020
---

# Windows Defender Application Control Wizard

**Applies to:**

-   Windows 10
-   Windows Server 2016 and above

This topic describes the supported scenarios for the Windows Defender Application Control (WDAC) policy Wizard. The Wizard was built to provide security architects, security administrators, and system administrators with a more user-friendly means to create, edit and merge application control policies using a GUI desktop application. The Wizard uses the [ConfigCI PowerShell Cmdlets](https://docs.microsoft.com/en-us/powershell/module/configci/?view=win10-ps) in the background so the output policy of the Wizard and PowerShell cmdlets are identical. 

## Downloading the application

The latest version of the application is available for download from the official [Microsoft WDAC Wizard installer website](https://bit.ly/3koHwYs) as an MSIX packaged application. Additionally, the source code for the Wizard is also available as part of Microsoft's Open Source Software offerings on Github at the [WDAC Wizard Repo](https://github.com/MicrosoftDocs/WDAC-Toolkit). 

**Supported Clients**

As the WDAC Wizard uses the cmdlets in the background, the Wizard is functional on clients only where the cmdlets are supported as outlined in [WDAC feature availability](feature-availability.md). Specifically, the tool will verify that the client meets one of the following requirements: 

-   Windows builds 1909+
-   For pre-1909 builds, the Enterprise SKU of Windows is installed

If neither requirement is satisfied, the Wizard will not allow for creating, editing or merging policies.

## In this section

| Topic | Description |
| - | - |
| [Creating a new base policy](wdac-wizard-create-base-policy.md) | This topic describes the how to create a new base policy using one of the supplied policy templates. |
| [Creating a new supplemental policy](wdac-wizard-create-supplemental-policy.md) | This topic describes the steps necessary to create a supplemental policy, from one of the supplied templates, for an existing base policy. |
| [Editing a base or supplemental policy](wdac-wizard-edit-policy.md) | This topic demonstrates how to modify an existing policy and the Wizard's editing capabilities. |
| [Merging policies](wdac-wizard-merging-policies.md) | This topic describes how to merge policies into a single application control policy. |
| [Deploying policies from the Wizard](wdac-wizard-deploying-policies.md) | This topic describes how to deploy application control policies onto target devices. |

 
