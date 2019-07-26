---
title: MachineNetworkInfo table in the Advanced hunting schema
description: Learn about the MachineNetworkInfo table in the Advanced hunting schema, such as column names, data types, and descriptions
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics, column name, data type, description, machinenetworkinfo
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

# MachineNetworkInfo

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

The MachineNetworkInfo table in the Advanced hunting schema contains information about networking configuration of machines, including network adapters, IP and MAC addresses, and connected networks or domains. Use this reference to construct queries that return information from the table.

For information on other tables in the Advanced hunting schema, see [the Advanced hunting reference](advanced-hunting-reference.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| EventTime | datetime | Date and time when the event was recorded |
| MachineId | string | Unique identifier for the machine in the service |
| ComputerName | string | Fully qualified domain name (FQDN) of the machine |
| ReportId | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the ComputerName and EventTime columns |
| NetworkAdapterName | string | Name of the network adapter |
| MacAddress | string | MAC address of the network adapter |
| NetworkAdapterType | string | Network adapter type. For the possible values, refer to [this enumeration](https://docs.microsoft.com/dotnet/api/system.net.networkinformation.networkinterfacetype?view=netframework-4.7.2) |
| NetworkAdapterStatus | string | Operational status of the network adapter. For the possible values, refer to [this enumeration](https://docs.microsoft.com/dotnet/api/system.net.networkinformation.operationalstatus?view=netframework-4.7.2) |
| TunnelType | string | Tunneling protocol, if the interface is used for this purpose, for example 6to4, Teredo, ISATAP, PPTP, SSTP, and SSH |
| ConnectedNetworks | string | Networks that the adapter is connected to. Each JSON array contains the network name, category (public, private or domain), a description, and a flag indicating if it's connected publicly to the internet |
| DnsAddresses | string | DNS server addresses in JSON array format |
| IPv4Dhcp | string | IPv4 address of DHCP server |
| IPv6Dhcp | string | IPv6 address of DHCP server |
| DefaultGateways | string | Default gateway addresses in JSON array format |
| IPAddresses | string | JSON array containing all the IP addresses assigned to the adapter, along with their respective subnet prefix and IP address space, such as public, private, or link-local |

## Related topics

- [Advanced hunting overview](overview-hunting.md)
- [All Advanced hunting tables](advanced-hunting-reference.md)
- [Advanced hunting query best practices](advanced-hunting-best-practices.md)
- [Query data using Advanced hunting](advanced-hunting.md)
