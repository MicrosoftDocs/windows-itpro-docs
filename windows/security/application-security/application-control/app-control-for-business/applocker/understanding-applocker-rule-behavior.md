---
title: Understanding AppLocker rule behavior
description: This article describes how AppLocker rules are enforced by using the allow and deny options in AppLocker.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Understanding AppLocker rule behavior

This article describes how AppLocker rules are enforced by using the allow and deny options in AppLocker.

If no AppLocker rules exist for a specific rule collection, all files covered by that rule collection are allowed to run. However, once an AppLocker rule for a specific rule collection is created, only the files explicitly allowed by at least one rule are permitted to run. For example, if you create an executable rule that allows .exe files in *%SystemDrive%\\FilePath* to run, only executable files located in that path are allowed to run. Executable files run from any other path are blocked.

A rule can be configured to use either an allow or deny action:

- **Allow**. You can specify which files are allowed to run in your environment and for which users or groups of users. You can also configure exceptions to identify files that are excluded from the rule.
- **Deny**. You can specify which files aren't allowed to run in your environment and for which users or groups of users. You can also configure exceptions to identify files that are excluded from the rule.

> [!IMPORTANT]
> You can use a combination of allow actions and deny actions. However, we recommend using allow actions with exceptions because deny actions override allow actions in all cases.

## Related articles

- [How AppLocker works](how-applocker-works-techref.md)
