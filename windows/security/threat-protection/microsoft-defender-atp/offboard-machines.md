---
title: Offboard devices from the Microsoft Defender ATP service
description: Onboard Windows 10 devices, servers, non-Windows devices from the Microsoft Defender ATP service
keywords: offboarding, microsoft defender advanced threat protection offboarding, windows atp offboarding
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
ms.topic: conceptual
---

# Offboard devices from the Microsoft Defender ATP service

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- macOS
- Linux
- Windows Server 2012 R2
- Windows Server 2016
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-offboarddevices-abovefoldlink)

Follow the corresponding instructions depending on your preferred deployment method.

## Offboard Windows 10 devices
- [Offboard devices using a local script](configure-endpoints-script.md#offboard-devices-using-a-local-script)
- [Offboard devices using Group Policy](configure-endpoints-gp.md#offboard-devices-using-group-policy)
- [Offboard devices using Mobile Device Management tools](configure-endpoints-mdm.md#offboard-and-monitor-devices-using-mobile-device-management-tools)

## Offboard Servers
- [Offboard servers](configure-server-endpoints.md#offboard-windows-servers)

## Offboard non-Windows devices
- [Offboard non-Windows devices](configure-endpoints-non-windows.md#offboard-non-windows-devices)

>[!NOTE]
> Offboarded devices will remain in the portal until [retention period](data-storage-privacy.md#how-long-will-microsoft-store-my-data-what-is-microsofts-data-retention-policy) for the device's data expires. The status will be switched to ['Inactive'](fix-unhealthy-sensors.md#inactive-devices) 7 days after offboarding. <br> 
> In addition, [Devices that are not active in the last 30 days are not factored in on the data that reflects your organization's threat and vulnerability management exposure score and Microsoft Secure Score for Devices.](tvm-dashboard-insights.md) <br>
> To view only active devices, you can filter by [health state](machines-view-overview.md#health-state) or by [device tags](machine-tags.md) and [groups](machine-groups.md) etc. 
