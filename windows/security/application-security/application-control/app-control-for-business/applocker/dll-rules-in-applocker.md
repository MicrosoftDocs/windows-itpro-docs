---
title: DLL rules in AppLocker
description: This article describes the file formats and available default rules for the DLL rule collection.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# DLL rules in AppLocker

This article describes the file formats and available default rules for the DLL rule collection.

AppLocker defines DLL rules to include only the following file formats:

- .dll
- .ocx

> [!IMPORTANT]
> If you use DLL rules, a DLL allow rule has to be created for each DLL that is used by all of the allowed apps, including Windows system files.

The following table lists the default rules that are available for the DLL rule collection.

| Purpose | Name | User | Rule condition type |
| --- | --- | --- | --- |
| Allows members of the local Administrators group to run all DLLs | (Default Rule) All DLLs | BUILTIN\Administrators | Path: * |
| Allow all users to run DLLs in the Windows folder | (Default Rule) Microsoft Windows DLLs | Everyone | Path: %windir%\* |
| Allow all users to run DLLs in the Program Files folder | (Default Rule) All DLLs located in the Program Files folder | Everyone | Path: %programfiles%\* |

> [!CAUTION]
> When DLL rules are used, AppLocker must check each DLL that an app loads. Therefore, users may experience a reduction in performance if DLL rules are used on computers that are resource constrained.

## Related articles

- [Understanding AppLocker default rules](understanding-applocker-default-rules.md)
