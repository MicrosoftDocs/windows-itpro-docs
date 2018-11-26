---
title: OData queries with Windows Defender ATP
description: OData queries with Windows Defender ATP
keywords: apis, supported apis, odata, query
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 11/15/2018
---

# OData queries with Windows Defender ATP
**Applies to:**
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

- If you are not familiar with OData queries, see: [OData V4 queries](https://www.odata.org/documentation/)

- Not all properties are filterable.

### Properties that supports $filter:

- [Alert](alerts-windows-defender-advanced-threat-protection-new.md): Id, IncidentId, AlertCreationTime, Status, Severity and Category.
- [Machine](machine-windows-defender-advanced-threat-protection-new.md): Id, ComputerDnsName, LastSeen, LastIpAddress, HealthStatus, OsPlatform, RiskScore, MachineTags and RbacGroupId.
- [MachineAction](machineaction-windows-defender-advanced-threat-protection-new.md): Id, Status, MachineId, Type and CreationDateTimeUtc.

### Example 1

**Get all the machines with the tag 'ExampleTag'**

```
HTTP GET  https://api.securitycenter.windows.com/api/machines?$filter=machineTags/any(tag: tag eq 'ExampleTag')
```

**Response:**

```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Machines",
    "value": [
        {
            "id": "b9d4c51123327fb2a25db29ff1b8f3b64888e7ba",
            "computerDnsName": "examples.dev.corp.Contoso.com",
            "firstSeen": "2018-03-07T11:19:11.7234147Z",
            "lastSeen": "2018-11-15T11:23:38.3196947Z",
            "osPlatform": "Windows10",
            "osVersion": "10.0.0.0",
            "lastIpAddress": "123.17.255.241",
            "lastExternalIpAddress": "123.220.196.180",
            "agentVersion": "10.6400.18282.1001",
            "osBuild": 18282,
            "healthStatus": "Active",
            "isAadJoined": true,
            "machineTags": [
                "ExampleTag"
            ],
            "rbacGroupId": 5,
            "rbacGroupName": "Developers",
            "riskScore": "North",
            "aadDeviceId": null
        },
		.
		.
		.
    ]
}
```

### Example 2

- Get all the alerts that created after 2018-10-20 00:00:00

```
HTTP GET  https://api.securitycenter.windows.com/api/alerts?$filter=alertCreationTime gt 2018-11-22T00:00:00Z
```

**Response:**

```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Alerts",
    "value": [
        {
            "id": "121688558380765161_2136280442",
			"incidentId": 7696,
			"assignedTo": "secop@contoso.com",
			"severity": "High",
			"status": "New",
			"classification": "TruePositive",
			"determination": "Malware",
			"investigationState": "Running",
			"category": "MalwareDownload",
			"detectionSource": "WindowsDefenderAv",
			"threatFamilyName": "Mikatz",
			"title": "Windows Defender AV detected 'Mikatz', high-severity malware",
			"description": "Some description"
			"recommendedAction": "Some recommended action"
			"alertCreationTime": "2018-11-26T16:19:21.8409809Z",
			"firstEventTime": "2018-11-26T16:17:50.0948658Z",
			"lastEventTime": "2018-11-26T16:18:01.809871Z",
			"resolvedTime": null,
			"machineId": "9d80fbbc1bdbc5ce968f1d37c72384cbe17ee337"
        },
		.
		.
		.
    ]
}
```

### Example 3

- Get all the machines with 'High' 'RiskScore'

```
HTTP GET  https://api.securitycenter.windows.com/api/machines?$filter=riskScore eq 'High'
```

**Response:**

```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Machines",
    "value": [
        {
            "id": "e3a77eeddb83d581238792387b1239b01286b2f",
            "computerDnsName": "examples.dev.corp.Contoso.com",
            "firstSeen": "2016-11-02T23:26:03.7882168Z",
            "lastSeen": "2018-11-12T10:27:08.708723Z",
            "osPlatform": "Windows10",
            "osVersion": "10.0.0.0",
            "lastIpAddress": "123.123.10.33",
            "lastExternalIpAddress": "124.124.160.172",
            "agentVersion": "10.6300.18279.1001",
            "osBuild": 18279,
            "healthStatus": "ImpairedCommunication",
            "isAadJoined": true,
            "machineTags": [],
            "rbacGroupId": 5,
            "rbacGroupName": "Developers",
            "riskScore": "High",
            "aadDeviceId": "d90b0b99-1234-1234-1234-b91d50c6796a"
        },
		.
		.
		.
    ]
}
```

### Example 4

- Get top 100 machines with 'HealthStatus' not equals to 'Active'

```
HTTP GET  https://api.securitycenter.windows.com/api/machines?$filter=healthStatus ne 'Active'&$top=100
```

**Response:**

```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Machines",
    "value": [
        {
            "id": "1113333ddb83d581238792387b1239b01286b2f",
            "computerDnsName": "examples.dev.corp.Contoso.com",
            "firstSeen": "2016-11-02T23:26:03.7882168Z",
            "lastSeen": "2018-11-12T10:27:08.708723Z",
            "osPlatform": "Windows10",
            "osVersion": "10.0.0.0",
            "lastIpAddress": "123.123.10.33",
            "lastExternalIpAddress": "124.124.160.172",
            "agentVersion": "10.6300.18279.1001",
            "osBuild": 18279,
            "healthStatus": "ImpairedCommunication",
            "isAadJoined": true,
            "machineTags": [],
            "rbacGroupId": 5,
            "rbacGroupName": "Developers",
            "riskScore": "Medium",
            "aadDeviceId": "d90b0b99-1234-1234-1234-b91d50c6796a"
        },
		.
		.
		.
    ]
}
```

### Example 5

- Get all the machines that last seen after 2018-10-20

```
HTTP GET  https://api.securitycenter.windows.com/api/machines?$filter=lastSeen gt 2018-10-20Z
```

**Response:**

```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Machines",
    "value": [
        {
            "id": "83113465ffceca4a731234e5dcde3357e026e873",
            "computerDnsName": "examples-vm10",
            "firstSeen": "2018-11-12T16:07:50.1706168Z",
            "lastSeen": "2018-11-12T16:07:50.1706168Z",
            "osPlatform": "WindowsServer2019",
            "osVersion": null,
            "lastIpAddress": "10.123.72.35",
            "lastExternalIpAddress": "123.220.2.3",
            "agentVersion": "10.6300.18281.1000",
            "osBuild": 18281,
            "healthStatus": "Active",
            "isAadJoined": false,
            "machineTags": [],
            "rbacGroupId": 5,
            "rbacGroupName": "Developers",
            "riskScore": "None",
            "aadDeviceId": null
        },
		.
		.
		.
    ]
}
```

### Example 6

- Get all the Anti-Virus scans that the user Analyst@examples.onmicrosoft.com created using Windows Defender ATP

```
HTTP GET  https://api.securitycenter.windows.com/api/machineactions?$filter=requestor eq 'Analyst@WcdTestPrd.onmicrosoft.com' and type eq 'RunAntiVirusScan'
```

**Response:**

```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#MachineActions",
    "value": [
        {
            "id": "5c3e3322-d993-1234-1111-dfb136ebc8c5",
            "type": "RunAntiVirusScan",
            "requestor": "Analyst@examples.onmicrosoft.com",
            "requestorComment": "1533",
            "status": "Succeeded",
            "machineId": "123321c10e44a82877af76b1d0161a17843f688a",
            "creationDateTimeUtc": "2018-11-12T13:33:24.5755657Z",
            "lastUpdateDateTimeUtc": "2018-11-12T13:34:32.0319826Z",
            "relatedFileInfo": null
        },
		.
		.
		.
    ]
}
```

## Related topic
- [Windows Defender ATP APIs](apis-intro.md)
