---
title: Learn the advanced hunting query language
description: Create your first threat hunting query and learn about common operators and other aspects of the advanced hunting query language
keywords: advanced hunting, threat hunting, cyber threat hunting, mdatp, windows defender atp, wdatp search, query, language, learn, first query, telemetry, events, telemetry, custom detections, schema, kusto, operators, data types
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
ms.date: 10/08/2019
---

# Learn the advanced hunting query language

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-advancedhunting-abovefoldlink)

Advanced hunting is based on the [Kusto query language](https://docs.microsoft.com/azure/kusto/query/). You can use Kusto syntax and operators to construct queries that locate information in the [schema](advanced-hunting-schema-reference.md) specifically structured for advanced hunting. To understand these concepts better, run your first query.

## Try your first query

In Microsoft Defender Security Center, go to **Advanced hunting** to run your first query. Use the following example:

```kusto
// Finds PowerShell execution events that could involve a download.
DeviceProcessEvents  
| where Timestamp > ago(7d)
| where FileName in ("powershell.exe", "POWERSHELL.EXE", "powershell_ise.exe", "POWERSHELL_ISE.EXE") 
| where ProcessCommandLine has "Net.WebClient"
        or ProcessCommandLine has "DownloadFile"
        or ProcessCommandLine has "Invoke-WebRequest"
        or ProcessCommandLine has "Invoke-Shellcode"
        or ProcessCommandLine contains "http:"
| project Timestamp, DeviceName, InitiatingProcessFileName, FileName, ProcessCommandLine
| top 100 by Timestamp
```

This is how it will look like in advanced hunting.

![Image of Microsoft Defender ATP advanced hunting query](images/advanced-hunting-query-example.png)

### Describe the query and specify the table to search
The query starts with a short comment describing what it is for. This helps if you later decide to save your query and share it with others in your organization.

```kusto
// Finds PowerShell execution events that could involve a download.
DeviceProcessEvents
```

The query itself will typically start with a table name followed by a series of elements started by a pipe (`|`). In this example, we start by adding  with the table name `DeviceProcessEvents` and add piped elements as needed.

### Set the time range
The first piped element is a time filter scoped within the previous seven days. Keeping the time range as narrow as possible ensures that queries perform well, return manageable results, and don't time out.

```kusto
| where Timestamp > ago(7d)
```
### Search for specific executable files
The time range is immediately followed by a search for files representing the PowerShell application.

```kusto
| where FileName in ("powershell.exe", "POWERSHELL.EXE", "powershell_ise.exe", "POWERSHELL_ISE.EXE")
```
### Search for specific command lines
Afterwards, the query looks for command lines that are typically used with PowerShell to download files.

```kusto
| where ProcessCommandLine has "Net.WebClient"
        or ProcessCommandLine has "DownloadFile"
        or ProcessCommandLine has "Invoke-WebRequest"
        or ProcessCommandLine has "Invoke-Shellcode"
        or ProcessCommandLine contains "http:"
```
### Select result columns and length 
Now that your query clearly identifies the data you want to locate, you can add elements that define what the results look like. `project` returns specific columns and `top` limits the number of results, making the results well-formatted and reasonably large and easy to process.

```kusto
| project Timestamp, DeviceName, InitiatingProcessFileName, FileName, ProcessCommandLine
| top 100 by Timestamp
```

Click **Run query** to see the results. You can expand the screen view so you can focus on your hunting query and the results.

## Learn common query operators for advanced hunting

Now that you've run your first query and have a general idea of its components, it's time to backtrack a little bit and learn some basics. The Kusto query language used by advanced hunting supports a range of operators, including the following common ones.

| Operator | Description and usage |
|--|--|
| `where` | Filter a table to the subset of rows that satisfy a predicate. |
| `summarize` | Produce a table that aggregates the content of the input table. |
| `join` | Merge the rows of two tables to form a new table by matching values of the specified column(s) from each table. |
| `count` | Return the number of records in the input record set. |
| `top` | Return the first N records sorted by the specified columns. |
| `limit` | Return up to the specified number of rows. |
| `project` | Select the columns to include, rename or drop, and insert new computed columns. |
| `extend` | Create calculated columns and append them to the result set. |
| `makeset` |  Return a dynamic (JSON) array of the set of distinct values that Expr takes in the group. |
| `find` | Find rows that match a predicate across a set of tables. |

To see a live example of these operators, run them from the **Get started** section of the advanced hunting page.

## Understand data types

Data in advanced hunting tables are generally classified into the following data types.

| Data type | Description and query implications |
|--|--|
| `datetime` | Data and time information typically representing event timestamps |
| `string` | Character string |
| `bool` | True or false |
| `int` | 32-bit numeric value  |
| `long` | 64-bit numeric value |

## Use sample queries

The **Get started** section provides a few simple queries using commonly used operators. Try running these queries and making small modifications to them.

![Image of advanced hunting window](images/atp-advanced-hunting.png)

> [!NOTE]
> Apart from the basic query samples, you can also access [shared queries](advanced-hunting-shared-queries.md) for specific threat hunting scenarios. Explore the shared queries on the left side of the page or the GitHub query repository.

## Access comprehensive query language reference

For detailed information about the query language, see [Kusto query language documentation](https://docs.microsoft.com/azure/kusto/query/).

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Understand the schema](advanced-hunting-schema-reference.md)
- [Apply query best practices](advanced-hunting-best-practices.md)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-advancedhunting-belowfoldlink)
