---
title: Advanced hunting schema reference
description: Learn about the tables in the Advanced hunting schema to understand the data you can run threat hunting queries on 
keywords: advanced hunting, threat hunting, cyber threat hunting, search, query, telemetry, schema reference, kusto, table, data
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

# Understand the Advanced hunting schema

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

The [Advanced hunting](advanced-hunting-overview.md) schema is made up of multiple tables that provide either event information or information about machines and other entities. To effectively build queries that span multiple tables, you need to understand the tables and the columns in the Advanced hunting schema.

## Schema tables

The following reference lists all the tables in the Advanced hunting schema. Each table name links to a page describing the column names for that table.

Table and column names are also listed within the Microsoft Defender Security Center, in the schema representation on the Advanced hunting screen.

| Table name | Description |
|------------|-------------|
| **[AlertEvents](advanced-hunting-alertevents-table.md)** | Alerts on Microsoft Defender Security Center |
| **[DeviceInfo](advanced-hunting-deviceinfo-table.md)** | Machine information, including OS information |
| **[DeviceNetworkInfo](advanced-hunting-devicenetworkinfo-table.md)** | Network properties of machines, including adapters, IP and MAC addresses, as well as connected networks and domains |
| **[DeviceProcessEvents](advanced-hunting-deviceprocessevents-table.md)** | Process creation and related events |
| **[DeviceNetworkEvents](advanced-hunting-devicenetworkevents-table.md)** | Network connection and related events |
| **[DeviceFileEvents](advanced-hunting-devicefileevents-table.md)** | File creation, modification, and other file system events |
| **[DeviceRegistryEvents](advanced-hunting-deviceregistryevents-table.md)** | Creation and modification of registry entries |
| **[DeviceLogonEvents](advanced-hunting-devicelogonevents-table.md)** | Sign-ins and other authentication events |
| **[DeviceImageLoadEvents](advanced-hunting-deviceimageloadevents-table.md)** | DLL loading events |
| **[DeviceEvents](advanced-hunting-deviceevents-table.md)** | Multiple event types, including events triggered by security controls such as Windows Defender Antivirus and exploit protection |
| **[DeviceTvmSoftwareInventoryVulnerabilities](advanced-hunting-tvm-softwareinventory-table.md)** | Vulnerabilities in your software inventory |
| **[DeviceTvmSoftwareVulnerabilitiesKB ](advanced-hunting-tvm-softwarevulnerability-table.md)** | Publicly-available vulnerabilities and whether they exist in your software inventory |
| **[DeviceTvmSecureConfigurationAssessment](advanced-hunting-tvm-configassessment-table.md)** | Security configuration assessment information |
| **[DeviceTvmSecureConfigurationAssessmentKB](advanced-hunting-tvm-secureconfigkb-table.md)** | Basis of security configuration assessment such as security industry standards and benchmarks |

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
