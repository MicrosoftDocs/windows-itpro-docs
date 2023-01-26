---
title: 'Tutorial: Deploy feature updates with Windows Update for Business deployment service.'
description: Use Windows Update for Business deployment service to deploy feature updates. 
ms.prod: windows-client
author: mestew
ms.localizationpriority: medium
ms.author: mstewart
manager: aaroncz
ms.topic: tutorial
ms.technology: itpro-updates
ms.date: 02/14/2023
---

# Deploy feature updates with Windows Update for Business deployment service
<!--7512398-->
***(Applies to: Windows 11 & Windows 10)***

In this tutorial, you will:
> [!div class="checklist"]
> * [Open Graph Explorer](#open-graph-explorer) 
> * [Run queries to identify test devices](#run-queries-to-identify-test-devices)
> * [Enroll devices](#enroll-devices)
> * Do Z
> * Do Z
> * [Remove device enrollment](#remove-device-enrollment)

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

As long as a device remains enrolled in feature update management, the device doesn't receive any other feature updates from Windows Update unless explicitly deployed using the deployment service.

<!--Using include for enrolling devices using Graph Explorer-->
[!INCLUDE [Graph Explorer enroll devices](./includes/wufb-deployment-enroll-device-graph-explorer.md)]


## Remove device enrollment

<!--Using include for removing device enrollment-->
[!INCLUDE [Graph Explorer enroll devices](./includes/wufb-deployment-graph-unenroll.md)]