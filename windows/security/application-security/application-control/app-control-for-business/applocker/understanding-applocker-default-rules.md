---
title: Understanding AppLocker default rules
description: This article for IT professional describes the set of rules that can be used to ensure that required Windows system files continue to run when the policy is applied.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Understanding AppLocker default rules

This article for IT professional describes the set of rules that can be used to ensure that required Windows system files continue to run when the policy is applied.

The AppLocker wizard includes default rules for each rule collection. These rules are intended to help ensure that the files that are required for Windows to operate properly are allowed in an AppLocker rule collection.

> [!IMPORTANT]
> You can use the default rules as a template when creating your own rules. However, these rules are only meant to function as a starter policy when you are first testing AppLocker rules so that the system files in the Windows folders will be allowed to run.

If you require extra app security, you might need to modify the rules created from the built-in default rule collection. For example, the default rule to allow all users to run .exe files in the Windows folder is based on a path condition that allows all files within the Windows folder to run. The Windows folder contains a Temp subfolder to which the Users group is given the following permissions:

- Traverse Folder/Execute File
- Create Files/Write Data
- Create Folders/Append Data

These permissions settings are applied to this folder for app compatibility. However, because any user can create files in this location, allowing applications to be run from this location might conflict with your organization's security policy.

## In this section

| Article | Description |
| --- | --- |
| [Executable rules in AppLocker](executable-rules-in-applocker.md) | This article describes the file formats and available default rules for the executable rule collection. |
| [Windows Installer rules in AppLocker](windows-installer-rules-in-applocker.md) | This article describes the file formats and available default rules for the Windows Installer rule collection.|
| [Script rules in AppLocker](script-rules-in-applocker.md) | This article describes the file formats and available default rules for the script rule collection.|
| [DLL rules in AppLocker](dll-rules-in-applocker.md) | This article describes the file formats and available default rules for the DLL rule collection.|
| [Packaged apps and packaged app installer rules in AppLocker](packaged-apps-and-packaged-app-installer-rules-in-applocker.md) | This article explains the AppLocker rule collection for packaged app installers and packaged apps.|

## Related articles

- [How AppLocker works](how-applocker-works-techref.md)
- [Create AppLocker default rules](create-applocker-default-rules.md)
