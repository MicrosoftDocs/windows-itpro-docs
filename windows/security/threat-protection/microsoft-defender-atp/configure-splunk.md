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



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-configuresplunk-abovefoldlink) 

You'll need to configure Splunk so that it can pull Microsoft Defender ATP detections.

>[!Note]
>- [Microsoft Defender ATP Alert](alerts.md) is composed from one or more detections
>- [Microsoft Defender ATP Detection](api-portal-mapping.md) is composed from the suspicious event occurred on the Machine and its related Alert details.

## Before you begin

- Install the open source [Windows Defender ATP Modular Inputs TA](https://splunkbase.splunk.com/app/4128/) in Splunk.
- Make sure you have enabled the **SIEM integration** feature from the **Settings** menu. For more information, see [Enable SIEM integration in Microsoft Defender ATP](enable-siem-integration.md)

- Have the details file you saved from enabling the **SIEM integration** feature ready. You'll need to get the following values:
   - Tenant ID
   - Client ID
   - Client Secret
   - Resource URL


## Configure Splunk

1. Login in to Splunk.

2. Go to **Settings** > **Data inputs**.

3. Select **Windows Defender ATP alerts** under **Local inputs**.

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
   <td>Name</td>
   <td>Name for the Data Input</td>
   </tr>
    <td>Login URL</td>
   <td>URL to authenticate the azure app (Default : https://login.microsoftonline.com)</td>
   </tr>
   <td>Endpoint</td>
   <td>Depending on the location of your datacenter, select any of the following URL: </br></br> <strong>For EU</strong>:  <code>https://wdatp-alertexporter-eu.securitycenter.windows.com/api/alerts</code><br></br><strong>For US:</strong><code>https://wdatp-alertexporter-us.securitycenter.windows.com/api/alerts</code> <br><br> <strong>For UK:</strong><code>https://wdatp-alertexporter-uk.securitycenter.windows.com/api/alerts</code>
   </tr>
   <tr>
   <td>Tenant ID</td>
   <td>Azure Tenant ID</td>
   </tr>
   <td>Resource</td>
   <td>Value from the SIEM integration feature page</td>
   <tr>
   <td>Client ID</td>
   <td>Value from the SIEM integration feature page</td>
   </tr>
   <tr>
   <td>Client Secret</td>
   <td>Value from the SIEM integration feature page</td>
   </tr>
   
   </tr>
   </table>

After completing these configuration steps, you can go to the Splunk dashboard and run queries.

## View detections using Splunk solution explorer
Use the solution explorer to view detections in Splunk.

1. In Splunk, go to **Settings** > **Searchers, reports, and alerts**.

2. Select **New**.

3. Enter the following details:
   - Search: Enter a query, for example:</br>
     `sourcetype="wdatp:alerts" |spath|table*`
   - App: Add-on for Windows Defender (TA_Windows-defender)

     Other values are optional and can be left with the default values.

4. Click **Save**. The query is saved in the list of searches.

5. Find the query you saved in the list and click **Run**. The results are displayed based on your query.


>[!TIP]
> To minimize Detection duplications, you can use the following query:
>```source="rest://wdatp:alerts" | spath | dedup _raw | table *``` 

## Related topics
- [Enable SIEM integration in Microsoft Defender ATP](enable-siem-integration.md)
- [Configure ArcSight to pull Microsoft Defender ATP detections](configure-arcsight.md)
- [Microsoft Defender ATP Detection fields](api-portal-mapping.md)
- [Pull Microsoft Defender ATP detections using REST API](pull-alerts-using-rest-api.md)
- [Troubleshoot SIEM tool integration issues](troubleshoot-siem.md)
