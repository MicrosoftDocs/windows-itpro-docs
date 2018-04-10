---
title: Advanced hunting best practices in Windows Defender ATP
description: Learn about Advanced hunting best practices such as what filters and keywords to use to effectively query data.
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

### Commandlines may vary - when applicable, filter on file names and do fuzzy matching
There are many possible ways to specify a commandline that will do exactly the same thing, but will look different.
In example, the attacker could specify the process image file name without a path, with full path, without the file extension, using environment variables, add quotes, etc.
Also, the attacker could change the order of some parameters, add many quotes or spaces, and much more.

To create more durable queries on commandlines, it is recommended to:
- Identify known processes (such as net.exe, psexec.exe, etc.) by matching on the filename fields, instead of filtering on the commandline field.
- When querying for commandline arguments, don't look for an exact match on multiple unrelated arguments in a certain order. Instead, use regular expressions or use multiple seperate contains operators.
- Do case insensitive matches. E.g. use '=~', 'in~', 'contains' instead of '==', 'in' or 'contains_cs'
- To mitigate DOS commandline obfuscation techniques, consider removing quotes, replacing commas with spaces, and replacing multiple consecutive spaces with a single space. This is just the start of handling DOS obfuscation techniques, but it does mitigate the most common ones.

In example, here is a non-durable query for using net.exe to stop the Windows Defender Firewall service:
```
// Non-durable query - do not use
ProcessCreationEvents
| where ProcessCommandLine == "net stop MpsSvc"
| limit 10

// Better query - filters on filename, does case-insensitive matches
ProcessCreationEvents
| where FileName in~ ("net.exe", "net1.exe") and ProcessCommandLine contains "stop" and ProcessCommandLine contains "MpsSvc" 

// Best query also ignores quotes
ProcessCreationEvents
| where FileName in~ ("net.exe", "net1.exe")
| extend CanonicalCommandLine=replace("\"", "", ProcessCommandLine)
| where CanonicalCommandLine contains "stop" and CanonicalCommandLine contains "MpsSvc" 
```

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-bestpractices-belowfoldlink)        



