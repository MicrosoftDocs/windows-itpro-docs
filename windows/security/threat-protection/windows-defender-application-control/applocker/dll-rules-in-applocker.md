---
title: DLL rules in AppLocker (Windows 10)
description: This topic describes the file formats and available default rules for the DLL rule collection.
ms.assetid: a083fd08-c07e-4534-b0e7-1e15d932ce8f
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

# DLL rules in AppLocker

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic describes the file formats and available default rules for the DLL rule collection.

AppLocker defines DLL rules to include only the following file formats:

-   .dll
-   .ocx

The following table lists the default rules that are available for the DLL rule collection.

| Purpose | Name | User | Rule condition type |
| - | - | - | - |
| Allows members of the local Administrators group to run all DLLs | (Default Rule) All DLLs| 
| BUILTIN\Administrators | Path: *| 
| Allow all users to run DLLs in the Windows folder| (Default Rule) Microsoft Windows DLLs | 
| Everyone | Path: %windir%\*| 
| Allow all users to run DLLs in the Program Files folder | (Default Rule) All DLLs located in the Program Files folder| 
| Everyone | Path: %programfiles%\*| 
 
>**Important:**  If you use DLL rules, a DLL allow rule has to be created for each DLL that is used by all of the allowed apps
 
>**Caution:**  When DLL rules are used, AppLocker must check each DLL that an app loads. Therefore, users may experience a reduction in performance if DLL rules are used.
 
## Related topics

- [Understanding AppLocker default rules](understanding-applocker-default-rules.md)
