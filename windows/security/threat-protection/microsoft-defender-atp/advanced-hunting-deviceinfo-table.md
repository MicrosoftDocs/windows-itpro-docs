---
title: DeviceInfo table in the advanced hunting schema
description: Learn about OS, computer name, and other device information in the DeviceInfo table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, search, query, telemetry, schema reference, kusto, table, column, data type, description, deviceinfo, device, OS, platform, users, DeviceInfo 
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

# DeviceInfo

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

The `DeviceInfo` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about devices in the organization, including their OS version, active users, and computer name. Use this reference to construct queries that return information from the table.

For information on other tables in the advanced hunting schema, see [the advanced hunting schema reference](advanced-hunting-schema-reference.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | datetime | Date and time when the event was recorded |
| `DeviceId` | string | Unique identifier for the device in the service |
| `DeviceName` | string | Fully qualified domain name (FQDN) of the device |
| `ClientVersion` | string | Version of the endpoint agent or sensor running on the device |
| `PublicIP` | string | Public IP address used by the onboarded device to connect to the Microsoft Defender ATP service. This could be the IP address of the device itself, a NAT device, or a proxy |
| `OSArchitecture` | string | Architecture of the operating system running on the device |
| `OSPlatform` | string | Platform of the operating system running on the device. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7 |
| `OSBuild` | string | Build version of the operating system running on the device |
| `IsAzureADJoined` | boolean | Boolean indicator of whether device is joined to the Azure Active Directory |
| `LoggedOnUsers` | string | List of all users that are logged on the device at the time of the event in JSON array format |
| `RegistryDeviceTag` | string | Device tag added through the registry |
| `ReportId` | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the DeviceName and Timestamp columns |
| `OSVersion` | string | Version of the operating system running on the device |
| `MachineGroup` | string | Machine group of the machine. This group is used by role-based access control to determine access to the machine |

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-reference.md)
