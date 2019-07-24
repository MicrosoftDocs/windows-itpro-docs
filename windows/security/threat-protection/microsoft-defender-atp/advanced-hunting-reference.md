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

The advanced hunting schema comprise multiple tables that provide either event information or information about certain entities.

To effectively build queries that span multiple tables, you need to understand the columns, or fields, in the Advanced hunting schema. The following reference lists all tables used by Advanced hunting. It also links to pages describing the tables' contents, including official column names.

 all the available columns, along with their data types and descriptions. This information is also available in the schema representation in the Advanced hunting screen.

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

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-belowfoldlink)

## Related topics
- [Query data using Advanced hunting](advanced-hunting.md)
- [Advanced hunting query language best practices](advanced-hunting-best-practices.md)