---
title: Audit PNP Activity (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit PNP Activity, which determines when plug and play detects an external device.
ms.assetid: A3D87B3B-EBBE-442A-953B-9EB75A5F600E
ms.reviewer: 
manager: dansimp
ms.author: dolmont
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# Audit PNP Activity

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit PNP Activity determines when Plug and Play detects an external device.

A PnP audit event can be used to track down changes in system hardware and will be logged on the machine where the change took place. For example, when a keyboard is plugged into a computer, a PnP event is triggered.

**Event volume**: Varies, depending on how the computer is used. Typically Low.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|-------------------|-----------------|-----------------|------------------|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | No              | Yes              | No               | This subcategory will help identify when and which Plug and Play device was attached, enabled, disabled or restricted by device installation policy. <br>You can track, for example, whether a USB flash drive or stick was attached to a domain controller, which is typically not allowed. <br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Member Server     | Yes             | No              | Yes              | No               | This subcategory will help identify when and which Plug and Play device was attached, enabled, disabled or restricted by device installation policy. <br>You can track, for example, whether a USB flash drive or stick was attached to a critical server, which is typically not allowed. <br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory.   |
| Workstation       | Yes             | No              | Yes              | No               | This subcategory will help identify when and which Plug and Play device was attached, enabled, disabled or restricted by device installation policy. <br>You can track, for example, whether a USB flash drive or stick was attached to an administrative workstation or VIP workstation. <br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory.    |

**Events List:**

-   [6416](event-6416.md)(S): A new external device was recognized by the System

-   [6419](event-6419.md)(S): A request was made to disable a device

-   [6420](event-6420.md)(S): A device was disabled.

-   [6421](event-6421.md)(S): A request was made to enable a device.

-   [6422](event-6422.md)(S): A device was enabled.

-   [6423](event-6423.md)(S): The installation of this device is forbidden by system policy.

-   [6424](event-6424.md)(S): The installation of this device was allowed, after having previously been forbidden by policy.

