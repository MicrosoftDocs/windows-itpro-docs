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

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

- See [Response Actions](respond-machine-alerts.md) for more information

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
| [Stop and quarantine file](stop-and-quarantine-file.md)           | [Machine Action](machineaction.md) | Stop execution of a file on a machine and delete it.        |

<br>

## Properties

| Property            | Type           | Description                                                                                                                                                                                                    |
|:--------------------|:---------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id                  | Guid           | Identity of the [Machine Action](machineaction.md) entity.                                                                                                                                                     |
| type                | Enum           | Type of the action. Possible values are: "RunAntiVirusScan", "Offboard", "CollectInvestigationPackage", "Isolate", "Unisolate", "StopAndQuarantineFile", "RestrictCodeExecution" and "UnrestrictCodeExecution" |
| scope				  | string         | Scope of the action. "Full" or "Selective" in case of Isolation, "Quick" or "Full" in case of Anti-Virus scan.						                                                                            |
| requestor           | String         | Identity of the person that executed the action.                                                                                                                                                               |
| requestorComment    | String         | Comment that was written when issuing the action.                                                                                                                                                              |
| status              | Enum           | Current status of the command. Possible values are: "Pending", "InProgress", "Succeeded", "Failed", "TimeOut" and "Cancelled".                                                                                 |
| machineId           | String         | Id of the [machine](machine.md) on which the action was executed.                                                                                                                                              |
| machineId           | String         | Name of the [machine](machine.md) on which the action was executed.                                                                                                                                            |
| creationDateTimeUtc | DateTimeOffset | The date and time when the action was created.                                                                                                                                                                 |
| lastUpdateTimeUtc   | DateTimeOffset | The last date and time when the action status was updated.                                                                                                                                                     |
| relatedFileInfo     | Class          | Contains two Properties. string ```fileIdentifier```, Enum ```fileIdentifierType``` with the possible values: "Sha1" ,"Sha256" and "Md5".                                                                         |


## Json representation

```json
{
        "id": "5382f7ea-7557-4ab7-9782-d50480024a4e",
        "type": "Isolate",
		"scope": "Selective",
        "requestor": "Analyst@TestPrd.onmicrosoft.com",
        "requestorComment": "test for docs",
        "status": "Succeeded",
        "machineId": "7b1f4967d9728e5aa3c06a9e617a22a4a5a17378",
        "computerDnsName": "desktop-test",
        "creationDateTimeUtc": "2019-01-02T14:39:38.2262283Z",
        "lastUpdateDateTimeUtc": "2019-01-02T14:40:44.6596267Z",
        "relatedFileInfo": null
}
```