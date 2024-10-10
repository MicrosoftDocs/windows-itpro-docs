---
title: Microsoft Connected Cache content and services endpoints
description: List of fully qualified domain names, ports, and associated content used by Microsoft Connected Cache.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: reference
author: cmknox
ms.author: carmenf
ms.reviewer: mstewart
manager: aaroncz
ms.collection: tier3
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/deployment/do/waas-microsoft-connected-cache target=_blank>Microsoft Connected Cache for ISPs</a>
- ✅ <a href=https://learn.microsoft.com/windows/deployment/do/waas-microsoft-connected-cache target=_blank>Microsoft Connected Cache for Enterprise and Education</a>
- ✅ <a href=https://learn.microsoft.com/mem/configmgr/core/plan-design/hierarchy/microsoft-connected-cache target=_blank>Connected Cache on a Configuration Manager distribution point</a>		
ms.date: 05/23/2024
---

# Microsoft Connected Cache content and services endpoints

> [!NOTE]
> All ports are outbound.

This article lists the content and services endpoints to allow in your firewall to be used by Microsoft Connected Cache.
Use the table below to reference any particular content types or services endpoints that are required for [Connected Cache on a Configuration Manager distribution point](/mem/configmgr/core/plan-design/hierarchy/microsoft-connected-cache), [Connected Cache managed in Azure](waas-microsoft-connected-cache.md), or both.

|Domain Name  |Protocol/Port(s)  | Content Type | Additional Information | Microsoft Connected Cache Version |
|---------|---------|---------------|-------------------|-----------------|
| *.b1.download.windowsupdate.com, *.dl.delivery.mp.microsoft.com, *.download.windowsupdate.com, *.au.download.windowsupdate.com, *.au.b1.download.windowsupdate.com, *.tlu.dl.delivery.mp.microsoft.com, *.ctldl.windowsupdate.com   |  HTTP / 80  | Windows Update </br> Windows Defender </br> Windows Drivers </br> Windows Store | [Complete list](/windows/privacy/manage-windows-2004-endpoints) of endpoints for Windows Update services and payload. | Both |
| *.delivery.mp.microsoft.com  |  HTTP / 80  | Edge Browser | [Complete list](/deployedge/microsoft-edge-security-endpoints) of endpoints for Edge Browser. | Both |
| *.officecdn.microsoft.com.edgesuite.net, *.officecdn.microsoft.com, *.cdn.office.net |  HTTP / 80  | Office CDN updates | [Complete list](/office365/enterprise/office-365-endpoints) of endpoints for Office CDN updates. | Both |
| *.manage.microsoft.com, *.swda01.manage.microsoft.com, *.swda02.manage.microsoft.com, *.swdb01.manage.microsoft.com, *.swdb02.manage.microsoft.com, *.swdc01.manage.microsoft.com, *.swdc02.manage.microsoft.com, *.swdd01.manage.microsoft.com, *.swdd02.manage.microsoft.com, *.swda01-mscdn.manage.microsoft.com, *.swda02-mscdn.manage.microsoft.com, *.swdb01-mscdn.manage.microsoft.com, *.swdb02-mscdn.manage.microsoft.com, *.swdc01-mscdn.manage.microsoft.com, *.swdc02-mscdn.manage.microsoft.com, *.swdd01-mscdn.manage.microsoft.com, *.swdd02-mscdn.manage.microsoft.com |  HTTP / 80 </br> HTTPs / 443  | Intune Win32 Apps | [Complete list](/mem/intune/fundamentals/intune-endpoints) of endpoints for Intune Win32 Apps updates. | Both |
| *.statics.teams.cdn.office.net |  HTTP / 80 </br> HTTPs / 443  | Teams | Future support is planned for peering and Connected Cache | TBD |
| *.res.cdn.office.net |  HTTP / 80 </br> HTTPs / 443  | Outlook | Future support is planned for peering and Connected Cache | TBD |
| *.assets1.xboxlive.com, *.assets2.xboxlive.com, *.dlassets.xboxlive.com, *.dlassets2.xboxlive.com, *.d1.xboxlive.com, *.d2.xboxlive.com, *.assets.xbox.com, *.xbl-dlassets-origin.xboxlive.com, *.assets-origin.xboxlive.com, *.xvcb1.xboxlive.com, *.xvcb2.xboxlive.com, *.xvcf1.xboxlive.com, *.xvcf2.xboxlive.com |  HTTP / 80 | Xbox | | Both |
| *.tlu.dl.adu.microsoft.com, *.nlu.dl.adu.microsoft.com, *.dcsfe.prod.adu.microsoft.com |  HTTP / 80 | Device Update | [Complete list](/azure/iot-hub-device-update/) of endpoints for Device Update updates.  |  Both |
| *.do.dsp.mp.microsoft.com |  HTTP / 80 </br> HTTPs / 443 | Microsoft Connected Cache -> Delivery Optimization Services communication | [Complete list](../do/waas-delivery-optimization-faq.yml) of endpoints for Delivery Optimization only.  | Connected Cache Managed in Azure |
| *.azure-devices.net, *.global.azure-devices-provisioning.net, *.azurecr.io, *.blob.core.windows.net, *.mcr.microsoft.com, github.com |  AMQP / 5671 </br>  MQTT / 8883 </br> HTTPs / 443 | IoT Edge / IoT Hub communication| [Complete list](/azure/iot-hub/iot-hub-devguide-protocols) of Azure IoT Hub communication protocols and ports. [Azure IoT Guide](/azure/iot-hub/iot-hub-devguide-endpoints) to understanding Azure IoT Hub endpoints. | Connected Cache Managed in Azure |
