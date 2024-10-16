---
title: Create AppLocker default rules
description: This article for IT professionals describes the steps to create a standard set of AppLocker rules that allow Windows system files to run.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Create AppLocker default rules

This article for IT professionals describes the steps to create a standard set of AppLocker rules that allow Windows system files to run.

The AppLocker wizard can generate default rules for each rule collection. These rules are intended to help ensure that the files that are required for Windows to operate properly are allowed to run.

> [!IMPORTANT]
> You can use the default rules as a template when creating your own rules to allow files within the Windows folders to run. However, these rules are only meant to function as a starter policy when you are first testing AppLocker rules. The default rules can be modified in the same way as other AppLocker rule types.

To manage an AppLocker policy in a Group Policy Object (GPO), you can perform this task by using the Group Policy Management Console. To manage an AppLocker policy for the local computer or for use in a security template, use the Local Security Policy snap-in. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#using-the-mmc-snap-ins-to-administer-applocker).

## To create default rules

1. Open the AppLocker console.
2. Right-click the appropriate rule type for which you want to automatically generate default rules. You can automatically generate rules for executable, Windows Installer, script rules and Packaged app rules.
3. Select **Create Default Rules**.

## Related articles

- [Understanding AppLocker default rules](understanding-applocker-default-rules.md)
