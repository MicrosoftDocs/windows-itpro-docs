---
title: Policy CSP - Defender
description: Learn how to use the Policy CSP - Defender setting so you can allow or disallow scanning of archives.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 05/12/2022
ms.reviewer: 
manager: aaroncz
ms.collection: highpri
---

# Policy CSP - Defender



<hr/>

<!--Policies-->
## Defender policies

<dl>
  <dd>
    <a href="#defender-allowarchivescanning">Defender/AllowArchiveScanning</a>
  </dd>
  <dd>
    <a href="#defender-allowbehaviormonitoring">Defender/AllowBehaviorMonitoring</a>
  </dd>
  <dd>
    <a href="#defender-allowcloudprotection">Defender/AllowCloudProtection</a>
  </dd>
  <dd>
    <a href="#defender-allowemailscanning">Defender/AllowEmailScanning</a>
  </dd>
  <dd>
    <a href="#defender-allowfullscanonmappednetworkdrives">Defender/AllowFullScanOnMappedNetworkDrives</a>
  </dd>
  <dd>
    <a href="#defender-allowfullscanremovabledrivescanning">Defender/AllowFullScanRemovableDriveScanning</a>
  </dd>
  <dd>
    <a href="#defender-allowioavprotection">Defender/AllowIOAVProtection</a>
  </dd>
  <dd>
    <a href="#defender-allowonaccessprotection">Defender/AllowOnAccessProtection</a>
  </dd>
  <dd>
    <a href="#defender-allowrealtimemonitoring">Defender/AllowRealtimeMonitoring</a>
  </dd>
  <dd>
    <a href="#defender-allowscanningnetworkfiles">Defender/AllowScanningNetworkFiles</a>
  </dd>
  <dd>
    <a href="#defender-allowscriptscanning">Defender/AllowScriptScanning</a>
  </dd>
  <dd>
    <a href="#defender-allowuseruiaccess">Defender/AllowUserUIAccess</a>
  </dd>
  <dd>
    <a href="#defender-attacksurfacereductiononlyexclusions">Defender/AttackSurfaceReductionOnlyExclusions</a>
  </dd>
  <dd>
    <a href="#defender-attacksurfacereductionrules">Defender/AttackSurfaceReductionRules</a>
  </dd>
  <dd>
    <a href="#defender-avgcpuloadfactor">Defender/AvgCPULoadFactor</a>
  </dd>
  <dd>
    <a href="#defender-checkforsignaturesbeforerunningscan">Defender/CheckForSignaturesBeforeRunningScan</a>
  </dd>
  <dd>
    <a href="#defender-cloudblocklevel">Defender/CloudBlockLevel</a>
  </dd>
  <dd>
    <a href="#defender-cloudextendedtimeout">Defender/CloudExtendedTimeout</a>
  </dd>
  <dd>
    <a href="#defender-controlledfolderaccessallowedapplications">Defender/ControlledFolderAccessAllowedApplications</a>
  </dd>
  <dd>
    <a href="#defender-controlledfolderaccessprotectedfolders">Defender/ControlledFolderAccessProtectedFolders</a>
  </dd>
  <dd>
    <a href="#defender-daystoretaincleanedmalware">Defender/DaysToRetainCleanedMalware</a>
  </dd>
  <dd>
    <a href="#defender-disablecatchupfullscan">Defender/DisableCatchupFullScan</a>
  </dd>
  <dd>
    <a href="#defender-disablecatchupquickscan">Defender/DisableCatchupQuickScan</a>
  </dd>
  <dd>
    <a href="#defender-enablecontrolledfolderaccess">Defender/EnableControlledFolderAccess</a>
  </dd>
  <dd>
    <a href="#defender-enablelowcpupriority">Defender/EnableLowCPUPriority</a>
  </dd>
  <dd>
    <a href="#defender-enablenetworkprotection">Defender/EnableNetworkProtection</a>
  </dd>
  <dd>
    <a href="#defender-excludedextensions">Defender/ExcludedExtensions</a>
  </dd>
  <dd>
    <a href="#defender-excludedpaths">Defender/ExcludedPaths</a>
  </dd>
  <dd>
    <a href="#defender-excludedprocesses">Defender/ExcludedProcesses</a>
  </dd>
  <dd>
    <a href="#defender-puaprotection">Defender/PUAProtection</a>
  </dd>
  <dd>
    <a href="#defender-realtimescandirection">Defender/RealTimeScanDirection</a>
  </dd>
  <dd>
    <a href="#defender-scanparameter">Defender/ScanParameter</a>
  </dd>
  <dd>
    <a href="#defender-schedulequickscantime">Defender/ScheduleQuickScanTime</a>
  </dd>
  <dd>
    <a href="#defender-schedulescanday">Defender/ScheduleScanDay</a>
  </dd>
  <dd>
    <a href="#defender-schedulescantime">Defender/ScheduleScanTime</a>
  </dd>
  <dd>
    <a href="#defender-securityintelligencelocation">Defender/SecurityIntelligenceLocation</a>
  </dd>
  <dd>
    <a href="#defender-signatureupdatefallbackorder">Defender/SignatureUpdateFallbackOrder</a>
  </dd>
  <dd>
    <a href="#defender-signatureupdatefilesharessources">Defender/SignatureUpdateFileSharesSources</a>
  </dd>
  <dd>
    <a href="#defender-signatureupdateinterval">Defender/SignatureUpdateInterval</a>
  </dd>
  <dd>
    <a href="#defender-submitsamplesconsent">Defender/SubmitSamplesConsent</a>
  </dd>
  <dd>
    <a href="#defender-threatseveritydefaultaction">Defender/ThreatSeverityDefaultAction</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="defender-allowarchivescanning"></a>**Defender/AllowArchiveScanning**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


