---
title: Working with AppLocker rules
description: This article for IT professionals describes AppLocker rule types and how to work with them for your application control policies.
ms.localizationpriority: medium
msauthor: jsuther
ms.date: 09/11/2024
ms.topic: conceptual
---

# Working with AppLocker rules

This article for IT professionals describes AppLocker rule types and how to work with them for your application control policies.

## Rule collections

AppLocker policies are organized into rule collections, including executable files, scripts, Windows Installer files, packaged apps and packaged app installers, and DLL files. These collections give you an easy way to differentiate the rules for different types of apps. The following table lists the file formats that are included in each rule collection.

| Rule collection | Associated file formats |
| - | - |
| Executable files | .exe <br/> .com |
| Scripts| .ps1 <br/> .bat <br/> .cmd <br/> .vbs <br/> .js |
| Windows Installer files | .msi <br/> .msp <br/> .mst |
| Packaged apps and packaged app installers | .appx |
| DLL files | .dll <br/> .ocx |

> [!NOTE]
> AppLocker rules for executable files actually apply to all portable executable (PE) files, regardless of the file's extension which attackers can easily change. The file extension information listed in the preceding table for executable files is illustrative only.

The DLL rule collection isn't enabled by default. To learn how to enable the DLL rule collection, see [DLL rule collections](#dll-rule-collection).

> [!Important]
> If you use DLL rules, you need to create an allow rule that covers every DLL used by all allowed apps.
>
> When DLL rules are used, AppLocker must check each DLL that an application loads. Therefore, users may experience a reduction in performance if DLL rules are used. However, this performance impact is usually imperceptible unless a device is already resource constrained.

## Enforcement modes

AppLocker policies set an **enforcement mode** for each rule collection included in the policy. These enforcement modes are described in the following table.

| Enforcement mode | Description |
| --- | --- |
| **Not configured** | Despite the name, this enforcement mode **doesn't** mean the rules are ignored. On the contrary, if any rules exist in a rule collection that is "not configured", the rules **will be enforced** unless a policy with a higher precedence changes the enforcement mode to Audit only. Since this enforcement mode can be confusing for policy authors, you should avoid using this value in your AppLocker policies. Instead, you should choose explicitly between the remaining two options. |
| **Enforce rules** | Rules are enforced. When a user runs an app affected by an AppLocker rule, the app binary is blocked. Info about the binary is added to the AppLocker event log. |
| **Audit only** | Rules are audited but not enforced. When a user runs an app affected by an AppLocker rule, the app binary is allowed to run. However, the info about the binary is added to the AppLocker event log. The Audit-only enforcement mode helps you identify the apps affected by the policy before the policy is enforced. |

When AppLocker policies are merged, the rules from all the policies are added to the effective policy and a single enforcement mode is selected for each rule collection. If multiple AppLocker policies are applied to a device through Group Policy, the enforcement mode setting applied is selected based on Group Policy precedence. If you apply an AppLocker policy locally using the Set-AppLockerPolicy PowerShell cmdlet with the *-merge* option, the more restrictive enforcement mode is chosen between the existing local policy and the policy being merged.

## Rule conditions

Rule conditions are criteria that help AppLocker identify the apps to which the rule applies. The three primary rule conditions are publisher, path, and file hash.

