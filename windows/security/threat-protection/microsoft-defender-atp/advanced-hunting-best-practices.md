---
title: Query best practices for advanced hunting
description: Learn how to construct fast, efficient, and error-free threat hunting queries when using advanced hunting
keywords: advanced hunting, threat hunting, cyber threat hunting, mdatp, microsoft defender atp, wdatp search, query, telemetry, custom detections, schema, kusto, avoid timeout, command lines, process id
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

# Advanced hunting query best practices

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-bestpractices-abovefoldlink)

## Optimize query performance
Apply these recommendations to get results faster and avoid timeouts while running complex queries. 
- When trying new queries, always use `limit` to avoid extremely large result sets. You can also initially assess the size of the result set using `count`.
- Use time filters first. Ideally, limit your queries to seven days.
- Put filters that are expected to remove most of the data in the beginning of the query, right after the time filter.
- Use the `has` operator over `contains` when looking for full tokens.
- Look in a specific column rather than running full text searches across all columns.
- When joining tables, specify the table with fewer rows first.
- `project` only the necessary columns from tables you've joined.

>[!TIP]
>For more guidance on improving query performance, read [Kusto query best practices](https://docs.microsoft.com/azure/kusto/query/best-practices).

## Query tips and pitfalls

### Queries with process IDs
Process IDs (PIDs) are recycled in Windows and reused for new processes. On their own, they can't serve as unique identifiers for specific processes. To get a unique identifier for a process on a specific device, use the process ID together with the process creation time. When you join or summarize data around processes, include columns for the device identifier (either `DeviceId` or `DeviceName`), the process ID (`ProcessId` or `InitiatingProcessId`), and the process creation time (`ProcessCreationTime` or `InitiatingProcessCreationTime`).

The following example query finds processes that access more than 10 IP addresses over port 445 (SMB), possibly scanning for file shares.

```kusto
DeviceNetworkEvents
| where RemotePort == 445 and Timestamp > ago(12h) and InitiatingProcessId !in (0, 4)
| summarize RemoteIPCount=dcount(RemoteIP) by DeviceName, InitiatingProcessId, InitiatingProcessCreationTime, InitiatingProcessFileName
| where RemoteIPCount > 10
```

The query summarizes by both `InitiatingProcessId` and `InitiatingProcessCreationTime` so that it looks at a single process, without mixing multiple processes with the same process ID.

### Queries with command lines
Command lines can vary. When applicable, filter on file names and do fuzzy matching.

There are numerous ways to construct a command line to accomplish a task. For example, an attacker could reference an image file with or without a path, without a file extension, using environment variables, or with quotes. In addition, the attacker could also change the order of parameters or add multiple quotes and spaces.

To create more durable queries using command lines, apply the following practices:

- Identify the known processes (such as *net.exe* or *psexec.exe*) by matching on the filename fields, instead of filtering on the command-line field.
- When querying for command-line arguments, don't look for an exact match on multiple unrelated arguments in a certain order. Instead, use regular expressions or use multiple separate contains operators.
- Use case insensitive matches. For example, use `=~`, `in~`, and `contains` instead of `==`, `in` and `contains_cs`
- To mitigate DOS command-line obfuscation techniques, consider removing quotes, replacing commas with spaces, and replacing multiple consecutive spaces with a single space. Note that there are more complex DOS obfuscation techniques that require other approaches, but these can help address the most common ones.

The following examples show various ways to construct a query that looks for the file *net.exe* to stop the Windows Defender Firewall service:

```kusto
// Non-durable query - do not use
DeviceProcessEvents
| where ProcessCommandLine == "net stop MpsSvc"
| limit 10

// Better query - filters on filename, does case-insensitive matches
DeviceProcessEvents
| where Timestamp > ago(7d) and FileName in~ ("net.exe", "net1.exe") and ProcessCommandLine contains "stop" and ProcessCommandLine contains "MpsSvc" 

// Best query also ignores quotes
DeviceProcessEvents
| where Timestamp > ago(7d) and FileName in~ ("net.exe", "net1.exe")
| extend CanonicalCommandLine=replace("\"", "", ProcessCommandLine)
| where CanonicalCommandLine contains "stop" and CanonicalCommandLine contains "MpsSvc" 
```

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-bestpractices-belowfoldlink)

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-reference.md)