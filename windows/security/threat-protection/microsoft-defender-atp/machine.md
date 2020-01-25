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

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 


## Methods
Method|Return Type |Description
:---|:---|:---
[List machines](get-machines.md) | [machine](machine.md) collection | List set of [machine](machine.md) entities in the org.
[Get machine](get-machine-by-id.md) | [machine](machine.md) | Get a [machine](machine.md) by its identity.
[Get logged on users](get-machine-log-on-users.md) | [user](user.md) collection | Get the set of [User](user.md) that logged on to the [machine](machine.md).
[Get related alerts](get-machine-related-alerts.md) | [alert](alerts.md) collection | Get the set of [alert](alerts.md) entities that were raised on the [machine](machine.md).
[Add or Remove machine tags](add-or-remove-machine-tags.md) | [machine](machine.md) | Add or Remove tag to a specific machine.
[Find machines by IP](find-machines-by-ip.md) | [machine](machine.md) collection | Find machines seen with IP.

## Properties
Property |	Type	|	Description
:---|:---|:---
id | String | [machine](machine.md) identity.
computerDnsName | String | [machine](machine.md) fully qualified name.
firstSeen | DateTimeOffset | First date and time where the [machine](machine.md) was observed by Microsoft Defender ATP.
lastSeen | DateTimeOffset | Last date and time where the [machine](machine.md) was observed by Microsoft Defender ATP.
osPlatform | String | Operating system platform.
version | String | Operating system Version.
osBuild | Nullable long | Operating system build number.
lastIpAddress | String | Last IP on local NIC on the [machine](machine.md).
lastExternalIpAddress | String | Last IP through which the [machine](machine.md) accessed the internet.
healthStatus | Enum | [machine](machine.md) health status. Possible values are: "Active", "Inactive", "ImpairedCommunication", "NoSensorData" and "NoSensorDataImpairedCommunication"
rbacGroupName | String | Machine group Name.
rbacGroupId | Int | Machine group unique ID.
riskScore | Nullable Enum | Risk score as evaluated by Microsoft Defender ATP. Possible values are: 'None', 'Low', 'Medium' and 'High'.
exposureScore | Nullable Enum | [Exposure score](tvm-exposure-score.md) as evaluated by Microsoft Defender ATP. Possible values are: 'None', 'Low', 'Medium' and 'High'.
aadDeviceId | Nullable representation Guid | AAD Device ID (when [machine](machine.md) is Aad Joined).
machineTags | String collection | Set of [machine](machine.md) tags.


## Json representation

```json
{
    "id": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
    "computerDnsName": "mymachine1.contoso.com",
    "firstSeen": "2018-08-02T14:55:03.7791856Z",
	"lastSeen": "2018-08-02T14:55:03.7791856Z",
    "osPlatform": "Windows10",
    "version": "1709",
	"osProcessor": "x64",
    "lastIpAddress": "172.17.230.209",
    "lastExternalIpAddress": "167.220.196.71",
    "osBuild": 18209,
    "healthStatus": "Active",
    "rbacGroupId": 140,
	"rbacGroupName": "The-A-Team",
    "riskScore": "Low",
	"exposureLevel": "Medium",
	"isAadJoined": true,
    "aadDeviceId": "80fe8ff8-2624-418e-9591-41f0491218f9",
	"machineTags": [ "test tag 1", "test tag 2" ]
}
```