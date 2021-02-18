---
title: OData queries with Microsoft Defender for Endpoint
ms.reviewer: 
description: Use these examples of Open Data Protocol (OData) queries to help with data access protocols in Microsoft Defender for Endpoint.
keywords: apis, supported apis, odata, query
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
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
ms.technology: mde
---

# OData queries with Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


If you are not familiar with OData queries, see: [OData V4 queries](https://www.odata.org/documentation/)

Not all properties are filterable.

## Properties that supports $filter:

- [Alert](alerts.md): ```alertCreationTime```, ```lastUpdateTime```, ```incidentId```,```InvestigationId```, ```status```, ```severity``` and ```category```.
- [Machine](machine.md): ```ComputerDnsName```, ```LastSeen```, ```HealthStatus```, ```OsPlatform```, ```RiskScore``` and ```RbacGroupId```.
- [MachineAction](machineaction.md): ```Status```, ```MachineId```, ```Type```, ```Requestor``` and ```CreationDateTimeUtc```.
- [Indicator](ti-indicator.md): ```indicatorValue```, ```indicatorType```, ```creationTimeDateTimeUtc```, ```createdBy```, ```severity ``` and ```action ```.

### Example 1

Get 10 latest Alerts with related Evidence:

```http
HTTP GET  https://api.securitycenter.microsoft.com/api/alerts?$top=10&$expand=evidence
```

**Response:**

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Alerts",
    "value": [
		{
			"id": "da637472900382838869_1364969609",
			"incidentId": 1126093,
			"investigationId": null,
			"assignedTo": null,
			"severity": "Low",
			"status": "New",
			"classification": null,
			"determination": null,
			"investigationState": "Queued",
			"detectionSource": "WindowsDefenderAtp",
			"detectorId": "17e10bbc-3a68-474a-8aad-faef14d43952",
			"category": "Execution",
			"threatFamilyName": null,
			"title": "Low-reputation arbitrary code executed by signed executable",
			"description": "Binaries signed by Microsoft can be used to run low-reputation arbitrary code. This technique hides the execution of malicious code within a trusted process. As a result, the trusted process might exhibit suspicious behaviors, such as opening a listening port or connecting to a command-and-control (C&C) server.",
			"alertCreationTime": "2021-01-26T20:33:57.7220239Z",
			"firstEventTime": "2021-01-26T20:31:32.9562661Z",
			"lastEventTime": "2021-01-26T20:31:33.0577322Z",
			"lastUpdateTime": "2021-01-26T20:33:59.2Z",
			"resolvedTime": null,
			"machineId": "111e6dd8c833c8a052ea231ec1b19adaf497b625",
			"computerDnsName": "temp123.middleeast.corp.microsoft.com",
			"rbacGroupName": "A",
            "aadTenantId": "a839b112-1253-6432-9bf6-94542403f21c",
			"threatName": null,
			"mitreTechniques": [
				"T1064",
				"T1085",
				"T1220"
			],
			"relatedUser": {
                "userName": "temp123",
                "domainName": "MIDDLEEAST"
            },
			"comments": [
				{
					"comment": "test comment for docs",
					"createdBy": "secop123@contoso.com",
					"createdTime": "2021-01-26T01:00:37.8404534Z"
				}
			],
			"evidence": [
				{
					"entityType": "User",
					"evidenceCreationTime": "2021-01-26T20:33:58.42Z",
					"sha1": null,
					"sha256": null,
					"fileName": null,
					"filePath": null,
					"processId": null,
					"processCommandLine": null,
					"processCreationTime": null,
					"parentProcessId": null,
					"parentProcessCreationTime": null,
					"parentProcessFileName": null,
					"parentProcessFilePath": null,
					"ipAddress": null,
					"url": null,
					"registryKey": null,
					"registryHive": null,
					"registryValueType": null,
					"registryValue": null,
					"accountName": "eranb",
					"domainName": "MIDDLEEAST",
					"userSid": "S-1-5-21-11111607-1111760036-109187956-75141",
					"aadUserId": "11118379-2a59-1111-ac3c-a51eb4a3c627",
					"userPrincipalName": "temp123@microsoft.com",
					"detectionStatus": null
				},
				{
					"entityType": "Process",
					"evidenceCreationTime": "2021-01-26T20:33:58.6133333Z",
					"sha1": "ff836cfb1af40252bd2a2ea843032e99a5b262ed",
					"sha256": "a4752c71d81afd3d5865d24ddb11a6b0c615062fcc448d24050c2172d2cbccd6",
					"fileName": "rundll32.exe",
					"filePath": "C:\\Windows\\SysWOW64",
					"processId": 3276,
					"processCommandLine": "rundll32.exe  c:\\temp\\suspicious.dll,RepeatAfterMe",
					"processCreationTime": "2021-01-26T20:31:32.9581596Z",
					"parentProcessId": 8420,
					"parentProcessCreationTime": "2021-01-26T20:31:32.9004163Z",
					"parentProcessFileName": "rundll32.exe",
					"parentProcessFilePath": "C:\\Windows\\System32",
					"ipAddress": null,
					"url": null,
					"registryKey": null,
					"registryHive": null,
					"registryValueType": null,
					"registryValue": null,
					"accountName": null,
					"domainName": null,
					"userSid": null,
					"aadUserId": null,
					"userPrincipalName": null,
					"detectionStatus": "Detected"
				},
				{
					"entityType": "File",
					"evidenceCreationTime": "2021-01-26T20:33:58.42Z",
					"sha1": "8563f95b2f8a284fc99da44500cd51a77c1ff36c",
					"sha256": "dc0ade0c95d6db98882bc8fa6707e64353cd6f7767ff48d6a81a6c2aef21c608",
					"fileName": "suspicious.dll",
					"filePath": "c:\\temp",
					"processId": null,
					"processCommandLine": null,
					"processCreationTime": null,
					"parentProcessId": null,
					"parentProcessCreationTime": null,
					"parentProcessFileName": null,
					"parentProcessFilePath": null,
					"ipAddress": null,
					"url": null,
					"registryKey": null,
					"registryHive": null,
					"registryValueType": null,
					"registryValue": null,
					"accountName": null,
					"domainName": null,
					"userSid": null,
					"aadUserId": null,
					"userPrincipalName": null,
					"detectionStatus": "Detected"
				}
			]
		},
		...
	]
}
```

### Example 2

Get all the alerts last updated after 2019-11-22 00:00:00:

```http
HTTP GET  https://api.securitycenter.microsoft.com/api/alerts?$filter=lastUpdateTime+ge+2019-11-22T00:00:00Z
```

**Response:**

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Alerts",
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
			"threatName": null,
			"mitreTechniques": [
				"T1064",
				"T1085",
				"T1220"
			],
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

Get all the devices with 'High' 'RiskScore':

```http
HTTP GET  https://api.securitycenter.microsoft.com/api/machines?$filter=riskScore+eq+'High'
```

**Response:**

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Machines",
    "value": [
        {
			"id": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
			"computerDnsName": "mymachine1.contoso.com",
			"firstSeen": "2018-08-02T14:55:03.7791856Z",
			"lastSeen": "2021-01-25T07:27:36.052313Z",
			"osPlatform": "Windows10",
			"osProcessor": "x64",
			"version": "1901",
			"lastIpAddress": "10.166.113.46",
			"lastExternalIpAddress": "167.220.203.175",
			"osBuild": 19042,
			"healthStatus": "Active",
			"deviceValue": "Normal",
			"rbacGroupName": "The-A-Team",
			"riskScore": "High",
			"exposureLevel": "Low",
			"aadDeviceId": "fd2e4d29-7072-4195-aaa5-1af139b78028",
			"machineTags": [
				"Tag1",
				"Tag2"
			],
			"ipAddresses": [
				{
					"ipAddress": "10.166.113.47",
					"macAddress": "8CEC4B897E73",
					"operationalStatus": "Up"
				},
				{
					"ipAddress": "2a01:110:68:4:59e4:3916:3b3e:4f96",
					"macAddress": "8CEC4B897E73",
					"operationalStatus": "Up"
				}
			]
		},
        ...
    ]
}
```

