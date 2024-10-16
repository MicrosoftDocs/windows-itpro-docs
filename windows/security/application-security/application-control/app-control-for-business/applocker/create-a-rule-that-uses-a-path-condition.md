---
title: Create a rule that uses a path condition
description: This article for IT professionals shows how to create an AppLocker rule with a path condition.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Create a rule that uses a path condition

This article for IT professionals shows how to create an AppLocker rule with a path condition.

The path condition identifies an app by its location in the file system of the computer or on the network.

> [!IMPORTANT]
> When creating Deny rules, path conditions are less effective for preventing access to a file because a user (or malware acting as the user) could easily copy the file to a different location than what is specified in the rule. Because path rules correspond to locations within the file system, you should ensure that there are no subdirectories that are writable by non-administrators. For example, if you create a path rule for C:\\ with the allow action, any file within C:\\ will be allowed to run, including users' profiles.

For info about the path condition, see [Understanding the path rule condition in AppLocker](understanding-the-path-rule-condition-in-applocker.md).

To manage an AppLocker policy in a Group Policy Object (GPO), you can perform this task by using the Group Policy Management Console. To manage an AppLocker policy for the local computer or for use in a security template, use the Local Security Policy snap-in. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#using-the-mmc-snap-ins-to-administer-applocker).

## To create a new rule with a path condition

1. Open the AppLocker console, and then select the rule collection that you want to create the rule for.
2. On the **Action** menu, select **Create New Rule**.
3. On the **Before You Begin** page, select **Next**.
4. On the **Permissions** page, select the action (allow or deny) and the user or group that the rule should apply to, and then select **Next**.
5. On the **Conditions** page, select the **Path** rule condition, and then select **Next**.
6. Select **Browse Files** to locate the targeted folder for the app.

  > [!NOTE]
  > When you browse to a file or folder location, the wizard automatically converts absolute file paths to use AppLocker path variables. You may edit the path after browsing to specify an absolute path, or you may type the path directly into the **Path** box. To learn more about AppLocker path variables, see [Understanding the path rule condition in AppLocker](understanding-the-path-rule-condition-in-applocker.md).

7. Select **Next**.
8. (Optional) On the **Exceptions** page, specify conditions by which to exclude files from being affected by the rule. Select **Next**.
9. On the **Name** page, either accept the automatically generated rule name or type a new rule name, and then select **Create**.
