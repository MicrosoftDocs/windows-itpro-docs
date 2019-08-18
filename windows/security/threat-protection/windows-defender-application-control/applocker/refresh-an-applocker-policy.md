---
title: Refresh an AppLocker policy (Windows 10)
description: This topic for IT professionals describes the steps to force an update for an AppLocker policy.
ms.assetid: 3f24fcbc-3926-46b9-a1a2-dd036edab8a9
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

# Refresh an AppLocker policy

**Applies to**
- Windows 10
- Windows Server

This topic for IT professionals describes the steps to force an update for an AppLocker policy.

If you update the rule collection on a local computer by using the Local Security Policy snap-in, the policy will take effect immediately. If Group Policy is used to distribute the AppLocker policy and you want to immediately implement the policy, you must manually refresh the policy. The Group Policy refresh might take several minutes, depending upon the number of policies within the Group Policy Object (GPO) and the number of target computers.

To use Group Policy to distribute the AppLocker policy change, you need to retrieve the deployed AppLocker policy first. To prepare for the update and subsequent refresh, see [Edit an AppLocker policy](edit-an-applocker-policy.md)

[Edit an AppLocker policy](edit-an-applocker-policy.md) and [Use the AppLocker Windows PowerShell cmdlets](use-the-applocker-windows-powershell-cmdlets.md).

To complete this procedure, you must have Edit Setting permission to edit a GPO. By default, members of the **Domain Admins** group, the **Enterprise Admins** group, and the **Group Policy Creator Owners** group have this permission.

**To manually refresh the AppLocker policy by using Group Policy**

1.  From a command prompt, type **gpupdate /force**, and then press ENTER.
2.  When the command finishes, close the command prompt window, and then verify that the intended rule behavior is correct. You can do this by checking the AppLocker event logs for events that include "policy applied."

To change a policy on an individual computer, or to implement that policy on other computers, without using Group Policy, you first need to update the rule within the rule collection. For information about updating existing rules, see [Edit AppLocker rules](edit-applocker-rules.md). For information 
about creating a new rule for an existing policy, see:
-   [Create a rule that uses a publisher condition](create-a-rule-that-uses-a-publisher-condition.md)
-   [Create a rule that uses a file hash condition](create-a-rule-that-uses-a-file-hash-condition.md)
-   [Create a rule that uses a path condition](create-a-rule-that-uses-a-path-condition.md)

Membership in the local **Administrators** group, or equivalent, is the minimum required to complete this procedure.

**To refresh the AppLocker policy on the local computer**

-   Update the rule collection by using the Local Security Policy console with one of the following procedures:

    -   [Edit AppLocker rules](edit-applocker-rules.md)
    -   [Delete an AppLocker rule](delete-an-applocker-rule.md)
    -   [Add exceptions for an AppLocker rule](configure-exceptions-for-an-applocker-rule.md)

When finished, the policy is in effect.

To make the same change on another device, you can use any of the following methods:

-   From the device that you made the change on, export the AppLocker policy, and then import the policy onto the other device. To do this, use the AppLocker **Export Policy** and **Import Policy** features to copy the rules from the changed computer.

    >**Caution:**  When importing rules from another computer, all the rules will be applied, not just the one that was updated. Merging policies allows both existing and updated (or new) rules to be applied.
     
-   Merge AppLocker policies. For procedures to do this, see [Merge AppLocker policies manually](merge-applocker-policies-manually.md) and [Merge AppLocker policies by using Set-ApplockerPolicy](merge-applocker-policies-by-using-set-applockerpolicy.md).
