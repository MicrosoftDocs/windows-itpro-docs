---
title: Determine the Group Policy structure and rule enforcement
description: This overview article describes the process to follow when you're planning to deploy AppLocker rules.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Determine the Group Policy structure and rule enforcement

This overview article describes the process to follow when you're planning to deploy AppLocker rules.

## In this section

| Article | Description |
| --- | --- |
| [Understand AppLocker enforcement settings](working-with-applocker-rules.md#enforcement-modes) | This article describes the AppLocker enforcement settings for rule collections. |
| [Understand AppLocker rules and enforcement setting inheritance in Group Policy](understand-applocker-rules-and-enforcement-setting-inheritance-in-group-policy.md) | This article for the IT professional describes how application control policies configured in AppLocker are applied through Group Policy.|
| [Document the Group Policy structure and AppLocker rule enforcement](document-group-policy-structure-and-applocker-rule-enforcement.md) | This planning article describes what you need to investigate, determine, and document for your policy plan when you use AppLocker. |

When determining how many Group Policy Objects (GPOs) to create for managing AppLocker policy in your organization, you should consider the following points:

- Whether you're creating new GPOs or using existing GPOs
- GPO naming conventions
- GPO size limits

> [!NOTE]
> There is no fixed limit on the number of AppLocker rules that you can create. However, GPOs have a 100 MB size limit.
