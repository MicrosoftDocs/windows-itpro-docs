---
title: Windows Defender Application Control Wizard
description: The Windows Defender Application Control policy wizard tool allows you to create, edit, and merge application control policies in a simple to use Windows application.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 05/24/2022
---

# Windows Defender Application Control Wizard

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](../feature-availability.md).

The Windows Defender Application Control policy wizard is an open-source Windows desktop application written in C# and bundled as an MSIX package. It was built to provide security architects with security, and system administrators with a more user-friendly means to create, edit, and merge Application Control policies. This tool uses the [ConfigCI PowerShell cmdlets](/powershell/module/configci) in the backend so the output policy of the tool and PowerShell cmdlets is identical.

## Downloading the application

Download the tool from the official [Windows Defender Application Control Policy Wizard website](https://webapp-wdac-wizard.azurewebsites.net/) as an MSIX packaged application. The tool's source code is available as part of Microsoft's Open Source Software offerings on GitHub at the [Windows Defender Application Control (WDAC) Policy Wizard repository](https://github.com/MicrosoftDocs/WDAC-Toolkit).

### Supported clients

As the tool uses the cmdlets in the background, it's functional on clients only where the cmdlets are supported. For more information, see [Application Control feature availability](../feature-availability.md). Specifically, the tool verifies that the client meets one of the following requirements:

- Windows 10, version 1909 or later
- For pre-1909 builds, the Enterprise SKU of Windows is installed

If neither requirement is satisfied, it throws an error as the cmdlets aren't available.

## Resources to learn more

| Article | Description |
| - | - |
| [Creating a new base policy](wdac-wizard-create-base-policy.md) | This article describes how to create a new base policy using one of the supplied policy templates. |
| [Creating a new supplemental policy](wdac-wizard-create-supplemental-policy.md) | This article describes the steps necessary to create a supplemental policy, from one of the supplied templates, for an existing base policy. |
| [Editing a base or supplemental policy](wdac-wizard-editing-policy.md) | This article demonstrates how to modify an existing policy and the tool's editing capabilities. |
| [Merging policies](wdac-wizard-merging-policies.md) | This article describes how to merge policies into a single application control policy. |