Allows or disallows scanning of archives.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Scan archive files*
-   GP name: *Scan_DisableArchiveScanning*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed. Turns off scanning on archived files.
-   1 (default) – Allowed. Scans the archive files.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-allowbehaviormonitoring"></a>**Defender/AllowBehaviorMonitoring**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


Allows or disallows Windows Defender Behavior Monitoring functionality.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Turn on behavior monitoring*
-   GP name: *RealtimeProtection_DisableBehaviorMonitoring*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed. Turns off behavior monitoring.
-   1 (default) – Allowed. Turns on real-time behavior monitoring.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-allowcloudprotection"></a>**Defender/AllowCloudProtection**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Join Microsoft MAPS*
-   GP name: *SpynetReporting*
-   GP element: *SpynetReporting*
-   GP path: *Windows Components/Microsoft Defender Antivirus/MAPS*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed. Turns off the Microsoft Active Protection Service.
-   1 (default) – Allowed. Turns on the Microsoft Active Protection Service.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-allowemailscanning"></a>**Defender/AllowEmailScanning**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Allows or disallows scanning of email.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Turn on e-mail scanning*
-   GP name: *Scan_DisableEmailScanning*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Not allowed. Turns off email scanning.
-   1 – Allowed. Turns on email scanning.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-allowfullscanonmappednetworkdrives"></a>**Defender/AllowFullScanOnMappedNetworkDrives**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Allows or disallows a full scan of mapped network drives.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Run full scan on mapped network drives*
-   GP name: *Scan_DisableScanningMappedNetworkDrivesForFullScan*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Not allowed. Disables scanning on mapped network drives.
-   1 – Allowed. Scans mapped network drives.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-allowfullscanremovabledrivescanning"></a>**Defender/AllowFullScanRemovableDriveScanning**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Allows or disallows a full scan of removable drives. During a quick scan, removable drives may still be scanned.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Scan removable drives*
-   GP name: *Scan_DisableRemovableDriveScanning*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed. Turns off scanning on removable drives.
-   1 (default) – Allowed. Scans removable drives.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-allowioavprotection"></a>**Defender/AllowIOAVProtection**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Allows or disallows Windows Defender IOAVP Protection functionality.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Scan all downloaded files and attachments*
-   GP name: *RealtimeProtection_DisableIOAVProtection*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-allowonaccessprotection"></a>**Defender/AllowOnAccessProtection**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Allows or disallows Windows Defender On Access Protection functionality.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Monitor file and program activity on your computer*
-   GP name: *RealtimeProtection_DisableOnAccessProtection*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

