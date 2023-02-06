---
title: Deploy feature updates with Windows Update for Business deployment service.
description: Use Windows Update for Business deployment service to deploy feature updates. 
ms.prod: windows-client
author: mestew
ms.localizationpriority: medium
ms.author: mstewart
manager: aaroncz
ms.topic: article
ms.technology: itpro-updates
ms.date: 02/14/2023
---

# Deploy feature updates with Windows Update for Business deployment service
<!--7512398-->
***(Applies to: Windows 11 & Windows 10)***

The Windows Update for Business deployment service is used to approve and schedule software updates. The deployment service exposes its capabilities through the [Microsoft Graph API](/graph/use-the-api). You can call the API directly, through a [Graph SDK](/graph/sdks/sdks-overview), or integrate them with a management tool such as [Microsoft Intune](/mem/intune). This article uses Graph Explorer to walk through the entire process of deploying a feature update to clients. In this article, you will:

In this article, you will:
> [!div class="checklist"]
> * [Open Graph Explorer](#open-graph-explorer) 
> * [Run queries to identify devices](#run-queries-to-identify-devices)
> * [Enroll devices](#enroll-devices)
> * Do Z
> * Do Z
> - [Unenroll devices](#unenroll-devices)


## Prerequisites

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

## Enroll devices

As long as a device remains enrolled in feature update management, the device doesn't receive any other feature updates from Windows Update unless explicitly deployed using the deployment service.

<!--Using include for enrolling devices using Graph Explorer-->
[!INCLUDE [Graph Explorer enroll devices](./includes/wufb-deployment-enroll-device-graph-explorer.md)]

## Create a deployment audience and add audience members

<!--Using include for creating deployment audiences and adding audience members using Graph Explorer-->
[!INCLUDE [Graph Explorer enroll devices](./includes/wufb-deployment-audience-graph-explorer.md)]




## Unenroll devices

<!--Using include for removing device enrollment-->
[!INCLUDE [Graph Explorer enroll devices](./includes/wufb-deployment-graph-unenroll.md)]
