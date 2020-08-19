---
title: Get all vulnerabilities by machine and software
description: Retrieves a list of all the vulnerabilities affecting the organization by Machine and Software
keywords: apis, graph api, supported apis, get, vulnerability information, mdatp tvm api
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dolmont
author: DulceMontemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# List vulnerabilities by machine and software

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Retrieves a list of all the vulnerabilities affecting the organization per [machine](machine.md) and [software](software.md).
- If the vulnerability has a fixing KB, it will appear in the response.
- Supports [OData V4 queries](https://www.odata.org/documentation/).
- The OData ```$filter``` is supported on all properties.

>[!Tip]
>This is great API for [Power BI integration](api-power-bi.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md) for details.

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Vulnerability.Read.All |	'Read Threat and Vulnerability Management vulnerability information'
Delegated (work or school account) | Vulnerability.Read |	'Read Threat and Vulnerability Management vulnerability information'

## HTTP request
```
GET /api/vulnerabilities/machinesVulnerabilities
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful, this method returns 200 OK with the list of vulnerabilities in the body.


## Example

**Request**

Here is an example of the request.

```
GET https://api.securitycenter.windows.com/api/vulnerabilities/machinesVulnerabilities
```

**Response**

Here is an example of the response.


```json
{
    "@odata.context": "https://api-us.securitycenter.windows.com/api/$metadata#Collection(microsoft.windowsDefenderATP.api.PublicAssetVulnerabilityDto)",
    "value": [
        {
            "id": "5afa3afc92a7c63d4b70129e0a6f33f63a427e21-_-CVE-2020-6494-_-microsoft-_-edge_chromium-based-_-81.0.416.77-_-",
            "cveId": "CVE-2020-6494",
            "machineId": "5afa3afc92a7c63d4b70129e0a6f33f63a427e21",
            "fixingKbId": null,
            "productName": "edge_chromium-based",
            "productVendor": "microsoft",
            "productVersion": "81.0.416.77",
            "severity": "Low"
        },
        {
            "id": "7a704e17d1c2977c0e7b665fb18ae6e1fe7f3283-_-CVE-2016-3348-_-microsoft-_-windows_server_2012_r2-_-6.3.9600.19728-_-3185911",
            "cveId": "CVE-2016-3348",
            "machineId": "7a704e17d1c2977c0e7b665fb18ae6e1fe7f3283",
            "fixingKbId": "3185911",
            "productName": "windows_server_2012_r2",
            "productVendor": "microsoft",
            "productVersion": "6.3.9600.19728",
            "severity": "Low"
        },
		...
    ]

}
```

## Related topics

- [Risk-based threat and vulnerability management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)
- [Vulnerabilities in your organization](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/tvm-weaknesses)
