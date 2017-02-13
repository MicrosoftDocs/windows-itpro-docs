---
title: Create custom threat intelligence using REST API in Windows Defender ATP
description: Create your custom alert definitions and indicators of compromise in Windows Defender ATP using the available APIs in Windows Enterprise, Education, and Pro editions.
keywords: alert definitions, indicators of compromise, threat intelligence, custom ti, rest api, api
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Create custom threat intelligence (TI) using REST API

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

You can define custom alert definitions and indicators of compromise (IOC) using the available APIs. Creating custom TIs allows you to create specific alerts that are applicable to your organization.

## Before you begin
Before creating custom TIs, you'll need to enable the custom TI application in Azure Active Directory and generate access tokens. For more information, see [Enable the custom threat intelligence application](enable-custom-ti-windows-defender-advanced-threat-protection.md).

### Use the available REST APIs to create custom TIs
You can call and specify the resource URLs using one of the following operations to access and manipulate a custom TI resource, you call and specify the resource URLs using one of the following operations:

-	GET
-	POST
-	PATCH
-	PUT (used for managing entities relations only)
-	DELETE

All custom TI API requests use the following basic URL pattern:

```
    https://TI.SecurityCenter.Windows.com/{version}/{resource}?[query_parameters]
```

For this URL:
-	`https://TI.SecurityCenter.Windows.com` is the custom TI API endpoint.
-	`{version}` is the target service version. Currently only supported version is: v1.0.
-	`{resource}` is resource segment or path, such as:
  -	AlertDefinitions (for specific single resource, add: (id))
  -	IndicatorsOfCompromise (for specific single resource, add: (id))
-	`[query_parameters]` represents additional query parameters such as $filter and $select.

**Quotas**</br>
Each tenant has a defined quota that limits the number of possible alert definitions, IOCs and another quota for IOCs of Action different than “equals” in the system. If you upload data beyond this quota, you'll encounter an HTTP error status code 507 (Insufficient Storage).

## Custom TI API metadata
The metadata document ($metadata) is published at the service root.

For example, you can view the service document for the v1.0 version using the following URL:

```
  https://TI.SecurityCenter.Windows.com/v1.0/$metadata
```

The metadata allows you to see and understand the data model of the custom TI, including the entity types and sets, complex types, and enums that make up the request and response packets sent to and from custom TI.

You can use the metadata to understand the relationships between entities in custom TI and establish URLs that navigate between entities.

The following sections show a few basic programming pattern calls to the custom TI API.

## Create new resource
Typically, you should create an alert definition to start creating custom threat intelligence.

An ID is created for that alert definition. Then, create an Indicator Of Compromise and associate it to the ID of the alert definition.

### Create a new alert definition

```json
POST https://TI.SecurityCenter.Windows.com/v1.0/AlertDefinitions HTTP/1.1
Authorization: Bearer <access_token>
Content-Type: application/json;


{
  "Name": " The name of the IOA. Does not appear in the portal. Max length: 100 ",
  "Severity": "Low",
  "InternalDescription": "Internal description for the IOA. Does not appear in the portal. Max length: 350",
  "Title": "A short, one sentence, description of the IoA. Max length: 120",
  "UxDescription": " Max length: 500",
  "RecommendedAction": "Custom text to explain what should be done in case of detection. Max length: 2000 ",
  "Category": "Trojan",
  "Enabled": true
}
```

The following values correspond to the alert sections surfaced on the Windows Defender ATP portal:
![Image of alert from the portal](images/atp-custom-ti-mapping.png)

Highlighted section | JSON Value
:---:|:---
1 | Title
2 | Severity
3 | Category
4 | UX description
5 | Recommended Action

If successful, you should get a 201 CREATED response containing the representation of the newly created alert definition, for example:

```json

  "Name": "Connection to restricted company IP address",
  "Severity": "Low",
  "InternalDescription": "Unusual connection to restricted IP from production machine",
  "Title": "Connection to restricted company IP address",
  "UxDescription": "Any connection to this IP address from a production machine should be suspicious. Only special build machines should access this IP address.",
  "RecommendedAction": "Isolate machine immediately and contact machine owner for awareness.",
  "Category": "Trojan",
  "Id": 2,
  "CreatedAt": "2017-02-01T10:46:22.08Z",
  "CreatedBy": "User1",
  "LastModifiedAt": null,
  "LastModifiedBy": null,
  "Enabled": true

```

