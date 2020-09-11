---
title: Overview of advanced hunting in Microsoft Defender ATP
description: Use threat hunting capabilities in Microsoft Defender ATP to build queries that find threats and weaknesses in your network
keywords: advanced hunting, threat hunting, cyber threat hunting, mdatp, microsoft defender atp, wdatp, search, query, telemetry, custom detections, schema, kusto, time zone, UTC
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

# Proactively hunt for threats with advanced hunting

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-advancedhunting-abovefoldlink)

Advanced hunting is a query-based threat-hunting tool that lets you explore raw data for the last 30 days. You can proactively inspect events in your network to locate interesting indicators and entities. The flexible access to data facilitates unconstrained hunting for both known and potential threats.

Watch this video for a quick overview of advanced hunting and a short tutorial that will get you started fast.
<br />
<br />

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4bGqo]

You can use the same threat-hunting queries to build custom detection rules. These rules run automatically to check for and respond to various events and system states, including suspected breach activity and misconfigured devices.

## Get started with advanced hunting

Go through the following steps to ramp up your advanced hunting knowledge.

| Learning goal | Description | Resource |
|--|--|--|
| **Get a feel for the language** | Advanced hunting is based on the [Kusto query language](https://docs.microsoft.com/azure/kusto/query/), supporting the same syntax and operators. Start learning the query language by running your first query. | [Query language overview](advanced-hunting-query-language.md) |
| **Learn how to use the query results** | Learn about charts and various ways you can view or export your results. Explore how you can quickly tweak queries and drill down to get richer information. | [Work with query results](advanced-hunting-query-results.md) |
| **Understand the schema** | Get a good, high-level understanding of the tables in the schema and their columns. This will help you determine where to look for data and how to construct your queries. | [Schema reference](advanced-hunting-schema-reference.md) |
| **Use predefined queries** | Explore collections of predefined queries covering different threat hunting scenarios. | [Shared queries](advanced-hunting-shared-queries.md) |
| **Learn about custom detections** | Understand how you can use advanced hunting queries to trigger alerts and apply response actions automatically. | - [Custom detections overview](overview-custom-detections.md)<br>- [Custom detection rules](custom-detection-rules.md) |

## Data freshness and update frequency

Advanced hunting data can be categorized into two distinct types, each consolidated differently:

- **Event or activity data**—populates tables about alerts, security events, system events, and routine assessments. Advanced hunting receives this data almost immediately after the sensors that collect them successfully transmit them to Microsoft Defender ATP.
- **Entity data**—populates tables with consolidated information about users and devices. To provide fresh data, tables are updated every 15 minutes with any new information, adding rows that might not be fully populated. Every 24 hours, data is consolidated to insert a record that contains the latest, most comprehensive data set about each entity.

## Time zone

All time information in advanced hunting is currently in the UTC time zone.

## Related topics

- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Understand the schema](advanced-hunting-schema-reference.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Custom detections overview](overview-custom-detections.md)
