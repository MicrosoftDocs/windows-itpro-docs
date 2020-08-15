---
title: Get discovered vulnerabilities
description: Retrieves a collection of discovered vulnerabilities related to a given device ID.
keywords: apis, graph api, supported apis, get, list, file, information, discovered vulnerabilities, threat & vulnerability management api, mdatp tvm api
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: levinec
ms.author: ellevin
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Get discovered vulnerabilities

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Retrieves a collection of discovered vulnerabilities related to a given device ID.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type | Permission | Permission display name
:---|:---|:---
Application |Vulnerability.Read.All | 'Read Threat and Vulnerability Management vulnerability information'
Delegated (work or school account) | Vulnerability.Read | 'Read Threat and Vulnerability Management vulnerability information'

## HTTP request

```
GET /api/machines/{machineId}/vulnerabilities
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.

## Request body

Empty

## Response

If successful, this method returns 200 OK with the discovered vulnerability information in the body.

## Example

### Request

Here is an example of the request.

```
GET https://api.securitycenter.windows.com/api/machines/ac233fa6208e1579620bf44207c4006ed7cc4501/vulnerabilities
```

### Response

Here is an example of the response.

```
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Collection(Analytics.Contracts.PublicAPI.PublicVulnerabilityDto)",
    "value": [
        {
            "id": "CVE-2019-1348",
            "name": "CVE-2019-1348",
            "description": "Git could allow a remote attacker to bypass security restrictions, caused by a flaw in the --export-marks option of git fast-import. By persuading a victim to import specially-crafted content, an attacker could exploit this vulnerability to overwrite arbitrary paths.",
            "severity": "Medium",
            "cvssV3": 4.3,
            "exposedMachines": 1,
            "publishedOn": "2019-12-13T00:00:00Z",
            "updatedOn": "2019-12-13T00:00:00Z",
            "publicExploit": false,
            "exploitVerified": false,
            "exploitInKit": false,
            "exploitTypes": [],
            "exploitUris": []
        }
}
```

## Related topics

- [Risk-based Threat & Vulnerability Management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)
- [Vulnerabilities in your organization](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/tvm-weaknesses)
