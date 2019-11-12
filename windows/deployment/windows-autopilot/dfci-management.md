---
title: DFCI Management
ms.reviewer: 
manager: laurawi
description: With Windows Autopilot Deployment and Intune, you can manage UEFI (BIOS) settings after they're enrolled by using the Device Firmware Configuration Interface (DFCI) 
keywords: Autopilot, DFCI, UEFI, Windows 10
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
ms.localizationpriority: medium
audience: itpro
author: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# DFCI Management

**Applies to**

-   Windows 10

With Windows Autopilot Deployment and Intune, you can manage Unified Extensible Firmware Interface (UEFI) settings after they're enrolled by using the Device Firmware Configuration Interface (DFCI).  DFCI enables Windows to pass management commands from Intune to UEFI to Autopilot Deployed devices. This allows you to limit end users control over BIOS settings, lock down the boot options to prevent users from booting up another OS, or an older version of Windows that doesn't have the same security features. When you reinstall an older Windows version, install a separate OS, or format the hard drive, you can't override DFCI management. This feature can prevent malware from communicating with OS processes, including elevated OS processes. DFCI’s trust chain uses public key cryptography, and doesn't depend on local UEFI password security. This layer of security blocks local users from accessing managed settings from the device’s UEFI menus.

The DFCI management lifecycle can be viewed as UEFI integration, device registration, profile creation, enrollment, management, retirement, and recovery. For an overview of benefits, scenarios, and prerequisites, see Overview of DFCI.

[graphic]

DFCI Prerequisite:
- Device must be Windows 10 RS5 (1809) and later on supported UEFI
- Device manufacturer must have DFCI added to their UEFI firmware in the manufacturing process, or as a firmware update you install. Work with your device vendors to determine the manufacturers that support DFCI, or the firmware version needed to use DFCI.
- Device must be registered for Windows Autopilot by a Microsoft Cloud Solution Provider (CSP) partner, or registered directly by the OEM.
Device manually registered for Autopilot, such as imported from a csv file, aren't allowed to use DFCI. By design, DFCI management requires external attestation of the device’s commercial acquisition through an OEM or a Microsoft CSP partner registration to Windows Autopilot.
Once your device is registered, its serial number is shown in the list of Windows Autopilot devices.
- Device must be managed with Microsoft Intune. For more information on Autopilot, including any requirements, see Enroll Windows devices in Intune by using the Windows Autopilot. 

Managing DFCI profile with Windows Autopilot:
There are four basic steps in managing DFCI profile with Windows Autopilot, see Create DFCI Profiles in Intune
1.	Create an Autopilot Profile
2.	Create an Enrollment status page profile
3.	Create a DFCI profile
4.	Assign the profiles 
The next time the device syncs, or the device reboots, the DFCI profile settings are applied. After the policy applies, device would reboot. If you want to change existing DFCI settings on devices that are in use, you can. In your existing DFCI profile, change the settings, and save your changes. Since the profile is already assigned, the new DFCI settings take effect when next time the device syncs, or the device reboots.

For more details, see How-to guides: DFCI management in Intune

OEMs that support DFCI:
•	Microsoft Surface
Other OEMs are in process of supporting DFCI.


## See also

Microsoft DFCI Scenarios<br>
Windows Autopilot and Surface devices<br>
Use DFCI profiles on Windows devices in Microsoft Intune<br>

