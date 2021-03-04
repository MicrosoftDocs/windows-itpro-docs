---
title: List alerts API
description: Learn how to use the List alerts API to retrieve a collection of alerts in Microsoft Defender for Endpoint.
keywords: apis, graph api, supported apis, get, alerts, recent
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

# List alerts API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 


[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


## API description
Retrieves a collection of Alerts.
<br>Supports [OData V4 queries](https://www.odata.org/documentation/).
<br>OData supported operators:
<br>```$filter``` on: ```alertCreationTime```, ```lastUpdateTime```, ```incidentId```,```InvestigationId```, ```status```, ```severity``` and ```category``` properties.
<br>```$top``` with max value of 10,000 
<br>```$skip```
<br>```$expand``` of ```evidence```
<br>See examples at [OData queries with Microsoft Defender for Endpoint](exposed-apis-odata-samples.md)


## Limitations
1. You can get alerts last updated according to your configured retention period.
2. Maximum page size is 10,000.
3. Rate limitations for this API are 100 calls per minute and 1500 calls per hour. 


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Alert.Read.All |	'Read all alerts'
Application |	Alert.ReadWrite.All |	'Read and write all alerts'
Delegated (work or school account) | Alert.Read | 'Read alerts'
Delegated (work or school account) | Alert.ReadWrite | 'Read and write alerts'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)
>- The response will include only alerts that are associated with devices that the user can access, based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)

## HTTP request
```
GET /api/alerts
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful, this method returns 200 OK, and a list of [alert](alerts.md) objects in the response body.


## Example 1 - Default

**Request**

Here is an example of the request.

```http
GET https://api.securitycenter.microsoft.com/api/alerts
```

**Response**

Here is an example of the response.

>[!NOTE]
>The response list shown here may be truncated for brevity. All alerts will be returned from an actual call.


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

## Example 2 - Get 10 latest Alerts with related Evidence

**Request**

Here is an example of the request.

```http
GET https://api.securitycenter.microsoft.com/api/alerts?$top=10&$expand=evidence
```


**Response**

Here is an example of the response.

>[!NOTE]
>The response list shown here may be truncated for brevity. All alerts will be returned from an actual call.


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


## See also
- [OData queries with Microsoft Defender for Endpoint](exposed-apis-odata-samples.md)
