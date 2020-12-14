---
title: Windows Defender Application Control Wizard
description: Microsoft Defender Application Control Wizard (WDAC) Wizard allows users to create, edit, and merge application control policies in a simple to use Windows application.
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

This article describes the supported scenarios for the Windows Defender Application Control (WDAC) policy Wizard. The Wizard was built to provide security architects, security and system administrators with a more user-friendly means to create, edit, and merge WDAC policies. The Wizard desktop application uses the [ConfigCI PowerShell Cmdlets](https://docs.microsoft.com/en-us/powershell/module/configci/?view=win10-ps) in the background so the output policy of the Wizard and PowerShell cmdlets is identical. 

## Downloading the application

The WDAC Wizard can be downloaded from the official [Wizard installer website](https://bit.ly/3koHwYs) as an MSIX packaged application. The Wizard's source code is available as part of Microsoft's Open Source Software offerings on GitHub at the [WDAC Wizard Repo](https://github.com/MicrosoftDocs/WDAC-Toolkit). 

**Supported Clients**

As the WDAC Wizard uses the cmdlets in the background, the Wizard is functional on clients only where the cmdlets are supported as outlined in [WDAC feature availability](feature-availability.md). Specifically, the tool will verify that the client meets one of the following requirements: 

-   Windows builds 1909+
-   For pre-1909 builds, the Enterprise SKU of Windows is installed

If neither requirement is satisfied, the Wizard will throw an error as the cmdlets are not available.

## In this section

| Topic | Description |
| - | - |
| [Creating a new base policy](wdac-wizard-create-base-policy.md) | This article describes how to create a new base policy using one of the supplied policy templates. |
| [Creating a new supplemental policy](wdac-wizard-create-supplemental-policy.md) | This article describes the steps necessary to create a supplemental policy, from one of the supplied templates, for an existing base policy. |
| [Editing a base or supplemental policy](wdac-wizard-edit-policy.md) | This article demonstrates how to modify an existing policy and the Wizard's editing capabilities. |
| [Merging policies](wdac-wizard-merging-policies.md) | This article describes how to merge policies into a single application control policy. |
| [Deploying policies from the Wizard](wdac-wizard-deploying-policies.md) | This article describes how to deploy application control policies onto target devices. |

 
