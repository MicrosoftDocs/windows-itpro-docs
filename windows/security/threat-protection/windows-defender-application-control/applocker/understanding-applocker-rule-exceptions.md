---
title: Understanding AppLocker rule exceptions (Windows 10)
description: This topic describes the result of applying AppLocker rule exceptions to rule collections.
ms.assetid: e6bb349f-ee60-4c8d-91cd-6442f2d0eb9c
ms.reviewer: 
ms.author: macapara
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mjcaparas
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Understanding AppLocker rule exceptions

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic describes the result of applying AppLocker rule exceptions to rule collections.

You can apply AppLocker rules to individual users or a group of users. If you apply a rule to a group of users, all users in that group are affected by that rule. If you need to allow a subset of a user group to use an app, you can create a special rule for that subset.

For example, the rule "Allow Everyone to run Windows except Registry Editor" allows Everyone to run Windows binaries, but does not allow anyone to run Registry Editor (by adding %WINDIR%\regedit.exe as a Path Exception of the rule).  
The effect of this rule would prevent users such as Helpdesk personnel from running the Registry Editor, a program that is necessary for their support tasks.  
To resolve this problem, create a second rule that applies to the Helpdesk user group: "Allow Helpdesk to run Registry Editor" and add %WINDIR%\regedit.exe as an allowed path. If you create a deny rule that does not allow any users to run Registry Editor, the deny rule will override the second rule that allows the Helpdesk user group to run Registry Editor.

## Related topics

- [How AppLocker works](how-applocker-works-techref.md)
