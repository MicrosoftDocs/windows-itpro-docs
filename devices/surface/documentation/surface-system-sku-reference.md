---
title: Surface System SKU reference
description: This topic provides a reference of System SKU names that you can use to quickly determine the machine state of a specific device.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: coveminer
ms.author: v-jokai
ms.topic: article
ms.date: 03/12/2019
---
# Surface System SKU Reference
This document provides a reference of System SKU names that you can use to quickly determine the machine state of a specific device using PowerShell, WMI, and related tools. 

System SKU is a variable (along with System Model and others) stored in System Management BIOS (SMBIOS) tables in the UEFI layer of Surface devices.  Use the System SKU name whenever you need to differentiate between devices with the same System Model name, such as Surface Pro and Surface Pro with LTE Advanced. 

| **Device**| **System Model** | **System SKU**|
| --- | ---| --- |
| Surface 3 WiFI                                               | Surface 3        | Surface_3                        |
| Surface 3 LTE AT&T                                           | Surface 3        | Surface_3_US1                    |
| Surface 3 LTE Verizon                                        | Surface 3        | Surface_3_US2                    |
| Surface 3 LTE North America                                  | Surface 3        | Surface_3_NAG                    |
| Surface 3 LTE Outside of North America and T-Mobile In Japan | Surface 3        | Surface_3_ROW                    |
| Surface Pro                                                  | Surface Pro      | Surface_Pro_1796                 |
| Surface Pro with LTE Advanced                                | Surface Pro      | Surface_Pro_1807                 |
| Surface Book 2 13inch                                        | Surface Book 2   | Surface_Book_1832                |
| Surface Book 2 15inch                                        | Surface Book 2   | Surface_Book_1793                |
| Surface Go Consumer                                          | Surface Go       | Surface_Go_1824_Consumer         |
| Surface Go Commercial                                        | Surface Go       | Surface_Go_1824_Commercial       |
| Surface Pro 6 Consumer                                       | Surface Pro 6    | Surface_Pro_6_1796_Consumer      |
| Surface Pro 6 Commercial                                     | Surface Pro 6    | Surface_Pro_6_1796_Commercial    |
| Surface Laptop 2 Consumer                                    | Surface Laptop 2 | Surface_Laptop_2_1769_Consumer   |
| Surface Laptop 2 Commercial                                  | Surface Laptop 2 | Surface_Laptop_2_1769_Commercial |

## Using System SKU variables 

### PowerShell

     gwmi -namespace root\wmi -class MS_SystemInformation | select SystemSKU 

### System Information
You can also find the System SKU and System Model for a device in System Information. 
- Click **Start** >  **MSInfo32**.  

### WMI
You can use System SKU variables in a Task Sequence WMI Condition in the Microsoft Deployment Toolkit (MDT) or System Center Configuration Manager. For example: 

    - WMI Namespace – Root\WMI
    - WQL Query – SELECT * FROM MS_SystemInformation WHERE SystemSKU = "Surface_Pro_1796"

 
 
 