> [!IMPORTANT]
> AllowOnAccessProtection is officially being deprecated.

<hr/>

<!--Policy-->
<a href="" id="defender-allowrealtimemonitoring"></a>**Defender/AllowRealtimeMonitoring**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Allows or disallows Windows Defender real-time Monitoring functionality.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Turn off real-time protection*
-   GP name: *DisableRealtimeMonitoring*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed. Turns off the real-time monitoring service.
-   1 (default) – Allowed. Turns on and runs the real-time monitoring service.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-allowscanningnetworkfiles"></a>**Defender/AllowScanningNetworkFiles**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Allows or disallows a scanning of network files.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Scan network files*
-   GP name: *Scan_DisableScanningNetworkFiles*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed. Turns off scanning of network files.
-   1 (default) – Allowed. Scans network files.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-allowscriptscanning"></a>**Defender/AllowScriptScanning**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Allows or disallows Windows Defender Script Scanning functionality.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-allowuseruiaccess"></a>**Defender/AllowUserUIAccess**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Allows or disallows user access to the Windows Defender UI. I disallowed, all Windows Defender notifications will also be suppressed.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Enable headless UI mode*
-   GP name: *UX_Configuration_UILockdown*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Client Interface*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed. Prevents users from accessing UI.
-   1 (default) – Allowed. Lets users access UI.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-attacksurfacereductiononlyexclusions"></a>**Defender/AttackSurfaceReductionOnlyExclusions**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

This policy setting allows you to prevent Attack Surface reduction rules from matching on files under the paths specified or for the fully qualified resources specified. Paths should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of a path or a fully qualified resource name. As an example, a path might be defined as: "c:\Windows" to exclude all files in this directory. A fully qualified resource name might be defined as: "C:\Windows\App.exe".

Value type is string.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Exclude files and paths from Attack Surface Reduction Rules*
-   GP name: *ExploitGuard_ASR_ASROnlyExclusions*
-   GP element: *ExploitGuard_ASR_ASROnlyExclusions*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Windows Defender Exploit Guard/Attack Surface Reduction*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-attacksurfacereductionrules"></a>**Defender/AttackSurfaceReductionRules**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

This policy setting enables setting the state (Block/Audit/Off) for each attack surface reduction (ASR) rule. Each ASR rule listed can be set to one of the following states (Block/Audit/Off). The ASR rule ID and state should be added under the Options for this setting. Each entry must be listed as a name value pair. The name defines a valid ASR rule ID, while the value contains the status ID indicating the status of the rule.

For more information about ASR rule ID and status ID, see [Enable Attack Surface Reduction](/windows/threat-protection/windows-defender-exploit-guard/enable-attack-surface-reduction).

Value type is string.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Attack Surface Reduction rules*
-   GP name: *ExploitGuard_ASR_Rules*
-   GP element: *ExploitGuard_ASR_Rules*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Windows Defender Exploit Guard/Attack Surface Reduction*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-avgcpuloadfactor"></a>**Defender/AvgCPULoadFactor**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Represents the average CPU load factor for the Windows Defender scan (in percent).

