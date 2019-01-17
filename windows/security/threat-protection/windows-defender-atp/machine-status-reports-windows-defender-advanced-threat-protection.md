---
title: Machine status report in Windows Defender ATP
description: Track machine sensor health state, antivirus status, OS platforms, and versions using the machine status report 
keywords: sensor helath state, antivirus status, os platforms, versions
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
ms.localizationpriority: medium
---

# Machine status report in Windows Defender ATP

**Applies to:**
- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Prerelease information](prerelease.md)]

The machines status report provides high-level information about the devices in your organization. The report includes trending information showing the sensor health state, antivirus status, OS platforms, and Windows 10 versions.


The dashboard is structured into two columns:


Section | Description 
:---|:---
1 | Status over time
2 | Status (last 6 months)



By default, the status over time column displays machine information from the 30-day period ending in the latest full day. To gain better perspective on trends occurring in your organization, you can fine-tune the reporting period by adjusting the time period shown. To adjust the time period, select a time range from the drop-down options:

- 30 days
- 3 months
- 6 months
- Custom

While the machines over time column shows trending information alerts, the machine aggregation column shows machine information scoped to 6 months.

 The machine aggregation column allows you to drill down to the machines list with the corresponding filter applied to it. For example, clicking on the inactive bar in the Sensor health state card will bring you the machines list with results showing only machines whose sensor status is inactive. 




## Machine attributes
The report is made up of cards that display the following alert attributes:

- **Sensor health state**: shows information about the sensor state on devices, providing an aggregated view of devices that are active, experiencing impaired communications, inactive, or where no sensor data is seen.


- **Antivirus status**: shows the status of the antivirus product in machines.


- **OS platforms**: shows the distribution of OS platforms that exists within your organization. 

- **Windows 10 versions**: shows the number of Windows 10 machines and their versions in your organization.



## Filter data

Use the provided filters to include or exclude alerts with certain attributes.

>[!NOTE]
>These filters apply to **all** the cards in the report.

For example, to show data about Windows 10 machines only:

1. Under **Filters > OS platforms**, select **Windows 10**
2. Ensure that all other options under **OS platforms** are deselected.
3. Select **Apply**. 