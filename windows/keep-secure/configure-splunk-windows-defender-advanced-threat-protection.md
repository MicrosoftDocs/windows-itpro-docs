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

5. In the form fill in the following required fields with the following values, then click **Save**:
> [!NOTE]
>All other values in the form are optional and can be left blank.

  <table>
  <tbody style="vertical-align:top;">
  <tr>
  <th>Field</th>
  <th>Value</th>
  </tr>
  <tr>
  <td>Endpoint URL</td>
  <td>https://DataAccess-PRD.trafficmanager.net:444/api/alerts</td>
  </tr>
  <td>Events URL</td>
  <td>`https://DataAccess-PRD.trafficmanager.net:444/api/alerts`</td>
  <tr>
  <td>HTTP Method</td>
  <td>GET</td>
  </tr>
  <td>Authentication Type</td>
  <td>oauth2</td>
  <tr>
  <td>OAuth 2 Token Refresh URL</td>
  <td>	Value taken from AAD application</td>
  </tr>
  <tr>
  <td>OAuth 2 Client ID</td>
  <td>Value taken from AAD application</td>
  </tr>
  <tr>
  <td>OAuth 2 Client Secret</td>
  <td>Value taken from AAD application</td>
  </tr>
  <tr>
  <td>Response type</td>
  <td>json</td>
  </tr>
  <tr>
  <td>Response Handler</td>
  <td>JSONArrayHandler</td>
  </tr>
  <tr>
  <td>Polling Interval</td>
  <td>Number of seconds that Splunk will ping the Windows Defender ATP endpoint. Accepted values are in seconds.</td>
  </tr>
  <tr>
  <td>Set sourcetype</td>
  <td>From list</td>
  </tr>
  <tr>
  <td>Source type</td>
  <td>\_json</td>
  </tr>
  </tr>
  </table>

After completing these configuration steps, you can go to the Splunk dashboard and run queries.

Some sample queries are: RONEN - PLEASE CHECK IF THE FOLLOWING ARE CORRECT - THANK YOU
```source="rest://windows atp alerts"```
```source="rest://windows atp alerts"|spath|table*```


## Related topics
- [Configure security information and events management (SIEM) tools to consume alerts](configure-siem-windows-defender-advanced-threat-protection.md)
- [Configure Azure Active Directory application for SIEM integration](configure-aad-windows-defender-advanced-threat-protection.md)
- [Configure HP ArcSight to consume alerts](configure-arcsight-windows-defender-advanced-threat-protection.md)
