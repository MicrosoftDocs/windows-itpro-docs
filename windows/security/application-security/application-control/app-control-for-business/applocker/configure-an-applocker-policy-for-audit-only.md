---
title: Configure an AppLocker policy for audit only
description: This article for IT professionals describes how to set AppLocker policies to Audit only within your IT environment by using AppLocker.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Configure an AppLocker policy for audit only

This article for IT professionals describes how to set AppLocker policies to **Audit only** within your IT environment by using AppLocker.

After AppLocker rules are created within the rule collection, you can configure the enforcement mode setting to **Enforce rules** or **Audit only**.

When AppLocker policy enforcement mode is set to **Enforce rules**, rules are enforced for the rule collection and all events are logged to the AppLocker event logs for that rule collection. When AppLocker policy enforcement mode is set to **Audit only**, rules are only evaluated but all events generated from that evaluation are written to the AppLocker event logs.

To manage an AppLocker policy in a Group Policy Object (GPO), you can perform this task by using the Group Policy Management Console. To manage an AppLocker policy for the local computer or for use in a security template, use the Local Security Policy snap-in. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#using-the-mmc-snap-ins-to-administer-applocker).

## To audit rule collections

1. From the AppLocker console, right-click **AppLocker**, and then select **Properties**.
2. On the **Enforcement** tab, select the **Configured** check box for the rule collection that you want to enforce, and then verify that **Audit only** is selected in the list for that rule collection.
3. Repeat the above step to configure the enforcement setting to **Audit only** for other rule collections.
4. Select **OK**.
