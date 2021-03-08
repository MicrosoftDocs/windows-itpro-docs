---
title: AssignedIPAddresses() function in advanced hunting for Microsoft Defender for Endpoint
description: Learn how to use the AssignedIPAddresses() function to get the latest IP addresses assigned to a device
keywords: advanced hunting, threat hunting, cyber threat hunting, mdatp, Microsoft Defender ATP, Microsoft Defender for Endpoint, Windows Defender, Windows Defender ATP, Windows Defender Advanced Threat Protection, search, query, telemetry, schema reference, kusto, FileProfile, file profile, function, enrichment
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
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
ms.date: 09/20/2020
ms.technology: mde
---

# AssignedIPAddresses()

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-advancedfeats-abovefoldlink)

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)


Use the `AssignedIPAddresses()` function in your advanced hunting queries to quickly obtain the latest IP addresses that have been assigned to a device. If you specify a timestamp argument, this function obtains the most recent IP addresses at the specified time.

This function returns a table with the following columns:

Column | Data type | Description
-|-|-
`Timestamp` | datetime | Latest time when the device was observed using the IP address
`IPAddress` | string | IP address used by the device
`IPType` | string | Indicates whether the IP address is a public or private address
`NetworkAdapterType` | int | Network adapter type used by the device that has been assigned the IP address. For the possible values, refer to [this enumeration](https://docs.microsoft.com/dotnet/api/system.net.networkinformation.networkinterfacetype)
`ConnectedNetworks` | int | Networks that the adapter with the assigned IP address is connected to. Each JSON array contains the network name, category (public, private, or domain), a description, and a flag indicating if it's connected publicly to the internet

## Syntax

```kusto
AssignedIPAddresses(x, y)
```

## Arguments

- **x**—`DeviceId` or `DeviceName` value identifying the device
- **y**—`Timestamp` (datetime) value instructing the function to obtain the most recent assigned IP addresses from a specific time. If not specified, the function returns the latest IP addresses.

## Examples

### Get the list of IP addresses used by a device 24 hours ago

```kusto
AssignedIPAddresses('example-device-name', ago(1d))
```

### Get IP addresses used by a device and find devices communicating with it

This query uses the `AssignedIPAddresses()` function to get assigned IP addresses for the device (`example-device-name`) on or before a specific date (`example-date`). It then uses the IP addresses to find connections to the device initiated by other devices. 

```kusto
let Date = datetime(example-date);
let DeviceName = "example-device-name";
// List IP addresses used on or before the specified date
AssignedIPAddresses(DeviceName, Date)
| project DeviceName, IPAddress, AssignedTime = Timestamp 
// Get all network events on devices with the assigned IP addresses as the destination addresses
| join kind=inner DeviceNetworkEvents on $left.IPAddress == $right.RemoteIP
// Get only network events around the time the IP address was assigned
| where Timestamp between ((AssignedTime - 1h) .. (AssignedTime + 1h))
```

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-reference.md)