### Create a new Indicator of Compromise

```json
POST https://TI.SecurityCenter.Windows.com/v1.0/IndicatorsOfCompromise HTTP/1.1
Authorization: Bearer <access_token>
Content-Type: application/json;
Content-Length: 194


{
"Type": "Sha1",
"Value": "8311e8b377736fb93b18b15372355f3f26c4cd29",
"DetectionFunction": "Equals",
"Enabled": true,
"AlertDefinitions@odata.bind": "AlertDefinitions(1)"
}
```
If successful, you should get a 201 CREATED response containing the representation of the newly created Indicators Of Compromise in the payload.


## Bulk upload of alert definitions and IOCs
Bulk upload of multiple entities can be done by sending an HTTP POST request to `/{resource}/Actions.BulkUpload`. </br>

>[!WARNING]
>- This operation is atomic. The entire operation can either succeed or fail. If one alert definition or IOC has a malformed property, the entire upload will fail.
>- If your upload exceeds the IOCs or alert definitions quota, the entire operation will fail. Consider limiting your uploads.


The request’s body should contain a single JSON object with a single field. The name of the field in the case that the entity is alert definition is `alertDefinitions` and in the case of IOC is `iocs`. This field’s value should contain a list of the desired entities.

For example:
Sending an HTTP POST to https://TI.SecurityCenter.Windows.com/V1.0/IndicatorsOfCompromise/Actions.BulkUpload

JSON Body:

```json
{
    "iocs": [{
            "Type": "Sha1",
            "Value": "b68e0b50420dbb03cb8e56a927105bf4b06f3793",
            "DetectionFunction": "Equals",
            "Enabled": true,
            "AlertDefinitions@odata.bind": "AlertDefinitions(1)"
        },
        {
            "Type": "Sha1",
            "Value": "b68e0b50420dbb03cb8e56a927105bf4b06f3793",
            "DetectionFunction": "Equals",
            "Enabled": true,
            "AlertDefinitions@odata.bind": "AlertDefinitions(1)"
        }
    ]
}
```

>[!NOTE]
> - Max bulk size is 5000 entities

## Read existing data
### Get a specific resource

```json
GET https://TI.SecurityCenter.Windows.com/v1.0/IndicatorsOfCompromise(1) HTTP/1.1
Authorization: Bearer <access_token>
Accept: application/json;odata.metadata=none
```

If successful, you should get a 200 OK response containing a single indicator of compromise representation (per the specified Id) in the payload, as shown as follows:

```json
HTTP/1.1 200 OK
content - type: application / json;
odata.metadata = none


{
  "value": [{
      "Type": "Sha1",
      "Value": "abcdeabcde1212121212abcdeabcde1212121212",
      "DetectionFunction": "Equals",
      "ExpiresAt": null,
      "Id": 1,
      "CreatedAt": "2016-12-05T15:51:02Z",
      "CreatedBy": "user2@Company1.contoso.com",
      "LastModifiedAt": null,
      "LastModifiedBy": null,
      "Enabled": true
  }]
}
```


### Get the entire collection of entities of a given resource

  ```
  GET https://TI.SecurityCenter.Windows.com/v1.0/AlertDefinitions HTTP/1.1
  Authorization : Bearer <access_token>
  ```

  If successful, you should get a 200 OK response containing the collection of alert definitions representation in the payload, as shown as follows:

  ```json
  HTTP/1.1 200 OK
  content - type: application / json;odata.metadata = none


  {
      "@odata.context": "https://TI.SecurityCenter.Windows.com/V1.0/$metadata#AlertDefinitions",
      "value": [{
              "Name": "Demo alert definition",
              "Severity": "Medium",
              "InternalDescription": "Some description",
              "Title": "Demo short Ux Desc",
              "UxDescription": "Demo ux desc",
              "RecommendedAction": "Actions",
              "Category": "Malware",
              "Id": 1,
              "CreatedAt": "2016-12-05T15:50:53Z",
              "CreatedBy": "user@Company1.constoso.com",
              "LastModifiedAt": null,
              "LastModifiedBy": null,
              "Enabled": true
          },
          {
              "Name": "Demo alert definition 2",
              "Severity": "Low",
              "InternalDescription": "Some description",
              "Title": "Demo short UX Desc2",
              "UxDescription": "Demo UX Desc2",
              "RecommendedAction": null,
              "Category": "Malware",
              "Id": 2,
              "CreatedAt": "2016-12-06T13:30:00Z",
              "CreatedBy": "user2@Company1.contoso.com",
              "LastModifiedAt": null,
              "LastModifiedBy": null,
              "Enabled": true
          }
      ]
  }
  ```


