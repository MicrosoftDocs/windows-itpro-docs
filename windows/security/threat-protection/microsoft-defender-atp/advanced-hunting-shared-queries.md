---
title: Use shared queries in advanced hunting
description: Take advantage of shared advanced hunting queries. Share your queries to the public and to your organization.
keywords: advanced hunting, atp query, query atp data, atp telemetry, events, events telemetry, kusto, github repo
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 09/25/2019
---

# Use shared queries in Advanced hunting

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-advancedhunting-abovefoldlink)

Advanced hunting queries can be shared among users in the same organization. These queries let you quickly pursue specific threat hunting scenarios without having to write queries from scratch.

![Image of shared queries](images/atp-advanced-hunting-shared-queries.png)

## Save, modify, and share a query
You can save a new or existing query so that it is only accessible to you or shared with other users in your organization.

1. Type a new query or load an existing one from under **Shared queries** or **My queries**.

2. Select **Save** or **Save as** from the save options. To avoid overwriting an existing query, choose **Save as**.

3. Enter a name for the query.

   ![Image of saving a query](images/advanced-hunting-save-query.png)

4. Select the folder where you'd like to save the query.
    - **Shared queries** — shared to all users in the your organization
    - **My queries** — accessible only to you
    
5. Select **Save**.

## Delete or rename a query
1. Right-click on a query you want to rename or delete.

    ![Image of delete query](images/atp_advanced_hunting_delete_rename.png)

2. Select **Delete** and confirm deletion. Or select **Rename** and provide a new name for the query.

## Access queries in the GitHub repository  
Microsoft security researchers regularly share Advanced hunting queries in a [designated public repository on GitHub](https://github.com/Microsoft/WindowsDefenderATP-Hunting-Queries). This repository is open to contributions. To contribute, [join GitHub for free](https://github.com/). 

>[!TIP]
>Microsoft security researchers also provide Advanced hunting queries that you can use to locate activities and indicators associated with emerging threats. These queries are provided as part of the [threat analytics](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/threat-analytics) reports in Microsoft Defender Security Center.

## Related topics
- [Advanced hunting overview](overview-hunting.md)
- [Learn the query language](advanced-hunting.md)