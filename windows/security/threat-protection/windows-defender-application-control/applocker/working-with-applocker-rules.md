---
title: Working with AppLocker rules (Windows 10)
description: This topic for IT professionals describes AppLocker rule types and how to work with them for your application control policies.
ms.assetid: 3966b35b-f2da-4371-8b5f-aec031db6bc9
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
ms.localizationpriority: medium
msauthor: v-anbic
ms.date: 08/27/2018
---

# Working with AppLocker rules

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for IT professionals describes AppLocker rule types and how to work with them for your application control policies.

## In this section

| Topic | Description |
| - | - |
| [Create a rule that uses a file hash condition](create-a-rule-that-uses-a-file-hash-condition.md) | This topic for IT professionals shows how to create an AppLocker rule with a file hash condition.| 
| [Create a rule that uses a path condition](create-a-rule-that-uses-a-path-condition.md) | This topic for IT professionals shows how to create an AppLocker rule with a path condition.| 
| [Create a rule that uses a publisher condition](create-a-rule-that-uses-a-publisher-condition.md) | This topic for IT professionals shows how to create an AppLocker rule with a publisher condition.| 
| [Create AppLocker default rules](create-applocker-default-rules.md) | This topic for IT professionals describes the steps to create a standard set of AppLocker rules that will allow Windows system files to run.| 
| [Add exceptions for an AppLocker rule](configure-exceptions-for-an-applocker-rule.md) | This topic for IT professionals describes the steps to specify which apps can or cannot run as exceptions to an AppLocker rule.| 
| [Create a rule for packaged apps](create-a-rule-for-packaged-apps.md) | This topic for IT professionals shows how to create an AppLocker rule for packaged apps with a publisher condition.| 
| [Delete an AppLocker rule](delete-an-applocker-rule.md) | This topic for IT professionals describes the steps to delete an AppLocker rule.| 
| [Edit AppLocker rules](edit-applocker-rules.md) | This topic for IT professionals describes the steps to edit a publisher rule, path rule, and file hash rule in AppLocker.| 
| [Enable the DLL rule collection](enable-the-dll-rule-collection.md) | This topic for IT professionals describes the steps to enable the DLL rule collection feature for AppLocker.| 
| [Enforce AppLocker rules](enforce-applocker-rules.md) | This topic for IT professionals describes how to enforce application control rules by using AppLocker.| 
| [Run the Automatically Generate Rules wizard](run-the-automatically-generate-rules-wizard.md) | This topic for IT professionals describes steps to run the wizard to create AppLocker rules on a reference device.| 
 
The three AppLocker enforcement modes are described in the following table. The enforcement mode setting defined here can be overwritten by the setting derived from a linked Group Policy Object (GPO) with a higher precedence.

| Enforcement mode | Description |
| - | - |
| **Not configured** | This is the default setting which means that the rules defined here will be enforced unless a linked GPO with a higher precedence has a different value for this setting.| 
| **Enforce rules** | Rules are enforced.| 
| **Audit only** | Rules are audited but not enforced. When a user runs an app that is affected by an AppLocker rule, the app is allowed to run and the info about the app is added to the AppLocker event log. The Audit-only enforcement mode helps you determine which apps will be affected by the policy before the policy is enforced. When the AppLocker policy for a rule collection is set to **Audit only**, rules for that rule collection are not enforced| 

When AppLocker policies from various GPOs are merged, the rules from all the GPOs are merged and the enforcement mode setting of the winning GPO is applied.
## Rule collections

The AppLocker console is organized into rule collections, which are executable files, scripts, Windows Installer files, packaged apps and packaged app installers, and DLL files. These collections give you an easy way to differentiate the rules for different types of apps. The following table lists the file formats that are included in each rule collection.

| Rule collection | Associated file formats |
| - | - |
| Executable files | .exe<br/>.com| 
| Scripts| .ps1<br/>.bat<br/>.cmd<br/>.vbs<br/>.js| 
| Windows Installer files | .msi<br/>.msp<br/>.mst| 
| Packaged apps and packaged app installers | .appx| 
| DLL files | .dll<br/>.ocx| 
 
