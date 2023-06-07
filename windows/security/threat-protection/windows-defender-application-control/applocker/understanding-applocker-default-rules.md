---
title: Understanding AppLocker default rules
description: This topic for IT professional describes the set of rules that can be used to ensure that required Windows system files are allowed to run when the policy is applied.
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

# Understanding AppLocker default rules

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic for IT professional describes the set of rules that can be used to ensure that required Windows system files are allowed to run when the policy is applied.

AppLocker includes default rules for each rule collection. These rules are intended to help ensure that the files that are required for Windows to operate properly are allowed in an AppLocker rule collection.

> [!IMPORTANT]
> You can use the default rules as a template when creating your own rules. However, these rules are only meant to function as a starter policy when you are first testing AppLocker rules so that the system files in the Windows folders will be allowed to run.
 
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
