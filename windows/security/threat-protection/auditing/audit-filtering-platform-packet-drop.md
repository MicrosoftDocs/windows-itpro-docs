---
title: Audit Filtering Platform Packet Drop 
description: The policy setting, Audit Filtering Platform Packet Drop, determines if audit events are generated when packets are dropped by the Windows Filtering Platform.
ms.assetid: 95457601-68d1-4385-af20-87916ddab906
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/06/2021
ms.topic: reference
---

# Audit Filtering Platform Packet Drop


Audit Filtering Platform Packet Drop determines whether the operating system generates audit events when packets are dropped by the [Windows Filtering Platform](/windows/win32/fwp/windows-filtering-platform-start-page).

Windows Filtering Platform (WFP) enables independent software vendors (ISVs) to filter and modify TCP/IP packets, monitor or authorize connections, filter Internet Protocol security (IPsec)-protected traffic, and filter remote procedure calls (RPCs).

A high rate of dropped packets *may* indicate that there have been attempts to gain unauthorized access to computers on your network.

**Event volume**: High.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|-------------------|-----------------|-----------------|------------------|------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | No              | No              | No               | No               | Failure events volume typically is very high for this subcategory and typically used for troubleshooting. If you need to monitor blocked connections, it is better to use “[5157](event-5157.md)(F): The Windows Filtering Platform has blocked a connection,” because it contains almost the same information and generates per-connection, not per-packet.<br>There is no recommendation to enable Success auditing, because Success events in this subcategory rarely occur. |
| Member Server     | No              | No              | No               | No               | Failure events volume typically is very high for this subcategory and typically used for troubleshooting. If you need to monitor blocked connections, it is better to use “[5157](event-5157.md)(F): The Windows Filtering Platform has blocked a connection,” because it contains almost the same information and generates per-connection, not per-packet.<br>There is no recommendation to enable Success auditing, because Success events in this subcategory rarely occur. |
| Workstation       | No              | No              | No               | No               | Failure events volume typically is very high for this subcategory and typically used for troubleshooting. If you need to monitor blocked connections, it is better to use “[5157](event-5157.md)(F): The Windows Filtering Platform has blocked a connection,” because it contains almost the same information and generates per-connection, not per-packet.<br>There is no recommendation to enable Success auditing, because Success events in this subcategory rarely occur. |

**Events List:**

-   [5152](event-5152.md)(F): The Windows Filtering Platform blocked a packet.

-   [5153](event-5153.md)(S): A more restrictive Windows Filtering Platform filter has blocked a packet.