>**Important:**  If you use DLL rules, you need to create an allow rule for each DLL that is used by all of the allowed apps.

When DLL rules are used, AppLocker must check each DLL that an application loads. Therefore, users may experience a reduction in performance if DLL rules are used.

The DLL rule collection is not enabled by default. To learn how to enable the DLL rule collection, see [DLL rule collections](#bkmk-dllrulecollections).

EXE rules apply to portable executable (PE) files. AppLocker checks whether a file is a valid PE file, rather than just applying rules based on file extension, which attackers can easily change. Regardless of the file extension, the AppLocker EXE rule collection will work on a file as long as it is a valid PE file.
 
## Rule conditions

Rule conditions are criteria that help AppLocker identify the apps to which the rule applies. The three primary rule conditions are publisher, path, and file hash.

-   [Publisher](#bkmk-publisher): Identifies an app based on its digital signature
-   [Path](#bkmk-path): Identifies an app by its location in the file system of the computer or on the network
-   [File hash](#bkmk-filehash): Represents the system computed cryptographic hash of the identified file

### <a href="" id="bkmk-publisher"></a>Publisher

This condition identifies an app based on its digital signature and extended attributes when available. The digital signature contains info about the company that created the app (the publisher). Executable files, dlls, Windows installers, packaged apps and packaged app installers also have extended attributes, which are obtained from the binary resource. In case of executable files, dlls and Windows installers, these attributes contain the name of the product that the file is a part of, the original name of the file as supplied by the publisher, and the version number of the file. In case of packaged apps and packaged app installers, these extended attributes contain the name and the version of the app package.

> **Note:**  Rules created in the packaged apps and packaged app installers rule collection can only have publisher conditions since Windows does not support unsigned packaged apps and packaged app installers.
> 
> **Note:**  Use a publisher rule condition when possible because they can survive app updates as well as a change in the location of files.
 
When you select a reference file for a publisher condition, the wizard creates a rule that specifies the publisher, product, file name, and version number. You can make the rule more generic by moving the slider up or by using a wildcard character (\*) in the product, file name, or version number fields.

>**Note:**  To enter custom values for any of the fields of a publisher rule condition in the Create Rules Wizard, you must select the **Use custom values** check box. When this check box is selected, you cannot use the slider.
 
The **File version** and **Package version** control whether a user can run a specific version, earlier versions, or later versions of the app. You can choose a version number and then configure the following options:

-   **Exactly.** The rule applies only to this version of the app
-   **And above.** The rule applies to this version and all later versions.
-   **And below.** The rule applies to this version and all earlier versions.

The following table describes how a publisher condition is applied.


| Option | The publisher condition allows or denies… |
|---|---|
| **All signed files** | All files that are signed by any publisher.| 
| **Publisher only**| All files that are signed by the named publisher.| 
| **Publisher and product name**| All files for the specified product that are signed by the named publisher.| 
| **Publisher and product name, and file name**| Any version of the named file or package for the named product that are signed by the publisher.| 
| **Publisher, product name, file name, and file version**| **Exactly**<br/>The specified version of the named file or package for the named product that are signed by the publisher.| 
| **Publisher, product name, file name, and file version**| **And above**<br/>The specified version of the named file or package and any new releases for the product that are signed by the publisher.| 
| **Publisher, product name, file name, and file version**| **And below**<br/>The specified version of the named file or package and any earlier versions for the product that are signed by the publisher.| 
| **Custom**| You can edit the **Publisher**, **Product name**, **File name**, **Version** **Package name**, and **Package version** fields to create a custom rule.| 

### <a href="" id="bkmk-path"></a>Path

This rule condition identifies an application by its location in the file system of the computer or on the network.

AppLocker uses custom path variables for well-known paths, such as Program Files and Windows.

The following table details these path variables.

| Windows directory or disk | AppLocker path variable | Windows environment variable |
| - | - | - |
| Windows| %WINDIR%| %SystemRoot%| 
| System32 and SysWOW64| %SYSTEM32%| %SystemDirectory%| 
| Windows installation directory| %OSDRIVE%| %SystemDrive%| 
| Program Files| %PROGRAMFILES%| %ProgramFiles% and %ProgramFiles(x86)% | 
| Removable media (for example, a CD or DVD)| %REMOVABLE%| |
| Removable storage device (for example, a USB flash drive)| %HOT% | |
 
>**Important:**  Because a path rule condition can be configured to include a large number of folders and files, path conditions should be carefully planned. For example, if an allow rule with a path condition includes a folder location that non-administrators are allowed to write data into, a user can copy unapproved files into that location and run the files. For this reason, it is a best practice to not create path conditions for standard user writable locations, such as a user profile.
 
### <a href="" id="bkmk-filehash"></a>File hash

When you choose the file hash rule condition, the system computes a cryptographic hash of the identified file. The advantage of this rule condition is that because each file has a unique hash, a file hash rule condition applies to only one file. The disadvantage is that each time the file is updated (such as a security update or upgrade) the file's hash will change. As a result, you must manually update file hash rules.

## AppLocker default rules

AppLocker includes default rules, which are intended to help ensure that the files that are required for Windows to operate properly are allowed in an AppLocker rule collection. For background, see [Understanding AppLocker default rules](understanding-applocker-default-rules.md), and for steps, see [Create AppLocker default rules](create-applocker-default-rules.md).

Executable default rule types include:

-   Allow members of the local **Administrators** group to run all apps.
-   Allow members of the **Everyone** group to run apps that are located in the Windows folder.
-   Allow members of the **Everyone** group to run apps that are located in the Program Files folder.

Script default rule types include:

-   Allow members of the local **Administrators** group to run all scripts.
-   Allow members of the **Everyone** group to run scripts that are located in the Program Files folder.
-   Allow members of the **Everyone** group to run scripts that are located in the Windows folder.

Windows Installer default rule types include:

-   Allow members of the local **Administrators** group to run all Windows Installer files.
-   Allow members of the **Everyone** group to run all digitally signed Windows Installer files.
-   Allow members of the **Everyone** group to run all Windows Installer files that are located in the Windows\\Installer folder.

DLL default rule types:

-   Allow members of the local **Administrators** group to run all DLLs.
-   Allow members of the **Everyone** group to run DLLs that are located in the Program Files folder.
-   Allow members of the **Everyone** group to run DLLs that are located in the Windows folder.

Packaged apps default rule types:

-   Allow members of the **Everyone** group to install and run all signed packaged apps and packaged app installers.

## AppLocker rule behavior

If no AppLocker rules for a specific rule collection exist, all files with that file format are allowed to run. However, when an AppLocker rule for a specific rule collection is created, only the files explicitly allowed in a rule are permitted to run. For example, if you create an executable rule that allows .exe files in *%SystemDrive%\\FilePath* to run, only executable files located in that path are allowed to run.

A rule can be configured to use allow or deny actions:

-   **Allow.** You can specify which files are allowed to run in your environment, and for which users or groups of users. You can also configure exceptions to identify files that are excluded from the rule.
-   **Deny.** You can specify which files are *not* allowed to run in your environment, and for which users or groups of users. You can also configure exceptions to identify files that are excluded from the rule.

> **Important:**  For a best practice, use allow actions with exceptions. You can use a combination of allow and deny actions but understand that deny actions override allow actions in all cases, and can be circumvented.
> 
> **Important:**  If you join a computer running at least Windows Server 2012 or Windows 8 to a domain that already enforces AppLocker rules for executable files, users will not be able to run any packaged apps unless you also create rules for packaged apps. If you want to allow any packaged apps in your environment while continuing to control executable files, you should create the default rules for packaged apps and set the enforcement mode to Audit-only for the packaged apps rule collection.
 
## Rule exceptions

You can apply AppLocker rules to individual users or to a group of users. If you apply a rule to a group of users, all users in that group are affected by that rule. If you need to allow a subset of a user group to use an app, you can create a special rule for that subset. For example, the rule "Allow everyone to run Windows except Registry Editor" allows everyone in the organization to run the Windows operating system, but it does not allow anyone to run Registry Editor.

The effect of this rule would prevent users such as Help Desk personnel from running a program that is necessary for their support tasks. To resolve this problem, create a second rule that applies to the Help Desk user group: "Allow Help Desk to run Registry Editor." If you create a deny rule that does not allow any users to run Registry Editor, the deny rule will override the second rule that allows the Help Desk user group to run Registry Editor.

## <a href="" id="bkmk-dllrulecollections"></a>DLL rule collection

Because the DLL rule collection is not enabled by default, you must perform the following procedure before you can create and enforce DLL rules.

Membership in the local **Administrators** group, or equivalent, is the minimum required to complete this procedure.

**To enable the DLL rule collection**

1.  Click **Start**, type **secpol.msc**, and then press ENTER.
2.  If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then click **Yes**.
3.  In the console tree, double-click **Application Control Policies**, right-click **AppLocker**, and then click **Properties**.
4.  Click the **Advanced** tab, select the **Enable the DLL rule collection** check box, and then click **OK**.

    >**Important:**  Before you enforce DLL rules, make sure that there are allow rules for each DLL that is used by any of the allowed apps.
     
## AppLocker wizards

You can create rules by using two AppLocker wizards:

1.  The Create Rules Wizard enables you to create one rule at a time.
2.  The Automatically Generate Rules Wizard allows you to create multiple rules at one time. You can either select a folder and let the wizard create rules for the relevant files within that folder or in case of packaged apps let the wizard create rules for all packaged apps installed on the computer. You can also specify the user or group to which to apply the rules. This wizard automatically generates allow rules only.

## Additional considerations

-   By default, AppLocker rules do not allow users to open or run any files that are not specifically allowed. Administrators should maintain an up-to-date list of allowed applications.
-   There are two types of AppLocker conditions that do not persist following an update of an app:

    -   **A file hash condition** File hash rule conditions can be used with any app because a cryptographic hash value of the app is generated at the time the rule is created. However, the hash value is specific to that exact version of the app. If there are several versions of the application in use within the organization, you need to create file hash conditions for each version in use and for any new versions that are released.

    -   **A publisher condition with a specific product version set** If you create a publisher rule condition that uses the **Exactly** version option, the rule cannot persist if a new version of the app is installed. A new publisher condition must be created, or the version must be edited in the rule to be made less specific.

-   If an app is not digitally signed, you cannot use a publisher rule condition for that app.
-   AppLocker rules cannot be used to manage computers running a Windows operating system earlier than Windows Server 2008 R2 or Windows 7. Software Restriction Policies must be used instead. If AppLocker rules are defined in a Group Policy Object (GPO), only those rules are applied. To ensure interoperability between Software Restriction Policies rules and AppLocker rules, define Software Restriction Policies rules and AppLocker rules in different GPOs.
-   The packaged apps and packaged apps installer rule collection is available on devices running at least Windows Server 2012 and Windows 8.
-   When the rules for the executable rule collection are enforced and the packaged apps and packaged app installers rule collection does not contain any rules, no packaged apps and packaged app installers are allowed to run. In order to allow any packaged apps and packaged app installers, you must create rules for the packaged apps and packaged app installers rule collection.
-   When an AppLocker rule collection is set to **Audit only**, the rules are not enforced. When a user runs an application that is included in the rule, the app is opened and runs normally, and information about that app is added to the AppLocker event log.
-   A custom configured URL can be included in the message that is displayed when an app is blocked.
-   Expect an increase in the number of Help Desk calls initially because of blocked apps until users understand that they cannot run apps that are not allowed.
