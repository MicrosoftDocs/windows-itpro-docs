---
title: Deploy expedited updates with Windows Update for Business deployment service
description: Use Windows Update for Business deployment service to deploy expedited updates. 
ms.prod: windows-client
author: mestew
ms.localizationpriority: medium
ms.author: mstewart
manager: aaroncz
ms.topic: article
ms.technology: itpro-updates
ms.date: 02/14/2023
---

# Deploy expedited updates with Windows Update for Business deployment service
<!--7512398-->
***(Applies to: Windows 11 & Windows 10)***

In this article, you will:
> [!div class="checklist"]
> * [Open Graph Explorer](#open-graph-explorer) 
> * [Run queries to identify test devices](#run-queries-to-identify-devices)
> * Do Z


## Prerequisites

? This requires an extra license at the moment correct? Of does the client have to be listed as intune managed at the moment?

All of the [prerequisites for the Windows Update for Business deployment service](deployment-service-overview.md#prerequisites) must be met.

### Permissions

<!--Using include for Graph Explorer permissions-->
[!INCLUDE [Windows Update for Business deployment service permissions using Graph Explorer](./includes/wufb-deployment-graph-explorer-permissions.md)]

## Open Graph Explorer

<!--Using include for Graph Explorer sign in-->
[!INCLUDE [Graph Explorer sign in](./includes/wufb-deployment-graph-explorer.md)]

## Run queries to identify devices

<!--Using include for Graph Explorer device queries-->
[!INCLUDE [Graph Explorer device queries](./includes/wufb-deployment-find-device-name-graph-explorer.md)]



## List updates in the catalog that can be expedited

1. Query the catalog to find updates that can be expedited, For example, query for all security updates that can be deployed as expedited updates by the deployment service. Using `$top=3` and ordering by `ReleaseDateTimeshows` displays the three most current updates.

```
GET https://graph.microsoft.com/beta/admin/windows/updates/catalog/entries?$filter=isof('microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry') and microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/isExpeditable eq true&$orderby=releaseDateTime desc&$top=3
```