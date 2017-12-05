---
title: Policy CSP - Defender
description: Policy CSP - Defender
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - Defender



<hr/>

<!--StartPolicies-->
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
    <a href="#defender-allowintrusionpreventionsystem">Defender/AllowIntrusionPreventionSystem</a>
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
    <a href="#defender-enablecontrolledfolderaccess">Defender/EnableControlledFolderAccess</a>
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
<!--StartPolicy-->
<a href="" id="defender-allowarchivescanning"></a>**Defender/AllowArchiveScanning**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows scanning of archives.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-allowbehaviormonitoring"></a>**Defender/AllowBehaviorMonitoring**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Allows or disallows Windows Defender Behavior Monitoring functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-allowcloudprotection"></a>**Defender/AllowCloudProtection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-allowemailscanning"></a>**Defender/AllowEmailScanning**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows scanning of email.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-allowfullscanonmappednetworkdrives"></a>**Defender/AllowFullScanOnMappedNetworkDrives**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows a full scan of mapped network drives.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-allowfullscanremovabledrivescanning"></a>**Defender/AllowFullScanRemovableDriveScanning**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows a full scan of removable drives.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-allowioavprotection"></a>**Defender/AllowIOAVProtection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Allows or disallows Windows Defender IOAVP Protection functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-allowintrusionpreventionsystem"></a>**Defender/AllowIntrusionPreventionSystem**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows Windows Defender Intrusion Prevention functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-allowonaccessprotection"></a>**Defender/AllowOnAccessProtection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows Windows Defender On Access Protection functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-allowrealtimemonitoring"></a>**Defender/AllowRealtimeMonitoring**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows Windows Defender Realtime Monitoring functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-allowscanningnetworkfiles"></a>**Defender/AllowScanningNetworkFiles**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Allows or disallows a scanning of network files.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-allowscriptscanning"></a>**Defender/AllowScriptScanning**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows Windows Defender Script Scanning functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-allowuseruiaccess"></a>**Defender/AllowUserUIAccess**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows user access to the Windows Defender UI. If disallowed, all Windows Defender notifications will also be suppressed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-attacksurfacereductiononlyexclusions"></a>**Defender/AttackSurfaceReductionOnlyExclusions**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Added in Windows 10, version 1709. This policy setting allows you to prevent Attack Surface reduction rules from matching on files under the paths specified or for the fully qualified resources specified. Paths should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of a path or a fully qualified resource name. As an example, a path might be defined as: "c:\Windows" to exclude all files in this directory. A fully qualified resource name might be defined as: "C:\Windows\App.exe"..

<p style="margin-left: 20px">Value type is string.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-attacksurfacereductionrules"></a>**Defender/AttackSurfaceReductionRules**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Added in Windows 10, version 1709. This policy setting enables setting the state (Block/Audit/Off) for each Attack surface reduction (ASR) rule. Each ASR rule listed can be set to one of the following states (Block/Audit/Off). The ASR rule ID and state should be added under the Options for this setting. Each entry must be listed as a name value pair. The name defines a valid ASR rule ID, while the value contains the status ID indicating the status of the rule.

<p style="margin-left: 20px">For more information about ASR rule ID and status ID, see [Enable Attack Surface Reduction](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-exploit-guard/enable-attack-surface-reduction).

<p style="margin-left: 20px">Value type is string.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-avgcpuloadfactor"></a>**Defender/AvgCPULoadFactor**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Represents the average CPU load factor for the Windows Defender scan (in percent).

<p style="margin-left: 20px">Valid values: 0–100

<p style="margin-left: 20px">The default value is 50.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-cloudblocklevel"></a>**Defender/CloudBlockLevel**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Added in Windows 10, version 1709. This policy setting determines how aggressive Windows Defender Antivirus will be in blocking and scanning suspicious files. Value type is integer.

<p style="margin-left: 20px">If this setting is on, Windows Defender Antivirus will be more aggressive when identifying suspicious files to block and scan; otherwise, it will be less aggressive and therefore block and scan with less frequency. 

<p style="margin-left: 20px">For more information about specific values that are supported, see the Windows Defender Antivirus documentation site.
      
