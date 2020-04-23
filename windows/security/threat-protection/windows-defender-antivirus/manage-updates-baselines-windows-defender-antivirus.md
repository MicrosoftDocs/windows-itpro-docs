---
title: Manage Windows Defender Antivirus updates and apply baselines
description: Manage how Windows Defender Antivirus receives protection and product updates.
keywords: updates, security baselines, protection, schedule updates, force updates, mobile updates, wsus
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 03/04/2020
ms.reviewer: 
manager: dansimp
---

# Manage Windows Defender Antivirus updates and apply baselines

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

There are two types of updates related to keeping Windows Defender Antivirus up to date:

1. Protection updates
2. Product updates

You can also apply [Windows security baselines](https://technet.microsoft.com/itpro/windows/keep-secure/windows-security-baselines) to quickly bring your endpoints up to a uniform level of protection.

## Protection updates

Windows Defender Antivirus uses both [cloud-delivered protection](utilize-microsoft-cloud-protection-windows-defender-antivirus.md) (also called the Microsoft Advanced Protection Service or MAPS) and periodically downloaded protection updates to provide protection. These protection updates are also known as Security intelligence updates.

The cloud-delivered protection is always on and requires an active connection to the Internet to function, while the protection updates generally occur once a day (although this can be configured). See the [Utilize Microsoft cloud-provided protection in Windows Defender Antivirus](utilize-microsoft-cloud-protection-windows-defender-antivirus.md) topic for more details about enabling and configuring cloud-provided protection. 

Engine updates are included with the Security intelligence updates and are released on a monthly cadence.

## Product updates

Windows Defender Antivirus requires [monthly updates](https://support.microsoft.com/help/4052623/update-for-windows-defender-antimalware-platform) (known as "platform updates"), and will receive major feature updates alongside Windows 10 releases.

You can manage the distribution of updates through Windows Server Update Service (WSUS), with [Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/configmgr/sum/understand/software-updates-introduction), or in the normal manner that you deploy Microsoft and Windows updates to endpoints in your network.

## Released platform and engine versions

Only the main version is listed in the following table as reference information:

<details>
<summary> March-2020 (4.18.2003.8/1.1.16900.2)</summary>
  

    
  Released: **March 26, 2020**  
  Platform/Client: **4.18.2003.8**  
  Engine: **1.1.16900.2**
    
  ### What´s new
  * fix1 
  * fix2
  * fix3
  
  ### Known Issues
  * New file path  
  Because of a change in the file path location in the update, many downloads are blocked when AppLocker is enabled.
To work around this issue, open Group Policy, and then change the setting to Allow for the following path:


%OSDrive%\ProgramData\Microsoft\Windows Defender\Platform\*


> [!NOTE]
> Information the user should notice even if skimming.

</details>

<details>
  <summary> Jan-2020 (4.18.2001.10/1.1.16700.2)</summary>
  
  
  Released: **March 26, 2020**  
  Platform/Client: **4.18.2001.10**  
  Engine: **1.1.16700.2**
  
  ### What´s new
  * fix1 
  * fix2
  * fix3
  
  ### Known Issues
  * New file path  
  Because of a change in the file path location in the update, many downloads are blocked when AppLocker is enabled.
To work around this issue, open Group Policy, and then change the setting to Allow for the following path:

%OSDrive%\ProgramData\Microsoft\Windows Defender\Platform\*

</details>



## In this section

Article | Description 
---|---
[Manage how protection updates are downloaded and applied](manage-protection-updates-windows-defender-antivirus.md) | Protection updates can be delivered through a number of sources.
[Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-windows-defender-antivirus.md) | You can schedule when protection updates should be downloaded.
[Manage updates for endpoints that are out of date](manage-outdated-endpoints-windows-defender-antivirus.md) | If an endpoint misses an update or scheduled scan, you can force an update or scan at the next log on.
[Manage event-based forced updates](manage-event-based-updates-windows-defender-antivirus.md) | You can set protection updates to be downloaded at startup or after certain cloud-delivered protection events.
[Manage updates for mobile devices and virtual machines (VMs)](manage-updates-mobile-devices-vms-windows-defender-antivirus.md)| You can specify settings, such as whether updates should occur on battery power, that are especially useful for mobile devices and virtual machines.
