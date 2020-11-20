---
title: Advanced hunting limits in Microsoft Defender ATP
description: Understand various service limits that keep the advanced hunting service responsive
keywords: advanced hunting, threat hunting, cyber threat hunting, mdatp, microsoft defender atp, wdatp, search, query, telemetry, schema, kusto, CPU limit, query limit, resources, maximum results
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

# Advanced hunting service limits

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-advancedhunting-abovefoldlink)

To keep the service performant and responsive, advanced hunting sets various limits for queries run manually and by [custom detection rules](custom-detection-rules.md). Refer to the following table to understand these limits.

| Limit | Size | Refresh cycle | Description |
|--|--|--|--|
| Data range | 30 days | Every query | Each query can look up data from up to the past 30 days. |
| Result set | 10,000 rows | Every query | Each query can return up to 10,000 records. |
| Timeout | 10 minutes | Every query | Each query can run for up to 10 minutes. If it does not complete within 10 minutes, the service displays an error.
| CPU resources | Based on tenant size | - On the hour and then every 15 minutes<br>- Daily at 12 midnight | The service enforces the daily and the 15-minute limit separately. For each limit, the [portal displays an error](advanced-hunting-errors.md) whenever a query runs and the tenant has consumed over 10% of allocated resources. Queries are blocked if the tenant has reached 100% until after the next daily or 15-minute cycle. |

>[!NOTE] 
>A separate set of limits apply to advanced hunting queries performed through the API. [Read about advanced hunting APIs](run-advanced-query-api.md)

Customers who run multiple queries regularly should track consumption and [apply optimization best practices](advanced-hunting-best-practices.md) to minimize disruption resulting from exceeding these limits.

## Related topics

- [Advanced hunting best practices](advanced-hunting-best-practices.md)
- [Handle advanced hunting errors](advanced-hunting-errors.md)
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Custom detections rules](custom-detection-rules.md)
