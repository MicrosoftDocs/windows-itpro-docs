---
title: Import an AppLocker policy from another computer
description: This article for IT professionals describes how to import an AppLocker policy.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Import an AppLocker policy from another computer

This article for IT professionals describes how to import an AppLocker policy.

Before completing this procedure, export an AppLocker policy. For more information, see [Export an AppLocker policy to an XML file](export-an-applocker-policy-to-an-xml-file.md).

Membership in the local **Administrators** group, or equivalent, is the minimum required to complete this procedure.

> [!WARNING]
> Importing a policy will overwrite the existing local policy on that computer.

## To import an AppLocker policy

1. From the AppLocker console, right-click **AppLocker**, and then select **Import Policy**.
2. In the **Import Policy** dialog box, locate the file that you exported, and then select **Open**.
3. The **Import Policy** dialog box warns you that importing a policy overwrites the existing rules and enforcement settings. If acceptable, select **OK** to import and overwrite the policy.
4. The **AppLocker** dialog box notifies you of how many rules were overwritten and imported. Select **OK**.
