---
title: DeviceTvmSoftwareInventoryVulnerabilities table in the Advanced hunting schema
description: Learn about the DeviceTvmSoftwareInventoryVulnerabilities table in the Advanced hunting schema, such as operating system platform, version, and architecture, software vendor, name, and version, CVE ID, vulnerability severity, and descriptions
keywords: advanced hunting, atp query, device management, query atp data, query tvm data, query software inventory, query software vulnerability inventory, intellisense, atp telemetry, events, events telemetry, azure log analytics, description, DeviceTvmSoftwareInventoryVulnerabilities
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
ms.date: 10/27/2019
---

# DeviceTvmSoftwareInventoryVulnerabilities

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)


[!include[Prerelease information](prerelease.md)]

The DeviceTvmSoftwareInventoryVulnerabilities table in the Advanced hunting schema contains information needed in searching for vulnerabilities in your software inventory. Use this reference to construct queries that return information from the table.

For information on other tables in the Advanced hunting schema, see [the Advanced hunting reference](advanced-hunting-reference.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| MachineId | string | Unique identifier for the machine in the service |
| ComputerName | string | Fully qualified domain name (FQDN) of the machine |
| OSPlatform | string | Platform of the operating system running on the machine. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7.|
| OSVersion | string | Version of the operating system running on the machine |
| OSArchitecture | string | Architecture of the operating system running on the machine|
| SoftwareVendor | string | Severity level assigned to the security vulnerability based on the CVSS score and dynamic factors influenced by the threat landscape|
| SoftwareName | string | Name of the software product|
|SoftwareVersion | string | Unique identifier assigned to the security vulnerability under the Common Vulnerabilities and Exposures (CVE) system|
| CveId | string | Severity level assigned to the security vulnerability based on the CVSS score and dynamic factors influenced by the threat landscape|
| VulnerabilitySeverityLevel | string | Severity level assigned to the security vulnerability based on the CVSS score and dynamic factors influenced by the threat landscape|



## Related topics

- [Advanced hunting overview](overview-hunting.md)
- [All Advanced hunting tables](advanced-hunting-reference.md)
- [Advanced hunting query best practices](advanced-hunting-best-practices.md)
- [Query data using Advanced hunting](advanced-hunting.md)
