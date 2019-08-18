---
title: OData queries with Microsoft Defender ATP
ms.reviewer: 
description: OData queries with Microsoft Defender ATP
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

- Get all the machines with the tag 'ExampleTag'

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
            "osVersion": "10.0.0.0",
            "lastIpAddress": "172.17.230.209",
            "lastExternalIpAddress": "167.220.196.71",
            "agentVersion": "10.5830.18209.1001",
            "osBuild": 18209,
            "healthStatus": "Active",
            "rbacGroupId": 140,
            "rbacGroupName": "The-A-Team",
            "riskScore": "High",
            "aadDeviceId": "80fe8ff8-2624-418e-9591-41f0491218f9",
            "machineTags": [ "test tag 1", "test tag 2", "ExampleTag" ]
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
            "description": "Some description",
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
            "id": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
            "computerDnsName": "mymachine1.contoso.com",
            "firstSeen": "2018-08-02T14:55:03.7791856Z",
            "lastSeen": "2018-08-02T14:55:03.7791856Z",
            "osPlatform": "Windows10",
            "osVersion": "10.0.0.0",
            "lastIpAddress": "172.17.230.209",
            "lastExternalIpAddress": "167.220.196.71",
            "agentVersion": "10.5830.18209.1001",
            "osBuild": 18209,
            "healthStatus": "Active",
            "rbacGroupId": 140,
            "rbacGroupName": "The-A-Team",
            "riskScore": "High",
            "aadDeviceId": "80fe8ff8-2624-418e-9591-41f0491218f9",
            "machineTags": [ "test tag 1", "test tag 2", "ExampleTag" ]
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
            "id": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
            "computerDnsName": "mymachine1.contoso.com",
            "firstSeen": "2018-08-02T14:55:03.7791856Z",
            "lastSeen": "2018-08-02T14:55:03.7791856Z",
            "osPlatform": "Windows10",
            "osVersion": "10.0.0.0",
            "lastIpAddress": "172.17.230.209",
            "lastExternalIpAddress": "167.220.196.71",
            "agentVersion": "10.5830.18209.1001",
            "osBuild": 18209,
            "healthStatus": "Active",
            "rbacGroupId": 140,
            "rbacGroupName": "The-A-Team",
            "riskScore": "High",
            "aadDeviceId": "80fe8ff8-2624-418e-9591-41f0491218f9",
            "machineTags": [ "test tag 1", "test tag 2", "ExampleTag" ]
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
            "osVersion": "10.0.0.0",
            "lastIpAddress": "172.17.230.209",
            "lastExternalIpAddress": "167.220.196.71",
            "agentVersion": "10.5830.18209.1001",
            "osBuild": 18209,
            "healthStatus": "Active",
            "rbacGroupId": 140,
            "rbacGroupName": "The-A-Team",
            "riskScore": "High",
            "aadDeviceId": "80fe8ff8-2624-418e-9591-41f0491218f9",
            "machineTags": [ "test tag 1", "test tag 2", "ExampleTag" ]
        },
        .
        .
        .
    ]
}
```

### Example 6

- Get all the Anti-Virus scans that the user Analyst@examples.onmicrosoft.com created using Microsoft Defender ATP

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

### Example 7

- Get the count of open alerts for a specific machine:

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
