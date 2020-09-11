---
title: Manage Microsoft Defender Antivirus updates and apply baselines
description: Manage how Microsoft Defender Antivirus receives protection and product updates.
keywords: updates, security baselines, protection, schedule updates, force updates, mobile updates, wsus
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: 
manager: dansimp
ms.date: 09/10/2020
---

# Manage Microsoft Defender Antivirus updates and apply baselines

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

There are two types of updates related to keeping Microsoft Defender Antivirus up to date:

 - Security intelligence updates
 - Product updates

> [!IMPORTANT]
> Keeping Microsoft Defender Antivirus up to date is critical to assure your devices have the latest technology and features needed to protect against new malware and attack techniques.  
> This also applies to devices where Microsoft Defender Antivirus is running in [passive mode](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility).

> [!NOTE]
> You can use the below URL to find out what are the current versions:
> [https://www.microsoft.com/security/encyclopedia/adlpackages.aspx?action=info](https://www.microsoft.com/security/encyclopedia/adlpackages.aspx?action=info)

## Security intelligence updates

Microsoft Defender Antivirus uses [cloud-delivered protection](utilize-microsoft-cloud-protection-microsoft-defender-antivirus.md) (also called the Microsoft Advanced Protection Service or MAPS) and periodically downloads security intelligence updates to provide protection. 

The cloud-delivered protection is always on and requires an active connection to the Internet to function, while the security intelligence updates occur on a scheduled cadence (configurable via policy). See the [Utilize Microsoft cloud-provided protection in Microsoft Defender Antivirus](utilize-microsoft-cloud-protection-microsoft-defender-antivirus.md) topic for more details about enabling and configuring cloud-provided protection. 

Engine updates are included with the security intelligence updates and are released on a monthly cadence.

## Product updates

Microsoft Defender Antivirus requires [monthly updates (KB4052623)](https://support.microsoft.com/help/4052623/update-for-windows-defender-antimalware-platform) (known as "platform updates"), and will receive major feature updates alongside Windows 10 releases.

You can manage the distribution of updates through [Windows Server Update Service (WSUS)](https://docs.microsoft.com/mem/configmgr/protect/deploy-use/endpoint-definitions-wsus#to-synchronize-endpoint-protection-definition-updates-in-standalone-wsus), with [Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/configmgr/sum/understand/software-updates-introduction), or in the normal manner that you deploy Microsoft and Windows updates to endpoints in your network.
For more information, see [Manage the sources for Microsoft Defender Antivirus protection updates](https://docs.microsoft.com/mem/configmgr/protect/deploy-use/endpoint-definitions-wsus#to-synchronize-endpoint-protection-definition-updates-in-standalone-wsus).

> [!NOTE]
> We release these monthly updates in phases. This results in multiple packages showing up in your WSUS server.

## Monthly platform and engine versions

For information how to update or how to install the platform update, please see [Update for Windows Defender antimalware platform](https://support.microsoft.com/help/4052623/update-for-windows-defender-antimalware-platform).

All our updates contain:
* performance improvements
* serviceability improvements
* integration improvements (Cloud, MTP)  
<br/>
<details>
<summary> August-2020 (Platform: 4.18.2008.9 | Engine: 1.1.17400.5)</summary>

&ensp;Security intelligence update version: **1.323.9.0**  
&ensp;Released: **August 27, 2020**  
&ensp;Platform: **4.18.2008.9**  
&ensp;Engine: **1.1.17400.5**  
&ensp;Support phase: **Security and Critical Updates**
    
### What's new
* Add more telemetry events
* Improved scan event telemetry
* Improved behavior monitoring for memory scans
* Improved macro streams scanning
* Added "AMRunningMode" to Get-MpComputerStatus Powershell CmdLet

### Known Issues
No known issues  
<br/>
</details>

<details>
<summary> July-2020 (Platform: 4.18.2007.8 | Engine: 1.1.17300.4)</summary>

&ensp;Security intelligence update version: **1.321.30.0**  
&ensp;Released: **July 28, 2020**  
&ensp;Platform: **4.18.2007.8**  
&ensp;Engine: **1.1.17300.4**  
&ensp;Support phase: **Security and Critical Updates**
    
### What's new
* Improved telemetry for BITS
* Improved Authenticode code signing certificate validation

### Known Issues
No known issues  
<br/>
</details>

<details>
<summary> June-2020 (Platform: 4.18.2006.10 | Engine: 1.1.17200.2)</summary>

&ensp;Security intelligence update version: **1.319.20.0**  
&ensp;Released: **June 22, 2020**  
&ensp;Platform: **4.18.2006.10**  
&ensp;Engine: **1.1.17200.2**  
&ensp;Support phase: **Security and Critical Updates**
    
### What's new
* Possibility to specify the [location of the support logs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/collect-diagnostic-data)
* Skipping aggressive catchup scan in Passive mode.
* Allow Defender to update on metered connections
* Fixed performance tuning when caching is disabled 
* Fixed registry query 
* Fixed scantime randomization in ADMX

### Known Issues
No known issues  
<br/>
</details>

<details>
<summary> May-2020 (Platform: 4.18.2005.4 | Engine: 1.1.17100.2)</summary>

&ensp;Security intelligence update version: **1.317.20.0**  
&ensp;Released: **May 26, 2020**  
&ensp;Platform: **4.18.2005.4**  
&ensp;Engine: **1.1.17100.2**  
&ensp;Support phase: **Technical upgrade Support (Only)**
    
### What's new
* Improved logging for scan events
* Improved user mode crash handling.
* Added event tracing for Tamper protection
* Fixed AMSI Sample submission
* Fixed AMSI Cloud blocking
* Fixed Security update install log

### Known Issues
No known issues  
<br/>
</details>

<details>
<summary> April-2020 (Platform: 4.18.2004.6 | Engine: 1.1.17000.2)</summary>

&ensp;Security intelligence update version: **1.315.12.0**  
&ensp;Released: **April 30, 2020**  
&ensp;Platform: **4.18.2004.6**  
&ensp;Engine: **1.1.17000.2**  
&ensp;Support phase: **Technical upgrade Support (Only)**
    
### What's new
* WDfilter improvements
* Add more actionable event data to ASR detection events
* Fixed version information in diagnostic data and WMI
* Fixed incorrect platform version in UI after platform update
* Dynamic URL intel for Fileless threat protection
* UEFI scan capability
* Extend logging for updates

### Known Issues
No known issues  
<br/>
</details>

<details>
<summary> March-2020 (Platform: 4.18.2003.8 | Engine: 1.1.16900.2)</summary>

&ensp;Security intelligence update version: **1.313.8.0**  
&ensp;Released: **March 24, 2020**  
&ensp;Platform: **4.18.2003.8**  
&ensp;Engine: **1.1.16900.4**  
&ensp;Support phase: **Technical upgrade Support (Only)**
    
### What's new

* CPU Throttling option added to [MpCmdRun](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/command-line-arguments-microsoft-defender-antivirus)
* Improve diagnostic capability
* reduce Security intelligence timeout (5min)
* Extend AMSI engine internal log capability
* Improve notification for process blocking
   
### Known Issues
[**Fixed**] Microsoft Defender Antivirus is skipping files when running a scan.

<br/>
</details>

<details>

<summary> February-2020 (Platform: - | Engine: 1.1.16800.2)</summary>
  

  Security intelligence update version: **1.311.4.0**   
  Released: **February 25, 2020**  
  Platform/Client: **-**  
  Engine: **1.1.16800.2**  
  Support phase: **N/A**
     
### What's new

  
### Known Issues
No known issues
<br/>
</details>

<details>
<summary> January-2020 (Platform: 4.18.2001.10 | Engine: 1.1.16700.2)</summary>
  

Security intelligence update version: **1.309.32.0**  
Released: **January 30, 2020**  
Platform/Client: **4.18.2001.10**  
Engine: **1.1.16700.2**  
Support phase: **Technical upgrade Support (Only)**
     
### What's new

* Fixed BSOD on WS2016 with Exchange
* Support platform updates when TMP is redirected to network path
* Platform and engine versions are added to [WDSI](https://www.microsoft.com/wdsi/defenderupdates)
* extend Emergency signature update to [passive mode](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility)
* Fix 4.18.1911.3 hang
   
### Known Issues
[**Fixed**] devices utilizing [modern standby mode](https://docs.microsoft.com/windows-hardware/design/device-experiences/modern-standby) may experience a hang with the Windows Defender filter driver that results in a gap of protection.  Affected machines appear to the customer as having not updated to the latest antimalware platform.  
<br/>
> [!IMPORTANT]
> This updates is needed by RS1 devices running lower version of the platform to support SHA2. <br/>This update has reboot flag for systems that are experiencing the hang issue.<br/> the This update is re-released in April 2020 and will not be superseded by newer updates to keep future availability.
<br/>
> [!IMPORTANT]
> This update is categorized as an "update" due to its reboot requirement and will only be offered with a [Windows Update](https://support.microsoft.com/help/4027667/windows-10-update)
<br/>
</details>

<details>
<summary> November-2019 (Platform: 4.18.1911.3 | Engine: 1.1.16600.7)</summary>

Security intelligence update version: **1.307.13.0**  
Released: **December 7, 2019**  
Platform: **4.18.1911.3**  
Engine: **1.1.17000.7**  
Support phase: **No support**  
     
### What's new

* Fixed MpCmdRun tracing level
* Fixed WDFilter version info
* Improve notifications (PUA)
* add MRT logs to support files
   
### Known Issues
When this update is installed, the device needs the jump package 4.10.2001.10 to be able to update to the latest platform version.
<br/>
</details>

## Microsoft Defender Antivirus platform support
As stated above, platform and engine updates are provided on a monthly cadence.
Customers must stay current with the latest platform update to be fully supported. Our support structure is now dynamic, evolving into two phases depending on the availability of the latest platform version:


* **Security and Critical Updates servicing phase** - When running the latest platform version, you will be eligible to receive both Security and Critical updates to the anti-malware platform.
 

* **Technical Support (Only) phase** - After a new platform version is released, support for older versions (N-2) will reduce to technical support only. Platform versions older than N-2 will no longer be supported.*

\* Technical support will continue to be provided for upgrades from the Windows 10 release version (see [Platform version included with Windows 10 releases](#platform-version-included-with-windows-10-releases)) to the latest platform version.

During the technical support (only) phase, commercially reasonable support incidents will be provided through Microsoft Customer Service & Support and Microsoft’s managed support offerings (such as Premier Support). If a support incident requires escalation to development for further guidance, requires a non-security update, or requires a security update, customers will be asked to upgrade to the latest platform version or an intermediate update (*).

### Platform version included with Windows 10 releases
The below table provides the Microsoft Defender Antivirus platform and engine versions that are shipped with the latest Windows 10 releases:    

|Windows 10 release  |Platform version  |Engine version |Support phase |
|-|-|-|-|
|1909  (19H2) |4.18.1902.5 |1.1.16700.3 | Technical upgrade Support (Only) |
|1903  (19H1) |4.18.1902.5 |1.1.15600.4 | Technical upgrade Support (Only) |
|1809  (RS5) |4.18.1807.18075 |1.1.15000.2 | Technical upgrade Support (Only) |
|1803  (RS4) |4.13.17134.1 |1.1.14600.4 | Technical upgrade Support (Only) |
|1709  (RS3) |4.12.16299.15 |1.1.14104.0 | Technical upgrade Support (Only) |
|1703  (RS2) |4.11.15603.2 |1.1.13504.0 | Technical upgrade Support (Only) |
|1607 (RS1) |4.10.14393.3683 |1.1.12805.0 | Technical upgrade Support (Only) |  

Windows 10 release info: [Windows lifecycle fact sheet](https://support.microsoft.com/help/13853/windows-lifecycle-fact-sheet).


## In this section

Article | Description 
---|---
[Manage how protection updates are downloaded and applied](manage-protection-updates-microsoft-defender-antivirus.md) | Protection updates can be delivered through a number of sources.
[Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-microsoft-defender-antivirus.md) | You can schedule when protection updates should be downloaded.
[Manage updates for endpoints that are out of date](manage-outdated-endpoints-microsoft-defender-antivirus.md) | If an endpoint misses an update or scheduled scan, you can force an update or scan at the next log on.
[Manage event-based forced updates](manage-event-based-updates-microsoft-defender-antivirus.md) | You can set protection updates to be downloaded at startup or after certain cloud-delivered protection events.
[Manage updates for mobile devices and virtual machines (VMs)](manage-updates-mobile-devices-vms-microsoft-defender-antivirus.md)| You can specify settings, such as whether updates should occur on battery power, that are especially useful for mobile devices and virtual machines.
