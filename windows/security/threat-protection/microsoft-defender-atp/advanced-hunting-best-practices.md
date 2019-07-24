---
title: Advanced hunting best practices in Microsoft Defender ATP
description: Learn about Advanced hunting best practices such as what filters and keywords to use to effectively query data.
keywords: advanced hunting, best practices, keyword, filters, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
ms.date: 04/24/2018
---

# Advanced hunting query best practices in Microsoft Defender ATP

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-bestpractices-abovefoldlink)

## Performance best practices
The following best practices serve as a guideline of query performance best practices and for you to get faster results and be able to run complex queries. 
- When trying new queries, always use `limit` to avoid extremely large result sets or use `count` to assess the size of the result set.
- Use time filters first. Ideally, limit your queries to 7 days.
- Put filters that are expected to remove most of the data in the beginning of the query, right after the time filter.
- Use the `has` operator over `contains` when looking for full tokens.
- Use looking in specific column rather than using full text search across all columns.
- When joining between two tables, specify the table with fewer rows first.
- When joining between two tables, project only needed columns from both sides of the join.

>[!Tip]
>For more guidance on improving query performance, read [Kusto query best practices](https://docs.microsoft.com/azure/kusto/query/best-practices).

## Query tips and pitfalls

### Using process IDs
Process IDs (PIDs) are recycled in Windows and reused for new processes and therefore can't serve as a unique identifier for a specific process.
To address this issue, Microsoft Defender ATP created the time process. To get a unique identifier for a process on a specific machine, use the process ID together with the process creation time.

So, when you join data based on a specific process or summarize data for each process, you'll need to use a machine identifier (either `MachineId` or `ComputerName`), a process ID (`ProcessId` or `InitiatingProcessId`) and the process creation time (`ProcessCreationTime` or `InitiatingProcessCreationTime`)

The following example query is created to find processes that access more than 10 IP addresses over port 445 (SMB), possibly scanning for file shares.

Example query:
```
NetworkCommunicationEvents
| where RemotePort == 445 and EventTime > ago(12h) and InitiatingProcessId !in (0, 4)
| summarize RemoteIPCount=dcount(RemoteIP) by ComputerName, InitiatingProcessId, InitiatingProcessCreationTime, InitiatingProcessFileName
| where RemoteIPCount > 10
```

The query summarizes by both `InitiatingProcessId` and `InitiatingProcessCreationTime` so that it looks at a single process, without mixing multiple processes with the same process ID.

### Using command lines

Command lines can vary. When applicable, filter on file names and do fuzzy matching.

There are numerous ways to construct a command line to accomplish a task.

For example, a malicious attacker could specify the process image file name without a path, with full path, without the file extension, using environment variables, add quotes, and others. In addition, the attacker can also change the order of some parameters, add multiple quotes or spaces, and much more.

To create more durable queries using command lines, we recommended the following guidelines:

- Identify the known processes (such as net.exe, psexec.exe, and others) by matching on the filename fields, instead of filtering on the command line field.
- When querying for command line arguments, don't look for an exact match on multiple unrelated arguments in a certain order. Instead, use regular expressions or use multiple separate contains operators.
- Use case insensitive matches. For example, use `=~`, `in~`, `contains` instead of `==`, `in` or `contains_cs`
- To mitigate DOS command line obfuscation techniques, consider removing quotes, replacing commas with spaces, and replacing multiple consecutive spaces with a single space. This is just the start of handling DOS obfuscation techniques, but it does mitigate the most common ones.

The following example query shows various ways to construct a query that looks for the file *net.exe* to stop the Windows Defender Firewall service:

```
// Non-durable query - do not use
ProcessCreationEvents
| where ProcessCommandLine == "net stop MpsSvc"
| limit 10

// Better query - filters on filename, does case-insensitive matches
ProcessCreationEvents
| where EventTime > ago(7d) and FileName in~ ("net.exe", "net1.exe") and ProcessCommandLine contains "stop" and ProcessCommandLine contains "MpsSvc" 

// Best query also ignores quotes
ProcessCreationEvents
| where EventTime > ago(7d) and FileName in~ ("net.exe", "net1.exe")
| extend CanonicalCommandLine=replace("\"", "", ProcessCommandLine)
| where CanonicalCommandLine contains "stop" and CanonicalCommandLine contains "MpsSvc" 
```

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-bestpractices-belowfoldlink)