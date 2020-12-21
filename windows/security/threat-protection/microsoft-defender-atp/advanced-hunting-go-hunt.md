---
title: Get relevant info about an entity with go hunt 
description: Learn how to use the "go hunt" tool to quickly query for relevant information about an entity or event using advanced hunting.
keywords: advanced hunting, incident, pivot, entity, go hunt, relevant events, threat hunting, cyber threat hunting, search, query, telemetry, Microsoft Threat Protection
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: v-maave
author: martyav
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Quickly hunt for entity or event information with go hunt

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

- [Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

With the *go hunt* action, you can quickly investigate events and various entity types using powerful query-based [advanced hunting](advanced-hunting-overview.md) capabilities. This action automatically runs an advanced hunting query to find relevant information about the selected event or entity.

The *go hunt* action is available in various sections of the security center whenever event or entity details are displayed. For example, you can use *go hunt* from the following sections:

- In the [incident page](investigate-incidents.md), you can review details about users, devices, and many other entities associated with an incident. When you select an entity, you get additional information as well as various actions you could take on that entity. In the example below, a device is selected, showing details about the device as well the option to hunt for more information about the device.

    ![Image showing device details with the go hunt option](./images/go-hunt-device.png)

- In the incident page, you can also access a list of entities under the evidence tab. Selecting one of those entities provides an option to quickly hunt for information about that entity.

    ![Image showing selected url with the go hunt option in the Evidence tab](./images/go-hunt-evidence-url.png)

- When viewing the timeline for a device, you can select an event in the timeline to view additional information about that event. Once an event is selected, you get the option to hunt for other relevant events in advanced hunting.

    ![Image showing event details with the go hunt option](./images/go-hunt-event.png)

Selecting **Go hunt** or **Hunt for related events** passes different queries, depending on whether you've selected an entity or an event.

## Query for entity information

When using *go hunt* to query for information about a user, device, or any other type of entity, the query checks all relevant schema tables for any events involving that entity. To keep the results manageable, the query is scoped to around the same time period as the earliest activity in the past 30 days that involves the entity and is associated with the incident.

Here is an example of the go hunt query for a device:

```kusto
let selectedTimestamp = datetime(2020-06-02T02:06:47.1167157Z);
let deviceName = "fv-az770.example.com";
let deviceId = "device-guid";
search in (DeviceLogonEvents, DeviceProcessEvents, DeviceNetworkEvents, DeviceFileEvents, DeviceRegistryEvents, DeviceImageLoadEvents, DeviceEvents, DeviceImageLoadEvents, IdentityLogonEvents, IdentityQueryEvents)
Timestamp between ((selectedTimestamp - 1h) .. (selectedTimestamp + 1h))
and DeviceName == deviceName
// or RemoteDeviceName == deviceName
// or DeviceId == deviceId
| take 100
```

### Supported entity types

You can use *go hunt* after selecting any of these entity types:

- Files
- Users
- Devices
- IP addresses
- URLs

## Query for event information

When using *go hunt* to query for information about a timeline event, the query checks all relevant schema tables for other events around the time of the selected event. For example, the following query lists events in various schema tables that occurred around the same time period on the same device:

```kusto
// List relevant events 30 minutes before and after selected RegistryValueSet event
let selectedEventTimestamp = datetime(2020-10-06T21:40:25.3466868Z);
search in (DeviceFileEvents, DeviceProcessEvents, DeviceEvents, DeviceRegistryEvents, DeviceNetworkEvents, DeviceImageLoadEvents, DeviceLogonEvents)
    Timestamp between ((selectedEventTimestamp - 30m) .. (selectedEventTimestamp + 30m))
    and DeviceId == "a305b52049c4658ec63ae8b55becfe5954c654a4"
| sort by Timestamp desc
| extend Relevance = iff(Timestamp == selectedEventTimestamp, "Selected event", iff(Timestamp < selectedEventTimestamp, "Earlier event", "Later event"))
| project-reorder Relevance
```

## Adjust the query

With some knowledge of the [query language](advanced-hunting-query-language.md), you can adjust the query to your preference. For example, you can adjust this line, which determines the size of the time window:

```kusto
Timestamp between ((selectedTimestamp - 1h) .. (selectedTimestamp + 1h))
```

In addition to modifying the query to get more relevant results, you can also:

- [View the results as charts](advanced-hunting-query-results.md#view-query-results-as-a-table-or-chart)
- [Create a custom detection rule](custom-detection-rules.md)

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Custom detection rules](custom-detection-rules.md)