> [!Note]  
> This feature requires the "Join Microsoft MAPS" setting enabled in order to function.  

<p style="margin-left: 20px">Possible options are:  

- (0x0) Default windows defender blocking level
- (0x2) High blocking level - aggressively block unknowns while optimizing client performance (greater chance of false positives)       
- (0x4) High+ blocking level – aggressively block unknowns and apply additional protection measures (may impact  client performance)
- (0x6) Zero tolerance blocking level – block all unknown executables

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-cloudextendedtimeout"></a>**Defender/CloudExtendedTimeout**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

<p style="margin-left: 20px">Added in Windows 10, version 1709. This feature allows Windows Defender Antivirus to block a suspicious file for up to 60 seconds, and scan it in the cloud to make sure it's safe. Value type is integer, range is 0 - 50.

<p style="margin-left: 20px">The typical cloud check timeout is 10 seconds. To enable the extended cloud check feature, specify the extended time in seconds, up to an additional 50 seconds. 

<p style="margin-left: 20px">For example, if the desired timeout is 60 seconds, specify 50 seconds in this setting, which will enable the extended cloud check feature, and will raise the total time to 60 seconds. 

> [!Note]  
> This feature depends on three other MAPS settings the must all be enabled- "Configure the 'Block at First Sight' feature; "Join Microsoft MAPS"; "Send file samples when further analysis is required".

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-controlledfolderaccessallowedapplications"></a>**Defender/ControlledFolderAccessAllowedApplications**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop. The previous name was GuardedFoldersAllowedApplications and changed to ControlledFolderAccessAllowedApplications.

<p style="margin-left: 20px">Added in Windows 10, version 1709. This policy setting allows user-specified applications to the guard my folders feature. Adding an allowed application means the guard my folders feature will allow the application to modify or delete content in certain folders such as My Documents. In most cases it will not be necessary to add entries. Windows Defender Antivirus will automatically detect and dynamically add applications that are friendly. Value type is string. Use the | as the substring separator.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-controlledfolderaccessprotectedfolders"></a>**Defender/ControlledFolderAccessProtectedFolders**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop. The previous name was GuardedFoldersList and changed to ControlledFolderAccessProtectedFolders.

<p style="margin-left: 20px">Added in Windows 10, version 1709. This policy settings allows adding user-specified folder locations to the guard my folders feature. These folders will complement the system defined folders such as My Documents and My Pictures. The list of system folders will be displayed in the user interface and can not be changed. Value type is string. Use the | as the substring separator.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-daystoretaincleanedmalware"></a>**Defender/DaysToRetainCleanedMalware**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Time period (in days) that quarantine items will be stored on the system.

<p style="margin-left: 20px">Valid values: 0–90

<p style="margin-left: 20px">The default value is 0, which keeps items in quarantine, and does not automatically remove them.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-enablecontrolledfolderaccess"></a>**Defender/EnableControlledFolderAccess**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop. The previous name was EnableGuardMyFolders  and changed to EnableControlledFolderAccess.

<p style="margin-left: 20px">Added in Windows 10, version 1709. This policy enables setting the state (On/Off/Audit) for the guard my folders feature. The guard my folders feature removes modify and delete permissions from untrusted applications to certain folders such as My Documents. Value type is integer and the range is 0 - 2.  

- 0 (default) - Disabled
- 1 - Enabled
- 2 - Audit Mode

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-enablenetworkprotection"></a>**Defender/EnableNetworkProtection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

<p style="margin-left: 20px">Added in Windows 10, version 1709. This policy allows you to turn network protection on (block/audit) or off in Windows Defender Exploit Guard. Network protection is a feature of Windows Defender Exploit Guard that protects employees using any app from accessing phishing scams, exploit-hosting sites, and malicious content on the Internet. This includes preventing third-party browsers from connecting to dangerous sites. Value type is integer.

