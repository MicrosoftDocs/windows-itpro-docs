---
title: Enforce AppLocker rules
description: This article for IT professionals describes how to enforce application control rules by using AppLocker.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Enforce AppLocker rules

This article for IT professionals describes how to enforce application control rules by using AppLocker.

After AppLocker rules are created within the rule collection, you can configure the enforcement setting to **Enforce rules** or **Audit only** on the rule collection.

When AppLocker policy enforcement is set to **Enforce rules**, rules are enforced and events are logged to the AppLocker logs. When AppLocker policy enforcement is set to **Audit only**, rules are only evaluated but events generated from that evaluation are written to the AppLocker logs.

To enforce AppLocker rules by configuring an AppLocker policy to **Enforce rules**, see [Configure an AppLocker policy for enforce rules](configure-an-applocker-policy-for-enforce-rules.md).

> [!WARNING]
> AppLocker rules will be enforced immediately on the local device or when the Group Policy object (GPO) is updated by performing this procedure. If you want to see the effect of applying an AppLocker policy before setting the enforcement setting to **Enforce rules**, configure the policy to **Audit only**. For info about how to do this, see [Configure an AppLocker policy for audit only](configure-an-applocker-policy-for-audit-only.md)or [Test an AppLocker policy by Using Test-AppLockerPolicy](test-an-applocker-policy-by-using-test-applockerpolicy.md).
