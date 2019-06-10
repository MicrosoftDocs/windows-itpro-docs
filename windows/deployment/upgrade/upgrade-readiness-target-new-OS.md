---
title: Upgrade Readiness - Targeting a new operating system version
ms.reviewer: 
manager: dansimp
ms.author: lomayor
description: Explains how to run Upgrade Readiness again to target a different operating system version or bulk-approve all apps from a given vendor
ms.prod: w10
author: lomayor
ms.topic: article
ms.collection: M365-analytics
---

# Targeting a new operating system version

After you've used Upgrade Readiness to help deploy a given version of Windows 10, you might want to use it again to help deploy a newer version of Windows 10. When you change the target operating system version (as described in [Use Upgrade Readiness to manage Windows upgrades](use-upgrade-readiness-to-manage-windows-upgrades.md#target-version)), the app states (Importance, AppOwner, UpgradeDecision, TestPlan, and TestResult) are not reset. Follow this guidance to preserve or reset these states as needed: 
 
## TestResults

If you want to preserve the TestResults from the previous operating system version testing, there is nothing you need to do.
 
If you want to reset them, click any of the rows in the **Prioritize Application** blade (described in [Upgrade Readiness - Step 1: Identify important apps](upgrade-readiness-identify-apps.md)). This will take you to the **Log Search** user experience. Replace the query in that window with the following query:
 
`search in (UAApp) IsRollup == true and RollupLevel == "Granular" and TestResult <> "Not started"`
 
After a short period of time, you will see the "user input" perspective render, which will let you bulk-edit the results. Select the check box in the table header, click the **bulk edit** button, and then set the **TestResult** to *Not started*. Leave all other fields as they are.
  
## UpgradeDecision
 
If you want to preserve the UpgradeDecision from the previous operating system version testing, there is nothing you need to do. 
 
If you want to reset them, keep these important points in mind:
 
- Make sure to *not* reset the **Ready to upgrade** decision for the "long tail" of apps that have importance of **Ignore** or **Low install count**. Doing this will make it extremely difficult to complete the Upgrade Readiness workflow.
- Decide which decisions to reset. For example, one option is just to reset the decisions marked **Ready to upgrade** (in order to retest those), while preserving states of apps marked **Won't upgrade**. Doing this means you won't lose track of this previous marking. Or you can reset everything.
 
To do this, type the following query in **Log Search**:
 
`search in (UAApp) IsRollup == true and RollupLevel == "Granular" and Importance <> "Ignore" and Importance <> "Low install count" and UpgradeDecision == "Ready to upgrade"` 

>[!NOTE]
>If you just want to reset all **UpgradeDecision** values, you can simply remove `'and UpgradeDecision == "Ready to upgrade"` from the query.

After a short period of time, you will see the "user input" perspective render, which will let you bulk-edit the results. Select the check box in the table header, click the **bulk edit** button, and then set the **UpgradeDecision** to *Not reviewed*. Leave all other fields as they are.
 
 
## Bulk-approving apps from a given vendor
 
You can bulk-approve all apps from a given vendor (for example, Microsoft) if there are no known compatibility issues. To do this, type the following query in **Log Search**:
 
`search in (UAApp) IsRollup == true and RollupLevel == "Granular" and AppVendor has "Microsoft" and UpgradeAssessment=="No known issues" and UpgradeDecision<>"Ready to upgrade"`
 
After a short period of time, you will see the "user input" perspective render, which will let you bulk-edit the results. Select the check box in the table header, click the **bulk edit" button**, and then set the **UpgradeDecision** to *Ready to upgrade*. Leave all other fields as they are.

## Related topics

[Windows Analytics overview](../update/windows-analytics-overview.md)

[Manage Windows upgrades with Upgrade Readiness](manage-windows-upgrades-with-upgrade-readiness.md)

[Get started with Upgrade Readiness](upgrade-readiness-get-started.md)

