---
title: OData queries with Microsoft Defender ATP
ms.reviewer: 
description: Use these examples of Open Data Protocol (OData) queries to help with data access protocols in Microsoft Defender ATP.
keywords: apis, supported apis, odata, query
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

# OData queries with Microsoft Defender ATP

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

If you are not familiar with OData queries, see: [OData V4 queries](https://www.odata.org/documentation/)

Not all properties are filterable.

## Properties that supports $filter:

- [Alert](alerts.md): ```alertCreationTime```, ```lastUpdateTime```, ```incidentId```,```InvestigationId```, ```status```, ```severity``` and ```category```.
- [Machine](machine.md): ```ComputerDnsName```, ```LastSeen```, ```HealthStatus```, ```OsPlatform```, ```RiskScore``` and ```RbacGroupId```.
- [MachineAction](machineaction.md): ```Status```, ```MachineId```, ```Type```, ```Requestor``` and ```CreationDateTimeUtc```.
- [Indicator](ti-indicator.md): ```indicatorValue```, ```indicatorType```, ```creationTimeDateTimeUtc```, ```createdBy```, ```severity ``` and ```action ```.

### Example 1

Get 10 latest Alerts with related Evidence

```
HTTP GET  https://api.securitycenter.microsoft.com/api/alerts?$top=10&$expand=evidence
```

**Response:**

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Alerts",
    "value": [
		{
			"id": "da637306396589640224_1753239473",
			"incidentId": 875832,
			"investigationId": 478434,
			"assignedTo": null,
			"severity": "Low",
			"status": "New",
			"classification": null,
			"determination": null,
			"investigationState": "PendingApproval",
			"detectionSource": "WindowsDefenderAv",
			"category": "UnwantedSoftware",
			"threatFamilyName": "InstallCore",
			"title": "An active 'InstallCore' unwanted software was detected",
			"description": "Potentially unwanted applications (PUA) often impact productivity and performance and are often unwanted in enterprise environments. This category of applications include torrent downloaders, cryptocurrency miners, browser advertising software, and evasion software.\n\nAn application is considered active if it is found running on the machine or it already has persistence mechanisms in place.\n\nBecause this PUA was active, take precautionary measures and check for residual signs of infection.",
			"alertCreationTime": "2020-07-18T03:27:38.9483995Z",
			"firstEventTime": "2020-07-18T03:25:39.6124549Z",
			"lastEventTime": "2020-07-18T03:26:18.4362304Z",
			"lastUpdateTime": "2020-07-18T03:28:19.76Z",
			"resolvedTime": null,
			"machineId": "97868b864dc8fa09cc8726c37a1fcd8ab582f3aa",
			"computerDnsName": "temp2.redmond.corp.microsoft.com",
			"rbacGroupName": "Ring0",
			"aadTenantId": "12f988bf-1234-1234-91ab-2d7cd011db47",
			"relatedUser": {
				"userName": "temp2",
				"domainName": "REDMOND"
			},
			"comments": [],
			"evidence": [
				{
					"entityType": "File",
					"sha1": "ff02786682af8a6ae2842b64c8da543c4d76823c",
					"sha256": "16dafd771171b619a472bb23cd55bc069625be8de5ee01b37b41de1216b2bbb2",
					"fileName": "Your File Is Ready To Download_1911150169.exe",
					"filePath": "C:\\Users\\temp2\\Downloads",
					"processId": null,
					"processCommandLine": null,
					"processCreationTime": null,
					"parentProcessId": null,
					"parentProcessCreationTime": null,
					"ipAddress": null,
					"url": null,
					"accountName": null,
					"domainName": null,
					"userSid": null,
					"aadUserId": null,
					"userPrincipalName": null
				},
				{
					"entityType": "Process",
					"sha1": "ff02786682af8a6ae2842b64c8da543c4d76823c",
					"sha256": "16dafd771171b619a472bb23cd55bc069625be8de5ee01b37b41de1216b2bbb2",
					"fileName": "Your File Is Ready To Download_1911150169.exe",
					"filePath": "C:\\Users\\temp2\\Downloads",
					"processId": 24348,
					"processCommandLine": "\"Your File Is Ready To Download_1911150169.exe\" ",
					"processCreationTime": "2020-07-18T03:25:38.5269993Z",
					"parentProcessId": 16840,
					"parentProcessCreationTime": "2020-07-18T02:12:32.8616797Z",
					"ipAddress": null,
					"url": null,
					"accountName": null,
					"domainName": null,
					"userSid": null,
					"aadUserId": null,
					"userPrincipalName": null
				},
				{
					"entityType": "User",
					"sha1": null,
					"sha256": null,
					"fileName": null,
					"filePath": null,
					"processId": null,
					"processCommandLine": null,
					"processCreationTime": null,
					"parentProcessId": null,
					"parentProcessCreationTime": null,
					"ipAddress": null,
					"url": null,
					"accountName": "temp2",
					"domainName": "REDMOND",
					"userSid": "S-1-5-21-1127532184-1642412920-1887927527-75363",
					"aadUserId": "319dc320-4ce3-4cd7-a0de-c476d146342d",
					"userPrincipalName": "temp2@microsoft.com"
				}
			]
		},
		...
	]
}
```

### Example 2

Get all the alerts last updated after 2019-10-20 00:00:00

```
HTTP GET  https://api.securitycenter.windows.com/api/alerts?$filter=lastUpdateTime+ge+2019-11-22T00:00:00Z
```

**Response:**

```json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Alerts",
    "value": [
        {
            "id": "da637308392288907382_-880718168",
            "incidentId": 7587,
            "investigationId": 723156,
            "assignedTo": "secop123@contoso.com",
            "severity": "Low",
            "status": "New",
            "classification": "TruePositive",
            "determination": null,
            "investigationState": "Queued",
            "detectionSource": "WindowsDefenderAv",
            "category": "SuspiciousActivity",
            "threatFamilyName": "Meterpreter",
            "title": "Suspicious 'Meterpreter' behavior was detected",
            "description": "Malware and unwanted software are undesirable applications that perform annoying, disruptive, or harmful actions on affected machines. Some of these undesirable applications can replicate and spread from one machine to another. Others are able to receive commands from remote attackers and perform activities associated with cyber attacks.\n\nA malware is considered active if it is found running on the machine or it already has persistence mechanisms in place. Active malware detections are assigned higher severity ratings.\n\nBecause this malware was active, take precautionary measures and check for residual signs of infection.",
            "alertCreationTime": "2020-07-20T10:53:48.7657932Z",
            "firstEventTime": "2020-07-20T10:52:17.6654369Z",
            "lastEventTime": "2020-07-20T10:52:18.1362905Z",
            "lastUpdateTime": "2020-07-20T10:53:50.19Z",
            "resolvedTime": null,
            "machineId": "12ee6dd8c833c8a052ea231ec1b19adaf497b625",
            "computerDnsName": "temp123.middleeast.corp.microsoft.com",
            "rbacGroupName": "MiddleEast",
            "aadTenantId": "a839b112-1253-6432-9bf6-94542403f21c",
            "relatedUser": {
                "userName": "temp123",
                "domainName": "MIDDLEEAST"
            },
			"comments": [
				{
					"comment": "test comment for docs",
					"createdBy": "secop123@contoso.com",
					"createdTime": "2020-07-21T01:00:37.8404534Z"
				}
			],
            "evidence": []
		}
		...
	]
}
```

### Example 3

Get all the devices with 'High' 'RiskScore'

```
HTTP GET  https://api.securitycenter.windows.com/api/machines?$filter=riskScore+eq+'High'
```

**Response:**

```json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Machines",
    "value": [
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
			"riskScore": "High",
			"exposureLevel": "Medium",
			"isAadJoined": true,
			"aadDeviceId": "80fe8ff8-2624-418e-9591-41f0491218f9",
			"machineTags": [ "test tag 1", "ExampleTag" ]
        },
        ...
    ]
}
```

### Example 4

Get top 100 devices with 'HealthStatus' not equals to 'Active'

```
HTTP GET  https://api.securitycenter.windows.com/api/machines?$filter=healthStatus+ne+'Active'&$top=100 
```

**Response:**

```json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Machines",
    "value": [
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
			"healthStatus": "ImpairedCommunication",
			"rbacGroupId": 140,
			"rbacGroupName": "The-A-Team",
			"riskScore": "Low",
			"exposureLevel": "Medium",
			"isAadJoined": true,
			"aadDeviceId": "80fe8ff8-2624-418e-9591-41f0491218f9",
			"machineTags": [ "test tag 1", "ExampleTag" ]
        },
        ...
    ]
}
```

### Example 5

Get all the devices that last seen after 2018-10-20

```
HTTP GET  https://api.securitycenter.windows.com/api/machines?$filter=lastSeen gt 2018-08-01Z
```

**Response:**

```json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Machines",
    "value": [
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
			"healthStatus": "ImpairedCommunication",
			"rbacGroupId": 140,
			"rbacGroupName": "The-A-Team",
			"riskScore": "Low",
			"exposureLevel": "Medium",
			"isAadJoined": true,
			"aadDeviceId": "80fe8ff8-2624-418e-9591-41f0491218f9",
			"machineTags": [ "test tag 1", "ExampleTag" ]
        },
        ...
    ]
}
```

### Example 6

Get all the Anti-Virus scans that the user Analyst@examples.onmicrosoft.com created using Microsoft Defender ATP

```
HTTP GET  https://api.securitycenter.windows.com/api/machineactions?$filter=requestor eq 'Analyst@contoso.com' and type eq 'RunAntiVirusScan'
```

**Response:**

```json
json{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#MachineActions",
    "value": [
        {
            "id": "2e9da30d-27f6-4208-81f2-9cd3d67893ba",
            "type": "RunAntiVirusScan",
			"scope": "Full",
            "requestor": "Analyst@contoso.com",
            "requestorComment": "Check machine for viruses due to alert 3212",
            "status": "Succeeded",
            "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
            "computerDnsName": "desktop-39g9tgl",
            "creationDateTimeUtc": "2018-12-04T12:18:27.1293487Z",
            "lastUpdateTimeUtc": "2018-12-04T12:18:57.5511934Z",
			"relatedFileInfo": null
        },
        ...
    ]
}
```

### Example 7

Get the count of open alerts for a specific device:

```
HTTP GET  https://api.securitycenter.windows.com/api/machines/123321d0c675eaa415b8e5f383c6388bff446c62/alerts/$count?$filter=status ne 'Resolved'
```

**Response:**

```json
4
```

## Related topic
- [Microsoft Defender ATP APIs](apis-intro.md)
