---
title: Select the types of rules to create (Windows 10)
description: This topic lists resources you can use when selecting your application control policy rules by using AppLocker.
ms.assetid: 14751169-0ed1-47cc-822c-8c01a7477784
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

# Select the types of rules to create

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic lists resources you can use when selecting your application control policy rules by using AppLocker.

When determining what types of rules to create for each of your groups, you should also determine what enforcement setting to use for each group. Different rule types are more applicable for some apps, depending on the way that the applications are deployed in a specific business group.

The following topics provide additional information about AppLocker rules that can help you decide what rules to use for your applications:

-   [Understanding AppLocker rule behavior](understanding-applocker-rule-behavior.md)
-   [Understanding AppLocker rule exceptions](understanding-applocker-rule-exceptions.md)
-   [Understanding AppLocker rule collections](understanding-applocker-rule-collections.md)
-   [Understanding AppLocker allow and deny actions on rules](understanding-applocker-allow-and-deny-actions-on-rules.md)
-   [Understanding AppLocker rule condition types](understanding-applocker-rule-condition-types.md)
-   [Understanding AppLocker default rules](understanding-applocker-default-rules.md)

### Select the rule collection

The rules you create will be in one of the following rule collections:

-   Executable files: .exe and .com
-   Windows Installer files: .msi, .msp, and .mst
-   Scripts: .ps1, .bat, .cmd, .vbs, and .js
-   Packaged apps and packaged app installers: .appx
-   DLLs: .dll and .ocx

By default, the rules will allow a file to run based upon user or group privilege. If you use DLL rules, a DLL allow rule has to be created for each DLL that is used by all of the allowed apps. The DLL rule collection is not enabled by default.

In the Woodgrove Bank example, the line-of-business app for the Bank Tellers business group is C:\\Program Files\\Woodgrove\\Teller.exe, and this app needs to be included in a rule. In addition, because this rule is part of a list of allowed applications, all the Windows files under C:\\Windows must be included as well.

### Determine the rule condition

A rule condition is criteria upon which an AppLocker rule is based and can only be one of the rule conditions in the following table.

| Rule condition | Usage scenario | Resources |
| - | - | - |
| Publisher | To use a publisher condition, the files must be digitally signed by the software publisher, or you must do so by using an internal certificate. Rules that are specified to the version level might have to be updated when a new version of the file is released.|For more info about this rule condition, see [Understanding the publisher rule condition in AppLocker](understanding-the-publisher-rule-condition-in-applocker.md).
| Path| Any file can be assigned this rule condition; however, because path rules specify locations within the file system, any subdirectory will also be affected by the rule (unless explicitly exempted).| For more info about this rule condition, see [Understanding the path rule condition in AppLocker](understanding-the-path-rule-condition-in-applocker.md). |
| File hash | Any file can be assigned this rule condition; however, the rule must be updated each time a new version of the file is released because the hash value is based in part upon the version.| For more info about this rule condition, see [Understanding the file hash rule condition in AppLocker](understanding-the-file-hash-rule-condition-in-applocker.md). |
 
In the Woodgrove Bank example, the line-of-business app for the Bank Tellers business group is signed and is located at C:\\Program Files\\Woodgrove\\Teller.exe. Therefore, the rule can be defined with a publisher condition. If the rule is defined to a specific version and above (for example, Teller.exe version 8.0 and above), then this will allow any updates to this app to occur without interruption of access to the users if the app's name and signed attributes stay the same.

### Determine how to allow system files to run

Because AppLocker rules build a list of allowed apps, a rule or rules must be created to allow all Windows files to run. AppLocker provides a means to ensure system files are properly considered in your rule collection by generating the default rules for each rule collection. You can use the default rules (listed in [AppLocker default rules](working-with-applocker-rules.md#applocker-default-rules)) as a template when creating your own rules. However, these rules are only meant to function as a starter policy when you are first testing AppLocker rules so that the system files in the Windows folders will be allowed to run. When a default rule is created, it is denoted with "(Default rule)" in its name as it appears in the rule collection.

You can also create a rule for the system files based on the path condition. In the preceding example, for the Bank Tellers group, all Windows files reside under C:\\Windows and can be defined with the path rule condition type. This will permit access to these files whenever updates are applied and the files change. If you require additional application security, you might need to modify the rules created from the built-in default rule collection. For example, the default rule to allow all users to run .exe files in the Windows folder is based on a path condition that allows all files within the Windows folder to run. The Windows folder contains a Temp subfolder to which the Users group is given the following permissions:

-   Traverse Folder/Execute File
-   Create Files/Write Data
-   Create Folders/Append Data

These permissions settings are applied to this folder for application compatibility. However, because any user can create files in this location, allowing apps to be run from this location might conflict with your organization's security policy.

## Next steps

After you have selected the types of rules to create, record your findings as explained in [Document your AppLocker rules](document-your-applocker-rules.md).

After recording your findings for the AppLocker rules to create, you will need to consider how to enforce the rules. For info about how to do this, see [Determine Group Policy structure and rule enforcement](determine-group-policy-structure-and-rule-enforcement.md).
