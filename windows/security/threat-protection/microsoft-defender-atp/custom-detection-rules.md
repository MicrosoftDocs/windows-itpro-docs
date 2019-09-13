---
title: Create and manage custom detection rules in Microsoft Defender ATP
ms.reviewer: 
description: Learn how to create custom detections rules based on advanced hunting queries
keywords: custom detections, create, alerts, detection rules, advanced hunting, hunt, query, response actions, mdatp, microsoft defender atp
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---


# Create and manage custom detections rules
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Custom detection rules built from [Advanced hunting](overview-hunting.md) queries let you proactively monitor various events and system states, including suspected breach activity and misconfigured machines. You can set them to run at regular intervals, generating alerts and taking response actions whenever there are matches.

>[!NOTE]
>To create and manage custom detections, [your role](user-roles.md#create-roles-and-assign-the-role-to-an-azure-active-directory-group) needs to have the **manage security settings** permission.  

## Create a custom detection rule
### 1. Prepare the query

In Microsoft Defender Security Center, go to **Advanced hunting** and select an existing query or create a new query. When using an new query, run the query to identify errors and understand possible results.

>[!NOTE]
>To use a query for a custom detection rule, the query must return the `EventTime`, `MachineId`, and `ReportId` columns in the results. Queries that don’t `project` results will usually return these common columns.

### 2. Create new rule and provide alert details 

With the query in the query editor, select **Create detection rule** and specify the following alert details:

- **Alert title**
- **Severity**
- **Frequency** (see additional guidance below)
- **Category**
- **Description**
- **Recommended actions**

For more information about these alert details, [read about managing alerts](manage-alerts.md).

#### Rule frequency
When saved, custom detections rules immediately run. They then run again at fixed intervals based on the frequency you choose. Rules that run less frequently will have longer lookback durations.

- **Every 24 hours** — checks data from the past 30 days
- **Every 12 hours** — checks data from the past 24 hours
- **Every 3 hours** — checks data from the past 6 hours
- **Every hour** — checks data from the past 2 hours

Similar detections on the same machine could be aggregated into fewer alerts, so running a rule less frequently can generate fewer alerts. Select the frequency that matches how closely you want to monitor detections and your organization's capacity to respond to the alerts.

### 3. Specify actions on files or machines
Your custom detection rule can automatically take actions on files or machines that are returned by the query.

#### Actions on machines
These actions are automatically applied to machines in the `MachineId` column in the query results:
- **Isolate machine** — prevent the machine from connecting to the network. [Learn more about machine isolation](respond-machine-alerts.md#isolate-machines-from-the-network)
- **Collect investigation package** — collects machine information in a ZIP file. [Learn more about the investigation package](respond-machine-alerts.md#collect-investigation-package-from-machines)
- **Run antivirus scan** — perform a full Windows Defender Antivirus scan on the machine
- **Initiate investigation** — initiate an [automated investigation](automated-investigations.md) on the machine

#### Actions on files
Select one or more actions to automatically apply to files in the `SHA1` or the `InitiatingProcessSHA1` column in query results:
- **Allow/Block** — automatically adds the file to your [custom indicator list](manage-indicators.md) so that it is always allowed or blocked from running. You can set the scope of this action so that it is taken only on selected machine groups. This scope is independent of the scope of the rule.
- **Quarantine file** — deletes the file from its current location and places a copy in quarantine

### 4. Click **Create** to save and turn on the rule.

## Manage existing custom detection rules
View your existing detection rules and check their results to assess how effective they have been. You can also run a rule on demand and modify it.

1. In the navigation pane, select **Settings** > **Custom detections** to see all the detection rules.

2. Select one of the rules to take any of the following actions:
   - **Open detection rule page** — see all rule details, including all the alerts that were triggered and actions taken
   - **Run** — run the rule immediately. This resets the interval for the next run.
   - **Edit** — modify the rule without changing the query
   - **Modify query** - open the query in Advanced hunting to edit it 
   - **Turn on** / **Turn off** - enable the rule or stop it from running
   - **Delete**

   >[!TIP]
   >You can also take these actions from the detection rule page.  

## Related topic
- [Custom detections overview](overview-custom-detections.md)
