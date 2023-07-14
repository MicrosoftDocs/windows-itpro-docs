---
author: mestew
ms.author: mstewart
manager: aaroncz
ms.technology: itpro-updates
ms.prod: windows-client
ms.topic: include
ms.date: 04/06/2022
ms.localizationpriority: medium
---
<!--This file is shared by updates/wufb-reports-prerequisites.md and the update/update-compliance-configuration-manual.md articles. Headings are driven by article context.  -->

Devices must be able to contact the following endpoints in order to authenticate and send diagnostic data: 

| **Endpoint**  | **Function**  |
|---------------------------------------------------------|-----------|
| `https://v10c.events.data.microsoft.com` | Connected User Experience and Diagnostic component endpoint for Windows 10, version 1803 and later. DeviceCensus.exe must run on a regular cadence and contact this endpoint in order to receive most information for Windows Update for Business reports. |
| `https://v10.vortex-win.data.microsoft.com` | Connected User Experience and Diagnostic component endpoint for Windows 10, version 1709 or earlier. |
| `https://settings-win.data.microsoft.com` | Required for Windows Update functionality. |
| `https://adl.windows.com` | Required for Windows Update functionality. |
| `https://watson.telemetry.microsoft.com` | Windows Error Reporting (WER), used to provide more advanced error reporting if certain Feature Update deployment failures occur. |
| `https://oca.telemetry.microsoft.com`  | Online Crash Analysis, used to provide device-specific recommendations and detailed errors if there are certain crashes. |
| `https://login.live.com` | This endpoint facilitates your Microsoft account access and is required to create the primary identifier we use for devices. Without this service, devices won't be visible in the solution. The Microsoft Account Sign-in Assistant service must also be running (wlidsvc). |
