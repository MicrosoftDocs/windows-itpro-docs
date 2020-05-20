---
title: DeviceTvmSoftwareInventoryVulnerabilities table in the advanced hunting schema
description: Learn about the inventory of software in your devices and their vulnerabilities in the DeviceTvmSoftwareInventoryVulnerabilities table of the advanced hunting schema.
keywords: advanced hunting, threat hunting, cyber threat hunting, mdatp, windows defender atp, wdatp search, query, telemetry, schema reference, kusto, table, column, data type, description, threat & vulnerability management, TVM, device management, software, inventory, vulnerabilities, CVE ID, OS DeviceTvmSoftwareInventoryVulnerabilities
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dolmont
author: DulceMontemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 11/12/2019
---

# DeviceTvmSoftwareInventoryVulnerabilities

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)


[!include[Prerelease information](../../includes/prerelease.md)]

The `DeviceTvmSoftwareInventoryVulnerabilities` table in the advanced hunting schema contains the [Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md) inventory of software on your devices as well as any known vulnerabilities in these software products. This table also includes operating system information, CVE IDs, and vulnerability severity information. Use this reference to construct queries that return information from the table.

For information on other tables in the advanced hunting schema, see [the advanced hunting reference](advanced-hunting-reference.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `DeviceId` | string | Unique identifier for the device in the service |
| `DeviceName` | string | Fully qualified domain name (FQDN) of the device |
| `OSPlatform` | string | Platform of the operating system running on the device. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7. |
| `OSVersion` | string | Version of the operating system running on the device |
| `OSArchitecture` | string | Architecture of the operating system running on the device |
| `SoftwareVendor` | string | Name of the software vendor |
| `SoftwareName` | string | Name of the software product |
| `SoftwareVersion` | string | Version number of the software product |
| `CveId` | string | Unique identifier assigned to the security vulnerability under the Common Vulnerabilities and Exposures (CVE) system |
| `VulnerabilitySeverityLevel` | string | Severity level assigned to the security vulnerability based on the CVSS score and dynamic factors influenced by the threat landscape |



## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-reference.md)
- [Overview of Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md)
