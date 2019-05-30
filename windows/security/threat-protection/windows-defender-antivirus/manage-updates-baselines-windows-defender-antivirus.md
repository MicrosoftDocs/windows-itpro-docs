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
author: justinha
ms.author: v-anbic
ms.date: 09/03/2018
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


## Product updates

Windows Defender Antivirus requires [monthly updates](https://support.microsoft.com/help/4052623/update-for-windows-defender-antimalware-platform) (known as "engine updates" and "platform updates"), and will receive major feature updates alongside Windows 10 releases.

You can manage the distribution of updates through Windows Server Update Service (WSUS), with [System Center Configuration Manager](https://docs.microsoft.com/sccm/sum/understand/software-updates-introduction), or in the normal manner that you deploy Microsoft and Windows updates to endpoints in your network.

## In this section

Topic | Description 
---|---
[Manage how protection updates are downloaded and applied](manage-protection-updates-windows-defender-antivirus.md) | Protection updates can be delivered through a number of sources.
[Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-windows-defender-antivirus.md) | You can schedule when protection updates should be downloaded.
[Manage updates for endpoints that are out of date](manage-outdated-endpoints-windows-defender-antivirus.md) | If an endpoint misses an update or scheduled scan, you can force an update or scan at the next log on.
[Manage event-based forced updates](manage-event-based-updates-windows-defender-antivirus.md) | You can set protection updates to be downloaded at startup or after certain cloud-delivered protection events.
[Manage updates for mobile devices and virtual machines (VMs)](manage-updates-mobile-devices-vms-windows-defender-antivirus.md)| You can specify settings, such as whether updates should occur on battery power, that are especially useful for mobile devices and virtual machines.
