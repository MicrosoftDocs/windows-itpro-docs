---
title: Optimize AppLocker performance
description: This article for IT professionals describes how to optimize AppLocker policy enforcement.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Optimize AppLocker performance

This article for IT professionals describes how to optimize AppLocker policy enforcement.

## Optimization of Group Policy

You can implement AppLocker policies by organization unit (OU) using Group Policy. When adding policies to Group Policy Objects (GPO), including AppLocker policies, you should retest and optimize for performance if needed.

For more info, see the [Optimizing Group Policy Performance](/previous-versions/technet-magazine/cc137720(v=msdn.10)) article in TechNet Magazine.

### AppLocker rule limitations

The more rules per GPO, the longer AppLocker requires for evaluation. Although there's no set limitation on the number of AppLocker rules per GPO, the size of your GPOs can vary based on the types of rules you create. For example, a policy consisting mainly of file hash rules requires many more rules than ones that use signature-based rules where possible.

### Using the DLL rule collection

When the DLL rule collection is enabled, AppLocker must check each DLL that an application loads. The more DLLs, the longer AppLocker requires to complete the evaluation.
