---
title: Run the Automatically Generate Rules wizard
description: This article for IT professionals describes steps to run the wizard to create AppLocker rules on a reference device.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Run the Automatically Generate Rules wizard

This article for IT professionals describes steps to run the wizard to create AppLocker rules on a reference device.

AppLocker allows you to automatically generate rules for all files within a folder. It scans the specified folder and create the condition types that you choose for each file in that folder.

To manage an AppLocker policy in a Group Policy Object (GPO), you can perform this task by using the Group Policy Management Console. To manage an AppLocker policy for the local computer or for use in a security template, use the Local Security Policy snap-in. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#using-the-mmc-snap-ins-to-administer-applocker).

## To automatically generate rules

1. Open the AppLocker console.
2. Right-click the appropriate rule type for which you want to automatically generate rules. You can automatically generate rules for executable, Windows Installer, script and packaged app rules.
3. Select **Automatically Generate Rules**.
4. On the **Folder and Permissions** page, select **Browse** to choose the folder to be analyzed. By default, this folder is the Program Files folder.
5. Select **Select** to choose the security group in which the default rules should be applied. By default, this group is the **Everyone** group.
6. The wizard provides a name in the **Name to identify this set of rules** box based on the name of the folder selected. Accept the provided name or type a different name, and then select **Next**.
7. On the **Rule Preferences** page, choose the conditions that you want the wizard to use while creating rules, and then select **Next**. For more info about rule conditions, see [Understanding AppLocker rule condition types](understanding-applocker-rule-condition-types.md).

   > [!NOTE]
   > The **Reduce the number of rules created by grouping similar files** check box is selected by default. This helps you organize AppLocker rules and reduce the number of rules that you create by performing the following operations for the rule condition that you select:

   - One publisher condition is created for all files that have the same publisher and product name.
   - One path condition is created for the folder that you select. For example, if you select *C:\\Program Files\\ProgramName\\* and the files in that folder aren't signed, the wizard creates a rule for *%programfiles%\\ProgramName\\\**.
   - One file hash condition is created that contains all of the file hashes. When rule grouping is disabled, the wizard creates a file hash rule for each file.

8. Review the files that were analyzed and the rules created. To make changes, select **Previous** to return to the page where you can change your selections. After reviewing the rules, select **Create**.

> [!NOTE]
> If you are running the wizard to create your first rules for a GPO, you will be prompted to create the default rules which allow critical system files to run, after completing the wizard. You may edit the default rules at any time. If your organization has decided to edit the default rules or create custom rules to allow the Windows system files to run, ensure that you delete the default rules after replacing them with your custom rules.
