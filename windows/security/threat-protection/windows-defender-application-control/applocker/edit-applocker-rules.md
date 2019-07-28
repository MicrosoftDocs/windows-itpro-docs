---
title: Edit AppLocker rules (Windows 10)
description: This topic for IT professionals describes the steps to edit a publisher rule, path rule, and file hash rule in AppLocker.
ms.assetid: 80016cda-b915-46a0-83c6-5e6b0b958e32
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

# Edit AppLocker rules

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for IT professionals describes the steps to edit a publisher rule, path rule, and file hash rule in AppLocker.

For more info about these rule types, see [Understanding AppLocker rule condition types](understanding-applocker-rule-condition-types.md).

You can perform this task by using the Group Policy Management Console for an AppLocker policy in a Group Policy Object (GPO) or by using the Local Security Policy snap-in for an AppLocker policy on a local computer or in a security template. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#bkmk-using-snapins).

**To edit a publisher rule**

1.  Open the AppLocker console, and then click the appropriate rule collection.
2.  In the **Action** pane, right-click the publisher rule, and then click **Properties**.
3.  Click the appropriate tab to edit the rule properties.

    -   Click the **General** tab to change the rule name, add a rule description, configure whether the rule is used to allow or deny applications, and set the security group for which this rule should apply.
    -   Click the **Publisher** tab to configure the certificate's common name, the product name, the file name, or file version of the publisher.
    -   Click the **Exceptions** tab to create or edit exceptions.
    -   When you finish updating the rule, click **OK**.

**To edit a file hash rule**

1.  Open the AppLocker console, and then click the appropriate rule collection.
2.  Choose the appropriate rule collection.
3.  In the **Action** pane, right-click the file hash rule, and then click **Properties**.
4.  Click the appropriate tab to edit the rule properties.

    -   Click the **General** tab to change the rule name, add a rule description, configure whether the rule is used to allow or deny applications, and set the security group in which this rule should apply.
    -   Click the **File Hash** tab to configure the files that should be used to enforce the rule. You can click **Browse Files** to add a specific file or click **Browse Folders** to add all files in a specified folder. To remove hashes individually, click **Remove**.
    -   When you finish updating the rule, click **OK**.

**To edit a path rule**

1.  Open the AppLocker console, and then click the appropriate rule collection.
2.  Choose the appropriate rule collection.
3.  In the **Action** pane, right-click the path rule, and then click **Properties**.
4.  Click the appropriate tab to edit the rule properties.

    -   Click the **General** tab to change the rule name, add a rule description, configure whether the rule is used to allow or deny applications, and set the security group in which this rule should apply.
    -   Click the **Path** tab to configure the path on the computer in which the rule should be enforced.
    -   Click the **Exceptions** tab to create exceptions for specific files in a folder.
    -   When you finish updating the rule, click **OK**.
    
