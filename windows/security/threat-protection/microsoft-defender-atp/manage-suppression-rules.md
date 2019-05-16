---
title: Manage Microsoft Defender Advanced Threat Protection suppression rules
description: Manage suppression rules 
keywords: manage suppression, rules, rule name, scope, action, alerts, turn on, turn off
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Manage suppression rules

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

There might be scenarios where you need to suppress alerts from appearing in the portal. You can create suppression rules for specific alerts that are known to be innocuous such as known tools or processes in your organization. For more information on how to suppress alerts, see [Suppress alerts](manage-alerts.md).

You can view a list of all the suppression rules and manage them in one place. You can also turn an alert suppression rule on or off.

## Turn a suppression rule on or off

1. In the navigation pane, select **Settings** > **Alert suppression**. The list of suppression rules that users in your organization have created is displayed.

2. Select a rule by clicking on the check-box beside the rule name.

3. Click **Turn rule on** or **Turn rule off**.

## View details of a suppression rule

1. In the navigation pane, select **Settings** > **Alert suppression**. The list of suppression rules that users in your organization have created is displayed.

2. Click on a rule name. Details of the rule is displayed. You'll see the rule details such as  status, scope, action, number of matching alerts, created by, and date when the rule was created. You can also view associated alerts and the rule conditions.

## Related topics

- [Manage alerts](manage-alerts.md)