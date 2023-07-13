---
title: Understanding AppLocker rule behavior
description: This topic describes how AppLocker rules are enforced by using the allow and deny options in AppLocker.
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

# Understanding AppLocker rule behavior

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic describes how AppLocker rules are enforced by using the allow and deny options in AppLocker.

If no AppLocker rules for a specific rule collection exist, all files with that file format are allowed to run. However, when an AppLocker rule for a specific rule collection is created, only the files explicitly allowed in a rule are permitted to run. For example, if you create an executable rule that allows .exe files in *%SystemDrive%\\FilePath* to run, only executable files located in that path are allowed to run.

A rule can be configured to use either an allow or deny action:

-   **Allow**. You can specify which files are allowed to run in your environment and for which users or groups of users. You can also configure exceptions to identify files that are excluded from the rule.
-   **Deny**. You can specify which files aren't allowed to run in your environment and for which users or groups of users. You can also configure exceptions to identify files that are excluded from the rule.

>**Important:**  You can use a combination of allow actions and deny actions. However, we recommend using allow actions with exceptions because deny actions override allow actions in all cases. Deny actions can also be circumvented. For example, if you configure a deny action for a file or folder path, the user can still run the file from any other path.
 
## Related topics

- [How AppLocker works](how-applocker-works-techref.md)
