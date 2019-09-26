---
title: Overview of Advanced hunting
description: Hunt for possible threats across your organization using a powerful search and query tool
keywords: advanced hunting, hunting, search, query, tool, telemetry, custom detection, schema, kusto
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

# Proactively hunt for threats with Advanced hunting
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-advancedhunting-abovefoldlink)

Advanced hunting provides access to 30 days of raw data through a flexible query-based interface, allowing you to proactively explore events in your environment and locate interesting indicators and entities. This flexible access to data enables unconstrained hunting for both known and potential threats. 

With custom detection rules, you can also leverage Advanced hunting queries to proactively monitor for and respond to various events and system states, including suspected breach activity and misconfigured machines.

## Get started with Advanced hunting

We recommend going through several steps to quickly get up and running with Advanced hunting.

| Learning goal | Description | Resource |
|--|--|--|
| **Get a feel for the language** | Advanced hunting is based on the [Kusto query language](https://docs.microsoft.com/en-us/azure/kusto/query/) and thus supports the same syntax and operators. Start learning the query language by running your first query. | [Query language overview](advanced-hunting.md) |
| **Understand the schema** | Get a good, high-level understanding of the tables in the schema and their columns. This will help you determine where to look for data and how to construct your queries. | [Schema reference](advanced-hunting-reference.md) |
| **Use predefined queries** | Explore collections of predefined queries covering different threat hunting scenarios. | [Shared queries](advanced-hunting-shared-queries.md) |
| **Learn about custom detections** | Understand how you can use advanced hunting queries to trigger alerts and apply response actions automatically. | [Custom detections overview](overview-custom-detections.md) |  

## Get help as you write queries
Take advantage of the following functionality to write queries faster:
- **Autosuggest** — as you write queries, Advanced hunting provides suggestions.. 
- **Schema reference** — a schema reference that includes the list of tables and their columns is provided next to your working area. For more information, hover over an item. Double-click an item to insert it to the query editor.

## Drilldown from query results
To view more information about entities, such as machines, files, users, IP addresses, and URLs, in your query results, simply click the entity identifier. This opens a detailed profile page for the selected entity in Microsoft Defender Security Center.

## Tweak your queries from the results
Right-click a value in the result set to quickly enhance your query. You can use the options to:

- Explicitly look for the selected value (`==`)
- Exclude the selected value from the query (`!=`)
- Get more advanced operators for adding the value to your query, such as `contains`, `starts with` and `ends with` 

![Image of Microsoft Defender ATP Advanced hunting result set](images/atp-advanced-hunting-results-filter.png)

## Filter the query results
The filters displayed to the right provide a summary of the result set. Each column has its own section that lists the distinct values found for that column and the number of instances.

Refine your query by selecting the "+" or "-" buttons next to the values that you want to include or exclude.

![Image of Advanced hunting filter](images/atp-filter-advanced-hunting.png)

Once you apply the filter to modify the query and then run the query, the results are updated accordingly.

## Related topics
- [Learn the query language](advanced-hunting.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Understand the schema](advanced-hunting-reference.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Custom detections overview](overview-custom-detections.md)