---
title: # Delivery Optimization and Microsoft Connected Cache content endpoints.
description: # The complete list of all fully qualified domain names, ports, and associated content types to use Delivery Optimization and Microsoft Connected Cache.
ms.date: 07/26/2022
ms.prod: windows
ms.technology: windows
ms.topic: conceptual #reference for complete list of content types, endpoint names, ports, etc.
ms.localizationpriority: medium 
author: # GitHub username (cmknox)
ms.author: # MS alias (carmenf)
ms.reviewer: # MS alias of feature PM, optional
manager: # MS alias of manager (naengler)
ms.collection: # optional
- # highpri - high priority, strategic, important, current, etc. articles
- # openauth - the article is owned by PM or community for open authoring
---

## Delivery Optimization and Microsoft Connected Cache content type endpoints

_Applies to:_

- Windows 11
- Windows 10

> [!NOTE]
> All ports are outbound.

To ensure connect delivered via Delivery Optimization and Microsoft Connected Cache is properly configured, the following list of endpoints need to be allowed through the firewall. Use the table below to reference any particular content types supported by Delivery Optimization and Microsoft Connected Cache.

|Domain Name  |Protocol/Port(s)  | Content Type | Additional Information | Version |
|---------|---------|---------------|-------------------|-----------------|
| *.b1.download.windowsupdate.com, *.dl.delivery.mp.microsoft.com, *.download.windowsupdate.com, *.au.download.windowsupdate.com, *.au.b1.download.windowsupdate.com, *.tlu.dl.delivery.mp.microsoft.com, *.emdl.ws.microsoft.com, *.ctldl.windowsupdate.com   |  HTTP / 80  | Windows Update Windows Defender Windows Drivers | [Complete list](https://docs.microsoft.com/en-us/windows/privacy/manage-windows-2004-endpoints) of endpoints for Windows Update services and payload. | Microsoft Endpoint Configuration Manager Distribution Point |
| *.delivery.mp.microsoft.com  |  HTTP / 80  | Edge Browser | [Complete list](https://docs.microsoft.com/en-us/deployedge/microsoft-edge-security-endpoints) of endpoints for Edge Browser. | Microsoft Endpoint Configuration Manager Distribution Point |
| *.officecdn.microsoft.com.edgesuite.net, *.officecdn.microsoft.com, *.cdn.office.net |  HTTP / 80  | Office CDN updates | [Complete list](https://docs.microsoft.com/en-us/office365/enterprise/office-365-endpoints) of endpoints for Office CDN updates. | Microsoft Endpoint Configuration Manager Distribution Point |
| *.manage.microsoft.com, *.swda01.manage.microsoft.com, *.swda02.manage.microsoft.com, *.swdb01.manage.microsoft.com, *.swdb02.manage.microsoft.com, *.swdc01.manage.microsoft.com, *.swdc02.manage.microsoft.com, *.swdd01.manage.microsoft.com, *.swdd02.manage.microsoft.com, *.swda01-mscdn.manage.microsoft.com, *.swda02-mscdn.manage.microsoft.com, *.swdb01-mscdn.manage.microsoft.com, *.swdb02-mscdn.manage.microsoft.com, *.swdc01-mscdn.manage.microsoft.com, *.swdc02-mscdn.manage.microsoft.com, *.swdd01-mscdn.manage.microsoft.com, *.swdd02-mscdn.manage.microsoft.com |  HTTP / 80, HTTPs / 443  | Intune Win32 Apps | [Complete list](https://docs.microsoft.com/en-us/mem/intune/fundamentals/intune-endpoints) of endpoints for Intune Win32 Apps updates. | Microsoft Endpoint Configuration Manager Distribution Point |
| *.statics.teams.cdn.office.net |  HTTP / 80, HTTPs / 443  | Teams | | Microsoft Endpoint Configuration Manager Distribution Point |
| *.assets1.xboxlive.com, *.assets2.xboxlive.com, *.dlassets.xboxlive.com, *.dlassets2.xboxlive.com, *.d1.xboxlive.com, *.d2.xboxlive.com, *.assets.xbox.com, *.xbl-dlassets-origin.xboxlive.com, *.assets-origin.xboxlive.com, *.xvcb1.xboxlive.com, *.xvcb2.xboxlive.com, *.xvcf1.xboxlive.com, *.xvcf2.xboxlive.com |  HTTP / 80 | Xbox | | Microsoft Endpoint Configuration Manager Distribution Point |
| *.tlu.dl.adu.microsoft.com, *.nlu.dl.adu.microsoft.com, *.dcsfe.prod.adu.microsoft.com |  HTTP / 80 | Device Update | [Complete list](https://docs.microsoft.com/en-us/azure/iot-hub-device-update/) of endpoints for Device Update updates.  | Microsoft Endpoint Configuration Manager Distribution Point |
| *.do.dsp.mp.microsoft.com |  HTTP / 80, HTTPs / 443 | Microsoft Connected Cache -> Delivery Optimization Services communication | [Complete list](https://docs.microsoft.com/en-us/windows/deployment/update/waas-delivery-optimization-faq#what-hostnames-should-i-allow-through-my-firewall-to-support-delivery-optimization) of endpoints for Delivery Optimization only.  | Microsoft Connected Cache Managed in Azure |
| *.azure-devices.net, *.global.azure-devices-provisioning.net, *.azurecr.io, *.blob.core.windows.net, *.mcr.microsoft.com |  AMQP / 5671, MQTT / 8883, HTTPs / 443 | IoT Edge / IoT Hub communication| [Complete list](https://docs.microsoft.com/en-us/azure/iot-hub/iot-hub-devguide-protocols) of Azure IoT Hub communication protocols and ports. [Azure IoT Guide](https://docs.microsoft.com/en-us/azure/iot-hub/iot-hub-devguide-endpoints) to understanding Azure IoT Hub endpoints. | Microsoft Connected Cache Managed in Azure |
