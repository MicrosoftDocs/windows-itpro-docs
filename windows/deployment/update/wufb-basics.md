---
title: Configure the Basic group policy for Windows Update for Business
description: In this article, you will learn how to configure the basic group policy for Windows Update for Business.
ms.custom: seo-marvel-apr2020
ms.prod: w10
ms.mktglfcycl: manage
audience: itpro
itproauthor: jaimeo
author: jaimeo
ms.localizationpriority: medium
ms.audience: itpro
ms.reviewer: 
manager: laurawi
ms.topic: article
---
# Configure the Basic group policy for Windows Update for Business

For Windows Update for Business configurations to work, devices need to be configured with minimum [diagnostic data](https://docs.microsoft.com/windows/privacy/configure-windows-diagnostic-data-in-your-organization) level of "Basic." Additionally, compliance reporting for configured devices is obtained using [Monitor Windows Update with Update Compliance](https://docs.microsoft.com/windows/deployment/update/update-compliance-monitor). To view your data in Update Compliance [diagnostics data must be enabled](https://docs.microsoft.com/windows/deployment/update/windows-analytics-get-started#set-diagnostic-data-levels) and the devices must be configured with a commercial ID, a unique GUID created for an enterprise at the time of onboarding.

|Policy name|Description |
|-|-|
|Allow Telemetry|Enables Microsoft to run diagnostics on your device and troubleshoot.|
|Configure Commercial ID|This policy allows you to join the device to an entity.|

## Suggested configuration

|Policy|Location|Suggested configuration|
|-|-|-|
|Allow Telemetry |GPO: Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > Allow Telemetry	|State: Enabled <br>**Option**: 1-Basic|
|Configure Commercial ID|GPO: Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > Configure Commercial ID	|State: Enabled <br>**Commercial ID**: The GUID created for you at the time of onboarding|
