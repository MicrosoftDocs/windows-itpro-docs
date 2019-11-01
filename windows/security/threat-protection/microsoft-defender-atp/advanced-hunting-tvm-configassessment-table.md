---
title: DeviceTvmSecureConfigurationAssessment table in the Advanced hunting schema
description: Learn about the DeviceTvmSecureConfigurationAssessment table in the Advanced hunting schema, such as machine ID, computer name, operating system platform, security configuration details, impact, and compliance information. 
keywords: advanced hunting, atp query, device management, query atp data, query tvm data, query security configuration, intellisense, atp telemetry, events, events telemetry, azure log analytics, description, DeviceTvmSecureConfigurationAssessment  
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

# DeviceTvmSecureConfigurationAssessment 

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

[!include[Prerelease information](prerelease.md)]

Each row in the DeviceTvmSecureConfigurationAssessment table contains an assessment event for a specific security configuration. Use this reference to check the latest assessment results and determine whether device are compliant.

For information on other tables in the Advanced hunting schema, see [the Advanced hunting reference](advanced-hunting-reference.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| MachineId | string | Unique identifier for the machine in the service |
| ComputerName | string | Fully qualified domain name (FQDN) of the machine |
| OSPlatform | string | Platform of the operating system running on the machine. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7.|
| Timestamp | datetime |Date and time when the record was generated|
| ConfigurationId | string | Unique identifier for a specific configuration |
| ConfigurationCategory | string | Category or grouping to which the configuration belongs: Application, OS, Network, Accounts, Security controls|
| ConfigurationSubcategory | string |Subcategory or subgrouping to which the configuration belongs. In many cases, this describes specific capabilities or features. |
| ConfigurationImpact | string | Rated impact of the configuration to the overall configuration score (1-10) |
| IsCompliant | boolean | Indicates whether the configuration or policy is properly configured |


## Related topics

- [Advanced hunting overview](overview-hunting.md)
- [All Advanced hunting tables](advanced-hunting-reference.md)
- [Advanced hunting query best practices](advanced-hunting-best-practices.md)
- [Query data using Advanced hunting](advanced-hunting.md)
