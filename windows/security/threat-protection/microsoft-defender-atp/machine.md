---
title: Machine resource type
description: Learn about the methods and properties of the Machine resource type in Microsoft Defender Advanced Threat Protection.
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

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Prerelease information](../../includes/prerelease.md)]

## Methods

Method|Return Type |Description
:---|:---|:---
[List machines](get-machines.md) | [machine](machine.md) collection | List set of [machine](machine.md) entities in the org.
[Get machine](get-machine-by-id.md) | [machine](machine.md) | Get a [machine](machine.md) by its identity.
[Get logged on users](get-machine-log-on-users.md) | [user](user.md) collection | Get the set of [User](user.md) that logged on to the [machine](machine.md).
[Get related alerts](get-machine-related-alerts.md) | [alert](alerts.md) collection | Get the set of [alert](alerts.md) entities that were raised on the [machine](machine.md).
[Get installed software](get-installed-software.md) | [software](software.md) collection | Retrieves a collection of installed software related to a given machine ID.
[Get discovered vulnerabilities](get-discovered-vulnerabilities.md) | [vulnerability](vulnerability.md) collection | Retrieves a collection of discovered vulnerabilities related to a given machine ID.
[Get security recommendations](get-security-recommendations.md) | [recommendation](recommendation.md) collection | Retrieves a collection of security recommendations related to a given machine ID.
[Add or Remove machine tags](add-or-remove-machine-tags.md) | [machine](machine.md) | Add or Remove tag to a specific machine.
[Find machines by IP](find-machines-by-ip.md) | [machine](machine.md) collection | Find machines seen with IP.
[Get missing KBs](get-missing-kbs-machine.md) | KB collection | Get a list of missing KBs associated with the machine ID
[Set device value](set-device-value.md)| [machine](machine.md) collection | Set the value of a device

## Properties

Property |   Type   |   Description
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
exposureLevel | Nullable Enum | Exposure level as evaluated by Microsoft Defender ATP. Possible values are: 'None', 'Low', 'Medium' and 'High'.
