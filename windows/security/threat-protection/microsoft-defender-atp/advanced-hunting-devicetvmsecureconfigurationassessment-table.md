---
title: DeviceTvmSecureConfigurationAssessment table in the advanced hunting schema
description: Learn about Threat & Vulnerability Management security assessment events in the DeviceTvmSecureConfigurationAssessment table of the Advanced hunting schema. These events provide device information as well as security configuration details, impact, and compliance information.
keywords: advanced hunting, threat hunting, cyber threat hunting, mdatp, microsoft defender atp, wdatp search, query, telemetry, schema reference, kusto, table, column, data type, description, threat & vulnerability management, TVM, device management, security configuration, DeviceTvmSecureConfigurationAssessment
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
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
ms.technology: mde
---

# DeviceTvmSecureConfigurationAssessment 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)



>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

Each row in the `DeviceTvmSecureConfigurationAssessment` table contains an assessment event for a specific security configuration from [Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md). Use this reference to check the latest assessment results and determine whether devices are compliant.

For information on other tables in the advanced hunting schema, see [the advanced hunting reference](advanced-hunting-reference.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `DeviceId` | string | Unique identifier for the device in the service |
| `DeviceName` | string | Fully qualified domain name (FQDN) of the device |
| `OSPlatform` | string | Platform of the operating system running on the device. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7.|
| `Timestamp` | datetime |Date and time when the record was generated |
| `ConfigurationId` | string | Unique identifier for a specific configuration |
| `ConfigurationCategory` | string | Category or grouping to which the configuration belongs: Application, OS, Network, Accounts, Security controls |
| `ConfigurationSubcategory` | string |Subcategory or subgrouping to which the configuration belongs. In many cases, this describes specific capabilities or features. |
| `ConfigurationImpact` | string | Rated impact of the configuration to the overall configuration score (1-10) |
| `IsCompliant` | boolean | Indicates whether the configuration or policy is properly configured |
| `IsApplicable` | boolean | Indicates whether the configuration or policy applies to the device |
| `Context`	| string | Additional contextual information about the configuration or policy |
| `IsExpectedUserImpactCompliant` | boolean | Indicates whether there will be user impact if the configuration or policy is applied |

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-reference.md)
- [Overview of Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md)