---
title: Add exceptions for an AppLocker rule
description: This article for IT professionals describes the steps to specify which apps can or can't run as exceptions to an AppLocker rule.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Add exceptions for an AppLocker rule

This article for IT professionals describes the steps to specify which apps can or can't run as exceptions to an AppLocker rule.

Rule exceptions allow you to specify files or folders to exclude from the rule. For more information about exceptions, see [Understanding AppLocker rule exceptions](understanding-applocker-rule-exceptions.md).

To manage an AppLocker policy in a Group Policy Object (GPO), you can perform this task by using the Group Policy Management Console. To manage an AppLocker policy for the local computer or for use in a security template, use the Local Security Policy snap-in. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#using-the-mmc-snap-ins-to-administer-applocker).

## To configure exceptions for a rule

1. Open the AppLocker console.
2. Expand the rule collection, right-click the rule that you want to configure exceptions for, and then select **Properties**.
3. Select the **Exceptions** tab.
4. In the **Add exception** box, select the rule type that you want to create, and then select **Add**.

    - For a publisher exception, select **Browse**, select the file that contains the publisher to exclude, and then select **OK**.
    - For a path exception, choose the file or folder path to exclude, and then select **OK**.
    - For a file hash exception, edit the file hash rule, and select **Remove**.
    - For a packaged apps exception, select **Add** to create the exceptions based on reference app and rule scope.
