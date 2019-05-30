---
title: Switch to Windows 10 Pro Education in S mode from Windows 10 Pro in S mode
description: Switching out of Windows 10 Pro in S mode to Windows 10 Pro Education in S mode. The S mode switch documentation describes the requirements and process for Switching to Windows 10 Pro Education in S mode. 
keywords: Windows 10 S switch, S mode Switch, switch in S mode, Switch S mode, Windows 10 Pro Education in S mode, S mode, system requirements, Overview, Windows 10 Pro in S mode, Education, EDU
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.prod: w10
ms.sitesec: library
ms.pagetype: edu
ms.date: 12/03/2018
ms.reviewer: 
manager: dansimp
ms.author: macapara
author: mjcaparas
---

# Switch to Windows 10 Pro Education in S mode from Windows 10 Pro in S mode
The S mode switch motion enables users to switch to Windows 10 Pro Education in S mode from Windows 10 Pro in S mode. This gives users access to the Microsoft Store for Education as well as other Education offers.

## Benefits of Windows 10 Pro in S mode for Education

S mode is an enhanced security mode of Windows 10 – streamlined for security and superior performance. With Windows 10 in S mode, everyone can download and install Microsoft-verified apps from the Microsoft Store for Education – this keep devices running fast and secure day in and day out. 

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

###  Windows 10 in S mode is safe, secure, and fast.  
However, in some limited scenarios, you might need to switch to Windows 10 Education. You can switch devices running Windows 10, version 1709 or later. Use the following information to switch to Windows 10 Pro through the Microsoft Store. 

## How to switch

### Devices running Windows 10, version 1803

**Switch using the Microsoft Store for Education**<BR>
There are two switch options available using the Microsoft Store for Education:

Tenant-wide Windows 10 Pro in S mode > Pro Education in S mode <BR>
Tenant-wide Windows 10 Pro > Pro Education

> [!IMPORTANT]
> While it’s free to switch to Windows 10 Pro, it’s not reversible. The only way to roll back this kind of switch is through a [bare metal recovery (BMR)](https://docs.microsoft.com/windows-hardware/manufacture/desktop/create-media-to-run-push-button-reset-features-s14) reset. This restores a Windows device to the factory state, even if the user needs to replace the hard drive or completely wipe the drive clean. If a device is switched out of S mode via the Microsoft Store, it will remain out of S mode even after the device is reset.

### Devices running Windows 10, version 1709

1. **Bulk switch through Microsoft Store for Education** - In this scenario, the global admin for the Azure AD education tenant can use Microsoft Store to switch all Windows 10 Pro in S mode devices on the tenant to Windows 10 Pro Education. (Devices running Windows 10, version 1803 will switch to Windows 10 Pro EDU in S mode.)

2. **Key acquisition options** - For schools with **active Microsoft Volume Licensing** agreements, global admins can obtain free MAK keys for Windows 10 Pro Education. For schools without an active Microsoft Volume Licensing agreement, the global admin can contact CSS, fill out a form and provide a proof of purchase to receive MAK keys for Windows 10 Pro Education.

> [!NOTE]
> There is currently no "bulk-switch" option for devices running Windows 10, version 1803. 

## Related Topics
[FAQs](https://support.microsoft.com/help/4020089/windows-10-in-s-mode-faq)<br>
[Deploy Windows 10 in a school](deploy-windows-10-in-a-school.md)<BR> 
[Deploy Windows 10 in a school district](deploy-windows-10-in-a-school-district.md) <BR>
[Compare Windows 10 editions](https://www.microsoft.com/en-us/WindowsForBusiness/Compare)