The default value is 50.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Specify the maximum percentage of CPU utilization during a scan*
-   GP name: *Scan_AvgCPULoadFactor*
-   GP element: *Scan_AvgCPULoadFactor*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Valid values: 0–100

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-checkforsignaturesbeforerunningscan"></a>**Defender/CheckForSignaturesBeforeRunningScan**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage whether a check for new virus and spyware definitions will occur before running a scan.

This setting applies to scheduled scans and the command line "mpcmdrun -SigUpdate", but it has no effect on scans initiated manually from the user interface.

If you enable this setting, a check for new definitions will occur before running a scan.

If you disable this setting or don't configure this setting, the scan will start using the existing definitions.

Supported values:

- 0 (default) - Disabled
- 1 - Enabled

OMA-URI Path: ./Vendor/MSFT/Policy/Config/Defender/CheckForSignaturesBeforeRunningScan

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Check for the latest virus and spyware definitions before running a scheduled scan*
-   GP name: *CheckForSignaturesBeforeRunningScan*
-   GP element: *CheckForSignaturesBeforeRunningScan*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-cloudblocklevel"></a>**Defender/CloudBlockLevel**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

This policy setting determines how aggressive Microsoft Defender Antivirus will be in blocking and scanning suspicious files. Value type is integer.

If this setting is on, Microsoft Defender Antivirus will be more aggressive when identifying suspicious files to block and scan; otherwise, it will be less aggressive and therefore block and scan with less frequency.

For more information about specific values that are supported, see the Microsoft Defender Antivirus documentation site.

> [!NOTE]
> This feature requires the "Join Microsoft MAPS" setting enabled in order to function.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Select cloud protection level*
-   GP name: *MpEngine_MpCloudBlockLevel*
-   GP element: *MpCloudBlockLevel*
-   GP path: *Windows Components/Microsoft Defender Antivirus/MpEngine*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0x0 - Default windows defender blocking level
- 0x2 - High blocking level - aggressively block unknowns while optimizing client performance (greater chance of false positives)      
- 0x4 - High+ blocking level – aggressively block unknowns and apply more protection measures (may impact  client performance)
- 0x6 - Zero tolerance blocking level – block all unknown executables

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-cloudextendedtimeout"></a>**Defender/CloudExtendedTimeout**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

This feature allows Microsoft Defender Antivirus to block a suspicious file for up to 60 seconds, and scan it in the cloud to make sure it's safe. Value type is integer, range is 0 - 50.

The typical cloud check timeout is 10 seconds. To enable the extended cloud check feature, specify the extended time in seconds, up to an extra 50 seconds.

For example, if the desired timeout is 60 seconds, specify 50 seconds in this setting, which will enable the extended cloud check feature, and will raise the total time to 60 seconds.

> [!NOTE]
> This feature depends on three other MAPS settings the must all be enabled- "Configure the 'Block at First Sight' feature; "Join Microsoft MAPS"; "Send file samples when further analysis is required".

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure extended cloud check*
-   GP name: *MpEngine_MpBafsExtendedTimeout*
-   GP element: *MpBafsExtendedTimeout*
-   GP path: *Windows Components/Microsoft Defender Antivirus/MpEngine*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-controlledfolderaccessallowedapplications"></a>**Defender/ControlledFolderAccessAllowedApplications**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop. The previous name was GuardedFoldersAllowedApplications and changed to ControlledFolderAccessAllowedApplications.

Added in Windows 10, version 1709. This policy setting allows user-specified applications to the controlled folder access feature. Adding an allowed application means the controlled folder access feature will allow the application to modify or delete content in certain folders such as My Documents. In most cases it won't be necessary to add entries. Microsoft Defender Antivirus will automatically detect and dynamically add applications that are friendly. Value type is string. Use the | as the substring separator.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure allowed applications*
-   GP name: *ExploitGuard_ControlledFolderAccess_AllowedApplications*
-   GP element: *ExploitGuard_ControlledFolderAccess_AllowedApplications*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Windows Defender Exploit Guard/Controlled Folder Access*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-controlledfolderaccessprotectedfolders"></a>**Defender/ControlledFolderAccessProtectedFolders**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop. The previous name was GuardedFoldersList and changed to ControlledFolderAccessProtectedFolders.

