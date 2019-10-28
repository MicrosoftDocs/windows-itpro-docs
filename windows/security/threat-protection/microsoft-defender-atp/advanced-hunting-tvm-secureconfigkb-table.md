---
title: DeviceTvmSecureConfigurationAssessmentKB table in the Advanced hunting schema
description: Learn about the DeviceTvmSecureConfigurationAssessmentKB table in the Advanced hunting schema, security configuration details, and the associated industry benchmarks that it adheres to. 
keywords: advanced hunting, atp query, device management, query atp data, query tvm data, query security configuration, intellisense, atp telemetry, events, events telemetry, azure log analytics, description, MITRE ATT&CK framework, DeviceTvmSecureConfigurationAssessmentKB
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

# DeviceTvmSecureConfigurationAssessmentKB

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

The DeviceTvmSecureConfigurationAssessmentKB table in the Advanced hunting schema contains the knowledge base for all the various configurations assessments related to your organization, for example, what configuration is being assessed. Use this reference to construct queries that return information from the table.

For information on other tables in the Advanced hunting schema, see [the Advanced hunting reference](advanced-hunting-reference.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| ConfigurationId | string | Unique identifier for a specific configuration |
| ConfigurationImpact | string | Rated impact of the configuration to the overall configuration score (1-10) |
| ConfigurationName | string | Display name of the configuration |
| ConfigurationDescription | string | Description of the configuration |
| RiskDescription | string | Description of the associated risk |
| ConfigurationCategory | string | Category or grouping to which the configuration belongs: Application, OS, Network, Accounts, Security controls|
| ConfigurationSubcategory | string |Subcategory or subgrouping to which the configuration belongs. In many cases, this describes specific capabilities or features. |
| ConfigurationBenchmarks | string | List of industry benchmarks recommending the same or similar configuration |
| RelatedMitreTechniques | string | List of Mitre ATT&CK framework techniques observed |
| RelatedMitreTactics  | string | List of Mitre ATT&CK framework tactics observed |

## Related topics

- [Advanced hunting overview](overview-hunting.md)
- [All Advanced hunting tables](advanced-hunting-reference.md)
- [Advanced hunting query best practices](advanced-hunting-best-practices.md)
- [Query data using Advanced hunting](advanced-hunting.md)
