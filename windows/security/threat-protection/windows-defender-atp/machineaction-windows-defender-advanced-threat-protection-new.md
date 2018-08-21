---
title: machineAction resource type
description: Retrieves top recent machineActions.
keywords: apis, supported apis, get, machineaction, recent
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

# MachineAction resource type

Method|Return Type |Description
:---|:---|:---
[List MachineActions](get-machineactions-collection-windows-defender-advanced-threat-protection-new.md) | [Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) | List [Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) entities.
[Get MachineAction](get-machineaction-object-windows-defender-advanced-threat-protection-new.md) | [Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) | Get a single [Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) entity.
[Collect investigation package](collect-investigation-package-windows-defender-advanced-threat-protection-new.md) | [Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) | Collect investigation package from a [machine](machine-windows-defender-advanced-threat-protection-new.md).
[Get investigation package SAS URI](get-package-sas-uri-windows-defender-advanced-threat-protection-new.md) | [Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) | Get URI for downloading the investigation package.
[Isolate machine](isolate-machine-windows-defender-advanced-threat-protection-new.md) | [Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) | Isolate [machine](machine-windows-defender-advanced-threat-protection-new.md) from network.
[Release machine from isolation](unisolate-machine-windows-defender-advanced-threat-protection-new.md) | [Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) | Release [machine](machine-windows-defender-advanced-threat-protection-new.md) from Isolation.
[Restrict app execution](restrict-code-execution-windows-defender-advanced-threat-protection-new.md) | [Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) | Restrict application execution.
[Remove app restriction](unrestrict-code-execution-windows-defender-advanced-threat-protection-new.md) | [Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) | Remove application execution restriction.
[Run antivirus scan](run-av-scan-windows-defender-advanced-threat-protection-new.md) | [Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) | Run an AV scan using Windows Defender (when applicable).
[Offboard machine](offboard-machine-api-windows-defender-advanced-threat-protection-new.md)|[Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) | Offboard [machine](machine-windows-defender-advanced-threat-protection-new.md) from WDATP.

# Properties
Property |	Type	|	Description
:---|:---|:---
id | Guid | Identity of the [Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) entity.
type | String | Type of the action.
requestor | String | Identity of the person that executed the action.
requestorComment | String | Comment that was written when issuing the action.
status | String | Current status of the command. Possible values are: "InProgress", "Succeeded", "Failed" and "Cancelled".
error | String | Error code providing more insight as to what have caused the command to fail.
machineId | String | Id of the machine on which the action was executed.
creationDateTimeUtc | DateTimeOffset | The date and time when the action was created.
lastUpdateTimeUtc | DateTimeOffset | The last date and time when the action status was updated.
