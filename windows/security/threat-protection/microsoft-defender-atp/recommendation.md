---
title: Recommendation methods and properties
description: Retrieves top recent alerts.
keywords: apis, graph api, supported apis, get, alerts, recent
search.product: eADQiWindows 10XVcnh
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
---

# Recommendation resource type

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Prerelease information](../../includes/prerelease.md)]

## Methods
Method |Return Type |Description
:---|:---|:---
[List all recommendations](get-all-recommendations.md) | Recommendation collection | Retrieves a list of all security recommendations affecting the organization
[Get recommendation by Id](get-recommendation-by-id.md) | Recommendation | Retrieves a security recommendation by its ID
[Get recommendation software](get-recommendation-software.md)| [Software](software.md) | Retrieves a security recommendation related to a specific software
[Get recommendation machines](get-recommendation-machines.md)|MachineRef collection | Retrieves a list of machines associated with the security recommendation
[Get recommendation vulnerabilities](get-recommendation-vulnerabilities.md) | [Vulnerability](vulnerability.md) collection | Retrieves a list of vulnerabilities associated with the security recommendation


## Properties
Property |   Type   |   Description
:---|:---|:---
id | String | Recommendation ID
productName | String | Related software name  
recommendationName | String | Recommendation name
Weaknesses | Long | Number of discovered vulnerabilities
Vendor | String | Related vendor name
recommendedVersion | String | Recommended version
recommendationCategory | String | Recommendation category. Possible values are: "Accounts", "Application", "Network", "OS", "SecurityStack
subCategory | String | Recommendation sub-category
severityScore | Double | Potential impact of the configuration to the organization's Microsoft Secure Score for Devices (1-10)
publicExploit | Boolean | Public exploit is available 
activeAlert | Boolean | Active alert is associated with this recommendation
associatedThreats | String collection | Threat analytics report is associated with this recommendation
remediationType | String | Remediation type. Possible values are: "ConfigurationChange","Update","Upgrade","Uninstall"
Status | Enum | Recommendation exception status. Possible values are: "Active" and "Exception"
configScoreImpact | Double | Microsoft Secure Score for Devices impact
exposureImpacte | Double | Exposure score impact
totalMachineCount | Long | Number of installed machines
exposedMachinesCount | Long | Number of installed machines that are exposed to vulnerabilities
nonProductivityImpactedAssets | Long | Number of machines which are not affected  
relatedComponent | String |  Related software component
