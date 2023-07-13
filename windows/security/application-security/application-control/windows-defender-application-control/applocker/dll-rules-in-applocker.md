---
title: DLL rules in AppLocker
description: This topic describes the file formats and available default rules for the DLL rule collection.
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
ms.topic: conceptual
ms.date: 09/21/2017
ms.technology: itpro-security
---

# DLL rules in AppLocker

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic describes the file formats and available default rules for the DLL rule collection.

AppLocker defines DLL rules to include only the following file formats:

-   .dll
-   .ocx

The following table lists the default rules that are available for the DLL rule collection.

| Purpose | Name | User | Rule condition type |
| - | - | - | - |
| Allows members of the local Administrators group to run all DLLs | (Default Rule) All DLLs| BUILTIN\Administrators | Path: *| 
| Allow all users to run DLLs in the Windows folder| (Default Rule) Microsoft Windows DLLs | Everyone | Path: %windir%\*| 
| Allow all users to run DLLs in the Program Files folder | (Default Rule) All DLLs located in the Program Files folder| Everyone | Path: %programfiles%\*| 
 
> [!IMPORTANT]
> If you use DLL rules, a DLL allow rule has to be created for each DLL that is used by all of the allowed apps

> [!CAUTION]
> When DLL rules are used, AppLocker must check each DLL that an app loads. Therefore, users may experience a reduction in performance if DLL rules are used.
 
## Related topics

- [Understanding AppLocker default rules](understanding-applocker-default-rules.md)
