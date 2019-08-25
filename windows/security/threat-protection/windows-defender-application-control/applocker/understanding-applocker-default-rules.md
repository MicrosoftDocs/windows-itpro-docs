---
title: Understanding AppLocker default rules (Windows 10)
description: This topic for IT professional describes the set of rules that can be used to ensure that required Windows system files are allowed to run when the policy is applied.
ms.assetid: bdb03d71-05b7-41fb-96e3-a289ce1866e1
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

# Understanding AppLocker default rules

**Applies to**
- Windows 10
- Windows Server

This topic for IT professional describes the set of rules that can be used to ensure that required Windows system files are allowed to run when the policy is applied.

AppLocker includes default rules for each rule collection. These rules are intended to help ensure that the files that are required for Windows to operate properly are allowed in an AppLocker rule collection.

>**Important:**  You can use the default rules as a template when creating your own rules. However, these rules are only meant to function as a starter policy when you are first testing AppLocker rules so that the system files in the Windows folders will be allowed to run.
 
If you require additional app security, you might need to modify the rules created from the built-in default rule collection. For example, the default rule to allow all users to run .exe files in the Windows folder is based on a path condition that allows all files within the Windows folder to run. 
The Windows folder contains a Temp subfolder to which the Users group is given the following permissions:

-   Traverse Folder/Execute File
-   Create Files/Write Data
-   Create Folders/Append Data

These permissions settings are applied to this folder for app compatibility. However, because any user can create files in this location, allowing applications to be run from this location might conflict with your organization's security policy.

## In this section

| Topic | Description |
| - | - |
| [Executable rules in AppLocker](executable-rules-in-applocker.md) | This topic describes the file formats and available default rules for the executable rule collection. |
| [Windows Installer rules in AppLocker](windows-installer-rules-in-applocker.md) | This topic describes the file formats and available default rules for the Windows Installer rule collection.|
| [Script rules in AppLocker](script-rules-in-applocker.md) | This topic describes the file formats and available default rules for the script rule collection.| 
| [DLL rules in AppLocker](dll-rules-in-applocker.md) | This topic describes the file formats and available default rules for the DLL rule collection.| 
| [Packaged apps and packaged app installer rules in AppLocker](packaged-apps-and-packaged-app-installer-rules-in-applocker.md) | This topic explains the AppLocker rule collection for packaged app installers and packaged apps.| 
 
## Related topics

- [How AppLocker works](how-applocker-works-techref.md)
- [Create AppLocker default rules](create-applocker-default-rules.md)
