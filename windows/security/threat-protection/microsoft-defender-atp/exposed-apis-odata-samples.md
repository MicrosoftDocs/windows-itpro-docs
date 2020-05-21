---
title: OData queries with Microsoft Defender ATP
ms.reviewer: 
description: Use these examples of Open Data Protocol (OData) queries to help with data access protocols in Microsoft Defender ATP
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

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

If you are not familiar with OData queries, see: [OData V4 queries](https://www.odata.org/documentation/)

Not all properties are filterable.

## Properties that supports $filter:

- [Alert](alerts.md): Id, IncidentId, AlertCreationTime, Status, Severity and Category.
- [Machine](machine.md): Id, ComputerDnsName, LastSeen, LastIpAddress, HealthStatus, OsPlatform, RiskScore, MachineTags and RbacGroupId.
- [MachineAction](machineaction.md): Id, Status, MachineId, Type, Requestor and CreationDateTimeUtc.

### Example 1

Get all the devices with the tag 'ExampleTag'

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
			"machineTags": [ "test tag 1", "ExampleTag" ]
        },
        ...
    ]
}
```

### Example 2

Get all the alerts that created after 2018-10-20 00:00:00

```
HTTP GET  https://api.securitycenter.windows.com/api/alerts?$filter=alertCreationTime+gt+2018-11-22T00:00:00Z
```

**Response:**

```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Alerts",
    "value": [
        {
            "id": "da637084217856368682_-292920499",
			"incidentId": 66860,
			"investigationId": 4416234,
			"investigationState": "Running",
			"assignedTo": "secop@contoso.com",
			"severity": "Low",
			"status": "New",
			"classification": "TruePositive",
			"determination": null,
			"detectionSource": "WindowsDefenderAtp",
			"category": "CommandAndControl",
			"threatFamilyName": null,
			"title": "Network connection to a risky host",
			"description": "A network connection was made to a risky host which has exhibited malicious activity.",
			"alertCreationTime": "2019-11-03T23:49:45.3823185Z",
			"firstEventTime": "2019-11-03T23:47:16.2288822Z",
			"lastEventTime": "2019-11-03T23:47:51.2966758Z",
			"lastUpdateTime": "2019-11-03T23:55:52.6Z",
			"resolvedTime": null,
			"machineId": "986e5df8b73dacd43c8917d17e523e76b13c75cd",
			"comments": [
				{
					"comment": "test comment for docs",
					"createdBy": "secop@contoso.com",
					"createdTime": "2019-11-05T14:08:37.8404534Z"
				}
		  ]
        },
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

```
HTTP/1.1 200 OK
Content-type: application/json
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

```
HTTP/1.1 200 OK
Content-type: application/json
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

```
HTTP/1.1 200 OK
Content-type: application/json
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

```
HTTP/1.1 200 OK
Content-type: application/json
{
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

```
HTTP/1.1 200 OK
Content-type: application/json

4
```

## Related topic
- [Microsoft Defender ATP APIs](apis-intro.md)
