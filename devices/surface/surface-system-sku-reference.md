---
title: System SKU reference (Surface)
description: See a reference of System Model and System SKU names.
keywords: uefi, configure, firmware, secure, semm
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: surface, devices, security
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 03/20/2019
ms.reviewer: 
manager: dansimp
---

# System SKU reference

This document provides a reference of System Model and System SKU names that you can use to quickly determine the machine state of a specific device by using PowerShell or WMI.

System Model and System SKU are variables that are stored in the System Management BIOS (SMBIOS) tables in the UEFI layer of Surface devices. The System SKU name is required to differentiate between devices that have the same System Model name, such as Surface Pro and Surface Pro with LTE Advanced. 

| Device   | System Model | System SKU       |
| ---------- | ----------- | -------------- |
| Surface 3 WiFI                                               | Surface 3        | Surface_3                        |
| Surface 3 LTE AT&T                                           | Surface 3        | Surface_3_US1                    |
| Surface 3 LTE Verizon                                        | Surface 3        | Surface_3_US2                    |
| Surface 3 LTE North America                                  | Surface 3        | Surface_3_NAG                    |
| Surface 3 LTE Outside of North America and Y!mobile In Japan | Surface 3        | Surface_3_ROW                    |
| Surface Pro                                                  | Surface Pro      | Surface_Pro_1796                 |
| Surface Pro with LTE Advanced                                | Surface Pro      | Surface_Pro_1807                 |
| Surface Book 2 13inch                                        | Surface Book 2   | Surface_Book_1832                |
| Surface Book 2 15inch                                        | Surface Book 2   | Surface_Book_1793                |
| Surface Go LTE Consumer  | Surface Go | Surface_Go_1825_Consumer |
| Surface Go LTE Commercial | System Go | Surface_Go_1825_Commercial |
| Surface Go Consumer                                          | Surface Go       | Surface_Go_1824_Consumer         |
| Surface Go Commercial                                        | Surface Go       | Surface_Go_1824_Commercial       |
| Surface Pro 6 Consumer                                       | Surface Pro 6    | Surface_Pro_6_1796_Consumer      |
| Surface Pro 6 Commercial                                     | Surface Pro 6    | Surface_Pro_6_1796_Commercial    |
| Surface Laptop 2 Consumer                                    | Surface Laptop 2 | Surface_Laptop_2_1769_Consumer   |
| Surface Laptop 2 Commercial                                  | Surface Laptop 2 | Surface_Laptop_2_1769_Commercial |

## Examples 

**Retrieving the SKU by using PowerShell**  
Use the following PowerShell command to pull the System SKU information:

 ``` powershell  
gwmi -namespace root\wmi -class MS_SystemInformation | select SystemSKU 
```

**Retrieving the SKU by using System Information**  
You can also find the System SKU and System Model for a device in **System Information**. To do this, follow these steps:

1. Select **Start**, and then type **MSInfo32** in the search box.  
1. Select **System Information**.

**Using the SKU in a task sequence WMI condition**  
You can use the System SKU information in the Microsoft Deployment Toolkit (MDT) or System Center Configuration Manager as part of a task sequence WMI condition.

 ``` powershell  
    - WMI Namespace – Root\WMI
    - WQL Query – SELECT * FROM MS_SystemInformation WHERE SystemSKU = "Surface_Pro_1796"
 ``` 
