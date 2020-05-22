---
title: Device health and compliance report in Microsoft Defender ATP
description: Track device health state detections, antivirus status, OS platform, and Windows 10 versions using the device health and compliance report
keywords: health state, antivirus, os platform, windows 10 version, version, health, compliance, state
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

# Device health and compliance report in Microsoft Defender ATP

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


The devices status report provides high-level information about the devices in your organization. The report includes trending information showing the sensor health state, antivirus status, OS platforms, and Windows 10 versions.

The dashboard is structured into two sections:
 ![Image of the device report](images/machine-reports.png)
 
Section | Description
:---|:---
1 | Device trends
2 | Device summary (current day)
 
 
## Device trends 
By default, the device trends displays device information from the 30-day period ending in the latest full day. To gain better perspective on trends occurring in your organization, you can fine-tune the reporting period by adjusting the time period shown. To adjust the time period, select a time range from the drop-down options:
 
- 30 days
- 3 months
- 6 months
- Custom

>[!NOTE]
>These filters are only applied on the device trends section. It doesn't affect the device summary section.

## Device summary 
While the devices trends shows trending device information, the device summary shows device information scoped to the current day. 

>[!NOTE]
>The data reflected in the summary section is scoped to 180 days prior to the current date. For example if today's date is March 27, 2019, the data on the summary section will reflect numbers starting from September 28, 2018 to March 27, 2019.<br>
> The filter applied on the trends section is not applied on the summary section. 
 
The device trends section allows you to drill down to the devices list with the corresponding filter applied to it. For example, clicking on the Inactive bar in the Sensor health state card will bring you the devices list with results showing only devices whose sensor status is inactive. 
 
 
 
## Device attributes
The report is made up of cards that display the following device attributes:
 
- **Health state**: shows information about the sensor state on devices, providing an aggregated view of devices that are active, experiencing impaired communications, inactive, or where no sensor data is seen.
  
- **Antivirus status for active Windows 10 devices**: shows the number of devices and status of Windows Defender Antivirus.
    
- **OS platforms**: shows the distribution of OS platforms that exists within your organization. 
 
- **Windows 10 versions**: shows the distribution of Windows 10 devices and their versions in your organization.
 
 
 
## Filter data
 
Use the provided filters to include or exclude devices with certain attributes.

You can select multiple filters to apply from the device attributes. 
 
>[!NOTE]
>These filters apply to **all** the cards in the report.
 
For example, to show data about Windows 10 devices with Active sensor health state:
 
1. Under **Filters > Sensor health state > Active**.
2. Then select **OS platforms > Windows 10**.
3. Select **Apply**.


## Related topic
- [Threat protection report](threat-protection-reports.md)