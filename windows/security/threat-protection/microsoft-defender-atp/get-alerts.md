---
title: List alerts API
description: Retrieve a collection of recent Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) alerts.
keywords: apis, graph api, supported apis, get, alerts, recent
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

# List alerts API

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 


## API description
Retrieves a collection of Alerts.
<br>Supports [OData V4 queries](https://www.odata.org/documentation/).
<br>OData supported operators:
<br>```$filter``` on: ```alertCreationTime```, ```lastUpdateTime```, ```incidentId```,```InvestigationId```, ```status```, ```severity``` and ```category``` properties.
<br>```$top``` with max value of 10,000 
<br>```$skip```
<br>```$expand``` of ```evidence```
<br>See examples at [OData queries with Microsoft Defender ATP](exposed-apis-odata-samples.md)


## Limitations
1. You can get alerts last updated according to your configured retention period.
2. Maximum page size is 10,000.
3. Rate limitations for this API are 100 calls per minute and 1500 calls per hour. 


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

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

```
GET https://api.securitycenter.microsoft.com/api/alerts
```

[!include[Improve request performance](../../includes/improve-request-performance.md)]


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

```
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


## Related topics
- [OData queries with Microsoft Defender ATP](exposed-apis-odata-samples.md)
