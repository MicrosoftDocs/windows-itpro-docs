---
title: Create a rule that uses a file hash condition (Windows 10)
description: This topic for IT professionals shows how to create an AppLocker rule with a file hash condition.
ms.assetid: eb3b3524-1b3b-4979-ba5a-0a0b1280c5c7
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

# Create a rule that uses a file hash condition

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for IT professionals shows how to create an AppLocker rule with a file hash condition.

File hash rules use a system-computed cryptographic hash of the identified file.

For info about the file hash condition, see [Understanding the File Hash Rule Condition in AppLocker](understanding-the-file-hash-rule-condition-in-applocker.md).

You can perform this task by using the Group Policy Management Console for an AppLocker policy in a Group Policy Object (GPO) or by using the Local Security Policy snap-in for an AppLocker policy on a local computer or in a security template. For info how to use these MMC snap-ins to administer 
AppLocker, see [Administer AppLocker](administer-applocker.md#bkmk-using-snapins).

**To create a new rule with a file hash condition**

1.  Open the AppLocker console, and then click the rule collection that you want to create the rule for.
2.  On the **Action** menu, click **Create New Rule**.
3.  On the **Before You Begin** page, click **Next**.
4.  On the **Permissions** page, select the action (allow or deny) and the user or group that the rule should apply to, and then click **Next**.
5.  On the **Conditions** page, select the **File hash** rule condition, and then click **Next**.
6.  **Browse Files** to locate the targeted application file.

    >**Note:**  You can also click **Browse Folders** which calculates the hash for all the appropriate files relative to the rule collection. To remove hashes individually, click the **Remove** button.
     
7.  Click **Next**.
8.  On the **Name** page, either accept the automatically generated rule name or type a new rule name, and then click **Create**.
