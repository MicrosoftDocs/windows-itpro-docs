---
title: Create a rule that uses a path condition (Windows 10)
description: This topic for IT professionals shows how to create an AppLocker rule with a path condition.
ms.assetid: 9b2093f5-5976-45fa-90c3-da1e0e845d95
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

# Create a rule that uses a path condition

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for IT professionals shows how to create an AppLocker rule with a path condition.

The path condition identifies an app by its location in the file system of the computer or on the network.

>**Important:**  When creating a rule that uses a deny action, path conditions are less secure for preventing access to a file because a user could easily copy the file to a different location than what is specified in the rule. Because path rules correspond to locations within the file system, you should ensure that there are no subdirectories that are writable by non-administrators. For example, if you create a path rule for C:\\ with the allow action, any file within C:\\ will be allowed to run, including users' profiles.
 
For info about the path condition, see [Understanding the path rule condition in AppLocker](understanding-the-path-rule-condition-in-applocker.md).

You can perform this task by using the Group Policy Management Console for an AppLocker policy in a Group Policy Object (GPO) or by using the Local Security Policy snap-in for an AppLocker policy on a local computer or in a security template. For information how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#bkmk-using-snapins).

**To create a new rule with a path condition**

1.  Open the AppLocker console, and then click the rule collection that you want to create the rule for.
2.  On the **Action** menu, click **Create New Rule**.
3.  On the **Before You Begin** page, click **Next**.
4.  On the **Permissions** page, select the action (allow or deny) and the user or group that the rule should apply to, and then click **Next**.
5.  On the **Conditions** page, select the **Path** rule condition, and then click **Next**.
6.  Click **Browse Files** to locate the targeted folder for the app.

    >**Note:**  When you browse to a file or folder location, the wizard automatically converts absolute file paths to use AppLocker path variables. You may edit the path after browsing to specify an absolute path, or you may type the path directly into the **Path** box. To learn more about AppLocker path variables, see [Understanding the path rule condition in AppLocker](understanding-the-path-rule-condition-in-applocker.md).
     
7.  Click **Next**.
8.  (Optional) On the **Exceptions** page, specify conditions by which to exclude files from being affected by the rule. Click **Next**.
9.  On the **Name** page, either accept the automatically generated rule name or type a new rule name, and then click **Create**.
