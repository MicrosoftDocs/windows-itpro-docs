---
title: Add exceptions for an AppLocker rule (Windows 10)
description: This topic for IT professionals describes the steps to specify which apps can or cannot run as exceptions to an AppLocker rule.
ms.assetid: d15c9d84-c14b-488d-9f48-bf31ff7ff0c5
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

# Add exceptions for an AppLocker rule

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for IT professionals describes the steps to specify which apps can or cannot run as exceptions to an AppLocker rule.

Rule exceptions allow you to specify files or folders to exclude from the rule. For more information about exceptions, see [Understanding AppLocker rule exceptions](understanding-applocker-rule-exceptions.md).

You can perform this task by using the Group Policy Management Console for an AppLocker policy in a Group Policy Object (GPO) or by using the Local Security Policy snap-in for an AppLocker policy on a local computer or in a security template. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#bkmk-using-snapins).

**To configure exceptions for a rule**

1.  Open the AppLocker console.
2.  Expand the rule collection, right-click the rule that you want to configure exceptions for, and then click **Properties**.
3.  Click the **Exceptions** tab.
4.  In the **Add exception** box, select the rule type that you want to create, and then click **Add**.

    -   For a publisher exception, click **Browse**, select the file that contains the publisher to exclude, and then click **OK**.
    -   For a path exception, choose the file or folder path to exclude, and then click **OK**.
    -   For a file hash exception, edit the file hash rule, and click **Remove**.
    -   For a packaged apps exception, click **Add** to create the exceptions based on reference app and rule scope.
 
 
