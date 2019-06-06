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
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# MachineAction resource type

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

| Method                                                            | Return Type                        | Description                                                 |
|:------------------------------------------------------------------|:-----------------------------------|:------------------------------------------------------------|
| [List MachineActions](get-machineactions-collection.md)           | [Machine Action](machineaction.md) | List [Machine Action](machineaction.md) entities.           |
| [Get MachineAction](get-machineaction-object.md)                  | [Machine Action](machineaction.md) | Get a single [Machine Action](machineaction.md) entity.     |
| [Collect investigation package](collect-investigation-package.md) | [Machine Action](machineaction.md) | Collect investigation package from a [machine](machine.md). |
| [Get investigation package SAS URI](get-package-sas-uri.md)       | [Machine Action](machineaction.md) | Get URI for downloading the investigation package.          |
| [Isolate machine](isolate-machine.md)                             | [Machine Action](machineaction.md) | Isolate [machine](machine.md) from network.                 |
| [Release machine from isolation](unisolate-machine.md)            | [Machine Action](machineaction.md) | Release [machine](machine.md) from Isolation.               |
| [Restrict app execution](restrict-code-execution.md)              | [Machine Action](machineaction.md) | Restrict application execution.                             |
| [Remove app restriction](unrestrict-code-execution.md)            | [Machine Action](machineaction.md) | Remove application execution restriction.                   |
| [Run antivirus scan](run-av-scan.md)                              | [Machine Action](machineaction.md) | Run an AV scan using Windows Defender (when applicable).    |
| [Offboard machine](offboard-machine-api.md)                       | [Machine Action](machineaction.md) | Offboard [machine](machine.md) from Microsoft Defender ATP. |

<br>

## Properties

| Property            | Type           | Description                                                                                                                                                                                                    |
|:--------------------|:---------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id                  | Guid           | Identity of the [Machine Action](machineaction.md) entity.                                                                                                                                                     |
| type                | Enum           | Type of the action. Possible values are: "RunAntiVirusScan", "Offboard", "CollectInvestigationPackage", "Isolate", "Unisolate", "StopAndQuarantineFile", "RestrictCodeExecution" and "UnrestrictCodeExecution" |
| requestor           | String         | Identity of the person that executed the action.                                                                                                                                                               |
| requestorComment    | String         | Comment that was written when issuing the action.                                                                                                                                                              |
| status              | Enum           | Current status of the command. Possible values are: "Pending", "InProgress", "Succeeded", "Failed", "TimeOut" and "Cancelled".                                                                                 |
| machineId           | String         | Id of the machine on which the action was executed.                                                                                                                                                            |
| creationDateTimeUtc | DateTimeOffset | The date and time when the action was created.                                                                                                                                                                 |
| lastUpdateTimeUtc   | DateTimeOffset | The last date and time when the action status was updated.                                                                                                                                                     |
| relatedFileInfo     | Class          | Contains two Properties. 1) string 'fileIdentifier' 2) Enum 'fileIdentifierType' with the possible values: "Sha1" ,"Sha256" and "Md5".                                                                         |

