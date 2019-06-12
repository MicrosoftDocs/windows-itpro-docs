---
title: Create AppLocker default rules (Windows 10)
description: This topic for IT professionals describes the steps to create a standard set of AppLocker rules that will allow Windows system files to run.
ms.assetid: 21e9dc68-a6f4-4ebe-ac28-4c66a7ab6e18
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

# Create AppLocker default rules

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for IT professionals describes the steps to create a standard set of AppLocker rules that will allow Windows system files to run.

AppLocker includes default rules for each rule collection. These rules are intended to help ensure that the files that are required for Windows to operate properly are allowed to run.

>**Important:**  You can use the default rules as a template when creating your own rules to allow files within the Windows folders to run. However, these rules are only meant to function as a starter policy when you are first testing AppLocker rules. The default rules can be modified in the same way as other AppLocker rule types.
 
You can perform this task by using the Group Policy Management Console for an AppLocker policy in a Group Policy Object (GPO) or by using the Local Security Policy snap-in for an AppLocker policy on a local computer or in a security template. For information how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#bkmk-using-snapins).

**To create default rules**

1.  Open the AppLocker console.
2.  Right-click the appropriate rule type for which you want to automatically generate default rules. You can automatically generate rules for executable, Windows Installer, script rules and Packaged app rules.
3.  Click **Create Default Rules**.

## Related topics

- [Understanding AppLocker default rules](understanding-applocker-default-rules.md)
