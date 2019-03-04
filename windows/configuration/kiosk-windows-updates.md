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

“Kiosks” represents unmanned devices that are usually used for specified tasks ranging from displaying a menu or fulfilling the functionality of an ATM.  Their configuration also ranges from low to high security and they can be managed locally or through GPO for admins with populations of devices.
Scenario requirements
•	Does not show Windows Update Notifications
•	Installs and restarts at a specified time frame
System Requirements
•	RS5 RTM
•	Group Policy Managed
Recommended Policies
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
 
