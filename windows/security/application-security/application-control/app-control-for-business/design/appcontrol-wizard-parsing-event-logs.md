---
title: App Control for Business Wizard App Control Event Parsing
description: Creating App Control policy rules from the App Control event logs and the MDE Advanced Hunting App Control events.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Creating App Control Policy Rules from App Control Events in the Wizard

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

As of [version 2.2.0.0](https://webapp-wdac-wizard.azurewebsites.net/archives.html), the App Control Wizard supports creating App Control policy rules from the following event log types:

1. [App Control event log events on the system](#app-control-event-viewer-log-parsing)
2. [Exported App Control events (EVTX files) from any system](#app-control-event-log-file-parsing)
3. [Exported App Control events from MDE Advanced Hunting](#mde-advanced-hunting-app-control-event-parsing)

## App Control Event Viewer Log Parsing

To create rules from the App Control event logs on the system:

1. Select **Policy Editor** from the main page.
2. Select **Convert Event Log to an App Control Policy**.
3. Select the **Parse Event Logs** button under the **Parse Event Logs from the System Event Viewer to Policy** header.

   The Wizard parses the relevant audit and block events from the CodeIntegrity (App Control) Operational and AppLocker MSI and Script logs. You see a notification when the Wizard successfully finishes reading the events.

   :::image type="content" alt-text="Parse App Control and AppLocker event log system events." source="../images/appcontrol-wizard-event-log-system.png" lightbox="../images/appcontrol-wizard-event-log-system.png":::

4. Select the Next button to view the audit and block events and create rules.
5. [Generate rules from the events](#creating-policy-rules-from-the-events).

## App Control Event Log File Parsing

To create rules from the App Control `.EVTX` event logs files on the system:

1. Select **Policy Editor** from the main page.
2. Select **Convert Event Log to an App Control Policy**.
3. Select the **Parse Log File(s)** button under the **Parse Event Log evtx Files to Policy** header.
4. Select the App Control CodeIntegrity Event log EVTX file(s) from the disk to parse.

   The Wizard parses the relevant audit and block events from the selected log files. You see a notification when the Wizard successfully finishes reading the events.

   :::image type="content" alt-text="Parse evtx file App Control events" source="../images/appcontrol-wizard-event-log-files.png" lightbox="../images/appcontrol-wizard-event-log-files.png":::

5. Select the Next button to view the audit and block events and create rules.
6. [Generate rules from the events](#creating-policy-rules-from-the-events).

## MDE Advanced Hunting App Control Event Parsing

To create rules from the App Control events in [MDE Advanced Hunting](../operations/querying-application-control-events-centrally-using-advanced-hunting.md):

1. Navigate to the Advanced Hunting section within the MDE console and query the App Control events. **The Wizard requires the following fields** in the Advanced Hunting csv file export:

   ```kusto
   | project-keep Timestamp, DeviceId, DeviceName, ActionType, FileName, FolderPath, SHA1, SHA256, IssuerName, IssuerTBSHash, PublisherName, PublisherTBSHash, AuthenticodeHash, PolicyId, PolicyName
   ```

   The following Advanced Hunting query is recommended:

   ```kusto
   DeviceEvents
   // Take only App Control events
   | where ActionType startswith 'AppControlCodeIntegrity'
   // SigningInfo Fields
   | extend IssuerName = parsejson(AdditionalFields).IssuerName
   | extend IssuerTBSHash = parsejson(AdditionalFields).IssuerTBSHash
   | extend PublisherName = parsejson(AdditionalFields).PublisherName
   | extend PublisherTBSHash = parsejson(AdditionalFields).PublisherTBSHash
   // Audit/Block Fields
   | extend AuthenticodeHash = parsejson(AdditionalFields).AuthenticodeHash
   | extend PolicyId = parsejson(AdditionalFields).PolicyID
   | extend PolicyName = parsejson(AdditionalFields).PolicyName
   // Keep only required fields for the App Control Wizard
   | project-keep Timestamp,DeviceId,DeviceName,ActionType,FileName,FolderPath,SHA1,SHA256,IssuerName,IssuerTBSHash,PublisherName,PublisherTBSHash,AuthenticodeHash,PolicyId,PolicyName
   ```

2. Export the App Control event results by selecting the **Export** button in the results view.

   :::image type="content" alt-text="Export the MDE Advanced Hunting results to CSV" source="../images/appcontrol-wizard-event-log-mde-ah-export.png" lightbox="../images/appcontrol-wizard-event-log-mde-ah-export.png":::

3. Select **Policy Editor** from the main page.
4. Select **Convert Event Log to an App Control Policy**.
5. Select the **Parse Log File(s)** button under the "Parse MDE Advanced Hunting Events to Policy" header.
6. Select the App Control MDE Advanced Hunting export CSV files from the disk to parse.

   The Wizard will parse the relevant audit and block events from the selected Advanced Hunting log files. You see a notification when the Wizard successfully finishes reading the events.

   :::image type="content" alt-text="Parse the Advanced Hunting CSV App Control event files." source="../images/appcontrol-wizard-event-log-mde-ah-parsing.png" lightbox="../images/appcontrol-wizard-event-log-mde-ah-parsing.png":::

7. Select the Next button to view the audit and block events and create rules.
8. [Generate rules from the events](#creating-policy-rules-from-the-events).

## Creating Policy Rules from the Events

On the "Configure Event Log Rules" page, the unique App Control log events are shown in the table. Event Ids, filenames, product names, the policy name that audited or blocked the file, and the file publisher are all shown in the table. The table can be sorted alphabetically by clicking on any of the headers.

To create a rule and add it to the App Control policy:

1. Select an audit or block event in the table by selecting the row of interest.
2. Select a rule type from the dropdown. The Wizard supports creating Publisher, Path, File Attribute, Packaged App and Hash rules.
3. Select the attributes and fields that should be added to the policy rules using the checkboxes provided for the rule type.
4. Select the **Add Allow Rule** button to add the configured rule to the policy generated by the Wizard. The "Added to policy" label is shown in the selected row confirming that the rule will be generated.

   :::image type="content" alt-text="Adding a publisher rule to the App Control policy" source="../images/appcontrol-wizard-event-rule-creation.png" lightbox="../images/appcontrol-wizard-event-rule-creation.png":::

5. Select the **Next** button to output the policy. Once generated, the event log policy should be merged with your base or supplemental policies.

> [!WARNING]
> It is not recommended to deploy the event log policy on its own, as it likely lacks rules to authorize Windows and may cause blue screens.

## Up next

- [Merging App Control for Business policies using the Wizard](appcontrol-wizard-merging-policies.md)