This policy setting allows adding user-specified folder locations to the controlled folder access feature. These folders will complement the system defined folders such as My Documents and My Pictures. The list of system folders will be displayed in the user interface and can't be changed. Value type is string. Use the | as the substring separator.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure protected folders*
-   GP name: *ExploitGuard_ControlledFolderAccess_ProtectedFolders*
-   GP element: *ExploitGuard_ControlledFolderAccess_ProtectedFolders*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Windows Defender Exploit Guard/Controlled Folder Access*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-daystoretaincleanedmalware"></a>**Defender/DaysToRetainCleanedMalware**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Time period (in days) that quarantine items will be stored on the system.

The default value is 0, which keeps items in quarantine, and doesn't automatically remove them.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure removal of items from Quarantine folder*
-   GP name: *Quarantine_PurgeItemsAfterDelay*
-   GP element: *Quarantine_PurgeItemsAfterDelay*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Quarantine*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Valid values: 0–90

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-disablecatchupfullscan"></a>**Defender/DisableCatchupFullScan**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to configure catch-up scans for scheduled full scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed.  Usually these scheduled scans are missed because the computer was turned off at the scheduled time.

If you enable this setting, catch-up scans for scheduled full scans will be turned on. If a computer is offline for two consecutive scheduled scans, a catch-up scan is started the next time someone signs in to the computer.  If there's no scheduled scan configured, there will be no catch-up scan run.

If you disable or don't configure this setting, catch-up scans for scheduled full scans will be turned off.

Supported values:

- 1 - Disabled (default)
- 0 - Enabled

OMA-URI Path: ./Vendor/MSFT/Policy/Config/Defender/DisableCatchupFullScan

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Turn on catch-up full scan*
-   GP name: *Scan_DisableCatchupFullScan*
-   GP element: *Scan_DisableCatchupFullScan*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-disablecatchupquickscan"></a>**Defender/DisableCatchupQuickScan**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to configure catch-up scans for scheduled quick scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed. Usually these scheduled scans are missed because the computer was turned off at the scheduled time.

If you enable this setting, catch-up scans for scheduled quick scans will be turned on. If a computer is offline for two consecutive scheduled scans, a catch-up scan is started the next time someone signs in to the computer. If there's no scheduled scan configured, there will be no catch-up scan run.

If you disable or don't configure this setting, catch-up scans for scheduled quick scans will be turned off.

Supported values:

- 1 - Disabled (default)
- 0 - Enabled

OMA-URI Path: ./Vendor/MSFT/Policy/Config/Defender/DisableCatchupQuickScan

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Turn on catch-up quick scan*
-   GP name: *Scan_DisableCatchupQuickScan*
-   GP element: *Scan_DisableCatchupQuickScan*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-enablecontrolledfolderaccess"></a>**Defender/EnableControlledFolderAccess**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop. The previous name was EnableGuardMyFolders  and changed to EnableControlledFolderAccess.

This policy enables setting the state (On/Off/Audit) for the controlled folder access feature. The controlled folder access feature removes modify and delete permissions from untrusted applications to certain folders such as My Documents. Value type is integer and the range is 0 - 2.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Controlled folder access*
-   GP name: *ExploitGuard_ControlledFolderAccess_EnableControlledFolderAccess*
-   GP element: *ExploitGuard_ControlledFolderAccess_EnableControlledFolderAccess*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Windows Defender Exploit Guard/Controlled Folder Access*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Disabled
- 1 - Enabled
- 2 - Audit Mode

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-enablelowcpupriority"></a>**Defender/EnableLowCPUPriority**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to enable or disable low CPU priority for scheduled scans.

If you enable this setting, low CPU priority will be used during scheduled scans.

