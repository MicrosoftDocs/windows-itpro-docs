---
title: Understanding AppLocker rule behavior (Windows 10)
description: This topic describes how AppLocker rules are enforced by using the allow and deny options in AppLocker.
ms.assetid: 3e2738a3-8041-4095-8a84-45c1894c97d0
ms.reviewer: 
ms.author: macapara
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mjcaparas
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Understanding AppLocker rule behavior

**Applies to**
- Windows 10
- Windows Server

This topic describes how AppLocker rules are enforced by using the allow and deny options in AppLocker.

If no AppLocker rules for a specific rule collection exist, all files with that file format are allowed to run. However, when an AppLocker rule for a specific rule collection is created, only the files explicitly allowed in a rule are permitted to run. For example, if you create an executable rule that allows .exe files in *%SystemDrive%\\FilePath* to run, only executable files located in that path are allowed to run.

A rule can be configured to use either an allow or deny action:

-   **Allow**. You can specify which files are allowed to run in your environment and for which users or groups of users. You can also configure exceptions to identify files that are excluded from the rule.
-   **Deny**. You can specify which files are not allowed to run in your environment and for which users or groups of users. You can also configure exceptions to identify files that are excluded from the rule.

>**Important:**  You can use a combination of allow actions and deny actions. However, we recommend using allow actions with exceptions because deny actions override allow actions in all cases. Deny actions can also be circumvented. For example, if you configure a deny action for a file or folder path, the user can still run the file from any other path.
 
## Related topics

- [How AppLocker works](how-applocker-works-techref.md)