- [Publisher](#publisher): Identifies an app based on its digital signature
- [Path](#path): Identifies an app by its location in the file system of the computer or on the network
- [File hash](#file-hash): Represents the system computed cryptographic Authenticode hash of the identified file

### Publisher

This condition identifies an app based on its digital signature and extended attributes when available. The digital signature contains info about the company that created the app (the publisher). Executable files, dlls, Windows installers, packaged apps and packaged app installers also include extended attributes, which are obtained from the binary resource. These attributes often include the name of the product, the original file name, and the version number of the file as defined by the publisher. If there are packaged apps and packaged app installers, these extended attributes contain the name and the version of the app package.

> [!NOTE]
> Rules created in the packaged apps and packaged app installers rule collection can only have publisher conditions since Windows does not support unsigned packaged apps and packaged app installers.
>
> Use a publisher rule condition when possible because they are more resilient to app updates as well as a change in the location of files.

When you select a reference file for a publisher condition, the wizard creates a rule that specifies the publisher, product, file name, and version number. You can make the rule more generic by moving up the slider or by using a wildcard character (\*) in the product, file name, or version number fields.

> [!NOTE]
> To enter custom values for any of the fields of a publisher rule condition in the Create Rules Wizard, you must select the **Use custom values** check box. When this check box is selected, you cannot use the slider.

The **File version** and **Package version** control whether a user can run a specific version, earlier versions, or later versions of the app. You can choose a version number and then configure the following options:

- **Exactly.** The rule applies only to this version of the app
- **And above.** The rule applies to this version and all later versions.
- **And below.** The rule applies to this version and all earlier versions.

The following table describes how a publisher condition is applied.

| Option | The publisher condition allows or denies... |
| --- | --- |
| **All signed files** | All files signed by any publisher. |
| **Publisher only** | All files signed by the named publisher. |
| **Publisher and product name** | All files for the specified product signed by the named publisher. |
| **Publisher and product name, and file name** | Any version of the named file or package for the named product signed by the publisher. |
| **Publisher, product name, file name, and file version** | **Exactly**<br/>The specified version of the named file or package for the named product signed by the publisher. |
| **Publisher, product name, file name, and file version** | **And above**<br/>The specified version of the named file or package and any new releases for the product signed by the publisher. |
| **Publisher, product name, file name, and file version** | **And below**<br/>The specified version of the named file or package and any earlier versions for the product signed by the publisher. |
| **Custom** | You can edit the **Publisher**, **Product name**, **File name**, **Version** **Package name**, and **Package version** fields to create a custom rule. |

### Path

This rule condition identifies an application by its location in the file system of the computer or on the network.

AppLocker uses custom path variables for well-known paths, such as Program Files and Windows.

The following table details these path variables.

| Windows directory or disk | AppLocker path variable | Windows environment variable |
| --- | --- | --- |
| Windows | %WINDIR%| %SystemRoot%|
| System32 and SysWOW64 | %SYSTEM32%| %SystemDirectory%|
| Windows installation directory | %OSDRIVE%| %SystemDrive%|
| Program Files | %PROGRAMFILES% | %ProgramFiles% and %ProgramFiles(x86)% |
| Removable media (for example, a CD or DVD) | %REMOVABLE% | |
| Removable storage device (for example, a USB flash drive) | %HOT% | |

> [!IMPORTANT]
> Because a path rule condition can be configured to include a large number of folders and files, path conditions should be carefully planned. For example, if a path rule includes a folder location that lets non-administrators write data, a user (or malware running as a standard user) can copy unapproved files into that location and run the files. For this reason, you should avoid creating path conditions for standard user writable locations, such as a user profile.

### File hash

When you choose the file hash rule condition, the system computes the Authenticode cryptographic hash of the identified file. The advantage of this rule condition is that because each file has a unique hash, a file hash rule condition applies to only one file. The disadvantage is that each time the file is updated (such as a security update or upgrade) the file's hash changes. As a result, you must manually update file hash rules.

## AppLocker default rules

AppLocker policies created using the AppLocker Group Policy editor can include default rules. Default rules are intended to help ensure that the files that are required for Windows to operate properly are allowed in an AppLocker rule collection. For background, see [Understanding AppLocker default rules](understanding-applocker-default-rules.md), and for steps, see [Create AppLocker default rules](create-applocker-default-rules.md).

Executable default rule types include:

- Allow members of the local **Administrators** group to run all apps.
- Allow members of the **Everyone** group to run apps that are located in the Windows folder.
- Allow members of the **Everyone** group to run apps that are located in the Program Files folder.

Script default rule types include:

- Allow members of the local **Administrators** group to run all scripts.
- Allow members of the **Everyone** group to run scripts that are located in the Program Files folder.
- Allow members of the **Everyone** group to run scripts that are located in the Windows folder.

Windows Installer default rule types include:

- Allow members of the local **Administrators** group to run all Windows Installer files.
- Allow members of the **Everyone** group to run all digitally signed Windows Installer files.
- Allow members of the **Everyone** group to run all Windows Installer files that are located in the Windows\\Installer folder.

DLL default rule types:

- Allow members of the local **Administrators** group to run all DLLs.
- Allow members of the **Everyone** group to run DLLs that are located in the Program Files folder.
- Allow members of the **Everyone** group to run DLLs that are located in the Windows folder.

Packaged apps default rule types:

- Allow members of the **Everyone** group to install and run all signed packaged apps and packaged app installers.

## AppLocker rule behavior

If no AppLocker rules are defined for a specific rule collection, all files covered by that rule collection are allowed to run. However, if any rule exists for a specific rule collection, then *only* those files matching at least one allow rule and not matching any deny rules run. For example, if you create an executable rule that allows .exe files in *%SystemDrive%\\FilePath* to run, only executable files located in that path are allowed to run.

A rule can be configured to use allow or deny actions:

- **Allow.** You can specify which files are allowed to run in your environment, and for which users or groups of users. You can also configure exceptions to identify files that are excluded from the rule.
- **Deny.** You can specify which files *aren't* allowed to run in your environment, and for which users or groups of users. You can also configure exceptions to identify files that are excluded from the rule.

For a best practice, use allow actions with exceptions. Although you can use a combination of allow and deny actions, deny actions always win. You can't use any other rule to allow a file that matches a deny rule.

## Rule exceptions

You can apply AppLocker rules to individual users or to a group of users. If you apply a rule to a group of users, the rule affects all users in that group. If you need to allow a subset of a user group to use an app, you can create a special rule for that subset. For example, the rule "Allow everyone to run Windows except Registry Editor" allows everyone in the organization to run the Windows operating system, but it doesn't allow anyone to run Registry Editor.

The effect of this rule would prevent users such as Help Desk personnel from running a program that is necessary for their support tasks. To resolve this problem, create a second rule that applies to the Help Desk user group: "Allow Help Desk to run Registry Editor." If you instead used a deny rule that blocks all users from running Registry Editor, the second rule wouldn't actually let the help desk users run Registry Editor.

## DLL rule collection

Because the DLL rule collection isn't enabled by default, you must perform the following procedure before you can create and enforce DLL rules.

Membership in the local **Administrators** group, or equivalent, is the minimum required to complete this procedure.

### To enable the DLL rule collection

1. Select **Start**, type **secpol.msc**, and then select ENTER.
2. If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then select **Yes**.
3. In the console tree, double-click **Application Control Policies**, right-click **AppLocker**, and then select **Properties**.
4. Select the **Advanced** tab, select the **Enable the DLL rule collection** check box, and then select **OK**.

  > [!IMPORTANT]
  > Before you enforce DLL rules, make sure that there are allow rules for every DLL that is needed by all allowed apps.

## AppLocker wizards

You can create rules by using two AppLocker wizards:

1. The Create Rules Wizard enables you to create one rule at a time.
2. The Automatically Generate Rules Wizard allows you to create multiple rules at one time. You can select a folder and let the wizard create rules for any relevant files found. Or, for packaged apps, let the wizard create rules for all packaged apps installed on the computer. You can also specify the user or group to which to apply the rules. This wizard automatically generates allow rules only.

## Other considerations

- By default, AppLocker rules don't allow users to open or run any files that aren't allowed. Administrators should maintain an up-to-date list of allowed applications.
- There are two types of AppLocker conditions that don't persist following an update of an app:
  - **A file hash condition** File hash rule conditions can be used with any app because a cryptographic hash value of the app file is generated at the time the rule is created. However, the hash value is specific to that exact version of the file. If you need to allow multiple versions of the file, you need individual file hash conditions for each version of the file.
  - **A publisher condition with a specific product version set** If you create a publisher rule condition that uses the **Exactly** version option, the rule can't persist if a new version of the app is installed. A new publisher condition must be created, or the version must be edited in the rule to be made less specific.
- If an app isn't digitally signed, you can't use a publisher rule condition for that app.
- If any rules are enforced for the EXE rule collection, you must create rules in the packaged apps and packaged app installers rule collection. Otherwise, all packaged apps and packaged app installers are blocked.
- A custom configured URL can be included in the message that is displayed when an app is blocked.
- Expect an increase in the number of Help Desk calls when users encounter apps that aren't allowed.

## In this section

| Article | Description |
| - | - |
| [Create a rule that uses a file hash condition](create-a-rule-that-uses-a-file-hash-condition.md) | This article for IT professionals shows how to create an AppLocker rule with a file hash condition.|
| [Create a rule that uses a path condition](create-a-rule-that-uses-a-path-condition.md) | This article for IT professionals shows how to create an AppLocker rule with a path condition.|
| [Create a rule that uses a publisher condition](create-a-rule-that-uses-a-publisher-condition.md) | This article for IT professionals shows how to create an AppLocker rule with a publisher condition.|
| [Create AppLocker default rules](create-applocker-default-rules.md) | This article for IT professionals describes the steps to create a standard set of AppLocker rules that allow Windows system files to run.|
| [Add exceptions for an AppLocker rule](configure-exceptions-for-an-applocker-rule.md) | This article for IT professionals describes the steps to specify which apps can or can't run as exceptions to an AppLocker rule.|
| [Create a rule for packaged apps](create-a-rule-for-packaged-apps.md) | This article for IT professionals shows how to create an AppLocker rule for packaged apps with a publisher condition.|
| [Delete an AppLocker rule](delete-an-applocker-rule.md) | This article for IT professionals describes the steps to delete an AppLocker rule.|
| [Edit AppLocker rules](edit-applocker-rules.md) | This article for IT professionals describes the steps to edit a publisher rule, path rule, and file hash rule in AppLocker.|
| [Enable the DLL rule collection](enable-the-dll-rule-collection.md) | This article for IT professionals describes the steps to enable the DLL rule collection feature for AppLocker.|
| [Enforce AppLocker rules](enforce-applocker-rules.md) | This article for IT professionals describes how to enforce application control rules by using AppLocker.|
| [Run the Automatically Generate Rules wizard](run-the-automatically-generate-rules-wizard.md) | This article for IT professionals describes steps to run the wizard to create AppLocker rules on a reference device.|
