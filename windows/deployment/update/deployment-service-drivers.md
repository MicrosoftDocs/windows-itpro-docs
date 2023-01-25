---
title: 'Tutorial: Deploy drivers and firmware updates with Windows Update for Business deployment service.'
description: Use Windows Update for Business deployment service to deploy driver and firmware updates. 
ms.prod: windows-client
author: mestew
ms.localizationpriority: medium
ms.author: mstewart
manager: aaroncz
ms.topic: tutorial
ms.technology: itpro-updates
ms.date: 02/14/2023
---

# Deploy drivers and firmware updates with Windows Update for Business deployment service
<!--7260403, 7512398-->
***(Applies to: Windows 11 & Windows 10)***

In this tutorial, you will:
> [!div class="checklist"]
> * [Open Graph Explorer](#open-graph-explorer)
> * [Run queries to identify test devices](#run-queries-to-identify-test-devices)
> * [Enroll devices](#enroll-devices)
> * Do Z
> * Do Z

## Prerequisites

All of the [prerequisites for the Windows Update for Business deployment service](deployment-service-overview.md#prerequisites) must be met.
### Permissions

<!--Using include for tutorial permissions-->
[!INCLUDE [Windows Update for Business deployment service tutorial permissions](./includes/wufb-deployment-tutorial-permissions.md)]

## Open Graph Explorer

<!--Using include for Graph Explorer sign in-->
[!INCLUDE [Graph Explorer sign in](./includes/wufb-deployment-graph-explorer.md)]

## Run queries to identify test devices

<!--Using include for Graph Explorer device queries-->
[!INCLUDE [Graph Explorer device queries](./includes/wufb-deployment-find-device-name-graph-explorer.md)]

## Enroll devices

When you enroll devices into driver management, the deployment service becomes the authority for driver updates coming from Windows Update. Devices don't receive drivers from Windows Update until a deployment is manually created or they're added to a driver update policy with approvals.

<!--Using include for enrolling devices using Graph Explorer-->
[!INCLUDE [Graph Explorer enroll devices](./includes/wufb-deployment-enroll-device-graph-explorer.md)]

