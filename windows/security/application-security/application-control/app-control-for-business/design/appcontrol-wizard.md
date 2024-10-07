---
title: App Control for Business Wizard
description: The App Control for Business policy wizard tool allows you to create, edit, and merge App Control policies in a simple to use Windows application.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# App Control for Business Wizard

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

The App Control for Business policy wizard is an open-source Windows desktop application written in C# and bundled as an MSIX package. It was built to provide security architects with security, and system administrators with a more user-friendly means to create, edit, and merge App Control policies. This tool uses the [ConfigCI PowerShell cmdlets](/powershell/module/configci) in the backend so the output policy of the tool and PowerShell cmdlets is identical.

## Downloading the application

Download the tool from the official [App Control for Business Policy Wizard website](https://webapp-wdac-wizard.azurewebsites.net/) as an MSIX packaged application. The tool's source code is available as part of Microsoft's Open Source Software offerings on GitHub at the [App Control for Business Policy Wizard repository](https://github.com/MicrosoftDocs/WDAC-Toolkit).

### Supported clients

As the tool uses the cmdlets in the background, it's functional on clients only where the cmdlets are supported. For more information, see [App Control feature availability](../feature-availability.md). Specifically, the tool verifies that the client meets one of the following requirements:

- Windows 10, version 1909 or later
- For pre-1909 builds, the Enterprise SKU of Windows is installed

If neither requirement is satisfied, it throws an error as the cmdlets aren't available.

## Resources to learn more

| Article | Description |
| - | - |
| [Creating a new base policy](appcontrol-wizard-create-base-policy.md) | This article describes how to create a new base policy using one of the supplied policy templates. |
| [Creating a new supplemental policy](appcontrol-wizard-create-supplemental-policy.md) | This article describes the steps necessary to create a supplemental policy, from one of the supplied templates, for an existing base policy. |
| [Editing a base or supplemental policy](appcontrol-wizard-editing-policy.md) | This article demonstrates how to modify an existing policy and the tool's editing capabilities. |
| [Merging policies](appcontrol-wizard-merging-policies.md) | This article describes how to merge policies into a single App Control policy. |
