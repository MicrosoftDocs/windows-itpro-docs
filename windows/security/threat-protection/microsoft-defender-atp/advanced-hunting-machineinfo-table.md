---
title: MachineInfo table in the Advanced hunting schema
description: Learn about the MachineInfo table in the Advanced hunting schema, such as column names, data types, and descriptions
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics, column name, data type, description, machineinfo
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

# MachineInfo

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

The MachineInfo table in the Advanced hunting schema contains information about machines in the organization, including OS version, active users, and computer name. Use this reference to construct queries that return information from the table.

For information on other tables in the Advanced hunting schema, see [the Advanced hunting reference](advanced-hunting-reference.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| EventTime | datetime | Date and time when the event was recorded |
| MachineId | string | Unique identifier for the machine in the service |
| ComputerName | string | Fully qualified domain name (FQDN) of the machine |
| ClientVersion | string | Version of the endpoint agent or sensor running on the machine |
| PublicIP | string | Public IP address used by the onboarded machine to connect to the Microsoft Defender ATP service. This could be the IP address of the machine itself, a NAT device, or a proxy |
| OSArchitecture | string | Architecture of the operating system running on the machine |
| OSPlatform | string | Platform of the operating system running on the machine. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7 |
| OSBuild | string | Build version of the operating system running on the machine |
| IsAzureADJoined | boolean | Boolean indicator of whether machine is joined to the Azure Active Directory |
| LoggedOnUsers | string | List of all users that are logged on the machine at the time of the event in JSON array format |
| RegistryMachineTag | string | Machine tag added through the registry |
| ReportId | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the ComputerName and EventTime columns |
| OSVersion | string | Version of the operating system running on the machine |
| MachineGroup | string | Machine group of the machine. This group is used by role-based access control to determine access to the machine |

## Related topics

- [Advanced hunting overview](overview-hunting.md)
- [All Advanced hunting tables](advanced-hunting-reference.md)
- [Advanced hunting query best practices](advanced-hunting-best-practices.md)
- [Query data using Advanced hunting](advanced-hunting.md)
