---
title: Export an AppLocker policy from a GPO
description: This article for IT professionals describes the steps to export an AppLocker policy from a Group Policy Object (GPO) so that it can be modified.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Export an AppLocker policy from a GPO

This article for IT professionals describes the steps to export an AppLocker policy from a Group Policy Object (GPO) so that it can be modified.

Updating an AppLocker policy that is currently enforced in your production environment can have unintended results. Therefore, export the policy from the GPO and update the rule or rules on a test or reference device.

To complete this procedure, you must have the **Edit Setting** permission to edit a GPO. By default, members of the **Domain Admins** group, the **Enterprise Admins** group, and the **Group Policy Creator Owners** group have this permission.

## Export the policy from the GPO

1. In the Group Policy Management Console (GPMC), open the GPO that you want to edit.
2. In the console tree under **Computer Configuration\\Policies\\Windows Settings\\Security Settings\\Application Control Policies**, select **AppLocker**.
3. Right-click **AppLocker**, and then select **Export Policy**.
4. In the **Export Policy** dialog box, type a name for the exported policy (for example, the name of the GPO), select a location to save the policy, and then select **Save**.
5. The **AppLocker** dialog box notifies you of how many rules were exported. Select **OK**.
