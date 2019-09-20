---
title: Create custom detection rules in Microsoft Defender ATP
ms.reviewer: 
description: Learn how to create custom detections rules based on advanced hunting queries
keywords: create custom detections, detections, advanced hunting, hunt, detect, query
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


# Create custom detections rules
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Create custom detection rules from [Advanced hunting](overview-hunting.md) queries to automatically check for threat indicators and generate alerts whenever these indicators are found.

>[!NOTE]
>To create and manage custom detections, [your role](user-roles.md#create-roles-and-assign-the-role-to-an-azure-active-directory-group) needs to have the **manage security settings** permission.  For the detection rule to work properly and create alerts, the query must return in each row a set of MachineId, ReportId, EventTime which match to an actual event in advanced hunting.

1. In the navigation pane, select **Advanced hunting**.

2. Select an existing query that you'd like to base the monitor on or create a new query.

3. Select **Create detection rule**.

4. Specify the alert details:

    - Alert title
    - Severity
    - Category
    - Description
    - Recommended actions

5. Click **Create**.

> [!TIP]
> TIP #1: Running the query for the first time before saving it can help you find any mistakes or errors and give you a preview of the data you can expect to be returned.<br>
> When a new detection rule is created, it will run for the first time (it might take a few minutes) and raise any alerts created by this rule. After that, the rule will automatically run every 24 hours. <br>
> TIP #2: Since the detection automatically runs every 24 hours, it's best to query data in the last 24 hours.

## Manage existing custom detection rules
View existing rules in your network, see the last results of each rule, navigate to view all alerts that were created by each rule. You can also modify existing rules.

1. In the navigation pane, select **Settings** > **Custom detections**. You'll see all the detections  created in the system.

2. Select one of the rules to take any of the following actions:
   - Open related alerts - See all the alerts that were raised based to this rule
   - Run - Run the selected detection immediately. 

   > [!NOTE]
   > The next run for the query will be in 24 hours after the last run.
    
   - Edit - Modify the settings of the rule.
   - Modify query - View and edit the query itself. 
   - Turn off - Stop the query from running.
   - Delete


## Related topic
- [Custom detections overview](overview-custom-detections.md)