<p style="margin-left: 20px">If you enable this setting, network protection is turned on and employees can't turn it off. Its behavior can be controlled by the following options: Block and Audit.
<p style="margin-left: 20px">If you enable this policy with the ""Block"" option, users/apps will be blocked from connecting to dangerous domains. You will be able to see this activity in Windows Defender Security Center.
<p style="margin-left: 20px">If you enable this policy with the ""Audit"" option, users/apps will not be blocked from connecting to dangerous domains. However, you will still see this activity in Windows Defender Security Center.
<p style="margin-left: 20px">If you disable this policy, users/apps will not be blocked from connecting to dangerous domains. You will not see any network activity in Windows Defender Security Center.
<p style="margin-left: 20px">If you do not configure this policy, network blocking will be disabled by default.

<p>Valid values:

- 0 (default) - Disabled
- 1 - Enabled (block mode)
- 2 - Enabled (audit mode)

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-excludedextensions"></a>**Defender/ExcludedExtensions**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Allows an administrator to specify a list of file type extensions to ignore during a scan. Each file type in the list must be separated by a **|**. For example, "lib|obj".

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-excludedpaths"></a>**Defender/ExcludedPaths**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows an administrator to specify a list of directory paths to ignore during a scan. Each path in the list must be separated by a **|**. For example, "C:\\Example|C:\\Example1".

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-excludedprocesses"></a>**Defender/ExcludedProcesses**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows an administrator to specify a list of files opened by processes to ignore during a scan.

> [!IMPORTANT]
> The process itself is not excluded from the scan, but can be by using the **Defender/ExcludedPaths** policy to exclude its path.

 
<p style="margin-left: 20px">Each file type must be separated by a **|**. For example, "C:\\Example.exe|C:\\Example1.exe".

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-puaprotection"></a>**Defender/PUAProtection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the level of detection for potentially unwanted applications (PUAs). Windows Defender alerts you when potentially unwanted software is being downloaded or attempts to install itself on your computer.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – PUA Protection off. Windows Defender will not protect against potentially unwanted applications.
-   1 – PUA Protection on. Detected items are blocked. They will show in history along with other threats.
-   2 – Audit mode. Windows Defender will detect potentially unwanted applications, but take no action. You can review information about the applications Windows Defender would have taken action against by searching for events created by Windows Defender in the Event Viewer.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-realtimescandirection"></a>**Defender/RealTimeScanDirection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Controls which sets of files should be monitored.

> [!NOTE]
> If **AllowOnAccessProtection** is not allowed, then this configuration can be used to monitor specific files.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Monitor all files (bi-directional).
-   1 – Monitor incoming files.
-   2 – Monitor outgoing files.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-scanparameter"></a>**Defender/ScanParameter**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Selects whether to perform a quick scan or full scan.

<p style="margin-left: 20px">The following list shows the supported values:

-   1 (default) – Quick scan
-   2 – Full scan

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-schedulequickscantime"></a>**Defender/ScheduleQuickScanTime**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Selects the time of day that the Windows Defender quick scan should run.

> [!NOTE]
> The scan type will depends on what scan type is selected in the **Defender/ScanParameter** setting.

 
<p style="margin-left: 20px">Valid values: 0–1380

<p style="margin-left: 20px">For example, a value of 0=12:00AM, a value of 60=1:00AM, a value of 120=2:00, and so on, up to a value of 1380=11:00PM.

<p style="margin-left: 20px">The default value is 120

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-schedulescanday"></a>**Defender/ScheduleScanDay**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Selects the day that the Windows Defender scan should run.

> [!NOTE]
> The scan type will depends on what scan type is selected in the **Defender/ScanParameter** setting.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Every day
-   1 – Monday
-   2 – Tuesday
-   3 – Wednesday
-   4 – Thursday
-   5 – Friday
-   6 – Saturday
-   7 – Sunday
-   8 – No scheduled scan

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-schedulescantime"></a>**Defender/ScheduleScanTime**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Selects the time of day that the Windows Defender scan should run.

> [!NOTE]
> The scan type will depends on what scan type is selected in the **Defender/ScanParameter** setting.


<p style="margin-left: 20px">Valid values: 0–1380.

<p style="margin-left: 20px">For example, a value of 0=12:00AM, a value of 60=1:00AM, a value of 120=2:00, and so on, up to a value of 1380=11:00PM.

<p style="margin-left: 20px">The default value is 120.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-signatureupdateinterval"></a>**Defender/SignatureUpdateInterval**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Specifies the interval (in hours) that will be used to check for signatures, so instead of using the ScheduleDay and ScheduleTime the check for new signatures will be set according to the interval.

