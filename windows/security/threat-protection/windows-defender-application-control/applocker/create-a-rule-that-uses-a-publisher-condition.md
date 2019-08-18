---
title: Create a rule that uses a publisher condition (Windows 10)
description: This topic for IT professionals shows how to create an AppLocker rule with a publisher condition.
ms.assetid: 345ad45f-2bc1-4c4c-946f-17804e29f55b
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

# Create a rule that uses a publisher condition

**Applies to**
- Windows 10
- Windows Server

This topic for IT professionals shows how to create an AppLocker rule with a publisher condition.

You can use publisher conditions only for files that are digitally signed; the publisher condition identifies an app based on its digital signature and extended attributes. The digital signature contains information about the company that created the app (the publisher). The extended attributes, which are obtained from the binary resource, contain the name of the product that the file is part of and the version number of the application. The publisher may be a software development company, such as Microsoft, or the information technology department of your organization.
Packaged app rules are by definition rules that use publisher conditions. For info about creating a packaged app rule, see [Create a rule for packaged apps](create-a-rule-for-packaged-apps.md).

For info about the publisher condition, see [Understanding the publisher rule condition in AppLocker](understanding-the-publisher-rule-condition-in-applocker.md).

You can perform this task by using the Group Policy Management Console for an AppLocker policy in a Group Policy Object (GPO) or by using the Local Security Policy snap-in for an AppLocker policy on a local computer or in a security template. For info how to use these MMC snap-ins to administer 
AppLocker, see [Administer AppLocker](administer-applocker.md#bkmk-using-snapins).

**To create a new rule with a publisher condition**

1.  Open the AppLocker console, and then click the rule collection that you want to create the rule for.
2.  On the **Action** menu, click **Create New Rule**.
3.  On the **Before You Begin** page, click **Next**.
4.  On the **Permissions** page, select the action (allow or deny) and the user or group that the rule should apply to, and then click **Next**.
5.  On the **Conditions** page, select the **Publisher** rule condition, and then click **Next**.
6.  On the **Publisher** page, click **Browse** to select a signed file, and then use the slider to specify the scope of the rule. To use custom values in any of the fields or to specify a specific file version, select the **Use custom values** check box. For example, you can use the asterisk (\*) wildcard character within a publisher rule to specify that any value should be matched.
7.  Click **Next**.
8.  (Optional) On the **Exceptions** page, specify conditions by which to exclude files from being affected by the rule. Click **Next**.
9.  On the **Name** page, either accept the automatically generated rule name or type a new rule name, and then click **Create**.
