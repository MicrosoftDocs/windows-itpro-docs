---
title: Switch from Windows 10 Pro in S mode to Windows 10 Pro in S mode for Education
description: Overview of Windows 10 Pro Education in S mode, switching options, and system requirements
keywords: Windows 10 Pro Education S, S mode, system requirements, Overview, Windows 10 Pro in S mode, Education, EDU
ms.mktglfcycl: deploy
ms.localizationpriority: high
ms.prod: w10
ms.sitesec: library
ms.pagetype: edu
ms.date: 03/21/2018
author: Mikeblodge
---

# Switch from Windows 10 Pro in S mode to Windows 10 EDU in S mode

## In this topic

This topic provides an overview of Windows 10 Pro in S mode, how to switch from Windows 10 Pro in S mode to Windows 10 EDU in S mode, and the requirements to switch. 

## Overview

S mode is an enhanced security mode of Windows 10 – streamlined for security and superior performance. With Windows 10 in S mode, everyone can download and install Microsoft-verified apps from the Microsoft Store for Education – this keep devices running fast and secure day in and day out. 

## The benefits of Windows 10 Pro in S mode for Education

- **Microsoft-verified security** - It reduces risk of malware and exploitations that harm students and educators, because only Microsoft-verified apps can be installed.
- **Performance that lasts** - Provides all-day battery life to keep students on task and not tripping over cords. Also, verified apps won’t degrade device performance over time.
- **Streamlined for Speed** - Offers faster log-in times so teachers spend less time waiting and more time teaching. 


|  |Home  |S mode  |Pro/Pro Education  |Enterprise/Education |
|---------|:---:|:---:|:---:|:---:|
|Start Menu/Hello/Cortana/<BR>Windows Ink/Microsoft Edge | X | X | X | X |
|Store apps (including Windows <BR>desktop bridge apps) | X | X | X | X |
|Windows Update | X | X | X | X |
|Device Encryption | X | X | X | X |
|BitLocker | | X | X | X |
|Windows Update for Business |  | X | X | X |
|Microsoft Store for Education | | X | X | X |
|Mobile Device Management<BR> and Azure AD join | | X | X | X |
|Group Policy management and <BR>Active Directory Domain Services | | | X | X |
|Desktop (Windows 32) Apps | X | | X | X |
|Change App Defaults<BR>Search/Browser/Photos/etc. | X | | X | X |
|Credential Guard | | | | X |
|Device Guard | | | | X |

## Why switch

Do you have apps that you want to run that aren’t in the Microsoft Store (Win32 applications)? If so, you might want to switch to Windows 10 Pro. No problem, you can switch for free. 

> [!NOTE]
> The only way to revert to Windows 10 in S mode is to perform a BMR factory reset. This will allow you to reimage a device. 

## Requirements for switching

### 1709 devices
- Devices must be running Windows 10, version 
### 1804 devices
- Devices must be running Windows 10 Pro in S mode, version 1803. 

## How to switch

### Switching for 1804 devices
The switch motion for 1804 devices will behave differently than 1709 devices. MAK keys will only upgrade editions. For example: If a MAK key is applied to a device running Windows 10 Pro in S mode and an Enterprise MAK key is applied, the device will switch to Windows 10 Enterprise in S mode. 

### How to switch 1804 devices out of S mode
The S mode switch option is recognized in the Windows AutoPilot profile and configuration will now continue.

1.	Enroll S mode device in Intune.
2.	Enter the Intune admin portal.
3.	Select which devices to switch out of S mode.
4.	Select the S mode switch option in Intune/MDM.

Select the S mode switch option in Intune/MDM.The device will switch from S mode. A reboot is not required.

> [!NOTE]
> To rollback to Windows 10 Pro in S mode, a BMR factory reset must be performed.

### Switching in future versions
In future versions, new options will become available to switch.

#### Blocking individual users from switching via the Store
Currently, individual users can switch out of S mode at any time. To prevent this, user permissions to the Store will need to be restricted through the Intune/MDM portal.

### Switching for 1709 devices
1709 devices running Windows 10 Pro in S mode are actually running an edition and not a "mode." MAK keys will only be able to upgrade editions. (i.e. An Enterprise MAK key applied on a device running in S mode will upgrade to Enterprise edition in S mode)

1. **Bulk switch through Microsoft Store for Education** - In this scenario, the global admin for the Azure AD education tenant can use Microsoft Store to switch all Windows 10 Pro in S mode devices on the tenant to Windows 10 Pro Education in S mode. 
2. **Key acquisition options** - For schools with **active Microsoft Volume Licensing** agreements, global admins can obtain free MAK keys for Windows 10 Pro Education. For schools without an active Microsoft Volume Licensing agreement, the global admin can contact CSS, fill out a form and provide a proof of purchase to receive MAK keys for Windows 10 Pro Education.

> [!NOTE]
> There is currently no "bulk-switch" option for 1804 devices. 

## Related Topics
[Deploy Windows 10 in a school](deploy-windows-10-in-a-school.md)<BR> 
[Deploy Windows 10 in a school district](deploy-windows-10-in-a-school-district.md) <BR>
[Compare Windows 10 editions](https://www.microsoft.com/en-us/WindowsForBusiness/Compare)