---
title: DeviceNetworkInfo table in the advanced hunting schema
description: Learn about network configuration information in the DeviceNetworkInfo table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, search, query, telemetry, schema reference, kusto, table, column, data type, description, devicenetworkinfo, device, device, mac, ip, adapter, dns, dhcp, gateway, tunnel, DeviceNetworkInfo
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

# DeviceNetworkInfo

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

The `DeviceNetworkInfo` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about networking configuration of devices, including network adapters, IP and MAC addresses, and connected networks or domains. Use this reference to construct queries that return information from the table.

For information on other tables in the advanced hunting schema, see [the advanced hunting schema reference](advanced-hunting-schema-reference.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | datetime | Date and time when the event was recorded |
| `DeviceId` | string | Unique identifier for the device in the service |
| `DeviceName` | string | Fully qualified domain name (FQDN) of the device |
| `ReportId` | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the `DeviceName` and `Timestamp` columns |
| `NetworkAdapterName` | string | Name of the network adapter |
| `MacAddress` | string | MAC address of the network adapter |
| `NetworkAdapterType` | string | Network adapter type. For the possible values, refer to [this enumeration](https://docs.microsoft.com/dotnet/api/system.net.networkinformation.networkinterfacetype?view=netframework-4.7.2) |
| `NetworkAdapterStatus` | string | Operational status of the network adapter. For the possible values, refer to [this enumeration](https://docs.microsoft.com/dotnet/api/system.net.networkinformation.operationalstatus?view=netframework-4.7.2) |
| `TunnelType` | string | Tunneling protocol, if the interface is used for this purpose, for example 6to4, Teredo, ISATAP, PPTP, SSTP, and SSH |
| `ConnectedNetworks` | string | Networks that the adapter is connected to. Each JSON array contains the network name, category (public, private or domain), a description, and a flag indicating if it's connected publicly to the internet |
| `DnsAddresses` | string | DNS server addresses in JSON array format |
| `IPv4Dhcp` | string | IPv4 address of DHCP server |
| `IPv6Dhcp` | string | IPv6 address of DHCP server |
| `DefaultGateways` | string | Default gateway addresses in JSON array format |
| `IPAddresses` | string | JSON array containing all the IP addresses assigned to the adapter, along with their respective subnet prefix and IP address space, such as public, private, or link-local |

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-reference.md)
