---
title: Configure Splunk to pull Microsoft Defender ATP detections
description: Configure Splunk to receive and pull detections from Microsoft Defender Security Center.
keywords: configure splunk, security information and events management tools, splunk
search.product: eADQiWindows 10XVcnh
search.appverid: met150
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

# Configure Splunk to pull Microsoft Defender ATP detections

**Applies to:**


- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configuresplunk-abovefoldlink) 

You'll need to configure Splunk so that it can pull Microsoft Defender ATP detections.

>[!Note]
>- [Microsoft Defender ATP Alert](alerts.md) is composed from one or more detections
>- [Microsoft Defender ATP Detection](api-portal-mapping.md) is composed from the suspicious event occurred on the Machine and its related Alert details.

## Before you begin

- Install the open source [Windows Defender ATP Modular Inputs TA](https://splunkbase.splunk.com/app/4128/) in Splunk.
- Make sure you have enabled the **SIEM integration** feature from the **Settings** menu. For more information, see [Enable SIEM integration in Microsoft Defender ATP](enable-siem-integration.md)

- Have the details file you saved from enabling the **SIEM integration** feature ready. You'll need to get the following values:
  - OAuth 2 Token refresh URL
  - OAuth 2 Client ID
  - OAuth 2 Client secret

- Have the refresh token that you generated from the SIEM integration feature ready.

## Configure Splunk

1. Login in to Splunk.

2. Click **Search & Reporting**, then **Settings** > **Data inputs**.

3. Click **REST** under **Local inputs**.

   NOTE:
   This input will only appear after you install the [Windows Defender ATP Modular Inputs TA](https://splunkbase.splunk.com/app/4128/).

4. Click **New**.

5. Type the following values in the required fields, then click **Save**:

   NOTE:
   All other values in the form are optional and can be left blank.

   <table>
   <tbody style="vertical-align:top;">
   <tr>
   <th>Field</th>
   <th>Value</th>
   </tr>
   <tr>
   <td>Endpoint URL</td>
   <td>Depending on the location of your datacenter, select any of the following URL: </br></br> <strong>For EU</strong>:  <code>https://wdatp-alertexporter-eu.securitycenter.windows.com/api/alerts</code><br></br><strong>For US:</strong><code>https://wdatp-alertexporter-us.securitycenter.windows.com/api/alerts</code> <br><br> <strong>For UK:</strong><code>https://wdatp-alertexporter-uk.securitycenter.windows.com/api/alerts</code>
   </tr>
   <tr>
   <td>HTTP Method</td>
   <td>GET</td>
   </tr>
   <td>Authentication Type</td>
   <td>oauth2</td>
   <tr>
   <td>OAuth 2 Access token</td>
   <td>Use the value that you generated when you enabled the SIEM integration feature. </br></br> NOTE: The access token expires after an hour. </td>
   </tr>
   <tr>
   <td>OAuth 2 Refresh Token</td>
   <td>Use the value that you generated when you enabled the <strong>SIEM integration</strong> feature.</td>
   </tr>
   <tr>
   <td>OAuth 2 Token Refresh URL</td>
   <td>Use the value from the details file you saved when you enabled the <strong>SIEM integration</strong> feature.</td>
   </tr>
   <tr>
   <td>OAuth 2 Client ID</td>
   <td>Use the value from the details file you saved when you enabled the <strong>SIEM integration</strong> feature.</td>
   </tr>
   <tr>
   <td>OAuth 2 Client Secret</td>
   <td>Use the value from the details file you saved when you enabled the <strong>SIEM integration</strong> feature.</td>
   </tr>
   <tr>
   <td>Response type</td>
   <td>Json</td>
   </tr>
   <tr>
   <td>Response Handler</td>
   <td>JSONArrayHandler</td>
   </tr>
   <tr>
   <td>Polling Interval</td>
   <td>Number of seconds that Splunk will ping the Microsoft Defender ATP machine. Accepted values are in seconds.</td>
   </tr>
   <tr>
   <td>Set sourcetype</td>
   <td>Manual</td>
   </tr>
   <tr>
   <td>Source type</td>
   <td>_json</td>
   </tr>
   </tr>
   </table>

After completing these configuration steps, you can go to the Splunk dashboard and run queries.

## View detections using Splunk solution explorer
Use the solution explorer to view detections in Splunk.

1. In Splunk, go to **Settings** > **Searchers, reports, and alerts**.

2. Select **New**.

3. Enter the following details:
   - Destination app: Select Search & Reporting (search)
   - Search name: Enter a name for the query
   - Search: Enter a query, for example:</br>
     `source="rest://windows atp alerts"|spath|table*`

     Other values are optional and can be left with the default values.
4. Click **Save**. The query is saved in the list of searches.

5. Find the query you saved in the list and click **Run**. The results are displayed based on your query.


>[!TIP]
> To mininimize Detection duplications, you can use the following query:
>```source="rest://windows atp alerts" | spath | dedup _raw | table *``` 

## Related topics
- [Enable SIEM integration in Microsoft Defender ATP](enable-siem-integration.md)
- [Configure ArcSight to pull Microsoft Defender ATP detections](configure-arcsight.md)
- [Microsoft Defender ATP Detection fields](api-portal-mapping.md)
- [Pull Microsoft Defender ATP detections using REST API](pull-alerts-using-rest-api.md)
- [Troubleshoot SIEM tool integration issues](troubleshoot-siem.md)
