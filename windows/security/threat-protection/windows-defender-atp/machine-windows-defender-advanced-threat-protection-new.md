---
title: File resource type
description: Retrieves top recent alerts.
keywords: apis, graph api, supported apis, get, alerts, recent
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 12/08/2017
---

# Machine resource type


# Methods
Method|Return Type |Description
:---|:---|:---
[List machines](get-machines-windows-defender-advanced-threat-protection-new.md) | [machine](machine-windows-defender-advanced-threat-protection-new.md) collection | List set of [machine](machine-windows-defender-advanced-threat-protection-new.md) entities in the org.
[Get machine](get-machine-by-id-windows-defender-advanced-threat-protection.md) | [machine](machine-windows-defender-advanced-threat-protection-new.md) | Get a [machine](machine-windows-defender-advanced-threat-protection-new.md) by its identity.
[Get logged on users](get-machine-log-on-users-windows-defender-advanced-threat-protection-new.md) | [user](user-windows-defender-advanced-threat-protection-new.md) collection | Get the set of [User](user-windows-defender-advanced-threat-protection-new.md) that logged on to the [machine](machine-windows-defender-advanced-threat-protection-new.md).
[Get related alerts](get-machine-related-alerts-windows-defender-advanced-threat-protection-new.md) | [alert](alerts-windows-defender-advanced-threat-protection-new.md) collection | Get the set of [alert](alerts-windows-defender-advanced-threat-protection-new.md) entities that were raised on the [machine](machine-windows-defender-advanced-threat-protection-new.md).

# Properties
Property |	Type	|	Description
:---|:---|:---
id | String | [machine](machine-windows-defender-advanced-threat-protection-new.md) identity.
computerDnsName | String | [machine](machine-windows-defender-advanced-threat-protection-new.md) fully qualified name.
firstSeen | DateTimeOffset | First date and time where the [machine](machine-windows-defender-advanced-threat-protection-new.md) was observed by WDATP.
osPlatform | String | OS platform.
osVersion | String | OS Version.
lastIpAddress | Ip | Last IP on local NIC on the [machine](machine-windows-defender-advanced-threat-protection-new.md).
lastExternalIpAddress | Ip | Last Ip through which the [machine](machine-windows-defender-advanced-threat-protection-new.md) accessed the internet.
agentVersion | String | Version of WDATP agent.
groupName | String | [machine](machine-windows-defender-advanced-threat-protection-new.md) group name (when defined).
osBuild | Int | OS build number.
healthStatus | String | [machine](machine-windows-defender-advanced-threat-protection-new.md) health status.
isAadJoined | Boolean | Is [machine](machine-windows-defender-advanced-threat-protection-new.md) AAD joined.
machineTags | String collection | Set of [machine](machine-windows-defender-advanced-threat-protection-new.md) tags.
rbacGroupId | Int | Group Id.
riskScore | String | Risk score as evaludated by WDATP. Possible values are: 'None', 'Low', 'Medium' and 'High'.
aadDeviceId | String | AAD Device Id (when [machine](machine-windows-defender-advanced-threat-protection-new.md) is Aad Joined).