If you disable or don't configure this setting, no changes will be made to CPU priority for scheduled scans.

Supported values:

- 0 - Disabled (default)
- 1 - Enabled

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure low CPU priority for scheduled scans*
-   GP name: *Scan_LowCpuPriority*
-   GP element: *Scan_LowCpuPriority*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-enablenetworkprotection"></a>**Defender/EnableNetworkProtection**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

This policy allows you to turn on network protection (block/audit) or off. Network protection protects employees using any app from accessing phishing scams, exploit-hosting sites, and malicious content on the Internet. This protection includes preventing third-party browsers from connecting to dangerous sites. Value type is integer.

If you enable this setting, network protection is turned on and employees can't turn it off. Its behavior can be controlled by the following options: Block and Audit.
If you enable this policy with the ""Block"" option, users/apps will be blocked from connecting to dangerous domains. You'll be able to see this activity in Windows Defender Security Center.
If you enable this policy with the ""Audit"" option, users/apps won't be blocked from connecting to dangerous domains. However, you'll still see this activity in Windows Defender Security Center.
If you disable this policy, users/apps won't be blocked from connecting to dangerous domains. You'll not see any network activity in Windows Defender Security Center.
If you don't configure this policy, network blocking will be disabled by default.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prevent users and apps from accessing dangerous websites*
-   GP name: *ExploitGuard_EnableNetworkProtection*
-   GP element: *ExploitGuard_EnableNetworkProtection*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Windows Defender Exploit Guard/Network Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Disabled
- 1 - Enabled (block mode)
- 2 - Enabled (audit mode)

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-excludedextensions"></a>**Defender/ExcludedExtensions**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Allows an administrator to specify a list of file type extensions to ignore during a scan. Each file type in the list must be separated by a **|**. For example, "lib|obj".

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Path Exclusions*
-   GP name: *Exclusions_Paths*
-   GP element: *Exclusions_PathsList*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Exclusions*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-excludedpaths"></a>**Defender/ExcludedPaths**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Allows an administrator to specify a list of directory paths to ignore during a scan. Each path in the list must be separated by a **|**. For example, "C:\\Example|C:\\Example1".

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Extension Exclusions*
-   GP name: *Exclusions_Extensions*
-   GP element: *Exclusions_ExtensionsList*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Exclusions*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-excludedprocesses"></a>**Defender/ExcludedProcesses**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Allows an administrator to specify a list of files opened by processes to ignore during a scan.

> [!IMPORTANT]
> The process itself is not excluded from the scan, but can be by using the **Defender/ExcludedPaths** policy to exclude its path.

Each file type must be separated by a **|**. For example, "C:\\Example.exe|C:\\Example1.exe".

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Process Exclusions*
-   GP name: *Exclusions_Processes*
-   GP element: *Exclusions_ProcessesList*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Exclusions*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-puaprotection"></a>**Defender/PUAProtection**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


Specifies the level of detection for potentially unwanted applications (PUAs). Windows Defender alerts you when potentially unwanted software is being downloaded or attempts to install itself on your computer.

