---
title: Executable rules in AppLocker (Windows 10)
description: This topic describes the file formats and available default rules for the executable rule collection.
ms.assetid: 65e62f90-6caa-48f8-836a-91f8ac9018ee
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Executable rules in AppLocker

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic describes the file formats and available default rules for the executable rule collection.

AppLocker defines executable rules as any files with the .exe and .com extensions that are associated with an app. Because all of the default rules for the executable rule collection are based on folder paths, all files under those paths will be allowed. The following table lists the default rules that are available for the executable rule collection.

| Purpose | Name | User | Rule condition type |
| - | - | - | - |
| Allow members of the local Administrators group access to run all executable files | (Default Rule) All files| BUILTIN\Administrators | Path: * |
| Allow all users to run executable files in the Windows folder| (Default Rule) All files located in the Windows folder| Everyone| Path: %windir%\*| 
| Allow all users to run executable files in the Program Files folder | (Default Rule) All files located in the Program Files folder| Everyone | Path: %programfiles%\*| 
 
## Related topics

- [Understanding AppLocker Default Rules](understanding-applocker-default-rules.md)