## Update an existing resource
You can use the same pattern for both full and partial updates.

```json
PATCH https://TI.SecurityCenter.Windows.com/v1.0/AlertDefinitions(2) HTTP/1.1
Authorization : Bearer <access_token>
Content-Type: application/json;
Accept: application/json;odata.metadata=none

{
	"Category": "Backdoor",
	"Enabled": false
}
```

If successful, you should get a 200 OK response containing the updated alert definition representation (per the specified Id) in the payload.

## Update the association (relation) between an indicator of compromise to a different alert definition

```json
PUT https://TI.SecurityCenter.Windows.com/v1.0/IndicatorsOfCompromise(3)/AlertDefinition/$ref HTTP/1.1
Authorization : Bearer <access_token>
Content-Type: application/json;

{
	"@odata.id": "https://TI.SecurityCenter.Windows.com/v1.0/AlertDefinitions(6)"
}
```

## Delete a resource

```
DELETE https://TI.SecurityCenter.Windows.com/v1.0/IndicatorsOfCompromise(1) HTTP/1.1
Authorization: Bearer <access_token>
```

If successful, you should get a 204 NO CONTENT response.

>[!NOTE]
  > - Deleting an alert definition also deletes its corresponding IOC.  
  > - Deleting an IOC or an alert definition will not delete or hide past alerts matching the alert definition. However, deleting an alert definition and creating a new one with the exact same metadata will result in new alerts in the portal. It's not advised to delete an alert definition and create a new one with the same content.

## Delete all
You can use the HTTP DELETE method sent to the relevant source to delete all resources.

```
DELETE https://TI.SecurityCenter.Windows.com/v1.0/IndicatorsOfCompromise HTTP/1.1
Authorization : Bearer <access_token>
```
If successful, you should get a 204 NO CONTENT response.

## Delete all IOCs connected to a given alert definition
This action will delete all the IOCs associated with a given alert definition without deleting the alert definition itself.

For example, deleting all of the IOCs associated with the alert definition with ID `1` deletes all those IOCs without deleting the alert definition itself.

Send an HTTP POST to `https://TI.SecurityCenter.Windows.com/V1.0/AlertDefinitions(1)/Actions.DeleteIOCs`.

Upon a successful request the response will be HTTP 204.

>[!NOTE]
> As with all OData actions, this action is sending an HTTP POST request not DELETE.


## Windows Defender ATP optional query parameters
Windows Defender ATP custom TI provides several optional query parameters that you can use to specify and control the amount of data returned in a response. Custom TI supports the following query options:

Name | Value | Description
:---|:---|:--
$select |	string |	Comma-separated list of properties to include in the response.
$expand |	string |	Comma-separated list of relationships to expand and include in the response.
$orderby |	string	| Comma-separated list of properties that are used to sort the order of items in the response collection.
$filter	| string |	Filters the response based on a set of criteria.
$top |	int |	The number of items to return in a result set.
$skip |	int	| The number of items to skip in a result set.
$count |	boolean |	A collection and the number of items in the collection.

These parameters are compatible with the [OData V4 query language](http://docs.oasis-open.org/odata/odata/v4.0/errata03/os/complete/part2-url-conventions/odata-v4.0-errata03-os-part2-url-conventions-complete.html#_Toc453752356).

## Related topics
- [Understand threat intelligence](threat-indicator-concepts-windows-defender-advanced-threat-protection.md)
- [Enable the custom threat intelligence application](enable-custom-ti-windows-defender-advanced-threat-protection.md)
- [Troubleshoot custom threat intelligence issues](troubleshoot-custom-ti-windows-defender-advanced-threat-protection.md)
