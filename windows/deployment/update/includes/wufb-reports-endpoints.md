---
author: mestew
ms.author: mstewart
manager: aaroncz
ms.technology: itpro-updates
ms.prod: windows-client
ms.topic: include
ms.date: 12/15/2023
ms.localizationpriority: medium
---

<!-- This file is shared by update/wufb-reports-prerequisites.md and update/wufb-reports-configuration-manual.md articles. Headings are driven by article context. -->

Devices must be able to contact the following endpoints in order to authenticate and send diagnostic data: 

| **Endpoint**  | **Function**  |
|---------------------------------------------------------|-----------|
| `*v10c.events.data.microsoft.com` </br> </br> `eu-v10c.events.data.microsoft.com` for tenants with billing address in the [EU Data Boundary](/privacy/eudb/eu-data-boundary-learn) <!--8141818--> | Connected User Experience and Diagnostic component endpoint for Windows 10, version 1803 and later. DeviceCensus.exe must run on a regular cadence and contact this endpoint in order to receive most information for Windows Update for Business reports. |
| `umwatsonc.events.data.microsoft.com` </br> </br> `eu-watsonc.events.data.microsoft.com` for tenants with billing address in the [EU Data Boundary](/privacy/eudb/eu-data-boundary-learn) | Windows Error Reporting (WER), used to provide more advanced error reporting if certain Feature Update deployment failures occur. |
| `v10.vortex-win.data.microsoft.com` | Connected User Experience and Diagnostic component endpoint for Windows 10, version 1709 or earlier. |
| `settings-win.data.microsoft.com` | Used by Windows components and applications to dynamically update their configuration. Required for Windows Update functionality. |
| `adl.windows.com` | Required for Windows Update functionality. |
| `oca.telemetry.microsoft.com`  | Online Crash Analysis, used to provide device-specific recommendations and detailed errors if there are certain crashes. |
| `login.live.com` | This endpoint facilitates your Microsoft account access and is required to create the primary identifier we use for devices. Without this service, devices aren't visible in the solution. The Microsoft Account Sign-in Assistant service must also be running (wlidsvc). |
| `ceuswatcab01.blob.core.windows.net` <br> `ceuswatcab02.blob.core.windows.net` <br> `eaus2watcab01.blob.core.windows.net` <br> `eaus2watcab02.blob.core.windows.net` <br> `weus2watcab01.blob.core.windows.net` <br> `weus2watcab02.blob.core.windows.net` | Azure blob data storage. <!-- 8603508 --> |
