---
title: Enforce AppLocker rules (Windows 10)
description: This topic for IT professionals describes how to enforce application control rules by using AppLocker.
ms.assetid: e1528b7b-77f2-4419-8e27-c9cc3721d96d
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

# Enforce AppLocker rules

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for IT professionals describes how to enforce application control rules by using AppLocker.

After AppLocker rules are created within the rule collection, you can configure the enforcement setting to **Enforce rules** or **Audit only** on the rule collection.

When AppLocker policy enforcement is set to **Enforce rules**, rules are enforced for the rule collection and all events are audited. When AppLocker policy enforcement is set to **Audit only**, rules are only evaluated but all events generated from that evaluation are written to the AppLocker log.

There is no audit mode for the DLL rule collection. DLL rules affect specific apps. Therefore, test the impact of these rules first before deploying them to production.

To enforce AppLocker rules by configuring an AppLocker policy to **Enforce rules**, see [Configure an AppLocker policy for enforce rules](configure-an-applocker-policy-for-enforce-rules.md).

>**Caution:**  AppLocker rules will be enforced immediately on the local device or when the Group Policy object (GPO) is updated by performing this procedure. If you want to see the effect of applying an AppLocker policy before setting the enforcement setting to **Enforce rules**, configure the policy to **Audit only**. For info about how to do this, see [Configure an AppLocker policy for audit only](configure-an-applocker-policy-for-audit-only.md)or [Test an AppLocker policy by Using Test-AppLockerPolicy](test-an-applocker-policy-by-using-test-applockerpolicy.md).
 
 
 
