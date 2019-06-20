---
title: Run the Automatically Generate Rules wizard (Windows 10)
description: This topic for IT professionals describes steps to run the wizard to create AppLocker rules on a reference device.
ms.assetid: 8cad1e14-d5b2-437c-8f88-70cffd7b3d8e
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

# Run the Automatically Generate Rules wizard

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for IT professionals describes steps to run the wizard to create AppLocker rules on a reference device.

AppLocker allows you to automatically generate rules for all files within a folder. It will scan the specified folder and create the condition types that you choose for each file in that folder.

You can perform this task by using the Group Policy Management Console for an AppLocker policy in a Group Policy Object (GPO) or by using the Local Security Policy snap-in for an AppLocker policy on a local device or in a security template. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#bkmk-using-snapins).

**To automatically generate rules**

1. Open the AppLocker console.
2. Right-click the appropriate rule type for which you want to automatically generate rules. You can automatically generate rules for executable, Windows Installer, script and packaged app rules.
3. Click **Automatically Generate Rules**.
4. On the **Folder and Permissions** page, click **Browse** to choose the folder to be analyzed. By default, this is the Program Files folder.
5. Click **Select** to choose the security group in which the default rules should be applied. By default, this is the **Everyone** group.
6. The wizard provides a name in the **Name to identify this set of rules** box based on the name of the folder that you have selected. Accept the provided name or type a different name, and then click **Next**.
7. On the **Rule Preferences** page, choose the conditions that you want the wizard to use while creating rules, and then click **Next**. For more info about rule conditions, see [Understanding AppLocker rule condition types](understanding-applocker-rule-condition-types.md).

   >**Note:**  The **Reduce the number of rules created by grouping similar files** check box is selected by default. This helps you organize AppLocker rules and reduce the number of rules that you create by performing the following operations for the rule condition that you select:
    
   - One publisher condition is created for all files that have the same publisher and product name.
   - One path condition is created for the folder that you select. For example, if you select *C:\\Program Files\\ProgramName\\* and the files in that folder are not signed, the wizard creates a rule for *%programfiles%\\ProgramName\\\**.
   - One file hash condition is created that contains all of the file hashes. When rule grouping is disabled, the wizard creates a file hash rule for each file.
     
8. Review the files that were analyzed and the rules that will be automatically created. To make changes, click **Previous** to return to the page where you can change your selections. After reviewing the rules, click **Create**.

>**Note:**  If you are running the wizard to create your first rules for a GPO, you will be prompted to create the default rules, which allow critical system files to run, after completing the wizard. You may edit the default rules at any time. If your organization has decided to edit the default rules or create custom rules to allow the Windows system files to run, ensure that you delete the default rules after replacing them with your custom rules.
