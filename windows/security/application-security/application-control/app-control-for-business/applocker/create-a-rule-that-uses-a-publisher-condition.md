---
title: Create a rule that uses a publisher condition
description: This article for IT professionals shows how to create an AppLocker rule with a publisher condition.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Create a rule that uses a publisher condition

This article for IT professionals shows how to create an AppLocker rule with a publisher condition.

You can use publisher conditions only for files that are digitally signed. The publisher condition identifies an app based on its digital signature and extended attributes. The digital signature contains information about the company that created the app (the publisher). The extended attributes, which are obtained from the binary resource, might contain the name of the product and the version number of the app binary. The publisher might be a software development company, such as Microsoft, or the information technology department of your organization.

Packaged app rules always use publisher conditions. For info about creating a packaged app rule, see [Create a rule for packaged apps](create-a-rule-for-packaged-apps.md).

For info about the publisher condition, see [Understanding the publisher rule condition in AppLocker](understanding-the-publisher-rule-condition-in-applocker.md).

To manage an AppLocker policy in a Group Policy Object (GPO), you can perform this task by using the Group Policy Management Console. To manage an AppLocker policy for the local computer or for use in a security template, use the Local Security Policy snap-in. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#using-the-mmc-snap-ins-to-administer-applocker).

## To create a new rule with a publisher condition

1. Open the AppLocker console, and then select the rule collection that you want to create the rule for.
2. On the **Action** menu, select **Create New Rule**.
3. On the **Before You Begin** page, select **Next**.
4. On the **Permissions** page, select the action (allow or deny) and the user or group that the rule should apply to, and then select **Next**.
5. On the **Conditions** page, select the **Publisher** rule condition, and then select **Next**.
6. On the **Publisher** page, select **Browse** to select a signed file, and then use the slider to specify the scope of the rule. To use custom values in any of the fields or to specify a specific file version, select the **Use custom values** check box. For example, you can use the asterisk (\*) wildcard character within a publisher rule to specify that any value should be matched.
7. Select **Next**.
8. (Optional) On the **Exceptions** page, specify conditions by which to exclude files from being affected by the rule. Select **Next**.
9. On the **Name** page, either accept the automatically generated rule name or type a new rule name, and then select **Create**.