> [!NOTE]
> Potentially unwanted applications (PUA) are a category of software that can cause your machine to run slowly, display unexpected ads, or at worst, install other software which might be unexpected or unwanted. By default in Windows 10 (version 2004 and later), Microsoft Defender Antivirus blocks apps that are considered PUA, for Enterprise (E5) devices. For more information about PUA, see [Detect and block potentially unwanted applications](/microsoft-365/security/defender-endpoint/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure detection for potentially unwanted applications*
-   GP name: *Root_PUAProtection*
-   GP element: *Root_PUAProtection*
-   GP path: *Windows Components/Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – PUA Protection off. Windows Defender won't protect against potentially unwanted applications.
-   1 – PUA Protection on. Detected items are blocked. They'll show in history along with other threats.
-   2 – Audit mode. Windows Defender will detect potentially unwanted applications, but take no action. You can review information about the applications Windows Defender would have taken action against by searching for events created by Windows Defender in the Event Viewer.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-realtimescandirection"></a>**Defender/RealTimeScanDirection**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Controls which sets of files should be monitored.

> [!NOTE]
> If **AllowOnAccessProtection** is not allowed, then this configuration can be used to monitor specific files.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure monitoring for incoming and outgoing file and program activity*
-   GP name: *RealtimeProtection_RealtimeScanDirection*
-   GP element: *RealtimeProtection_RealtimeScanDirection*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Monitor all files (bi-directional).
-   1 – Monitor incoming files.
-   2 – Monitor outgoing files.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-scanparameter"></a>**Defender/ScanParameter**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Selects whether to perform a quick scan or full scan.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Specify the scan type to use for a scheduled scan*
-   GP name: *Scan_ScanParameters*
-   GP element: *Scan_ScanParameters*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   1 (default) – Quick scan
-   2 – Full scan

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-schedulequickscantime"></a>**Defender/ScheduleQuickScanTime**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Selects the time of day that the Windows Defender quick scan should run. The Windows Defender quick scan runs daily if a time is specified.



For example, a value of 0=12:00AM, a value of 60=1:00AM, a value of 120=2:00, and so on, up to a value of 1380=11:00PM.

The default value is 120

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Specify the time for a daily quick scan*
-   GP name: *Scan_ScheduleQuickScantime*
-   GP element: *Scan_ScheduleQuickScantime*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Valid values: 0–1380

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-schedulescanday"></a>**Defender/ScheduleScanDay**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Selects the day that the Windows Defender scan should run.

> [!NOTE]
> The scan type will depends on what scan type is selected in the **Defender/ScanParameter** setting.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Specify the day of the week to run a scheduled scan*
-   GP name: *Scan_ScheduleDay*
-   GP element: *Scan_ScheduleDay*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) – Every day
- 1 – Sunday
- 2 – Monday
- 3 – Tuesday
- 4 – Wednesday
- 5 – Thursday
- 6 – Friday
- 7 – Saturday
- 8 – No scheduled scan

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-schedulescantime"></a>**Defender/ScheduleScanTime**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Selects the time of day that the Windows Defender scan should run.

> [!NOTE]
> The scan type will depends on what scan type is selected in the **Defender/ScanParameter** setting.

For example, a value of 0=12:00AM, a value of 60=1:00AM, a value of 120=2:00, and so on, up to a value of 1380=11:00PM.

The default value is 120.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Specify the time of day to run a scheduled scan*
-   GP name: *Scan_ScheduleTime*
-   GP element: *Scan_ScheduleTime*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Valid values: 0–1380.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-securityintelligencelocation"></a>**Defender/SecurityIntelligenceLocation**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to define the security intelligence location for VDI-configured computers.

If you disable or don't configure this setting, security intelligence will be referred from the default local source.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Specify the signature (Security intelligence) delivery optimization for Defender in Virtual Environments*
-   GP name: *SecurityIntelligenceLocation*
-   GP element: *SecurityIntelligenceLocation*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Windows Defender*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

- Empty string - no policy is set
- Non-empty string - the policy is set and security intelligence is gathered from the location.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-signatureupdatefallbackorder"></a>**Defender/SignatureUpdateFallbackOrder**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to define the order in which different definition update sources should be contacted. The value of this setting should be entered as a pipe-separated string enumerating the definition update sources in order.

Possible values are:

- InternalDefinitionUpdateServer
- MicrosoftUpdateServer
- MMPC
- FileShares

For example: InternalDefinitionUpdateServer | MicrosoftUpdateServer | MMPC

If you enable this setting, definition update sources will be contacted in the order specified. Once definition updates have been successfully downloaded from one specified source, the remaining sources in the list won't be contacted.

If you disable or don't configure this setting, definition update sources will be contacted in a default order.

