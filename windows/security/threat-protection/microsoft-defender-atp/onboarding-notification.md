---
title: Create an onboarding or offboarding notification rule 
description: Get a notification when a local onboarding or offboarding script is used.
keywords: onboarding, offboarding, local, script, notification, rule
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

# Create a notification rule when a local onboarding or offboarding script is used

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Create a notification rule so that when a local script is used, you'll be notified. 

## Before you begin
You'll need to have access to:
 - Microsoft Flow (Flow Plan 1 at a minimum). For more information, see [Flow pricing page](https://flow.microsoft.com/pricing/).
 - Azure Table or SharePoint List or Library / SQL DB

## Create the notification flow

1. In [flow.microsoft.com](https://flow.microsoft.com/).

2. Navigate to **My flows > New > Scheduled - from blank**. 

3. 
