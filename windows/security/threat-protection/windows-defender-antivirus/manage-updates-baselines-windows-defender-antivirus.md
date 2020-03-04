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

Month	| Platform/Client	| Engine
---|---|---
Feb-2020	|	- | 1.1.16800.x
Jan-2020 |	4.18.2001.x	| 1.1.16700.x
Dec-2019 | - | - |
Nov-2019	| 4.18.1911.x	| 1.1.16600.x
Oct-2019	| 4.18.1910.x	| 1.1.16500.x
Sep-2019	| 4.18.1909.x	| 1.1.16400.x
Aug-2019	| 4.18.1908.x	| 1.1.16300.x
Jul-2019	| 4.18.1907.x	| 1.1.16200.x
Jun-2019	| 4.18.1906.x	| 1.1.16100.x
May-2019	| 4.18.1905.x	| 1.1.16000.x
Apr-2019	| 4.18.1904.x	| 1.1.15900.x
Mar-2019	| 4.18.1903.x	| 1.1.15800.x
Feb-2019	| 4.18.1902.x	| 1.1.15700.x
Jan-2019	| 4.18.1901.x	| 1.1.15600.x
Dec-18	| 4.18.1812.X	| 1.1.15500.x


## In this section

Article | Description 
---|---
[Manage how protection updates are downloaded and applied](manage-protection-updates-windows-defender-antivirus.md) | Protection updates can be delivered through a number of sources.
[Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-windows-defender-antivirus.md) | You can schedule when protection updates should be downloaded.
[Manage updates for endpoints that are out of date](manage-outdated-endpoints-windows-defender-antivirus.md) | If an endpoint misses an update or scheduled scan, you can force an update or scan at the next log on.
[Manage event-based forced updates](manage-event-based-updates-windows-defender-antivirus.md) | You can set protection updates to be downloaded at startup or after certain cloud-delivered protection events.
[Manage updates for mobile devices and virtual machines (VMs)](manage-updates-mobile-devices-vms-windows-defender-antivirus.md)| You can specify settings, such as whether updates should occur on battery power, that are especially useful for mobile devices and virtual machines.
