---
title: Edit AppLocker rules
description: This article for IT professionals describes the steps to edit a publisher rule, path rule, and file hash rule in AppLocker.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Edit AppLocker rules

This article for IT professionals describes the steps to edit a publisher rule, path rule, and file hash rule in AppLocker.

For more info about these rule types, see [Understanding AppLocker rule condition types](understanding-applocker-rule-condition-types.md).

To manage an AppLocker policy in a Group Policy Object (GPO), you can perform this task by using the Group Policy Management Console. To manage an AppLocker policy for the local computer or for use in a security template, use the Local Security Policy snap-in. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#using-the-mmc-snap-ins-to-administer-applocker).

## To edit a publisher rule

1. Open the AppLocker console, and then select the appropriate rule collection.
2. In the **Action** pane, right-click the publisher rule, and then select **Properties**.
3. Select the appropriate tab to edit the rule properties.

    - Select the **General** tab to change the rule name, add a rule description, configure whether the rule is used to allow or deny applications, and set the security group for which this rule should apply.
    - Select the **Publisher** tab to configure the certificate's common name, the product name, the file name, or file version of the publisher.
    - Select the **Exceptions** tab to create or edit exceptions.
    - When you finish updating the rule, select **OK**.

## To edit a file hash rule

1. Open the AppLocker console, and then select the appropriate rule collection.
2. Choose the appropriate rule collection.
3. In the **Action** pane, right-click the file hash rule, and then select **Properties**.
4. Select the appropriate tab to edit the rule properties.

    - Select the **General** tab to change the rule name, add a rule description, configure whether the rule is used to allow or deny applications, and set the security group in which this rule should apply.
    - Select the **File Hash** tab to configure the files that should be used to enforce the rule. You can select **Browse Files** to add a specific file or select **Browse Folders** to add all files in a specified folder. To remove hashes individually, select **Remove**.
    - When you finish updating the rule, select **OK**.

## To edit a path rule

1. Open the AppLocker console, and then select the appropriate rule collection.
2. Choose the appropriate rule collection.
3. In the **Action** pane, right-click the path rule, and then select **Properties**.
4. Select the appropriate tab to edit the rule properties.

    - Select the **General** tab to change the rule name, add a rule description, configure whether the rule is used to allow or deny applications, and set the security group in which this rule should apply.
    - Select the **Path** tab to configure the path on the computer in which the rule should be enforced.
    - Select the **Exceptions** tab to create exceptions for specific files in a folder.
    - When you finish updating the rule, select **OK**.
