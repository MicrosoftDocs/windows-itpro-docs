---
title: List Indicators API
description: Learn how to use the List Indicators API to retrieve a collection of all active Indicators in Microsoft Defender Advanced Threat Protection.
keywords: apis, public api, supported apis, Indicators collection
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

# List Indicators API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


## API description
Retrieves a collection of all active [Indicators](ti-indicator.md).
<br>Supports [OData V4 queries](https://www.odata.org/documentation/).
<br>The OData's ```$filter``` query is supported on: ```indicatorValue```, ```indicatorType```, ```creationTimeDateTimeUtc```, ```createdBy```, ```action``` and ```severity``` properties.
<br>See examples at [OData queries with Microsoft Defender for Endpoint](exposed-apis-odata-samples.md)


## Limitations
1. Rate limitations for this API are 100 calls per minute and 1500 calls per hour. 


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Get started](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Ti.ReadWrite |	'Read and write Indicators'
Application |	Ti.ReadWrite.All |	'Read and write All Indicators'
Delegated (work or school account) |	Ti.ReadWrite |	'Read and write Indicators'

## HTTP request
```
GET https://api.securitycenter.microsoft.com/api/indicators
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful, this method returns 200, Ok response code with a collection of [Indicator](ti-indicator.md) entities.

>[!Note]
> If the Application has 'Ti.ReadWrite.All' permission, it will be exposed to all Indicators. Otherwise, it will be exposed only to the Indicators it created.

## Example 1:

**Request**

Here is an example of a request that gets all Indicators

```
GET https://api.securitycenter.microsoft.com/api/indicators
```

**Response**

Here is an example of the response.

```
HTTP/1.1 200 Ok
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Indicators",
    "value": [
        {
			"id": "995",
            "indicatorValue": "12.13.14.15",
            "indicatorType": "IpAddress",
			"action": "Alert",
			"application": "demo-test",
			"source": "TestPrdApp",
			"sourceType": "AadApp",
            "title": "test",
            "creationTimeDateTimeUtc": "2018-10-24T11:15:35.3688259Z",
            "createdBy": "45097602-1234-5678-1234-9f453233e62c",
            "expirationTime": "2020-12-12T00:00:00Z",
			"lastUpdateTime": "2019-10-24T10:54:23.2009016Z",
			"lastUpdatedBy": TestPrdApp,
            "severity": "Informational",
            "description": "test",
            "recommendedActions": "test",
			"rbacGroupNames": []
        },
        {
			"id": "996",
            "indicatorValue": "220e7d15b0b3d7fac48f2bd61114db1022197f7f",
            "indicatorType": "FileSha1",
			"action": "AlertAndBlock",
			"application": null,
			"source": "TestPrdApp",
			"sourceType": "AadApp",
            "title": "test",
            "creationTimeDateTimeUtc": "2018-10-24T10:54:23.2009016Z",
            "createdBy": "45097602-1234-5678-1234-9f453233e62c",
            "expirationTime": "2020-12-12T00:00:00Z",
			"lastUpdateTime": "2019-10-24T10:54:23.2009016Z",
			"lastUpdatedBy": TestPrdApp,
            "severity": "Informational",
            "description": "test",
            "recommendedActions": "TEST",
			"rbacGroupNames": [ "Group1", "Group2" ]
        }
		...
    ]
}
```

## Example 2:

**Request**

Here is an example of a request that gets all Indicators with 'AlertAndBlock' action 

```
GET https://api.securitycenter.microsoft.com/api/indicators?$filter=action+eq+'AlertAndBlock'
```

**Response**

Here is an example of the response.

```
HTTP/1.1 200 Ok
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Indicators",
    "value": [
        {
			"id": "997",
            "indicatorValue": "111e7d15b0b3d7fac48f2bd61114db1022197f7f",
            "indicatorType": "FileSha1",
			"action": "AlertAndBlock",
			"application": null,
			"source": "TestPrdApp",
			"sourceType": "AadApp",
            "title": "test",
            "creationTimeDateTimeUtc": "2018-10-24T10:54:23.2009016Z",
            "createdBy": "45097602-1234-5678-1234-9f453233e62c",
            "expirationTime": "2020-12-12T00:00:00Z",
			"lastUpdateTime": "2019-10-24T10:54:23.2009016Z",
			"lastUpdatedBy": TestPrdApp,
            "severity": "Informational",
            "description": "test",
            "recommendedActions": "TEST",
			"rbacGroupNames": [ "Group1", "Group2" ]
        }
		...
    ]
}
```