### Example 4

Get top 100 devices with 'HealthStatus' not equals to 'Active':

```http
HTTP GET  https://api.securitycenter.microsoft.com/api/machines?$filter=healthStatus+ne+'Active'&$top=100 
```

**Response:**

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Machines",
    "value": [
        {
			"id": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
			"computerDnsName": "mymachine1.contoso.com",
			"firstSeen": "2018-08-02T14:55:03.7791856Z",
			"lastSeen": "2021-01-25T07:27:36.052313Z",
			"osPlatform": "Windows10",
			"osProcessor": "x64",
			"version": "1901",
			"lastIpAddress": "10.166.113.46",
			"lastExternalIpAddress": "167.220.203.175",
			"osBuild": 19042,
			"healthStatus": "Active",
			"deviceValue": "Normal",
			"rbacGroupName": "The-A-Team",
			"riskScore": "Low",
			"exposureLevel": "Low",
			"aadDeviceId": "fd2e4d29-7072-4195-aaa5-1af139b78028",
			"machineTags": [
				"Tag1",
				"Tag2"
			],
			"ipAddresses": [
				{
					"ipAddress": "10.166.113.47",
					"macAddress": "8CEC4B897E73",
					"operationalStatus": "Up"
				},
				{
					"ipAddress": "2a01:110:68:4:59e4:3916:3b3e:4f96",
					"macAddress": "8CEC4B897E73",
					"operationalStatus": "Up"
				}
			]
		},
        ...
    ]
}
```

### Example 5

Get all the devices that last seen after 2018-10-20:

```http
HTTP GET  https://api.securitycenter.microsoft.com/api/machines?$filter=lastSeen gt 2018-08-01Z
```

**Response:**

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Machines",
    "value": [
        {
			"id": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
			"computerDnsName": "mymachine1.contoso.com",
			"firstSeen": "2018-08-02T14:55:03.7791856Z",
			"lastSeen": "2021-01-25T07:27:36.052313Z",
			"osPlatform": "Windows10",
			"osProcessor": "x64",
			"version": "1901",
			"lastIpAddress": "10.166.113.46",
			"lastExternalIpAddress": "167.220.203.175",
			"osBuild": 19042,
			"healthStatus": "Active",
			"deviceValue": "Normal",
			"rbacGroupName": "The-A-Team",
			"riskScore": "Low",
			"exposureLevel": "Low",
			"aadDeviceId": "fd2e4d29-7072-4195-aaa5-1af139b78028",
			"machineTags": [
				"Tag1",
				"Tag2"
			],
			"ipAddresses": [
				{
					"ipAddress": "10.166.113.47",
					"macAddress": "8CEC4B897E73",
					"operationalStatus": "Up"
				},
				{
					"ipAddress": "2a01:110:68:4:59e4:3916:3b3e:4f96",
					"macAddress": "8CEC4B897E73",
					"operationalStatus": "Up"
				}
			]
		},
        ...
    ]
}
```

