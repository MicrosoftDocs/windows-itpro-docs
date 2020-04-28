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

1. Security intelligence updates
2. Product updates



## Security intelligence updates

Windows Defender Antivirus uses [cloud-delivered protection](utilize-microsoft-cloud-protection-windows-defender-antivirus.md) (also called the Microsoft Advanced Protection Service or MAPS) and periodically downloads Security intelligence updates to provide protection. 

The cloud-delivered protection is always on and requires an active connection to the Internet to function, while the Security intelligence updates occur on a scheduled cadence (configurable via policy). See the [Utilize Microsoft cloud-provided protection in Windows Defender Antivirus](utilize-microsoft-cloud-protection-windows-defender-antivirus.md) topic for more details about enabling and configuring cloud-provided protection. 

Engine updates are included with the Security intelligence updates and are released on a monthly cadence.

## Product updates

Windows Defender Antivirus requires [monthly updates](https://support.microsoft.com/help/4052623/update-for-windows-defender-antimalware-platform) (known as "platform updates"), and will receive major feature updates alongside Windows 10 releases.

You can manage the distribution of updates through Windows Server Update Service (WSUS), with [Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/configmgr/sum/understand/software-updates-introduction), or in the normal manner that you deploy Microsoft and Windows updates to endpoints in your network.

## Released platform and engine versions

### Monthly platform and engine releases
For information how to update or how to install the platform update, please see: [Update for Windows Defender antimalware platform](https://support.microsoft.com/en-us/help/4052623/update-for-windows-defender-antimalware-platform)

<details>
<summary> April-2020 (Platform: 4.18.2004.5 | Engine: 1.1.17000.2)</summary>

Security intelligence update version: **TBD**  
Released: **April 30, 2020**  
Platform: **4.18.2004.5**  
Engine: **1.1.17000.2**  
Support phase: **Security and Critical Updates**
    
### What's new

:::row:::
    :::column:::
        **Platform**
        * fix1
        * fix2

    :::column-end:::
    :::column:::
        **Engine**
        * fix1
        * fix2
    :::column-end:::
:::row-end:::
   
### Known Issues
No known issues  
</details>

<details>
<summary> March-2020 (Platform: 4.18.2003.8 | Engine: 1.1.16900.2)</summary>

Security intelligence update version: **1.313.8.0**  
Released: **March 24, 2020**  
Platform: **4.18.2003.8**  
Engine: **1.1.16900.4**  
Support phase: **Technical upgrade Support (Only)**
    
### What's new

:::row:::
    :::column:::
        **Platform**
        * fix1
        * fix2

    :::column-end:::
    :::column:::
        **Engine**
        * fix1
        * fix2
    :::column-end:::
:::row-end:::
   
### Known Issues
No known issues
</details>

<details>

<summary> February-2020 (Platform: - | Engine: 1.1.16800.2)</summary>
  

  Security intelligence update version: **1.311.4.0**   
  Released: **February 25, 2020**  
  Platform/Client: **-**  
  Engine: **1.1.16800.2**  
  Support phase: **N/A**
     
### What's new

:::row:::
    :::column:::
        **Platform**
        * fix1
        * fix2

    :::column-end:::
    :::column:::
        **Engine**
        * fix1
        * fix2
    :::column-end:::
:::row-end:::
   
### Known Issues
No known issues
</details>

<details>
  <summary> January-2020 (Platform: 4.18.2001.10 | Engine: 1.1.16700.2)</summary>
  
  Security intelligence update version: **1.309.32.0**  
  Released: **January 30, 2020**  
  Platform/Client: **4.18.2001.10**  
  Engine: **1.1.16700.2**  
  Support phase: **Technical upgrade Support (Only)**
     
### What's new

:::row:::
    :::column:::
        **Platform**
        * fix1
        * fix2

    :::column-end:::
    :::column:::
        **Engine**
        * fix1
        * fix2
    :::column-end:::
:::row-end:::
   
### Known Issues
No known issues
</details>

<details>
<summary> November-2019 (Platform: 4.18.1911.2 | Engine: 1.1.16600.7)</summary>

Security intelligence update version: **1.307.13.0**  
Released: **December 7, 2019**  
Platform: **4.18.1911.2**  
Engine: **1.1.17000.7**  
Support phase: **No support**  
     
### What's new

:::row:::
    :::column:::
        **Platform**
        * fix1
        * fix2

    :::column-end:::
    :::column:::
        **Engine**
        * fix1
        * fix2
    :::column-end:::
:::row-end:::
   
### Known Issues
No known issues
</details>

## Windows Defender Antivirus platform support
As stated above, platform and engine updates are provided on a monthly cadence.
Customers must stay current with the latest platform update to be fully supported. Our support structure is now dynamic, evolving into two phases depending on the availability of the latest platform version.


* **Security and Critical Updates servicing phase** - When running the latest platform version, you will be eligible to receive both Security and Critical updates to the anti-malware platform.
 

* **Technical Support (Only) phase** - After a new platform version is released, support for older versions (N-2) will reduce to technical support only. Platform versions older than N-2 will no longer be supported.*

*Technical support will continue to be provided for upgrades from the Windows 10 release version (see [Platform version included with Windows 10 releases](#platform-version-included-with-windows-10-releases)) to the latest platform version.

During the technical support (only) phase, commercially reasonable support incidents will be provided through Microsoft Customer Service & Support and Microsoft’s managed support offerings (such as Premier Support). If a support incident requires escalation to development for further guidance, requires a non-security update, or requires a security update, customers will be asked to upgrade to the latest platform version or an intermediate update(*).

### Platform version included with Windows 10 releases
The below table provides the Windows Defender Antivirus platform and engine versions that are shipped with the latest Windows 10 releases:    

|Windows 10 release  |Platform version  |Engine version |Support phase |
|-|-|-|-|
|1909  (19H2) |4.18.1902.5 |1.1.16700.3 | Technical upgrade Support (Only) |
|1903  (19H1) |4.18.1902.5 |1.1.15600.4 | Technical upgrade Support (Only) |
|1809  (RS5) |4.18.1807.18075 |1.1.15000.2 | Technical upgrade Support (Only) |
|1803  (RS4) |4.13.17134.1 |1.1.14600.4 | Technical upgrade Support (Only) |
|1709  (RS3) |4.12.16299.15 |1.1.14104.0 | Technical upgrade Support (Only) |
|1703  (RS2) |4.11.15603.2 |1.1.13504.0 | Technical upgrade Support (Only) |
|1607 (RS1) |4.10.14393.3683 |1.1.12805.0 | Technical upgrade Support (Only) |  

Windows 10 release info: [Windows lifecycle fact sheet](https://support.microsoft.com/en-us/help/13853/windows-lifecycle-fact-sheet)

## In this section

Article | Description 
---|---
[Manage how protection updates are downloaded and applied](manage-protection-updates-windows-defender-antivirus.md) | Protection updates can be delivered through a number of sources.
[Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-windows-defender-antivirus.md) | You can schedule when protection updates should be downloaded.
[Manage updates for endpoints that are out of date](manage-outdated-endpoints-windows-defender-antivirus.md) | If an endpoint misses an update or scheduled scan, you can force an update or scan at the next log on.
[Manage event-based forced updates](manage-event-based-updates-windows-defender-antivirus.md) | You can set protection updates to be downloaded at startup or after certain cloud-delivered protection events.
[Manage updates for mobile devices and virtual machines (VMs)](manage-updates-mobile-devices-vms-windows-defender-antivirus.md)| You can specify settings, such as whether updates should occur on battery power, that are especially useful for mobile devices and virtual machines.