OMA-URI Path: ./Vendor/MSFT/Policy/Config/Defender/SignatureUpdateFallbackOrder

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Define the order of sources for downloading definition updates*
-   GP name: *SignatureUpdate_FallbackOrder*
-   GP element: *SignatureUpdate_FallbackOrder*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Signature Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-signatureupdatefilesharessources"></a>**Defender/SignatureUpdateFileSharesSources**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to configure UNC file share sources for downloading definition updates. Sources will be contacted in the order specified. The value of this setting should be entered as a pipe-separated string enumerating the definition update sources.

For example: \\unc1\Signatures | \\unc2\Signatures

The list is empty by default.

If you enable this setting, the specified sources will be contacted for definition updates. Once definition updates have been successfully downloaded from one specified source, the remaining sources in the list won't be contacted.

If you disable or don't configure this setting, the list will remain empty by default and no sources will be contacted.

OMA-URI Path: ./Vendor/MSFT/Policy/Config/Defender/SignatureUpdateFileSharesSources

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Define file shares for downloading definition updates*
-   GP name: *SignatureUpdate_DefinitionUpdateFileSharesSources*
-   GP element: *SignatureUpdate_DefinitionUpdateFileSharesSources*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Signature Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-signatureupdateinterval"></a>**Defender/SignatureUpdateInterval**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Specifies the interval (in hours) that will be used to check for signatures, so instead of using the ScheduleDay and ScheduleTime the check for new signatures will be set according to the interval.

A value of 0 means no check for new signatures, a value of 1 means to check every hour, a value of 2 means to check every two hours, and so on, up to a value of 24, which means to check every day.

The default value is 8.

OMA-URI Path: ./Vendor/MSFT/Policy/Config/Defender/SignatureUpdateInterval

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Specify the interval to check for definition updates*
-   GP name: *SignatureUpdate_SignatureUpdateInterval*
-   GP element: *SignatureUpdate_SignatureUpdateInterval*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Signature Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Valid values: 0–24.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-submitsamplesconsent"></a>**Defender/SubmitSamplesConsent**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Checks for the user consent level in Windows Defender to send data. If the required consent has already been granted, Windows Defender submits them. If not (and if the user has specified never to ask), the UI is launched to ask for user consent (when **Defender/AllowCloudProtection** is allowed) before sending data.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Send file samples when further analysis is required*
-   GP name: *SubmitSamplesConsent*
-   GP element: *SubmitSamplesConsent*
-   GP path: *Windows Components/Microsoft Defender Antivirus/MAPS*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Always prompt.
-   1 (default) – Send safe samples automatically.
-   2 – Never send.
-   3 – Send all samples automatically.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="defender-threatseveritydefaultaction"></a>**Defender/ThreatSeverityDefaultAction**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

Allows an administrator to specify any valid threat severity levels and the corresponding default action ID to take.

This value is a list of threat severity level IDs and corresponding actions, separated by a <strong>|</strong> using the format "*threat level*=*action*|*threat level*=*action*". For example, "1=6|2=2|4=10|5=3".

The following list shows the supported values for threat severity levels:

-   1 – Low severity threats
-   2 – Moderate severity threats
-   4 – High severity threats
-   5 – Severe threats

The following list shows the supported values for possible actions:

-   1 – Clean. Service tries to recover files and try to disinfect.
-   2 – Quarantine. Moves files to quarantine.
-   3 – Remove. Removes files from system.
-   6 – Allow. Allows file/does none of the above actions.
-   8 – User defined. Requires user to make a decision on which action to take.
-   10 – Block. Blocks file execution.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Specify threat alert levels at which default action should not be taken when detected*
-   GP name: *Threats_ThreatSeverityDefaultAction*
-   GP element: *Threats_ThreatSeverityDefaultActionList*
-   GP path: *Windows Components/Microsoft Defender Antivirus/Threats*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXMapped-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)