### Example 6

Get all the Anti-Virus scans that the user Analyst@examples.onmicrosoft.com created using Microsoft Defender for Endpoint:

```http
HTTP GET  https://api.securitycenter.microsoft.com/api/machineactions?$filter=requestor eq 'Analyst@contoso.com' and type eq 'RunAntiVirusScan'
```

**Response:**

```json
json{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#MachineActions",
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

```http
HTTP GET  https://api.securitycenter.microsoft.com/api/machines/123321d0c675eaa415b8e5f383c6388bff446c62/alerts/$count?$filter=status ne 'Resolved'
```

**Response:**

```json
4
```

### Example 8

Get all the devices with 'computerDnsName' starting with 'mymachine':

```http
HTTP GET  https://api.securitycenter.microsoft.com/api/machines?$filter=startswith(computerDnsName,'mymachine')
```

**Response:**

```json
json{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Machines",
    "value": [
        {
			"id": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
			"computerDnsName": "mymachine1.contoso.com",
			"firstSeen": "2018-08-02T14:55:03.7791856Z",
			"lastSeen": "2021-01-25T07:27:36.052313Z",
			"osPlatform": "Windows10",
			"osProcessor": "x64",
			"version": "1901",
			"lastIpAddress": "10.166.113.46",
			"lastExternalIpAddress": "167.220.203.175",
			"osBuild": 19042,
			"healthStatus": "Active",
			"deviceValue": "Normal",
			"rbacGroupName": "The-A-Team",
			"riskScore": "Low",
			"exposureLevel": "Low",
			"aadDeviceId": "fd2e4d29-7072-4195-aaa5-1af139b78028",
			"machineTags": [
				"Tag1",
				"Tag2"
			],
			"ipAddresses": [
				{
					"ipAddress": "10.166.113.47",
					"macAddress": "8CEC4B897E73",
					"operationalStatus": "Up"
				},
				{
					"ipAddress": "2a01:110:68:4:59e4:3916:3b3e:4f96",
					"macAddress": "8CEC4B897E73",
					"operationalStatus": "Up"
				}
			]
		},
        ...
    ]
}
```

## See also
- [Microsoft Defender for Endpoint APIs](apis-intro.md)