<p style="margin-left: 20px">Valid values: 0–24.

<p style="margin-left: 20px">A value of 0 means no check for new signatures, a value of 1 means to check every hour, a value of 2 means to check every two hours, and so on, up to a value of 24, which means to check every day.

<p style="margin-left: 20px">The default value is 8.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-submitsamplesconsent"></a>**Defender/SubmitSamplesConsent**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Checks for the user consent level in Windows Defender to send data. If the required consent has already been granted, Windows Defender submits them. If not, (and if the user has specified never to ask), the UI is launched to ask for user consent (when **Defender/AllowCloudProtection** is allowed) before sending data.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Always prompt.
-   1 (default) – Send safe samples automatically.
-   2 – Never send.
-   3 – Send all samples automatically.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="defender-threatseveritydefaultaction"></a>**Defender/ThreatSeverityDefaultAction**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.
 

<p style="margin-left: 20px">Allows an administrator to specify any valid threat severity levels and the corresponding default action ID to take.

<p style="margin-left: 20px">This value is a list of threat severity level IDs and corresponding actions, separated by a**|** using the format "*threat level*=*action*|*threat level*=*action*". For example "1=6|2=2|4=10|5=3

<p style="margin-left: 20px">The following list shows the supported values for threat severity levels:

-   1 – Low severity threats
-   2 – Moderate severity threats
-   4 – High severity threats
-   5 – Severe threats

<p style="margin-left: 20px">The following list shows the supported values for possible actions:

-   1 – Clean
-   2 – Quarantine
-   3 – Remove
-   6 – Allow
-   8 – User defined
-   10 – Block

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>Defender policies supported by Microsoft Surface Hub  

-   [Defender/AllowArchiveScanning](#defender-allowarchivescanning)  
-   [Defender/AllowBehaviorMonitoring](#defender-allowbehaviormonitoring)  
-   [Defender/AllowCloudProtection](#defender-allowcloudprotection)  
-   [Defender/AllowEmailScanning](#defender-allowemailscanning)  
-   [Defender/AllowFullScanOnMappedNetworkDrives](#defender-allowfullscanonmappednetworkdrives)  
-   [Defender/AllowFullScanRemovableDriveScanning](#defender-allowfullscanremovabledrivescanning)  
-   [Defender/AllowIOAVProtection](#defender-allowioavprotection)  
-   [Defender/AllowIntrusionPreventionSystem](#defender-allowintrusionpreventionsystem)  
-   [Defender/AllowOnAccessProtection](#defender-allowonaccessprotection)  
-   [Defender/AllowRealtimeMonitoring](#defender-allowrealtimemonitoring)  
-   [Defender/AllowScanningNetworkFiles](#defender-allowscanningnetworkfiles)  
-   [Defender/AllowScriptScanning](#defender-allowscriptscanning)  
-   [Defender/AllowUserUIAccess](#defender-allowuseruiaccess)  
-   [Defender/AvgCPULoadFactor](#defender-avgcpuloadfactor)  
-   [Defender/DaysToRetainCleanedMalware](#defender-daystoretaincleanedmalware)  
-   [Defender/ExcludedExtensions](#defender-excludedextensions)  
-   [Defender/ExcludedPaths](#defender-excludedpaths)  
-   [Defender/ExcludedProcesses](#defender-excludedprocesses)  
-   [Defender/PUAProtection](#defender-puaprotection)  
-   [Defender/RealTimeScanDirection](#defender-realtimescandirection)  
-   [Defender/ScanParameter](#defender-scanparameter)  
-   [Defender/ScheduleQuickScanTime](#defender-schedulequickscantime)  
-   [Defender/ScheduleScanDay](#defender-schedulescanday)  
-   [Defender/ScheduleScanTime](#defender-schedulescantime)  
-   [Defender/SignatureUpdateInterval](#defender-signatureupdateinterval)  
-   [Defender/SubmitSamplesConsent](#defender-submitsamplesconsent)  
-   [Defender/ThreatSeverityDefaultAction](#defender-threatseveritydefaultaction)  
<!--EndSurfaceHub-->

