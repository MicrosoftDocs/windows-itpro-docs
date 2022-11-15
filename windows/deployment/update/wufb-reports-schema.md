---
title: Windows Update for Business reports data schema
ms.reviewer: 
manager: dougeby
description: An overview of Windows Update for Business reports data schema
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: reference
ms.date: 11/15/2022
ms.technology: itpro-updates
---

# Windows Update for Business reports schema 
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

When the visualizations provided in the default experience don't fulfill your reporting needs, or if you need to troubleshoot issues with devices, it's valuable to understand the schema for Windows Update for Business reports and have a high-level understanding of the capabilities of [Azure Monitor log queries](/azure/azure-monitor/log-query/query-language) to power additional dashboards, integration with external data analysis tools, automated alerting, and more.

## Schema

The following table summarizes the different tables that are part of the Windows Update for Business reports solution. To learn how to navigate Azure Monitor Logs to find this data, see [Get started with log queries in Azure Monitor](/azure/azure-monitor/log-query/get-started-queries).

> [!NOTE]
> Data is collected daily. The TimeGenerated field shows the time data was collected. It's added by Log Analytics when data is collected. Device data from the past 28 days is collected, even if no new data has been generated since the last time. LastScan is a clearer indicator of data freshness (that is, the last time the values were updated), while TimeGenerated indicates the freshness of data within Log Analytics.

|Table |Category |Description |
|--|--|--|
| [**UCClient**](wufb-reports-schema-ucclient.md) | Device record | UCClient acts as an individual device's record. It contains data such as the currently installed build, the device's name, the operating system edition, and active hours (quantitative). |
|[**UCClientReadinessStatus**](wufb-reports-schema-ucclientreadinessstatus.md) | Device record | UCClientReadinessStatus is an individual device's record about its readiness for updating to Windows 11. If the device isn't capable of running Windows 11, the record includes which Windows 11 hardware requirements the device doesn't meet.|
| [**UCClientUpdateStatus**](wufb-reports-schema-ucclientupdatestatus.md) |  Device record |  Update Event that combines the latest client-based data with the latest service-based data to create a complete picture for one device (client) and one update. |
| [**UCDeviceAlert**](wufb-reports-schema-ucdevicealert.md)| Service and device record  |  These alerts are activated as a result of an issue that is device-specific. It isn't specific to the combination of a specific update and a specific device. Like UpdateAlerts, the AlertType indicates where the Alert comes from such as a ServiceDeviceAlert or ClientDeviceAlert. |
| [**UCServiceUpdateStatus**](wufb-reports-schema-ucserviceupdatestatus.md) | Service record  | Update Event that comes directly from the service-side. The event has only service-side information for one device (client), and one update, in one deployment. |
| [**UCUpdateAlert**](wufb-reports-schema-ucupdatealert.md) | Service and device records  |  Alert for both client and service update. Contains information that needs attention, relative to one device (client), one update, and one deployment, if relevant. Certain fields may be blank depending on the UpdateAlert's AlertType field. For example, ServiceUpdateAlert won't necessarily contain client-side statuses and may be blank.  |
