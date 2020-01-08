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

## Methods
Method |Return Type |Description
:---|:---|:---
[List all recommendations](get-all-recommendations.md) | Recommendation collection | Retrieves a list of all security recommendations affecting the organization
[Get recommendation by Id](get-recommendation-by-id.md) | Recommendation | Retrieves a security recommendation by its ID
[Get recommendation software](get-recommendation-software.md)| [Software](software.md) | Retrieves a security recommendation related to a specific software
[Get recommendation machines](get-recommendation-machines.md)|MachineRef collection | Retrieves a list of machines associated with the security recommendation
[Get recommendation vulnerabilities](get-recommendation-vulnerabilities.md) | [Vulnerability](vulnerability.md) collection | Retrieves a list of vulnerabilities associated with the security recommendation


## Properties
Property |	Type	|	Description
:---|:---|:---
id | String | 
productName | String | 
recommendationName | String | 
Weaknesses | Long | 
Vendor | String | 
recommendedVersion | String | 
recommendationCategory | String | 
subCategory | String | 
severityScore | Double | 
publicExploit | Boolean | 
activeAlert | Boolean | 
associatedThreats | String collection | 
remediationType | String | 
Status | String | Enum
configScoreImpact | Double | 
exposureImpacte | Double| 
totalMachineCount | Long | 
exposedMachinesCount | Long | 
nonProductivityImpactedAssets | Long | 
relatedComponent | String |  
