---
title: Configure Splunk to consume Windows Defender ATP alerts
description: Configure Splunk to receive and consume alerts from the Windows Defender ATP portal.
keywords: configure splunk, security information and events management tools, splunk
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
---

# Configure Splunk to consume Windows Defender ATP alerts

**Applies to:**

- Windows 10, version 1607
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

You'll need to configure Splunk so that it can consume Windows Defender ATP alerts.

## Before you begin

- Install the [REST API Modular Input app](https://splunkbase.splunk.com/app/1546/) in Splunk (RONEN - please check if this link is correct.)
- Contact the Windows Defender ATP team to provide you your refresh token
- Get the following information from your Azure Active Directory (AAD) application:
    - OAuth 2 Token refresh URL
    - OAuth 2 Client ID
    - OAuth 2 Client secret

## Configure Splunk

1. Login in to Splunk.

2. Select **Search & Reporting**, then **Settings** > **Data inputs**.

3. Select **REST** under **Local inputs**.
> [!NOTE]
> This input will only appear after you install the [REST API Modular Input app](https://splunkbase.splunk.com/app/1546/).

4. Select **New**.

5. In the form fill in the following required fields with these values:

Field | Value
:---|:---
Endpoint URL | `https://DataAccess-PRD.trafficmanager.net:444/api/alerts`
HTTP Method | GET
Authentication Type | oauth2
OAuth 2 Token Refresh URL | Value taken from AAD application
OAuth 2 Client ID |  Value taken from AAD application
OAuth 2 Client Secret | Value taken from AAD application
Response type | json
Response Handler | JSONArrayHandler
Polling Interval | Number of seconds that Splunk will ping the Windows Defender ATP endpoint. Accepted values are in seconds.
Set sourcetype | From list
Source type | \_json

All other values in the form are optional and can be left blank.

6. Select **Save**.

After completing these configuration steps, you can go to the Splunk dashboard and run queries.

Some sample queries are: RONEN - PLEASE CHECK IF THE FOLLOWING ARE CORRECT - THANK YOU
```source="rest://windows atp alerts"```
```source="rest://windows atp alerts"|spath|table*```


## Related topics
- [Configure security information and events management (SIEM) tools to consume alerts](configure-siem-windows-defender-advanced-threat-protection.md)
- [Configure Azure Active Directory application for SIEM integration](configure-aad-windows-defender-advanced-threat-protection.md)
- [Configure HP ArcSight to consume alerts](configure-arcsight-windows-defender-advanced-threat-protection.md)
