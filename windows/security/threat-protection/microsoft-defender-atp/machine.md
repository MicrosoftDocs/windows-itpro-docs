---
title: Machine resource type
description: Retrieves top machines
keywords: apis, supported apis, get, machines
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Machine resource type
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


# Methods
Method|Return Type |Description
:---|:---|:---
[List machines](get-machines-windows-defender-advanced-threat-protection-new.md) | [machine](machine-windows-defender-advanced-threat-protection-new.md) collection | List set of [machine](machine-windows-defender-advanced-threat-protection-new.md) entities in the org.
[Get machine](get-machine-by-id-windows-defender-advanced-threat-protection-new.md) | [machine](machine-windows-defender-advanced-threat-protection-new.md) | Get a [machine](machine-windows-defender-advanced-threat-protection-new.md) by its identity.
[Get logged on users](get-machine-log-on-users-windows-defender-advanced-threat-protection-new.md) | [user](user-windows-defender-advanced-threat-protection-new.md) collection | Get the set of [User](user-windows-defender-advanced-threat-protection-new.md) that logged on to the [machine](machine-windows-defender-advanced-threat-protection-new.md).
[Get related alerts](get-machine-related-alerts-windows-defender-advanced-threat-protection-new.md) | [alert](alerts-windows-defender-advanced-threat-protection-new.md) collection | Get the set of [alert](alerts-windows-defender-advanced-threat-protection-new.md) entities that were raised on the [machine](machine-windows-defender-advanced-threat-protection-new.md).
[Add or Remove machine tags](add-or-remove-machine-tags-windows-defender-advanced-threat-protection-new.md) | [machine](machine-windows-defender-advanced-threat-protection-new.md) | Add or Remove tag to a specific machine.
[Find machines by IP](find-machines-by-ip-windows-defender-advanced-threat-protection-new.md) | [machine](machine-windows-defender-advanced-threat-protection-new.md) collection | Find machines seen with IP.

# Properties
Property |	Type	|	Description
:---|:---|:---
id | String | [machine](machine-windows-defender-advanced-threat-protection-new.md) identity.
computerDnsName | String | [machine](machine-windows-defender-advanced-threat-protection-new.md) fully qualified name.
firstSeen | DateTimeOffset | First date and time where the [machine](machine-windows-defender-advanced-threat-protection-new.md) was observed by Microsoft Defender ATP.
lastSeen | DateTimeOffset | Last date and time where the [machine](machine-windows-defender-advanced-threat-protection-new.md) was observed by Microsoft Defender ATP.
osPlatform | String | OS platform.
osVersion | String | OS Version.
lastIpAddress | String | Last IP on local NIC on the [machine](machine-windows-defender-advanced-threat-protection-new.md).
lastExternalIpAddress | String | Last IP through which the [machine](machine-windows-defender-advanced-threat-protection-new.md) accessed the internet.
agentVersion | String | Version of Microsoft Defender ATP agent.
osBuild | Nullable long | OS build number.
healthStatus | Enum | [machine](machine-windows-defender-advanced-threat-protection-new.md) health status. Possible values are: "Active", "Inactive", "ImpairedCommunication", "NoSensorData" and "NoSensorDataImpairedCommunication"
rbacGroupId | Int | RBAC Group ID.
rbacGroupName | String | RBAC Group Name.
riskScore | Nullable Enum | Risk score as evaluated by Microsoft Defender ATP. Possible values are: 'None', 'Low', 'Medium' and 'High'.
aadDeviceId | Nullable Guid | AAD Device ID (when [machine](machine-windows-defender-advanced-threat-protection-new.md) is Aad Joined).
machineTags | String collection | Set of [machine](machine-windows-defender-advanced-threat-protection-new.md) tags.