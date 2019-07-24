---
title: Add rules for packaged apps to existing AppLocker rule-set (Windows 10)
description: This topic for IT professionals describes how to update your existing AppLocker policies for packaged apps using the Remote Server Administration Toolkit (RSAT).
ms.assetid: 758c2a9f-c2a3-418c-83bc-fd335a94097f
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

# Add rules for packaged apps to existing AppLocker rule-set

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for IT professionals describes how to update your existing AppLocker policies for packaged apps using the Remote Server Administration Toolkit (RSAT).

You can create packaged app rules for the computers running Windows Server 2012 or Windows 8 and later in your domain by updating your existing AppLocker rule set. All you need is a computer running at least Windows 8. Download and install the Remote Server Administration Toolkit (RSAT) from the Microsoft Download Center.

RSAT comes with the Group Policy Management Console which allows you to edit the GPO or GPOs where your existing AppLocker policy are authored. RSAT has the necessary files required to author packaged app rules. Packaged app rules will be ignored on computers running Windows 7 and earlier but will be enforced on those computers in your domain running at least Windows Server 2012 and Windows 8.
 
 
