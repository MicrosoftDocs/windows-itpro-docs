---
title: Configure an AppLocker policy for enforce rules
description: This article for IT professionals describes the steps to enable the AppLocker policy enforcement setting.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Configure an AppLocker policy for enforce rules

This article for IT professionals describes the steps to enable the AppLocker policy enforcement mode setting.

> [!NOTE]
> When AppLocker policy enforcement is set to **Enforce rules**, rules are enforced for the rule collection and all events are logged to the AppLocker event logs.

For info about how AppLocker policies are applied within a GPO structure, see [Understand AppLocker rules and enforcement setting inheritance in Group Policy](understand-applocker-rules-and-enforcement-setting-inheritance-in-group-policy.md).

To manage an AppLocker policy in a Group Policy Object (GPO), you can perform this task by using the Group Policy Management Console. To manage an AppLocker policy for the local computer or for use in a security template, use the Local Security Policy snap-in. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#using-the-mmc-snap-ins-to-administer-applocker).

## To enable the Enforce rules enforcement setting

1. From the AppLocker console, right-click **AppLocker**, and then select **Properties**.
2. On the **Enforcement** tab of the **AppLocker Properties** dialog box, select the **Configured** check box for the rule collection that you're editing, and then verify that **Enforce rules** is selected.
3. Select **OK**.

For info about viewing the events generated from rules enforcement, see [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md).
