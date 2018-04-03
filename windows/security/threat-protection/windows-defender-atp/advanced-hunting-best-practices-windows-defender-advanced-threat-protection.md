---
title: Advanced hunting best practices in Windows Defender ATP
description: Learn about advanced hunting best practices such as what filters and keywords to use to effectively query data.
keywords: advanced hunting, best practices, keyword, filters, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 04/16/2018
---

# Advanced hunting query best practices Windows Defender ATP

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-bestpractices-abovefoldlink)

## Performance best practices
The following best practices serve as a guideline of query performance best practices and for you to get faster results and be able to run complex queries. 
- Use time filters first. Azure Kusto is highly optimized to utilize time filters. For more information, see [Azure Kusto](https://docs.microsoft.com/connectors/kusto/).
- Put filters that are expected to remove most of the data in the beginning of the query, following the time filter.
- Use 'has' keyword over 'contains' when looking for full tokens.
- Use looking in specific column rather than using full text search across all columns.
- When joining between two tables - choose the table with less rows to be the first one (left-most). 
- When joining between two tables - project only needed columns from both sides of the join.

## Query tips and pitfalls

### Unique Process IDs
Process IDs are recycled in Windows and reused for new processes and therefore can't serve as a unique identifier for a specific process.
To address this issue, Windows Defender ATP created the time process. To get a unique identifier for a process on a specific machine, use the process ID together with the process creation time.


So, when you join data based on a specific process or summarize data for each process, you'll need to use a machine identifier (either MachineId or ComputerName), a process ID (ProcessId or InitiatingProcessId) and the process creation time (ProcessCreationTime or InitiatingProcessCreationTime)

The following example query is created to find processes that access more than 10 IP addresses over port 445 (SMB) - possibly scanning for file shares.

Example query:
```
NetworkCommunicationEvents
| where RemotePort == 445 and EventTime > ago(12h) and InitiatingProcessId !in (0, 4)
| summarize RemoteIPCount=dcount(RemoteIP) by ComputerName, InitiatingProcessId, InitiatingProcessCreationTime, InitiatingProcessFileName
| where RemoteIPCount > 10
```

The query summarizes by both InitiatingProcessId and InitiatingProcessCreationTime - to make sure the query looks at a single process, and not mixing multiple processes with the same process ID.

         

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-bestpractices-belowfoldlink)        



