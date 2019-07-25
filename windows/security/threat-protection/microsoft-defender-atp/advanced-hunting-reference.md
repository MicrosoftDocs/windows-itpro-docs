---
title: Advanced hunting reference in Microsoft Defender ATP
description: Learn about Advanced hunting table reference such as column name, data type, and description
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics, column name, data type, description
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
ms.topic: article
ms.date: 07/24/2019
---

# Advanced hunting reference in Microsoft Defender ATP

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

## Advanced hunting table reference

The Advanced hunting schema is made up of multiple tables, which provide either event information or information about certain entities. Table and column names are used for calling information about specific events or entities in queries.

The following reference lists all the tables in the Advanced hunting schema. Each table name links to a page describing the column names for that table.

Table and column names are also listed within the Security center, in the schema representation on the Advanced hunting screen.

| Table name | Description |
|------------|-------------|
| **[AlertEvents]()** | Alerts on Microsoft Defender Security Center |
| **[MachineInfo]()** | Machine information, including OS information |
| **[MachineNetworkInfo]()** | Network properties of machines, including adapters, IP and MAC addresses, as well as connected networks and domains |
| **[ProcessCreationEvents]()** | Process creation and related events |
| **[NetworkCommunicationEvents]()** | Network connection and related events |
| **[FileCreationEvents]()** | File creation, modification, and other file system events |
| **[RegistryEvents]()** | Creation and modification of registry entries |
| **[LogonEvents]()** | Sign-ins and other authentication events |
| **[ImageLoadEvents]()** | DLL loading events |
| **[MiscEvents]()** | Multiple event types, including events triggered by security controls such as Windows Defender Antivirus and exploit protection |
| **[SoftwareVulnerabilityInfo]()** | Information about software in use, including version information as well as known vulnerabilities |

## Related topics
- [Query data using Advanced hunting](advanced-hunting.md)
- [Best practices for Advanced hunting query-writing](advanced-hunting-best-practices.md)