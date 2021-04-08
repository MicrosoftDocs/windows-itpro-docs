---
title: Manage Microsoft Defender Antivirus updates and apply baselines
description: Manage how Microsoft Defender Antivirus receives protection and product updates.
keywords: updates, security baselines, protection, schedule updates, force updates, mobile updates, wsus
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: pahuijbr
manager: dansimp
ms.date: 04/08/2021
ms.technology: mde
---

# Manage Microsoft Defender Antivirus updates and apply baselines

**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)
- Microsoft Defender Antivirus

There are two types of updates related to keeping Microsoft Defender Antivirus up to date:

- Security intelligence updates
- Product updates

> [!IMPORTANT]
> Keeping Microsoft Defender Antivirus up to date is critical to assure your devices have the latest technology and features needed to protect against new malware and attack techniques.  
> Make sure to update your antivirus protection even if Microsoft Defender Antivirus is running in [passive mode](./microsoft-defender-antivirus-compatibility.md).
> 
> To see the most current engine, platform, and signature date, visit the [Security intelligence updates for Microsoft Defender Antivirus and other Microsoft antimalware](https://www.microsoft.com/en-us/wdsi/defenderupdates).

## Security intelligence updates

Microsoft Defender Antivirus uses [cloud-delivered protection](utilize-microsoft-cloud-protection-microsoft-defender-antivirus.md) (also called the Microsoft Advanced Protection Service or MAPS) and periodically downloads security intelligence updates to provide protection.

> [!NOTE]
> Updates are released under the below KB numbers:  
> Microsoft Defender Antivirus: KB2267602  
> System Center Endpoint Protection: KB2461484

Cloud-delivered protection is always on and requires an active connection to the Internet to function. Security intelligence updates occur on a scheduled cadence (configurable via policy). For more information, see [Use Microsoft cloud-provided protection in Microsoft Defender Antivirus](utilize-microsoft-cloud-protection-microsoft-defender-antivirus.md). 

For a list of recent security intelligence updates, see [Security intelligence updates for Microsoft Defender Antivirus and other Microsoft antimalware](https://www.microsoft.com/en-us/wdsi/defenderupdates).

Engine updates are included with security intelligence updates and are released on a monthly cadence.

## Product updates

Microsoft Defender Antivirus requires [monthly updates (KB4052623)](https://support.microsoft.com/help/4052623/update-for-windows-defender-antimalware-platform) (known as *platform updates*), and will receive major feature updates alongside Windows 10 releases.

You can manage the distribution of updates through one of the following methods: 

- [Windows Server Update Service (WSUS)](/mem/configmgr/protect/deploy-use/endpoint-definitions-wsus#to-synchronize-endpoint-protection-definition-updates-in-standalone-wsus)
- [Microsoft Endpoint Configuration Manager](/configmgr/sum/understand/software-updates-introduction)
- The usual method you use to deploy Microsoft and Windows updates to endpoints in your network.

For more information, see [Manage the sources for Microsoft Defender Antivirus protection updates](/mem/configmgr/protect/deploy-use/endpoint-definitions-wsus#to-synchronize-endpoint-protection-definition-updates-in-standalone-wsus).

> [!NOTE]
> Monthly updates are released in phases, resulting in multiple packages visible in your [Window Server Update Services](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus).

## Monthly platform and engine versions

For information how to update or install the platform update, see [Update for Windows Defender antimalware platform](https://support.microsoft.com/help/4052623/update-for-windows-defender-antimalware-platform).

All our updates contain 
- performance improvements;
- serviceability improvements; and 
- integration improvements (Cloud, Microsoft 365 Defender).
<br/><br/>

<details>
<summary> March-2021 (Platform: 4.18.2103.6 | Engine: 1.1.18000.5)</summary>

&ensp;Security intelligence update version: **1.335.36.0**  
&ensp;Released: **April 1, 2021**  
&ensp;Platform: **4.19.2103.6**  
&ensp;Engine: **1.1.18000.5**  
&ensp;Support phase: **Security and Critical Updates**
    
### What's new

- Improvement to the Behavior Monitoring engine 
- Expanded network brute-force-attack mitigations 
- Additional failed tampering attempt event generation when [Tamper Protection](prevent-changes-to-security-settings-with-tamper-protection.md) is enabled

### Known Issues
No known issues  
<br/>
</details><details>
<summary> February-2021 (Platform: 4.18.2102.3 | Engine: 1.1.17900.7)</summary>

&ensp;Security intelligence update version: **1.333.7.0**  
&ensp;Released: **March 9, 2021**  
&ensp;Platform: **4.19.2102.3**  
&ensp;Engine: **1.1.17900.7**  
&ensp;Support phase: **Security and Critical Updates**
    
### What's new

- Improved service recovery through [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md)
- Extend tamper protection scope

### Known Issues
No known issues  
<br/>
</details><details>
<summary> January-2021 (Platform: 4.18.2101.9 | Engine: 1.1.17800.5)</summary>

&ensp;Security intelligence update version: **1.327.1854.0**  
&ensp;Released: **February 2, 2021**  
&ensp;Platform: **4.18.2101.9**  
&ensp;Engine: **1.1.17800.5**  
&ensp;Support phase: **Security and Critical Updates**
    
### What's new

- Shellcode exploit detection improvements
- Increased visibility for credential stealing attempts
- Improvements in antitampering features in Microsoft Defender Antivirus services
- Improved support for ARM x64 emulation
- Fix: EDR Block notification remains in threat history after real-time protection performed initial detection

### Known Issues
No known issues  
<br/>
</details>

### Previous version updates: Technical upgrade support only

After a new package version is released, support for the previous two versions is reduced to technical support only. Versions older than that are listed in this section, and are provided for technical upgrade support only. 
<br/><br/>
<details>
<summary> November-2020 (Platform: 4.18.2011.6 | Engine: 1.1.17700.4)</summary>

&ensp;Security intelligence update version: **1.327.1854.0**  
&ensp;Released: **December 03, 2020**  
&ensp;Platform: **4.18.2011.6**  
&ensp;Engine: **1.1.17700.4**  
&ensp;Support phase: **Security and Critical Updates**
    
### What's new

- Improved [SmartScreen](../microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview.md) status support logging

### Known Issues
No known issues  
<br/>
</details><details>
<summary> October-2020 (Platform: 4.18.2010.7 | Engine: 1.1.17600.5)</summary>

&ensp;Security intelligence update version: **1.327.7.0**  
&ensp;Released: **October 29, 2020**  
&ensp;Platform: **4.18.2010.7**  
&ensp;Engine: **1.1.17600.5**  
&ensp;Support phase: **Security and Critical Updates**
    
### What's new

- New descriptions for special threat categories
- Improved emulation capabilities
- Improved host address allow/block capabilities
- New option in Defender CSP to Ignore merging of local user exclusions

### Known Issues

No known issues  
<br/>
</details><details>
<summary> September-2020 (Platform: 4.18.2009.7 | Engine: 1.1.17500.4)</summary>

&ensp;Security intelligence update version: **1.325.10.0**  
&ensp;Released: **October 01, 2020**  
&ensp;Platform: **4.18.2009.7**  
&ensp;Engine: **1.1.17500.4**  
&ensp;Support phase: **Technical upgrade support (only)**
    
### What's new

- Admin permissions are required to restore files in quarantine
- XML formatted events are now supported
- CSP support for ignoring exclusion merges
- New management interfaces for:
   - UDP Inspection
   - Network Protection on Server 2019
   - IP Address exclusions for Network Protection
- Improved visibility into TPM measurements
- Improved Office VBA module scanning

### Known Issues

No known issues  
<br/>
</details>
<details>
<summary> August-2020 (Platform: 4.18.2008.9 | Engine: 1.1.17400.5)</summary>

&ensp;Security intelligence update version: **1.323.9.0**  
&ensp;Released: **August 27, 2020**  
&ensp;Platform: **4.18.2008.9**  
&ensp;Engine: **1.1.17400.5**  
&ensp;Support phase: **Technical upgrade support (only)**

### What's new

- Add more telemetry events
- Improved scan event telemetry
- Improved behavior monitoring for memory scans
- Improved macro streams scanning
- Added `AMRunningMode` to Get-MpComputerStatus PowerShell cmdlet
- [DisableAntiSpyware](/windows-hardware/customize/desktop/unattend/security-malware-windows-defender-disableantispyware) is ignored. Microsoft Defender Antivirus automatically turns itself off when it detects another antivirus program.


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
&ensp;Support phase: **Technical upgrade support (only)**
    
### What's new

- Improved telemetry for BITS
- Improved Authenticode code signing certificate validation

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
&ensp;Support phase: **Technical upgrade support (only)**
    
### What's new

- Possibility to specify the [location of the support logs](./collect-diagnostic-data.md)
- Skipping aggressive catchup scan in Passive mode.
- Allow Defender to update on metered connections
- Fixed performance tuning when caching is disabled 
- Fixed registry query 
- Fixed scantime randomization in ADMX

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
&ensp;Support phase: **Technical upgrade support (only)**
    
### What's new

- Improved logging for scan events
- Improved user mode crash handling.
- Added event tracing for Tamper protection
- Fixed AMSI Sample submission
- Fixed AMSI Cloud blocking
- Fixed Security update install log

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
&ensp;Support phase: **Technical upgrade support (only)**
    
### What's new
- WDfilter improvements
- Add more actionable event data to attack surface reduction detection events
- Fixed version information in diagnostic data and WMI
- Fixed incorrect platform version in UI after platform update
- Dynamic URL intel for Fileless threat protection
- UEFI scan capability
- Extend logging for updates

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
&ensp;Support phase: **Technical upgrade support (only)**
    
### What's new

- CPU Throttling option added to [MpCmdRun](./command-line-arguments-microsoft-defender-antivirus.md)
- Improve diagnostic capability
- reduce Security intelligence timeout (5 min)
- Extend AMSI engine internal log capability
- Improve notification for process blocking
   
### Known Issues
[**Fixed**] Microsoft Defender Antivirus is skipping files when running a scan.

<br/>
</details>

<details>

<summary> February-2020 (Platform: - | Engine: 1.1.16800.2)</summary>
  

&ensp;Security intelligence update version: **1.311.4.0**   
&ensp;Released: **February 25, 2020**  
&ensp;Platform/Client: **-**  
&ensp;Engine: **1.1.16800.2**  
&ensp;Support phase: **Technical upgrade support (only)**
     
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
&ensp;Support phase: **Technical upgrade support (only)**
     
### What's new

- Fixed BSOD on WS2016 with Exchange
- Support platform updates when TMP is redirected to network path
- Platform and engine versions are added to [WDSI](https://www.microsoft.com/en-us/wdsi/defenderupdates) <!-- The preceding URL must include "/en-us" -->
- extend Emergency signature update to [passive mode](./microsoft-defender-antivirus-compatibility.md)
- Fix 4.18.1911.3 hang
   
### Known Issues

[**Fixed**] devices utilizing [modern standby mode](/windows-hardware/design/device-experiences/modern-standby) may experience a hang with the Windows Defender filter driver that results in a gap of protection.  Affected machines appear to the customer as having not updated to the latest antimalware platform.  
<br/>
> [!IMPORTANT]
> This update is:
> - needed by RS1 devices running lower version of the platform to support SHA2;
> - has a reboot flag for systems that have hanging issues;
> - is re-released in April 2020 and will not be superseded by newer updates to keep future availability;  
> - is categorized as an update due to the reboot requirement; and
> - is only be offered with [Windows Update](https://support.microsoft.com/help/4027667/windows-10-update).
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

- Fixed MpCmdRun tracing level
- Fixed WDFilter version info
- Improve notifications (PUA)
- add MRT logs to support files
   
### Known Issues
When this update is installed, the device needs the jump package 4.10.2001.10 to be able to update to the latest platform version.
<br/>
</details>


## Microsoft Defender Antivirus platform support
Platform and engine updates are provided on a monthly cadence. To be fully supported, keep current with the latest platform updates. Our support structure is dynamic, evolving into two phases depending on the availability of the latest platform version:

- **Security and Critical Updates servicing phase** - When running the latest platform version, you will be eligible to receive both Security and Critical updates to the anti-malware platform.
 
- **Technical Support (Only) phase** - After a new platform version is released, support for older versions (N-2) will reduce to technical support only. Platform versions older than N-2 will no longer be supported.*

\* Technical support will continue to be provided for upgrades from the Windows 10 release version (see [Platform version included with Windows 10 releases](#platform-version-included-with-windows-10-releases)) to the latest platform version.

During the technical support (only) phase, commercially reasonable support incidents will be provided through Microsoft Customer Service & Support and Microsoft’s managed support offerings (such as Premier Support). If a support incident requires escalation to development for further guidance, requires a non-security update, or requires a security update, customers will be asked to upgrade to the latest platform version or an intermediate update (*).

### Platform version included with Windows 10 releases
The below table provides the Microsoft Defender Antivirus platform and engine versions that are shipped with the latest Windows 10 releases:    

|Windows 10 release  |Platform version  |Engine version |Support phase |
|:---|:---|:---|:---|
|2004  (20H1/20H2) |4.18.1909.6 |1.1.17000.2 | Technical upgrade support (only) |
|1909  (19H2) |4.18.1902.5 |1.1.16700.3 | Technical upgrade support (only) |
|1903  (19H1) |4.18.1902.5 |1.1.15600.4 | Technical upgrade support (only) |
|1809  (RS5) |4.18.1807.18075 |1.1.15000.2 | Technical upgrade support (only) |
|1803  (RS4) |4.13.17134.1 |1.1.14600.4 | Technical upgrade support (only) |
|1709  (RS3) |4.12.16299.15 |1.1.14104.0 | Technical upgrade support (only) |
|1703  (RS2) |4.11.15603.2 |1.1.13504.0 | Technical upgrade support (only) |
|1607 (RS1) |4.10.14393.3683 |1.1.12805.0 | Technical upgrade support (only) |  

For Windows 10 release information, see the [Windows lifecycle fact sheet](https://support.microsoft.com/help/13853/windows-lifecycle-fact-sheet).

## Updates for Deployment Image Servicing and Management (DISM)

We recommend updating your Windows 10 (Enterprise, Pro, and Home editions), Windows Server 2019, and Windows Server 2016 OS installation images with the latest antivirus and antimalware updates. Keeping your OS installation images up to date helps avoid a gap in protection. 

For more information, see [Microsoft Defender update for Windows operating system installation images](https://support.microsoft.com/help/4568292/defender-update-for-windows-operating-system-installation-images).

<details>
<summary>1.1.2104.01</summary>

&ensp;Package version: **1.1.2104.01**    
&ensp;Platform version: **4.18.2102.4**   
&ensp;Engine version: **1.1.18000.5**  
&ensp;Signature version: **1.335.232.0**    
    
### Fixes
- None

### Additional information
- None  
<br/>
</details><details>
<summary>1.1.2103.01</summary>

&ensp;Package version: **1.1.2103.01**    
&ensp;Platform version: **4.18.2101.9**   
&ensp;Engine version: **1.1.17800.5**  
&ensp;Signature version: **1.331.2302.0**    
    
### Fixes
- None

### Additional information
- None  
<br/>
</details><details>
<summary>1.1.2102.03</summary>

&ensp;Package version: **1.1.2102.03**    
&ensp;Platform version: **4.18.2011.6**   
&ensp;Engine version: **1.1.17800.5**  
&ensp;Signature version: **1.331.174.0**    
    
### Fixes
- None

### Additional information
- None  
<br/>
</details><details>
<summary>1.1.2101.02</summary>

&ensp;Package version: **1.1.2101.02**    
&ensp;Platform version: **4.18.2011.6**   
&ensp;Engine version: **1.1.17700.4**  
&ensp;Signature version: **1.329.1796.0**    
    
### Fixes
- None

### Additional information
- None  
<br/>
</details><details>
<summary>1.1.2012.01</summary>

&ensp;Package version: **1.1.2012.01**    
&ensp;Platform version: **4.18.2010.7**   
&ensp;Engine version: **1.1.17600.5**  
&ensp;Signature version: **1.327.1991.0**    
    
### Fixes
- None

### Additional information
- None  
<br/>
</details><details>
<summary>1.1.2011.02</summary>

&ensp;Package version: **1.1.2011.02**    
&ensp;Platform version: **4.18.2010.7**   
&ensp;Engine version: **1.1.17600.5**  
&ensp;Signature version: **1.327.658.0**    
    
### Fixes
- None

### Additional information
- Refreshed Microsoft Defender Antivirus signatures  
<br/>
</details><details>
<summary>1.1.2011.01</summary>

&ensp;Package version: **1.1.2011.01**    
&ensp;Platform version: **4.18.2009.7**  
&ensp;Engine version: **1.1.17600.5**  
&ensp;Signature version: **1.327.344.0**    
    
### Fixes
- None

### Additional information
- None  
<br/>
</details><details>
<summary>1.1.2009.10</summary>

&ensp;Package version: **1.1.2011.01**    
&ensp;Platform version: **4.18.2008.9**   
&ensp;Engine version: **1.1.17400.5**  
&ensp;Signature version: **1.327.2216.0**    
    
### Fixes
- None

### Additional information
- Added support for Windows 10 RS1 or later OS install images.  
<br/>
</details>

## Additional resources

| Article | Description  |
|:---|:---|
|[Microsoft Defender update for Windows operating system installation images](https://support.microsoft.com/help/4568292/defender-update-for-windows-operating-system-installation-images)  | Review antimalware update packages for your OS installation images (WIM and VHD files). Get Microsoft Defender Antivirus updates for Windows 10 (Enterprise, Pro, and Home editions), Windows Server 2019, and Windows Server 2016 installation images.  |
|[Manage how protection updates are downloaded and applied](manage-protection-updates-microsoft-defender-antivirus.md) | Protection updates can be delivered through many sources. |
|[Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-microsoft-defender-antivirus.md) | You can schedule when protection updates should be downloaded. |
|[Manage updates for endpoints that are out of date](manage-outdated-endpoints-microsoft-defender-antivirus.md) | If an endpoint misses an update or scheduled scan, you can force an update or scan the next time a user signs in. |
|[Manage event-based forced updates](manage-event-based-updates-microsoft-defender-antivirus.md) | You can set protection updates to be downloaded at startup or after certain cloud-delivered protection events. |
|[Manage updates for mobile devices and virtual machines (VMs)](manage-updates-mobile-devices-vms-microsoft-defender-antivirus.md)| You can specify settings, such as whether updates should occur on battery power, that are especially useful for mobile devices and virtual machines. |
