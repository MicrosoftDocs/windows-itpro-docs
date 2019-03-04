---
title: Manage Windows updates on kiosk devices 
description: Learn about the recommended Group Policy settings to manage Windows updates on a kiosk device.
keywords: ["updates", "kiosk"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerms
ms.localizationpriority: medium
ms.date: 03/04/2019
ms.author: jdecker
---

# Manage Windows updates on kiosk devices


**Applies to**

-   Windows 10 Pro, Enterprise, and Education

Kiosk devices are usually used for specified tasks ranging from displaying a menu or fulfilling the functionality of an ATM. You will want to manage how and when operating system updates are applied to the kiosk so as to minimize disruption to the availability of the device.

For example, you set up a kiosk in your lobby that displays a carousel of images about your business -- you wouldn't want visitors to see a notification that a Windows update was available instead. Nor would you want the kiosk to install the update and restart when you need it available.

We recommend the following settings to manage Windows updates for kiosk devices. You can configure these settings locally on the device, by using Group Policy, or by using mobile device management (MDM) providers such as Microsoft Intune.

•	Display Options for Update Notifications – Enabled
o	Zero = Use the default Windows Update notifications
o	One = Turn off all notifications, excluding restart warnings
o	Two – Turn off all notifications, including restart warnings
•	Configure Automatic Updates-Enabled
o	Option 4 (Auto Download and Schedule Install
o	Schedule Install Day 
o	Schedule Install Time
o	Schedule Install Week
•	Always automatically restart at the scheduled time - Enabled
o	Restart timer to countdown immediately after Windows Update Installation Completes
 
