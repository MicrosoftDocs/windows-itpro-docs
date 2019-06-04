---
title: Determine the Group Policy structure and rule enforcement (Windows 10)
description: This overview topic describes the process to follow when you are planning to deploy AppLocker rules.
ms.assetid: f435fcbe-c7ac-4ef0-9702-729aab64163f
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

# Determine the Group Policy structure and rule enforcement

**Applies to**
 -   Windows 10 
 -   Windows Server

This overview topic describes the process to follow when you are planning to deploy AppLocker rules.

## In this section

| Topic | Description |
| - | - |
| [Understand AppLocker enforcement settings](understand-applocker-enforcement-settings.md) | This topic describes the AppLocker enforcement settings for rule collections. |
| [Understand AppLocker rules and enforcement setting inheritance in Group Policy](understand-applocker-rules-and-enforcement-setting-inheritance-in-group-policy.md) | This topic for the IT professional describes how application control policies configured in AppLocker are applied through Group Policy.|
| [Document the Group Policy structure and AppLocker rule enforcement](document-group-policy-structure-and-applocker-rule-enforcement.md) | This planning topic describes what you need to investigate, determine, and record in your application control policies plan when you use AppLocker. |
 
When you are determining how many Group Policy Objects (GPOs) to create when you apply an AppLocker policy in your organization, you should consider the following:

-   Whether you are creating new GPOs or using existing GPOs
-   Whether you are implementing Software Restriction Policies (SRP) policies and AppLocker policies in the same GPO
-   GPO naming conventions
-   GPO size limits

>**Note:**  There is no default limit on the number of AppLocker rules that you can create. However, in Windows Server 2008 R2, GPOs have a 2 MB size limit for performance. In subsequent versions, that limit is raised to 100 MB.
