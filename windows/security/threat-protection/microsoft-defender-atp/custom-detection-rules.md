---
title: Create and manage custom detection rules in Microsoft Defender ATP
ms.reviewer: 
description: Learn how to create and manage custom detection rules based on advanced hunting queries
keywords: custom detections, create, manage, alerts, edit, run on demand, frequency, interval, detection rules, advanced hunting, hunt, query, response actions, mdatp, microsoft defender atp
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


# Create and manage custom detection rules
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Custom detection rules built from [Advanced hunting](advanced-hunting-overview.md) queries let you proactively monitor various events and system states, including suspected breach activity and misconfigured devices. You can set them to run at regular intervals, generating alerts and taking response actions whenever there are matches.

> [!NOTE]
> To create and manage custom detections, [your role](user-roles.md#create-roles-and-assign-the-role-to-an-azure-active-directory-group) needs to have the **manage security settings** permission.

## Create a custom detection rule
### 1. Prepare the query.

In Microsoft Defender Security Center, go to **Advanced hunting** and select an existing query or create a new query. When using an new query, run the query to identify errors and understand possible results.

#### Required columns in the query results
To use a query for a custom detection rule, the query must return the `Timestamp`, `DeviceId`, and `ReportId` columns in the results. Simple queries, such as those that don't use the `project` or `summarize` operator to customize or aggregate results, typically return these common columns.

There are various ways to ensure more complex queries return these columns. For example, if you prefer to aggregate and count by `DeviceId`, you can still return `Timestamp` and `ReportId` by getting them from the most recent event involving each device. 

The sample query below counts the number of unique devices (`DeviceId`) with antivirus detections and uses this count to find only the devices with more than five detections. To return the latest `Timestamp` and the corresponding `ReportId`, it uses the `summarize` operator with the `arg_max` function.

```kusto
DeviceEvents
| where Timestamp > ago(7d)
| where ActionType == "AntivirusDetection"
| summarize (Timestamp, ReportId)=arg_max(Timestamp, ReportId), count() by DeviceId
| where count_ > 5
```

### 2. Create new rule and provide alert details.

With the query in the query editor, select **Create detection rule** and specify the following alert details:

- **Detection name** — name of the detection rule
- **Frequency** — interval for running the query and taking action. [See additional guidance below](#rule-frequency)
- **Alert title** — title displayed with alerts triggered by the rule
- **Severity** — potential risk of the component or activity identified by the rule. [Read about alert severities](alerts-queue.md#severity)
- **Category** — type of threat component or activity, if any. [Read about alert categories](alerts-queue.md#understanding-alert-categories)
- **Description** — more information about the component or activity identified by the rule 
- **Recommended actions** — additional actions that responders might take in response to an alert 

For more information about how alert details are displayed, [read about the alert queue](alerts-queue.md).

#### Rule frequency
When saved, a new or edited custom detection rule immediately runs and checks for matches from the past 30 days of data. The rule then runs again at fixed intervals and lookback durations based on the frequency you choose:

- **Every 24 hours** — runs every 24 hours, checking data from the past 30 days
- **Every 12 hours** — runs every 12 hours, checking data from the past 24 hours
- **Every 3 hours** — runs every 3 hours, checking data from the past 6 hours
- **Every hour** — runs hourly, checking data from the past 2 hours

Select the frequency that matches how closely you want to monitor detections, and consider your organization's capacity to respond to the alerts.

### 3. Specify actions on files or devices.
Your custom detection rule can automatically take actions on files or devices that are returned by the query.

#### Actions on devices
These actions are applied to devices in the `DeviceId` column of the query results:
- **Isolate device** — applies full network isolation, preventing the device from connecting to any application or service, except for the Microsoft Defender ATP service. [Learn more about device isolation](respond-machine-alerts.md#isolate-devices-from-the-network)
- **Collect investigation package** — collects device information in a ZIP file. [Learn more about the investigation package](respond-machine-alerts.md#collect-investigation-package-from-devices)
- **Run antivirus scan** — performs a full Microsoft Defender Antivirus scan on the device
- **Initiate investigation** — initiates an [automated investigation](automated-investigations.md) on the device

#### Actions on files
These actions are applied to files in the `SHA1` or the `InitiatingProcessSHA1` column of the query results:
- **Allow/Block** — automatically adds the file to your [custom indicator list](manage-indicators.md) so that it is always allowed to run or blocked from running. You can set the scope of this action so that it is taken only on selected device groups. This scope is independent of the scope of the rule.
- **Quarantine file** — deletes the file from its current location and places a copy in quarantine

### 4. Click **Create** to save and turn on the rule.
After reviewing the rule, click **Create** to save it. The custom detection rule immediately runs. It runs again based on configured frequency to check for matches, generate alerts, and take response actions.

## Manage existing custom detection rules
In **Settings** > **Custom detections**, you can view the list of existing custom detection rules, check their previous runs, and review the alerts they have triggered. You can also run a rule on demand and modify it.

### View existing rules

To view all existing custom detection rules, navigate to **Settings** > **Custom detections**. The page lists all the rules with the following run information:

- **Last run** — when a rule was last run to check for query matches and generate alerts
- **Last run status** — whether a rule ran successfully
- **Next run** — the next scheduled run
- **Status** — whether a rule has been turned on or off

### View rule details, modify rule, and run rule

To view comprehensive information about a custom detection rule, select the name of rule from the list of rules in **Settings** > **Custom detections**. This opens a page about the custom detection rule with the following information:

- General information about the rule, including the details of the alert, run status, and scope
- List of triggered alerts
- List of triggered actions

![Custom detection rule page](images/atp-custom-detection-rule-details.png)<br>
*Custom detection rule page*

You can also take the following actions on the rule from this page:

- **Run** — run the rule immediately. This also resets the interval for the next run.
- **Edit** — modify the rule without changing the query
- **Modify query** — edit the query in advanced hunting
- **Turn on** / **Turn off** — enable the rule or stop it from running
- **Delete** — turn off the rule and remove it

>[!TIP]
>To quickly view information and take action on an item in a table, use the selection column [&#10003;] at the left of the table.

## Related topic
- [Custom detections overview](overview-custom-detections.md)
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the advanced hunting query language](advanced-hunting-query-language.md)
- [View and organize alerts](alerts-queue.md)
