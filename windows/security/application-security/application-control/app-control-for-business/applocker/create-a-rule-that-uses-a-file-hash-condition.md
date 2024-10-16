---
title: Create a rule that uses a file hash condition
description: This article for IT professionals shows how to create an AppLocker rule with a file hash condition.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Create a rule that uses a file hash condition

This article for IT professionals shows how to create an AppLocker rule with a file hash condition.

File hash rules use a system-computed Authenticode cryptographic hash of the identified file.

For info about the file hash condition, see [Understanding the File Hash Rule Condition in AppLocker](understanding-the-file-hash-rule-condition-in-applocker.md).

To manage an AppLocker policy in a Group Policy Object (GPO), you can perform this task by using the Group Policy Management Console. To manage an AppLocker policy for the local computer or for use in a security template, use the Local Security Policy snap-in. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#using-the-mmc-snap-ins-to-administer-applocker).

## To create a new rule with a file hash condition

1. Open the AppLocker console, and then select the rule collection that you want to create the rule for.
2. On the **Action** menu, select **Create New Rule**.
3. On the **Before You Begin** page, select **Next**.
4. On the **Permissions** page, select the action (allow or deny) and the user or group that the rule should apply to, and then select **Next**.
5. On the **Conditions** page, select the **File hash** rule condition, and then select **Next**.
6. **Browse Files** to locate the targeted application file.

  > [!NOTE]
  > You can also select **Browse Folders** which calculates the hash for all the appropriate files relative to the rule collection. To remove hashes individually, select the **Remove** button.

7. Select **Next**.
8. On the **Name** page, either accept the automatically generated rule name or type a new rule name, and then select **Create**.
