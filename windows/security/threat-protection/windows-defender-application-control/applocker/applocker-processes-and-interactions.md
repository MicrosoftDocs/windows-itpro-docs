---
title: AppLocker processes and interactions (Windows 10)
description: This topic for the IT professional describes the process dependencies and interactions when AppLocker evaluates and enforces rules.
ms.assetid: 0beec616-6040-4be7-8703-b6c919755d8e
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

# AppLocker processes and interactions

**Applies to**
- Windows 10
- Windows Server

This topic for the IT professional describes the process dependencies and interactions when AppLocker evaluates and enforces rules.

## How policies are implemented by AppLocker

AppLocker policies are collections of AppLocker rules that might contain any one of the enforcement settings configured. When applied, each rule is evaluated within the policy and the collection of rules is applied according to the enforcement setting and according to your Group Policy structure.

The AppLocker policy is enforced on a computer through the Application Identity service, which is the engine that evaluates the policies. If the service is not running, policies will not be enforced. The Application Identity service returns the information from the binary—even if product or binary names are empty—to the results pane of the Local Security Policy snap-in.

AppLocker policies are stored in a security descriptor format according to Application Identity service requirements. It uses file path, hash, or fully qualified binary name attributes to form allow or deny actions on a rule. Each rule is stored as an access control entry (ACE) in the security descriptor and contains the following information:

-   Either an allow or a deny ACE ("XA" or "XD" in security descriptor definition language (SDDL) form).
-   The user security identifier (SID) that this rule is applicable to. (The default is the authenticated user SID, or "AU" in SDDL.)
-   The rule condition containing the **appid** attributes.

For example, an SDDL for a rule that allows all files in the %windir% directory to run uses the following format: XA;;FX;;;AU;(APPID://PATH == "%windir%\\\*").

An AppLocker policy for DLLs and executable files is read and cached by kernel mode code, which is part of appid.sys. Whenever a new policy is applied, appid.sys is notified by a policy converter task. For other file types, the AppLocker policy is read every time a **SaferIdentifyLevel** call is made.

### Understanding AppLocker rules

An AppLocker rule is a control placed on a file to govern whether or not it is allowed to run for a specific user or group. Rules apply to five different types, or collections, of files:

-   An executable rule controls whether a user or group can run an executable file. Executable files most often have the .exe or .com file name extensions and apply to applications.
-   A script rule controls whether a user or group can run scripts with a file name extension of .ps1, .bat, .cmd, .vbs, and .js.
-   A Windows Installer rule controls whether a user or group can run files with a file name extension of .msi, mst and .msp (Windows Installer patch).
-   A DLL rule controls whether a user or group can run files with a file name extension of .dll and .ocx.
-   A packaged app and packaged app installer rule controls whether a user or group can run or install a packaged app. A Packaged app installer has the .appx extension.

There are three different types of conditions that can be applied to rules:

-   A publisher condition on a rule controls whether a user or group can run files from a specific software publisher. The file must be signed.
-   A path condition on a rule controls whether a user or group can run files from within a specific directory or its subdirectories.
-   A file hash condition on a rule controls whether a user or group can run files with matching encrypted hashes.

-   [Understanding AppLocker rule collections](understanding-applocker-rule-collections.md)

    An AppLocker rule collection is a set of rules that apply to one of the following types: executable files, Windows Installer files, scripts, DLLs, and packaged apps.

-   [Understanding AppLocker rule condition types](understanding-applocker-rule-condition-types.md)

    Rule conditions are criteria that the AppLocker rule is based on. Primary conditions are required to create an AppLocker rule. The three primary rule conditions are publisher, path, and file hash.

    -   [Understanding the publisher rule condition in AppLocker](understanding-the-publisher-rule-condition-in-applocker.md)
    -   [Understanding the path rule condition in AppLocker](understanding-the-path-rule-condition-in-applocker.md)
    -   [Understanding the file hash rule condition in AppLocker](understanding-the-file-hash-rule-condition-in-applocker.md)
-   [Understanding AppLocker default rules](understanding-applocker-default-rules.md)

    AppLocker includes default rules for each rule collection. These rules are intended to help ensure that the files that are required for Windows to operate properly are allowed in an AppLocker rule collection.

    -   [Executable rules in AppLocker](executable-rules-in-applocker.md)
    -   [Windows Installer rules in AppLocker](windows-installer-rules-in-applocker.md)
    -   [Script rules in AppLocker](script-rules-in-applocker.md)
    -   [DLL rules in AppLocker](dll-rules-in-applocker.md)
    -   [Packaged apps and packaged app installer rules in AppLocker](packaged-apps-and-packaged-app-installer-rules-in-applocker.md)
-   [Understanding AppLocker rule exceptions](understanding-applocker-rule-exceptions.md)

    You can apply AppLocker rules to individual users or a group of users. If you apply a rule to a group of users, all users in that group are affected by that rule. If you need to allow only a subset of a user group to use an application, you can create a special rule for that subset.

-   [Understanding AppLocker rule behavior](understanding-applocker-rule-behavior.md) and [Understanding AppLocker allow and deny actions on Rules](understanding-applocker-allow-and-deny-actions-on-rules.md)

    Each AppLocker rule collection functions as an allowed list of files.

### Understanding AppLocker policies

An AppLocker policy is a set of rule collections and their corresponding configured enforcement settings that have been applied to one or more computers.

-   [Understand AppLocker enforcement settings](understand-applocker-enforcement-settings.md)

    Rule enforcement is applied only to collections of rules, not individual rules. AppLocker divides the rules into four collections: executable files, Windows Installer files, scripts, and DLL files. The options for rule enforcement are **Not configured**, **Enforce rules**, or **Audit only**. Together, all AppLocker rule collections compose the application control policy, or AppLocker policy. By default, if enforcement is not configured and rules are present in a rule collection, those rules are enforced.

### Understanding AppLocker and Group Policy

Group Policy can be used to create, modify, and distribute AppLocker policies in separate objects or in combination with other policies.

-   [Understand AppLocker rules and enforcement setting inheritance in Group Policy](understand-applocker-rules-and-enforcement-setting-inheritance-in-group-policy.md)

    When Group Policy is used to distribute AppLocker policies, rule collections that are not configured will be enforced. Group Policy does not overwrite or replace rules that are already present in a linked Group Policy Object (GPO) and applies the AppLocker rules in addition to existing rules. 
    AppLocker processes the explicit deny rule configuration before the allow rule configuration, and for rule enforcement, the last write to the GPO is applied.

## Related topics

- [AppLocker technical reference](applocker-technical-reference.md)
