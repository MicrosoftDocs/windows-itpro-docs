---
title: Handle errors in advanced hunting for Microsoft Threat Protection
description: Understand errors displayed when using advanced hunting
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema, kusto, timeout, resources, errors, unknown error
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

# Handle advanced hunting errors

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-advancedhunting-abovefoldlink)


Advanced hunting displays errors to notify for syntax mistakes and whenever queries hit [predefined limits](advanced-hunting-limits.md). Refer to the table below for tips on how to resolve or avoid errors. 

| Error type | Cause | Resolution | Error message examples |
|--|--|--|--|
| Syntax errors | The query contains unrecognized names, including references to nonexistent operators, columns, functions, or tables. | Ensure references to [Kusto operators and functions](https://docs.microsoft.com/azure/data-explorer/kusto/query/) are correct. Check [the schema](advanced-hunting-schema-reference.md) for the correct advanced hunting columns, functions, and tables. Enclose variable strings in quotes so they are recognized. While writing your queries, use the autocomplete suggestions from IntelliSense. | `A recognition error occurred.` |
| Semantic errors | While the query uses valid operator, column, function, or table names, there are errors in its structure and resulting logic. In some cases, advanced hunting identifies the specific operator that caused the error. | Check for errors in the structure of query. Refer to [Kusto documentation](https://docs.microsoft.com/azure/data-explorer/kusto/query/) for guidance. While writing your queries, use the autocomplete suggestions from IntelliSense. |  `'project' operator: Failed to resolve scalar expression named 'x'`|
| Timeouts | A query can only run within a [limited period before timing out](advanced-hunting-limits.md). This error can happen more frequently when running complex queries. | [Optimize the query](advanced-hunting-best-practices.md) | `Query exceeded the timeout period.` |
| CPU throttling | Queries in the same tenant have exceeded the [CPU resources](advanced-hunting-limits.md) that have been allocated based on tenant size. | The service checks CPU resource usage every 15 minutes and daily and displays warnings after usage exceeds 10% of the allocated limit. If you reach 100% utilization, the service blocks queries until after the next daily or 15-minute cycle. [Optimize your queries to avoid hitting CPU limits](advanced-hunting-best-practices.md) | - `This query used X% of your organization's allocated resources for the current 15 minutes.`<br>- `You have exceeded processing resources allocated to this tenant. You can run queries again in <duration>.` |
| Result size limit exceeded  | The aggregate size of the result set for the query has exceeded the maximum limit. This error can occur if the result set is so large that truncation at the 10,000-record limit can't reduce it to an acceptable size. Results that have multiple columns with sizable content are more likely to be impacted by this error. | [Optimize the query](advanced-hunting-best-practices.md) | `Result size limit exceeded. Use "summarize" to aggregate results, "project" to drop uninteresting columns, or "take" to truncate results.` |
| Excessive resource consumption | The query has consumed excessive amounts of resources and has been stopped from completing. In some cases, advanced hunting identifies the specific operator that wasn't optimized. | [Optimize the query](advanced-hunting-best-practices.md) | -`Query stopped due to excessive resource consumption.`<br>-`Query stopped. Adjust use of the <operator name> operator to avoid excessive resource consumption.` |
| Unknown errors | The query failed because of an unknown reason. | Try running the query again. Contact Microsoft through the portal if queries continue to return unknown errors. | `An unexpected error occurred during query execution. Please try again in a few minutes.`

## Related topics
- [Advanced hunting best practices](advanced-hunting-best-practices.md)
- [Service limits](advanced-hunting-limits.md)
- [Understand the schema](advanced-hunting-schema-reference.md)
- [Kusto Query Language overview](https://docs.microsoft.com/azure/data-explorer/kusto/query/)