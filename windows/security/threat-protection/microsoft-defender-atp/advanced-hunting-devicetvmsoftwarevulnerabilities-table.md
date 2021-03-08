---
title: DeviceTvmSoftwareVulnerabilities table in the advanced hunting schema
description: Learn about software vulnerabilities found on devices and the list of available security updates that address each vulnerability in the DeviceTvmSoftwareVulnerabilities table of the advanced hunting schema.
keywords: advanced hunting, threat hunting, cyber threat hunting, mdatp, microsoft defender atp, wdatp search, query, telemetry, schema reference, kusto, table, column, data type, description, threat & vulnerability management, TVM, device management, software, inventory, vulnerabilities, CVE ID, OS DeviceTvmSoftwareInventoryVulnerabilities
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# DeviceTvmSoftwareVulnerabilities

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)


>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

The `DeviceTvmSoftwareVulnerabilities` table in the advanced hunting schema contains the [Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md) list of vulnerabilities in installed software products. This table also includes operating system information, CVE IDs, and vulnerability severity information. You can use this table, for example, to hunt for events involving devices that have severe vulnerabilities in their software. Use this reference to construct queries that return information from the table.

>[!NOTE]
>The `DeviceTvmSoftwareInventory` and `DeviceTvmSoftwareVulnerabilities` tables have replaced the `DeviceTvmSoftwareInventoryVulnerabilities` table. Together, the first two tables include more columns you can use to help inform your vulnerability management activities.

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
| `RecommendedSecurityUpdate` | string | Name or description of the security update provided by the software vendor to address the vulnerability |
| `RecommendedSecurityUpdateId` | string | Identifier of the applicable security updates or identifier for the corresponding guidance or knowledge base (KB) articles |



## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-reference.md)
- [Overview of Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md)
