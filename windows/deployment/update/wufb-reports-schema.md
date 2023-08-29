---
title: Windows Update for Business reports data schema
titleSuffix: Windows Update for Business reports
description: An overview of Windows Update for Business reports data schema to power additional dashboards and data analysis tools.
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: reference
author: mestew
ms.author: mstewart
manager: aaroncz
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
ms.date: 11/15/2022
---

# Windows Update for Business reports schema
<!--37063317, 30141258, 37063041-->
When the visualizations provided in the default experience don't fulfill your reporting needs, or if you need to troubleshoot issues with devices, it's valuable to understand the schema for Windows Update for Business reports and have a high-level understanding of the capabilities of [Azure Monitor log queries](/azure/azure-monitor/log-query/query-language) to power additional dashboards, integration with external data analysis tools, automated alerting, and more.

## Schemas for Windows Update for Business reports

The following table summarizes the different tables that are part of the Windows Update for Business reports solution. To learn how to navigate Azure Monitor Logs to find this data, see [Get started with log queries in Azure Monitor](/azure/azure-monitor/log-query/get-started-queries).

> [!NOTE]
> Data is collected daily. The TimeGenerated field shows the time data was collected. It's added by Log Analytics when data is collected. Device data from the past 28 days is collected, even if no new data has been generated since the last time. LastScan is a clearer indicator of data freshness (that is, the last time the values were updated), while TimeGenerated indicates the freshness of data within Log Analytics.

|Table |Category |Description |
|--|--|--|
| [**UCClient**](wufb-reports-schema-ucclient.md) | Device record | UCClient acts as an individual device's record. It contains data such as the currently installed build, the device's name, the operating system edition, and active hours (quantitative). |
|[**UCClientReadinessStatus**](wufb-reports-schema-ucclientreadinessstatus.md) | Device record | UCClientReadinessStatus is an individual device's record about its readiness for updating to Windows 11. If the device isn't capable of running Windows 11, the record includes which Windows 11 hardware requirements the device doesn't meet.|
| [**UCClientUpdateStatus**](wufb-reports-schema-ucclientupdatestatus.md) |  Device record |  Update Event that combines the latest client-based data with the latest service-based data to create a complete picture for one device (client) and one update. |
| [**UCDeviceAlert**](wufb-reports-schema-ucdevicealert.md)| Service and device record  |  These alerts are activated as a result of an issue that is device-specific. It isn't specific to the combination of a specific update and a specific device. Like UpdateAlerts, the AlertType indicates where the Alert comes from such as a ServiceDeviceAlert or ClientDeviceAlert. |
| [**UCDOAggregatedStatus**](wufb-reports-schema-ucdoaggregatedstatus.md)| Device record  | UCDOAggregatedStatus is an aggregation of all individual UDDOStatus records across the tenant and summarizes bandwidth savings across all devices enrolled using Delivery Optimization and Microsoft Connected Cache. |
| [**UCDOStatus**](wufb-reports-schema-ucdostatus.md)| Device record | UCDOStatus provides information, for a single device, on its bandwidth utilization across content types in the event they use Delivery Optimization and Microsoft Connected Cache.  |
| [**UCServiceUpdateStatus**](wufb-reports-schema-ucserviceupdatestatus.md) | Service record  | Update Event that comes directly from the service-side. The event has only service-side information for one device (client), and one update, in one deployment. |
| [**UCUpdateAlert**](wufb-reports-schema-ucupdatealert.md) | Service and device records  |  Alert for both client and service update. Contains information that needs attention, relative to one device (client), one update, and one deployment, if relevant. Certain fields may be blank depending on the UpdateAlert's AlertType field. For example, ServiceUpdateAlert won't necessarily contain client-side statuses and may be blank.  |
