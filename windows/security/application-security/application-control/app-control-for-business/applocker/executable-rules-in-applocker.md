---
title: Executable rules in AppLocker
description: This article describes the file formats and available default rules for the executable rule collection.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Executable rules in AppLocker

This article describes the file formats and available default rules for the executable rule collection.

AppLocker executable rules conceptually apply to files with the .exe and .com extensions that are associated with an app. However, AppLocker executable rules actually apply to any portable executable (PE) file, regardless of the file's extension. Because all of the default rules for the executable rule collection are based on folder paths, all files under those paths can run. The following table lists the default rules that are available for the executable rule collection.

| Purpose | Name | User | Rule condition type |
| --- | --- | --- | --- |
| Allow members of the local Administrators group access to run all executable files | (Default Rule) All files | BUILTIN\Administrators | Path: * |
| Allow all users to run executable files in the Windows folder| (Default Rule) All files located in the Windows folder | Everyone| Path: %windir%\* |
| Allow all users to run executable files in the Program Files folder | (Default Rule) All files located in the Program Files folder| Everyone | Path: %programfiles%\* |

## Related articles

- [Understanding AppLocker Default Rules](understanding-applocker-default-rules.md)
