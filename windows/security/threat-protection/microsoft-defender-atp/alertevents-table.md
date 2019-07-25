---
title: AlertEvents
description: Learn about Advanced hunting table AlertEvents, such as column names, data types, and description
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics, column name, data type, description, alertevent
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-maave
author: martyav
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 07/24/2019
---

# AlertEvents

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

## Table description

AlertEvents is a table in the Advanced hunting schema, which contains information about events on Microsoft Defender Security Center. You can use the reference below to construct queries that return information from this table.

## Advanced hunting column reference

| Column name | Data type | Description |
|-------------|-----------|-------------|
| AlertId | string | Unique identifier for the alert |
| EventTime | datetime | Date and time when the event was recorded |
| MachineId | string | Unique identifier for the machine in the service |
| ComputerName | string | Fully qualified domain name (FQDN) of the machine |
| Severity | string | Indicates the potential impact (high, medium, or low) of the threat indicator or breach activity identified by the alert |
| Category | string | Type of threat indicator or breach activity identified by the alert |
| Title | string | Title of the alert |
| FileName | string | Name of the file that the recorded action was applied to |
| SHA1 | string | SHA-1 of the file that the recorded action was applied to |
| RemoteUrl | string | URL or fully qualified domain name (FQDN) that was being connected to |
| RemoteIP | string | IP address that was being connected to |
|ReportId | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the ComputerName and EventTime columns |
| Table | string | Table that contains the details of the event |

## Related topics

- [All Advanced hunting tables](advanced-hunting-reference.md)
- [Advanced hunting query best practices](advanced-hunting-best-practices.md)
- [Query data using Advanced hunting](advanced-hunting.md)
