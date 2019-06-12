---
title: Configure the Basic group policy for Windows Update for Business
description: Learn how to get started using the Basic GPO in Windows Update for Business.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: lomayor
ms.localizationpriority: medium
ms.author: lomayor
ms.date: 06/20/2018
ms.reviewer: 
manager: laurawi
ms.topic: article
---
# Configure the Basic group policy for Windows Update for Business

For Windows Update for Business configurations to work, devices need to be configured with minimum [diagnostic data](https://docs.microsoft.com/windows/privacy/configure-windows-diagnostic-data-in-your-organization) level of "Basic." Additionally, compliance reporting for configured devices is obtained using [Update Compliance in Windows Analytics](https://docs.microsoft.com/windows/deployment/update/update-compliance-monitor). To view your data in Update Compliance [diagnostics data must be enabled](https://docs.microsoft.com/windows/deployment/update/windows-analytics-get-started#set-diagnostic-data-levels) and the devices must be configured with a commercial ID, a unique GUID created for an enterprise at the time of onboarding to the Windows Analytics solution. 

|Policy name|Description |
|-|-|
|Allow Telemetry|Enables Microsoft to run diagnostics on your device and troubleshoot.|
|Configure Commercial ID|This policy allows you to join the device to an entity.|

## Suggested configuration

|Policy|Location|Suggested configuration|
|-|-|-|
|Allow Telemetry |GPO: Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > Allow Telemetry	|State: Enabled <br>**Option**: 1-Basic|
|Configure Commercial ID|GPO: Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > Configure Commercial ID	|State: Enabled <br>**Commercial ID**: The GUID created for you at the time of onboarding to Windows Analytics|
