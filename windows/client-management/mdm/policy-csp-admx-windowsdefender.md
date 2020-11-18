---
title: Policy CSP - ADMX_WindowsDefender
description: Policy CSP - ADMX_WindowsDefender
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 08/13/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_WindowsDefender
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_WindowsDefender policies  

<dl>
  <dd>
    <a href="#admx-windowsdefender-allowfastservicestartup">ADMX_WindowsDefender/AllowFastServiceStartup</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-checkforsignaturesbeforerunningscan">ADMX_WindowsDefender/CheckForSignaturesBeforeRunningScan</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-disableantispywaredefender">ADMX_WindowsDefender/DisableAntiSpywareDefender</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-disableautoexclusions">ADMX_WindowsDefender/DisableAutoExclusions</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-disableblockatfirstseen">ADMX_WindowsDefender/DisableBlockAtFirstSeen</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-disablelocaladminmerge">ADMX_WindowsDefender/DisableLocalAdminMerge</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-disablerealtimemonitoring">ADMX_WindowsDefender/DisableRealtimeMonitoring</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-disableroutinelytakingaction">ADMX_WindowsDefender/DisableRoutinelyTakingAction</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-exclusions-extensions">ADMX_WindowsDefender/Exclusions_Extensions</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-exclusions-paths">ADMX_WindowsDefender/Exclusions_Paths</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-exclusions-processes">ADMX_WindowsDefender/Exclusions_Processes</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-exploitguard-asr-asronlyexclusions">ADMX_WindowsDefender/ExploitGuard_ASR_ASROnlyExclusions</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-exploitguard-asr-rules">ADMX_WindowsDefender/ExploitGuard_ASR_Rules</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-exploitguard-controlledfolderaccess-allowedapplications">ADMX_WindowsDefender/ExploitGuard_ControlledFolderAccess_AllowedApplications</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-exploitguard-controlledfolderaccess-enablecontrolledfolderaccess">ADMX_WindowsDefender/ExploitGuard_ControlledFolderAccess_EnableControlledFolderAccess</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-exploitguard-controlledfolderaccess-protectedfolders">ADMX_WindowsDefender/ExploitGuard_ControlledFolderAccess_ProtectedFolders</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-exploitguard-enablenetworkprotection">ADMX_WindowsDefender/ExploitGuard_EnableNetworkProtection</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-mpengine-enablefilehashcomputation">ADMX_WindowsDefender/MpEngine_EnableFileHashComputation</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-nis-consumers-ips-disablesignatureretirement">ADMX_WindowsDefender/Nis_Consumers_IPS_DisableSignatureRetirement</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-nis-consumers-ips-sku-differentiation-signature-set-guid">ADMX_WindowsDefender/Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-nis-disableprotocolrecognition">ADMX_WindowsDefender/Nis_DisableProtocolRecognition</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-proxybypass">ADMX_WindowsDefender/ProxyBypass</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-proxypacurl">ADMX_WindowsDefender/ProxyPacUrl</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-proxyserver">ADMX_WindowsDefender/ProxyServer</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-quarantine-localsettingoverridepurgeitemsafterdelay">ADMX_WindowsDefender/Quarantine_LocalSettingOverridePurgeItemsAfterDelay</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-quarantine-purgeitemsafterdelay">ADMX_WindowsDefender/Quarantine_PurgeItemsAfterDelay</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-randomizescheduletasktimes">ADMX_WindowsDefender/RandomizeScheduleTaskTimes</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-disablebehaviormonitoring">ADMX_WindowsDefender/RealtimeProtection_DisableBehaviorMonitoring</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-disableioavprotection">ADMX_WindowsDefender/RealtimeProtection_DisableIOAVProtection</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-disableonaccessprotection">ADMX_WindowsDefender/RealtimeProtection_DisableOnAccessProtection</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-disablerawwritenotification">ADMX_WindowsDefender/RealtimeProtection_DisableRawWriteNotification</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-disablescanonrealtimeenable">ADMX_WindowsDefender/RealtimeProtection_DisableScanOnRealtimeEnable</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-ioavmaxsize">ADMX_WindowsDefender/RealtimeProtection_IOAVMaxSize</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-localsettingoverridedisablebehaviormonitoring">ADMX_WindowsDefender/RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-localsettingoverridedisableioavprotection">ADMX_WindowsDefender/RealtimeProtection_LocalSettingOverrideDisableIOAVProtection</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-localsettingoverridedisableonaccessprotection">ADMX_WindowsDefender/RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-localsettingoverridedisablerealtimemonitoring">ADMX_WindowsDefender/RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-localsettingoverriderealtimescandirection">ADMX_WindowsDefender/RealtimeProtection_LocalSettingOverrideRealtimeScanDirection</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-realtimescandirection">ADMX_WindowsDefender/RealtimeProtection_RealtimeScanDirection</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-remediation-localsettingoverridescan-scheduletime">ADMX_WindowsDefender/Remediation_LocalSettingOverrideScan_ScheduleTime</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-remediation-scan-scheduleday">ADMX_WindowsDefender/Remediation_Scan_ScheduleDay</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-remediation-scan-scheduletime">ADMX_WindowsDefender/Remediation_Scan_ScheduleTime</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-reporting-additionalactiontimeout">ADMX_WindowsDefender/Reporting_AdditionalActionTimeout</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-reporting-criticalfailuretimeout">ADMX_WindowsDefender/Reporting_CriticalFailureTimeout</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-reporting-disableenhancednotifications">ADMX_WindowsDefender/Reporting_DisableEnhancedNotifications</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-reporting-disablegenericreports">ADMX_WindowsDefender/Reporting_DisablegenericrePorts</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-reporting-noncriticaltimeout">ADMX_WindowsDefender/Reporting_NonCriticalTimeout</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-reporting-recentlycleanedtimeout">ADMX_WindowsDefender/Reporting_RecentlyCleanedTimeout</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-reporting-wpptracingcomponents">ADMX_WindowsDefender/Reporting_WppTracingComponents</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-reporting-wpptracinglevel">ADMX_WindowsDefender/Reporting_WppTracingLevel</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-root-puaprotection">ADMX_WindowsDefender/Root_PUAProtection</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-allowpause">ADMX_WindowsDefender/Scan_AllowPause</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-archivemaxdepth">ADMX_WindowsDefender/Scan_ArchiveMaxDepth</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-archivemaxsize">ADMX_WindowsDefender/Scan_ArchiveMaxSize</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-avgcpuloadfactor">ADMX_WindowsDefender/Scan_AvgCPULoadFactor</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-disablearchivescanning">ADMX_WindowsDefender/Scan_DisableArchiveScanning</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-disablecatchupfullscan">ADMX_WindowsDefender/Scan_DisableCatchupFullScan</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-disablecatchupquickscan">ADMX_WindowsDefender/Scan_DisableCatchupQuickScan</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-disableemailscanning">ADMX_WindowsDefender/Scan_DisableEmailScanning</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-disableheuristics">ADMX_WindowsDefender/Scan_DisableHeuristics</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-disablepackedexescanning">ADMX_WindowsDefender/Scan_DisablePackedExeScanning</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-disableremovabledrivescanning">ADMX_WindowsDefender/Scan_DisableRemovableDriveScanning</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-disablereparsepointscanning">ADMX_WindowsDefender/Scan_DisableReparsePointScanning</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-disablerestorepoint">ADMX_WindowsDefender/Scan_DisableRestorePoint</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-disablescanningmappednetworkdrivesforfullscan">ADMX_WindowsDefender/Scan_DisableScanningMappedNetworkDrivesForFullScan</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-disablescanningnetworkfiles">ADMX_WindowsDefender/Scan_DisableScanningNetworkFiles</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-localsettingoverrideavgcpuloadfactor">ADMX_WindowsDefender/Scan_LocalSettingOverrideAvgCPULoadFactor</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-localsettingoverridescanparameters">ADMX_WindowsDefender/Scan_LocalSettingOverrideScanParameters</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-localsettingoverridescheduleday">ADMX_WindowsDefender/Scan_LocalSettingOverrideScheduleDay</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-localsettingoverrideschedulequickscantime">ADMX_WindowsDefender/Scan_LocalSettingOverrideScheduleQuickScantime</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-localsettingoverridescheduletime">ADMX_WindowsDefender/Scan_LocalSettingOverrideScheduleTime</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-lowcpupriority">ADMX_WindowsDefender/Scan_LowCpuPriority</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-missedscheduledscancountbeforecatchup">ADMX_WindowsDefender/Scan_MissedScheduledScanCountBeforeCatchup</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-purgeitemsafterdelay">ADMX_WindowsDefender/Scan_PurgeItemsAfterDelay</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-quickscaninterval">ADMX_WindowsDefender/Scan_QuickScanInterval</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-scanonlyifidle">ADMX_WindowsDefender/Scan_ScanOnlyIfIdle</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-scanparameters">ADMX_WindowsDefender/Scan_ScanParameters</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-scheduleday">ADMX_WindowsDefender/Scan_ScheduleDay</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-schedulequickscantime">ADMX_WindowsDefender/Scan_ScheduleQuickScantime</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-scan-scheduletime">ADMX_WindowsDefender/Scan_ScheduleTime</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-servicekeepalive">ADMX_WindowsDefender/ServiceKeepAlive</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-assignaturedue">ADMX_WindowsDefender/SignatureUpdate_ASSignatureDue</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-avsignaturedue">ADMX_WindowsDefender/SignatureUpdate_AVSignatureDue</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-definitionupdatefilesharessources">ADMX_WindowsDefender/SignatureUpdate_DefinitionUpdateFileSharesSources</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-disablescanonupdate">ADMX_WindowsDefender/SignatureUpdate_DisableScanOnUpdate</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-disablescheduledsignatureupdateonbattery">ADMX_WindowsDefender/SignatureUpdate_DisableScheduledSignatureUpdateonBattery</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-disableupdateonstartupwithoutengine">ADMX_WindowsDefender/SignatureUpdate_DisableUpdateOnStartupWithoutEngine</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-fallbackorder">ADMX_WindowsDefender/SignatureUpdate_FallbackOrder</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-forceupdatefrommu">ADMX_WindowsDefender/SignatureUpdate_ForceUpdateFromMU</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-realtimesignaturedelivery">ADMX_WindowsDefender/SignatureUpdate_RealtimeSignatureDelivery</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-scheduleday">ADMX_WindowsDefender/SignatureUpdate_ScheduleDay</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-scheduletime">ADMX_WindowsDefender/SignatureUpdate_ScheduleTime</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-sharedsignatureslocation">ADMX_WindowsDefender/SignatureUpdate_SharedSignaturesLocation</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-signaturedisablenotification">ADMX_WindowsDefender/SignatureUpdate_SignatureDisableNotification</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-signatureupdatecatchupinterval">ADMX_WindowsDefender/SignatureUpdate_SignatureUpdateCatchupInterval</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-signatureupdateinterval">ADMX_WindowsDefender/SignatureUpdate_SignatureUpdateInterval</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-signatureupdate-updateonstartup">ADMX_WindowsDefender/SignatureUpdate_UpdateOnStartup</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-spynetreporting">ADMX_WindowsDefender/SpynetReporting</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-spynet-localsettingoverridespynetreporting">ADMX_WindowsDefender/Spynet_LocalSettingOverrideSpynetReporting</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-submitsamplesconsent">ADMX_WindowsDefender/SubmitSamplesConsent</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-threats-threatiddefaultaction">ADMX_WindowsDefender/Threats_ThreatIdDefaultAction</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-threats-threatseveritydefaultaction">ADMX_WindowsDefender/Threats_ThreatSeverityDefaultAction</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-ux-configuration-customdefaultactiontoaststring">ADMX_WindowsDefender/UX_Configuration_CustomDefaultActionToastString</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-ux-configuration-notification-suppress">ADMX_WindowsDefender/UX_Configuration_Notification_Suppress</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-ux-configuration-suppressrebootnotification">ADMX_WindowsDefender/UX_Configuration_SuppressRebootNotification</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-ux-configuration-uilockdown">ADMX_WindowsDefender/UX_Configuration_UILockdown</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-allowfastservicestartup"></a>**ADMX_WindowsDefender/AllowFastServiceStartup**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls the load priority for the antimalware service. Increasing the load priority will allow for faster service startup, but may impact performance.

If you enable or do not configure this setting, the antimalware service will load as a normal priority task.

If you disable this setting, the antimalware service will load as a low priority task.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Allow antimalware service to startup with normal priority*
-   GP name: *AllowFastServiceStartup*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-checkforsignaturesbeforerunningscan"></a>**ADMX_WindowsDefender/CheckForSignaturesBeforeRunningScan**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to manage whether a check for new virus and spyware security intelligence will occur before running a scan. 

This setting applies to scheduled scans as well as the command line "mpcmdrun -SigUpdate", but it has no effect on scans initiated manually from the user interface.

If you enable this setting, a check for new security intelligence will occur before running a scan.

If you disable this setting or do not configure this setting, the scan will start using the existing security intelligence.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Check for the latest virus and spyware security intelligence before running a scheduled scan*
-   GP name: *CheckForSignaturesBeforeRunningScan*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-disableantispywaredefender"></a>**ADMX_WindowsDefender/DisableAntiSpywareDefender**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting turns off Microsoft Defender Antivirus.

If you enable this policy setting, Microsoft Defender Antivirus does not run, and will not scan computers for malware or other potentially unwanted software.

If you disable this policy setting, Microsoft Defender Antivirus will run regardless of any other installed antivirus product.

If you do not configure this policy setting, Windows will internally manage Microsoft Defender Antivirus. If you install another antivirus program, Windows automatically disables Microsoft Defender Antivirus. Otherwise, Microsoft Defender Antivirus will scan your computers for malware and other potentially unwanted software.

Enabling or disabling this policy may lead to unexpected or unsupported behavior. It is recommended that you leave this policy setting unconfigured.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off Microsoft Defender Antivirus*
-   GP name: *DisableAntiSpywareDefender*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-disableautoexclusions"></a>**ADMX_WindowsDefender/DisableAutoExclusions**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. Allows an administrator to specify if Automatic Exclusions feature for Server SKUs should be turned off.

Disabled (Default):
Microsoft Defender will exclude pre-defined list of paths from the scan to improve performance.

Enabled:
Microsoft Defender will not exclude pre-defined list of paths from scans. This can impact machine performance in some scenarios.

Not configured:
Same as Disabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off Auto Exclusions*
-   GP name: *DisableAutoExclusions*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Exclusions*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-disableblockatfirstseen"></a>**ADMX_WindowsDefender/DisableBlockAtFirstSeen**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This feature ensures the device checks in real time with the Microsoft Active Protection Service (MAPS) before allowing certain content to be run or accessed. If this feature is disabled, the check will not occur, which will lower the protection state of the device.

Enabled – The Block at First Sight setting is turned on.
Disabled – The Block at First Sight setting is turned off.
    
This feature requires these Group Policy settings to be set as follows:

- MAPS -> The “Join Microsoft MAPS” must be enabled or the “Block at First Sight” feature will not function.
- MAPS -> The “Send file samples when further analysis is required” should be set to 1 (Send safe samples) or 3 (Send all samples). Setting to 0 (Always Prompt) will lower the protection state of the device. Setting to 2 (Never send) means the “Block at First Sight” feature will not function.
- Real-time Protection -> The “Scan all downloaded files and attachments” policy must be enabled or the “Block at First Sight” feature will not function.
- Real-time Protection -> Do not enable the “Turn off real-time protection” policy or the “Block at First Sight” feature will not function.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure the 'Block at First Sight' feature*
-   GP name: *DisableBlockAtFirstSeen*
-   GP path: *Windows Components\Microsoft Defender Antivirus\MAPS*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-disablelocaladminmerge"></a>**ADMX_WindowsDefender/DisableLocalAdminMerge**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether or not complex list settings configured by a local administrator are merged with Group Policy settings. This setting applies to lists such as threats and Exclusions.

If you enable or do not configure this setting, unique items defined in Group Policy and in preference settings configured by the local administrator will be merged into the resulting effective policy. In the case of conflicts, Group policy Settings will override preference settings.

If you disable this setting, only items defined by Group Policy will be used in the resulting effective policy. Group Policy settings will override preference settings configured by the local administrator.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure local administrator merge behavior for lists*
-   GP name: *DisableLocalAdminMerge*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-disablerealtimemonitoring"></a>**ADMX_WindowsDefender/DisableRealtimeMonitoring**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting turns off real-time protection prompts for known malware detection.

Microsoft Defender Antivirus alerts you when malware or potentially unwanted software attempts to install itself or to run on your computer.

If you enable this policy setting, Microsoft Defender Antivirus will not prompt users to take actions on malware detections.

If you disable or do not configure this policy setting, Microsoft Defender Antivirus will prompt users to take actions on malware detections.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off real-time protection*
-   GP name: *DisableRealtimeMonitoring*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-disableroutinelytakingaction"></a>**ADMX_WindowsDefender/DisableRoutinelyTakingAction**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure whether Microsoft Defender Antivirus automatically takes action on all detected threats. The action to be taken on a particular threat is determined by the combination of the policy-defined action, user-defined action, and the signature-defined action.

If you enable this policy setting, Microsoft Defender Antivirus does not automatically take action on the detected threats, but prompts users to choose from the actions available for each threat.

If you disable or do not configure this policy setting, Microsoft Defender Antivirus automatically takes action on all detected threats after a nonconfigurable delay of approximately five seconds.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off routine remediation*
-   GP name: *DisableRoutinelyTakingAction*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-exclusions-extensions"></a>**ADMX_WindowsDefender/Exclusions_Extensions**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you specify a list of file types that should be excluded from scheduled, custom, and real-time scanning. File types should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of the file type extension (such as "obj" or "lib"). The value is not used and it is recommended that this be set to 0.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Extension Exclusions*
-   GP name: *Exclusions_Extensions*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Exclusions*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-exclusions-paths"></a>**ADMX_WindowsDefender/Exclusions_Paths**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to disable scheduled and real-time scanning for files under the paths specified or for the fully qualified resources specified. Paths should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of a path or a fully qualified resource name.

As an example, a path might be defined as: "c:\Windows" to exclude all files in this directory. A fully qualified resource name might be defined as: "C:\Windows\App.exe". The value is not used and it is recommended that this be set to 0.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Path Exclusions*
-   GP name: *Exclusions_Paths*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Exclusions*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-exclusions-processes"></a>**ADMX_WindowsDefender/Exclusions_Processes**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to disable scheduled and real-time scanning for any file opened by any of the specified processes. The process itself will not be excluded. To exclude the process, use the Path exclusion. Processes should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of the path to the process image. Note that only executables can be excluded. For example, a process might be defined as: "c:\windows\app.exe". The value is not used and it is recommended that this be set to 0.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Process Exclusions*
-   GP name: *Exclusions_Processes*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Exclusions*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-exploitguard-asr-asronlyexclusions"></a>**ADMX_WindowsDefender/ExploitGuard_ASR_ASROnlyExclusions**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. Exclude files and paths from Attack Surface Reduction (ASR) rules.

Enabled:
Specify the folders or files and resources that should be excluded from ASR rules in the Options section.
Enter each rule on a new line as a name-value pair:

- Name column: Enter a folder path or a fully qualified resource name. For example, ""C:\Windows"" will exclude all files in that directory. ""C:\Windows\App.exe"" will exclude only that specific file in that specific folder
- Value column: Enter ""0"" for each item

Disabled:
No exclusions will be applied to the ASR rules.

Not configured:
Same as Disabled.

You can configure ASR rules in the Configure Attack Surface Reduction rules GP setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Exclude files and paths from Attack Surface Reduction Rules*
-   GP name: *ExploitGuard_ASR_ASROnlyExclusions*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Microsoft Defender Exploit Guard\Attack Surface Reduction*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-exploitguard-asr-rules"></a>**ADMX_WindowsDefender/ExploitGuard_ASR_Rules**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. Set the state for each Attack Surface Reduction (ASR) rule.

After enabling this setting, you can set each rule to the following in the Options section:

- Block: the rule will be applied
- Audit Mode: if the rule would normally cause an event, then it will be recorded (although the rule will not actually be applied)
- Off: the rule will not be applied

Enabled:
Specify the state for each ASR rule under the Options section for this setting.
Enter each rule on a new line as a name-value pair:

- Name column: Enter a valid ASR rule ID
- Value column: Enter the status ID that relates to state you want to specify for the associated rule

The following status IDs are permitted under the value column:
- 1 (Block)
- 0 (Off)
- 2 (Audit)
    
Example:
xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx            0
xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx            1
xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx            2

Disabled:
No ASR rules will be configured.

Not configured:
Same as Disabled.

You can exclude folders or files in the "Exclude files and paths from Attack Surface Reduction Rules" GP setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Attack Surface Reduction rules*
-   GP name: *ExploitGuard_ASR_Rules*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Microsoft Defender Exploit Guard\Attack Surface Reduction*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-exploitguard-controlledfolderaccess-allowedapplications"></a>**ADMX_WindowsDefender/ExploitGuard_ControlledFolderAccess_AllowedApplications**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. Add additional applications that should be considered "trusted" by controlled folder access.

These applications are allowed to modify or delete files in controlled folder access folders.

Microsoft Defender Antivirus automatically determines which applications should be trusted. You can configure this setting to add additional applications.

Enabled: 
Specify additional allowed applications in the Options section..

Disabled:
No additional applications will be added to the trusted list.

Not configured:
Same as Disabled.

You can enable controlled folder access in the Configure controlled folder access GP setting.

Default system folders are automatically guarded, but you can add folders in the configure protected folders GP setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure allowed applications*
-   GP name: *ExploitGuard_ControlledFolderAccess_AllowedApplications*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Microsoft Defender Exploit Guard\Controlled Folder Access*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-exploitguard-controlledfolderaccess-enablecontrolledfolderaccess"></a>**ADMX_WindowsDefender/ExploitGuard_ControlledFolderAccess_EnableControlledFolderAccess**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. Enable or disable controlled folder access for untrusted applications. You can choose to block, audit, or allow attempts by untrusted apps to:

- Modify or delete files in protected folders, such as the Documents folder
- Write to disk sectors

You can also choose to only block or audit writes to disk sectors while still allowing the modification or deletion of files in protected folders.

Microsoft Defender Antivirus automatically determines which applications can be trusted. You can add additional trusted applications in the Configure allowed applications GP setting.
Default system folders are automatically protected, but you can add folders in the Configure protected folders GP setting.

Block:
The following will be blocked:

- Attempts by untrusted apps to modify or delete files in protected folders
- Attempts by untrusted apps to write to disk sectors

The Windows event log will record these blocks under Applications and Services Logs > Microsoft > Windows > Windows Defender > Operational > ID 1123.

Disabled:
The following will not be blocked and will be allowed to run:

- Attempts by untrusted apps to modify or delete files in protected folders
- Attempts by untrusted apps to write to disk sectors

These attempts will not be recorded in the Windows event log.

Audit Mode:
The following will not be blocked and will be allowed to run:

- Attempts by untrusted apps to modify or delete files in protected folders
- Attempts by untrusted apps to write to disk sectors

The Windows event log will record these attempts under Applications and Services Logs > Microsoft > Windows > Windows Defender > Operational > ID 1124.

Block disk modification only:
The following will be blocked:

- Attempts by untrusted apps to write to disk sectors

The Windows event log will record these attempts under Applications and Services Logs > Microsoft > Windows > Windows Defender > Operational > ID 1123.

The following will not be blocked and will be allowed to run:

- Attempts by untrusted apps to modify or delete files in protected folders
These attempts will not be recorded in the Windows event log.

Audit disk modification only:
The following will not be blocked and will be allowed to run:

- Attempts by untrusted apps to write to disk sectors
- Attempts by untrusted apps to modify or delete files in protected folders
Only attempts to write to protected disk sectors will be recorded in the Windows event log (under Applications and Services Logs > Microsoft > Windows > Windows Defender > Operational > ID 1124).
Attempts to modify or delete files in protected folders will not be recorded.

Not configured:
Same as Disabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Controlled folder access*
-   GP name: *ExploitGuard_ControlledFolderAccess_EnableControlledFolderAccess*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Microsoft Defender Exploit Guard\Controlled Folder Access*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-exploitguard-controlledfolderaccess-protectedfolders"></a>**ADMX_WindowsDefender/ExploitGuard_ControlledFolderAccess_ProtectedFolders**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. Specify additional folders that should be guarded by the Controlled folder access feature.

Files in these folders cannot be modified or deleted by untrusted applications.

Default system folders are automatically protected. You can configure this setting to add additional folders. 
The list of default system folders that are protected is shown in Windows Security.

Enabled:
Specify additional folders that should be protected in the Options section.

Disabled:
No additional folders will be protected.

Not configured:
Same as Disabled.

You can enable controlled folder access in the Configure controlled folder access GP setting.

Microsoft Defender Antivirus automatically determines which applications can be trusted. You can add additional trusted applications in the Configure allowed applications GP setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure protected folders*
-   GP name: *ExploitGuard_ControlledFolderAccess_ProtectedFolders*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Microsoft Defender Exploit Guard\Controlled Folder Access*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-exploitguard-enablenetworkprotection"></a>**ADMX_WindowsDefender/ExploitGuard_EnableNetworkProtection**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. Enable or disable Microsoft Defender Exploit Guard network protection to prevent employees from using any application to access dangerous domains that may host phishing scams, exploit-hosting sites, and other malicious content on the Internet.

Enabled:
Specify the mode in the Options section:

- Block: Users and applications will not be able to access dangerous domains
- Audit Mode: Users and applications can connect to dangerous domains, however if this feature would have blocked access if it were set to Block, then a record of the event will be in the event logs.

Disabled:
Users and applications will not be blocked from connecting to dangerous domains.

Not configured:
Same as Disabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prevent users and apps from accessing dangerous websites*
-   GP name: *ExploitGuard_EnableNetworkProtection*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Microsoft Defender Exploit Guard\Network Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-mpengine-enablefilehashcomputation"></a>**ADMX_WindowsDefender/MpEngine_EnableFileHashComputation**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. Enable or disable file hash computation feature.

Enabled:
When this feature is enabled Microsoft Defender will compute hash value for files it scans.

Disabled:
File hash value is not computed

Not configured:
Same as Disabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Enable file hash computation feature*
-   GP name: *MpEngine_EnableFileHashComputation*
-   GP path: *Windows Components\Microsoft Defender Antivirus\MpEngine*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-nis-consumers-ips-disablesignatureretirement"></a>**ADMX_WindowsDefender/Nis_Consumers_IPS_DisableSignatureRetirement**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure definition retirement for network protection against exploits of known vulnerabilities. Definition retirement checks to see if a computer has the required security updates necessary to protect it against a particular vulnerability. If the system is not vulnerable to the exploit detected by a definition, then that definition is "retired". If all security intelligence for a given protocal are retired then that protocol is no longer parsed. Enabling this feature helps to improve performance. On a computer that is up-to-date with all the latest security updates, network protection will have no impact on network performance.

If you enable or do not configure this setting, definition retirement will be enabled.

If you disable this setting, definition retirement will be disabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn on definition retirement*
-   GP name: *Nis_Consumers_IPS_DisableSignatureRetirement*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Network Inspection System*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-nis-consumers-ips-sku-differentiation-signature-set-guid"></a>**ADMX_WindowsDefender/Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting defines additional definition sets to enable for network traffic inspection. Definition set GUIDs should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of a definition set GUID. As an example, the definition set GUID to enable test security intelligence is defined as: “{b54b6ac9-a737-498e-9120-6616ad3bf590}”. The value is not used and it is recommended that this be set to 0.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify additional definition sets for network traffic inspection*
-   GP name: *Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Network Inspection System*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-nis-disableprotocolrecognition"></a>**ADMX_WindowsDefender/Nis_DisableProtocolRecognition**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure protocol recognition for network protection against exploits of known vulnerabilities.

If you enable or do not configure this setting, protocol recognition will be enabled.

If you disable this setting, protocol recognition will be disabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn on protocol recognition*
-   GP name: *Nis_DisableProtocolRecognition*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Network Inspection System*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-proxybypass"></a>**ADMX_WindowsDefender/ProxyBypass**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy, if defined, will prevent antimalware from using the configured proxy server when communicating with the specified IP addresses. The address value should be entered as a valid URL.

If you enable this setting, the proxy server will be bypassed for the specified addresses.

If you disable or do not configure this setting, the proxy server will not be bypassed for the specified addresses.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Define addresses to bypass proxy server*
-   GP name: *ProxyBypass*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-proxypacurl"></a>**ADMX_WindowsDefender/ProxyPacUrl**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting defines the URL of a proxy .pac file that should be used when the client attempts to connect the network for security intelligence updates and MAPS reporting. If the proxy auto-config fails or if there is no proxy auto-config specified, the client will fall back to the alternative options (in order):

1. Proxy server (if specified)
2. Proxy .pac URL (if specified)
3. None
4. Internet Explorer proxy settings
5. Autodetect

If you enable this setting, the proxy setting will be set to use the specified proxy .pac according to the order specified above.

If you disable or do not configure this setting, the proxy will skip over this fallback step according to the order specified above.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Define proxy auto-config (.pac) for connecting to the network*
-   GP name: *ProxyPacUrl*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-proxyserver"></a>**ADMX_WindowsDefender/ProxyServer**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure the named proxy that should be used when the client attempts to connect to the network for security intelligence updates and MAPS reporting. If the named proxy fails or if there is no proxy specified, the client will fall back to the alternative options (in order):

1. Proxy server (if specified)
2. Proxy .pac URL (if specified)
3. None
4. Internet Explorer proxy settings
5. Autodetect

If you enable this setting, the proxy will be set to the specified URL according to the order specified above. The URL should be proceeded with either http:// or https://.

If you disable or do not configure this setting, the proxy will skip over this fallback step according to the order specified above.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Define proxy server for connecting to the network*
-   GP name: *ProxyServer*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-quarantine-localsettingoverridepurgeitemsafterdelay"></a>**ADMX_WindowsDefender/Quarantine_LocalSettingOverridePurgeItemsAfterDelay**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures a local override for the configuration of the number of days items should be kept in the Quarantine folder before being removed. This setting can only be set by Group Policy.

If you enable this setting, the local preference setting will take priority over Group Policy.

If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure local setting override for the removal of items from Quarantine folder*
-   GP name: *Quarantine_LocalSettingOverridePurgeItemsAfterDelay*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Quarantine*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-quarantine-purgeitemsafterdelay"></a>**ADMX_WindowsDefender/Quarantine_PurgeItemsAfterDelay**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting defines the number of days items should be kept in the Quarantine folder before being removed.

If you enable this setting, items will be removed from the Quarantine folder after the number of days specified.

If you disable or do not configure this setting, items will be kept in the quarantine folder indefinitely and will not be automatically removed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure removal of items from Quarantine folder*
-   GP name: *Quarantine_PurgeItemsAfterDelay*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Quarantine*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-randomizescheduletasktimes"></a>**ADMX_WindowsDefender/RandomizeScheduleTaskTimes**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to enable or disable randomization of the scheduled scan start time and the scheduled security intelligence update start time. This setting is used to distribute the resource impact of scanning. For example, it could be used in guest virtual machines sharing a host, to prevent multiple guest virtual machines from undertaking a disk-intensive operation at the same time.

If you enable or do not configure this setting, scheduled tasks will begin at a random time within an interval of 30 minutes before and after the specified start time.

If you disable this setting, scheduled tasks will begin at the specified start time.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Randomize scheduled task times*
-   GP name: *RandomizeScheduleTaskTimes*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-realtimeprotection-disablebehaviormonitoring"></a>**ADMX_WindowsDefender/RealtimeProtection_DisableBehaviorMonitoring**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure behavior monitoring.

If you enable or do not configure this setting, behavior monitoring will be enabled.

If you disable this setting, behavior monitoring will be disabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn on behavior monitoring*
-   GP name: *RealtimeProtection_DisableBehaviorMonitoring*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-realtimeprotection-disableioavprotection"></a>**ADMX_WindowsDefender/RealtimeProtection_DisableIOAVProtection**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure scanning for all downloaded files and attachments.

If you enable or do not configure this setting, scanning for all downloaded files and attachments will be enabled.

If you disable this setting, scanning for all downloaded files and attachments will be disabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Scan all downloaded files and attachments*
-   GP name: *RealtimeProtection_DisableIOAVProtection*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-realtimeprotection-disableonaccessprotection"></a>**ADMX_WindowsDefender/RealtimeProtection_DisableOnAccessProtection**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure monitoring for file and program activity.

If you enable or do not configure this setting, monitoring for file and program activity will be enabled.

If you disable this setting, monitoring for file and program activity will be disabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Monitor file and program activity on your computer*
-   GP name: *RealtimeProtection_DisableOnAccessProtection*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-realtimeprotection-disablerawwritenotification"></a>**ADMX_WindowsDefender/RealtimeProtection_DisableRawWriteNotification**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether raw volume write notifications are sent to behavior monitoring.

If you enable or do not configure this setting, raw write notifications will be enabled.

If you disable this setting, raw write notifications be disabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn on raw volume write notifications*
-   GP name: *RealtimeProtection_DisableRawWriteNotification*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-realtimeprotection-disablescanonrealtimeenable"></a>**ADMX_WindowsDefender/RealtimeProtection_DisableScanOnRealtimeEnable**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure process scanning when real-time protection is turned on. This helps to catch malware which could start when real-time protection is turned off.

If you enable or do not configure this setting, a process scan will be initiated when real-time protection is turned on.

If you disable this setting, a process scan will not be initiated when real-time protection is turned on.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn on process scanning whenever real-time protection is enabled*
-   GP name: *RealtimeProtection_DisableScanOnRealtimeEnable*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-realtimeprotection-ioavmaxsize"></a>**ADMX_WindowsDefender/RealtimeProtection_IOAVMaxSize**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting defines the maximum size (in kilobytes) of downloaded files and attachments that will be scanned.

If you enable this setting, downloaded files and attachments smaller than the size specified will be scanned.

If you disable or do not configure this setting, a default size will be applied.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Define the maximum size of downloaded files and attachments to be scanned*
-   GP name: *RealtimeProtection_IOAVMaxSize*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-realtimeprotection-localsettingoverridedisablebehaviormonitoring"></a>**ADMX_WindowsDefender/RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures a local override for the configuration of behavior monitoring. This setting can only be set by Group Policy.

If you enable this setting, the local preference setting will take priority over Group Policy.

If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure local setting override for turn on behavior monitoring*
-   GP name: *RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-realtimeprotection-localsettingoverridedisableioavprotection"></a>**ADMX_WindowsDefender/RealtimeProtection_LocalSettingOverrideDisableIOAVProtection**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures a local override for the configuration of scanning for all downloaded files and attachments. This setting can only be set by Group Policy.

If you enable this setting, the local preference setting will take priority over Group Policy.

If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure local setting override for scanning all downloaded files and attachments*
-   GP name: *RealtimeProtection_LocalSettingOverrideDisableIOAVProtection*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-realtimeprotection-localsettingoverridedisableonaccessprotection"></a>**ADMX_WindowsDefender/RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures a local override for the configuration of monitoring for file and program activity on your computer. This setting can only be set by Group Policy.

If you enable this setting, the local preference setting will take priority over Group Policy.

If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure local setting override for monitoring file and program activity on your computer*
-   GP name: *RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-realtimeprotection-localsettingoverridedisablerealtimemonitoring"></a>**ADMX_WindowsDefender/RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures a local override for the configuration to turn on real-time protection. This setting can only be set by Group Policy.

If you enable this setting, the local preference setting will take priority over Group Policy.

If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure local setting override to turn on real-time protection*
-   GP name: *RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-realtimeprotection-localsettingoverriderealtimescandirection"></a>**ADMX_WindowsDefender/RealtimeProtection_LocalSettingOverrideRealtimeScanDirection**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures a local override for the configuration of monitoring for incoming and outgoing file activity. This setting can only be set by Group Policy.

If you enable this setting, the local preference setting will take priority over Group Policy.

If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure local setting override for monitoring for incoming and outgoing file activity*
-   GP name: *RealtimeProtection_LocalSettingOverrideRealtimeScanDirection*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-realtimeprotection-realtimescandirection"></a>**ADMX_WindowsDefender/RealtimeProtection_RealtimeScanDirection**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure monitoring for incoming and outgoing files, without having to turn off monitoring entirely. It is recommended for use on servers where there is a lot of incoming and outgoing file activity but for performance reasons need to have scanning disabled for a particular scan direction. The appropriate configuration should be evaluated based on the server role. 

Note that this configuration is only honored for NTFS volumes. For any other file system type, full monitoring of file and program activity will be present on those volumes.

The options for this setting are mutually exclusive:

- 0 = Scan incoming and outgoing files (default)
- 1 = Scan incoming files only
- 2 = Scan outgoing files only

Any other value, or if the value does not exist, resolves to the default (0).

If you enable this setting, the specified type of monitoring will be enabled.

If you disable or do not configure this setting, monitoring for incoming and outgoing files will be enabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure monitoring for incoming and outgoing file and program activity*
-   GP name: *RealtimeProtection_RealtimeScanDirection*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-remediation-localsettingoverridescan-scheduletime"></a>**ADMX_WindowsDefender/Remediation_LocalSettingOverrideScan_ScheduleTime**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures a local override for the configuration of the time to run a scheduled full scan to complete remediation. This setting can only be set by Group Policy.

If you enable this setting, the local preference setting will take priority over Group Policy.

If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure local setting override for the time of day to run a scheduled full scan to complete remediation*
-   GP name: *Remediation_LocalSettingOverrideScan_ScheduleTime*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Remediation*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-remediation-scan-scheduleday"></a>**ADMX_WindowsDefender/Remediation_Scan_ScheduleDay**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to specify the day of the week on which to perform a scheduled full scan in order to complete remediation. The scan can also be configured to run every day or to never run at all.

This setting can be configured with the following ordinal number values:

- (0x0) Every Day
- (0x1) Sunday 
- (0x2) Monday
- (0x3) Tuesday
- (0x4) Wednesday
- (0x5) Thursday
- (0x6) Friday
- (0x7) Saturday
- (0x8) Never (default)

If you enable this setting, a scheduled full scan to complete remediation will run at the frequency specified.

If you disable or do not configure this setting, a scheduled full scan to complete remediation will run at a default frequency.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify the day of the week to run a scheduled full scan to complete remediation*
-   GP name: *Remediation_Scan_ScheduleDay*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Remediation*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-remediation-scan-scheduletime"></a>**ADMX_WindowsDefender/Remediation_Scan_ScheduleTime**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to specify the time of day at which to perform a scheduled full scan in order to complete remediation. The time value is represented as the number of minutes past midnight (00:00).  For example, 120 (0x78) is equivalent to 02:00 AM.  The schedule is based on local time on the computer where the scan is executing.

If you enable this setting, a scheduled full scan to complete remediation will run at the time of day specified.

If you disable or do not configure this setting, a scheduled full scan to complete remediation will run at a default time.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify the time of day to run a scheduled full scan to complete remediation*
-   GP name: *Remediation_Scan_ScheduleTime*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Remediation*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-reporting-additionalactiontimeout"></a>**ADMX_WindowsDefender/Reporting_AdditionalActionTimeout**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures the time in minutes before a detection in the "additional action" state moves to the "cleared" state.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure time out for detections requiring additional action*
-   GP name: *Reporting_AdditionalActionTimeout*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-reporting-criticalfailuretimeout"></a>**ADMX_WindowsDefender/Reporting_CriticalFailureTimeout**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures the time in minutes before a detection in the “critically failed” state to moves to either the “additional action” state or the “cleared” state.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure time out for detections in critically failed state*
-   GP name: *Reporting_CriticalFailureTimeout*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-reporting-disableenhancednotifications"></a>**ADMX_WindowsDefender/Reporting_DisableEnhancedNotifications**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. Use this policy setting to specify if you want Microsoft Defender Antivirus enhanced notifications to display on clients.

If you disable or do not configure this setting, Microsoft Defender Antivirus enhanced notifications will display on clients.

If you enable this setting, Microsoft Defender Antivirus enhanced notifications will not display on clients.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off enhanced notifications*
-   GP name: *Reporting_DisableEnhancedNotifications*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>
<!--Policy-->
<a href="" id="admx-windowsdefender-reporting-disablegenericreports"></a>**ADMX_WindowsDefender/Reporting_DisablegenericrePorts**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure whether or not Watson events are sent.

If you enable or do not configure this setting, Watson events will be sent.

If you disable this setting, Watson events will not be sent.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Watson events*
-   GP name: *Reporting_DisablegenericrePorts*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-reporting-noncriticaltimeout"></a>**ADMX_WindowsDefender/Reporting_NonCriticalTimeout**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures the time in minutes before a detection in the "non-critically failed" state moves to the "cleared" state.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure time out for detections in non-critical failed state*
-   GP name: *Reporting_NonCriticalTimeout*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>
<!--Policy-->
<a href="" id="admx-windowsdefender-reporting-recentlycleanedtimeout"></a>**ADMX_WindowsDefender/Reporting_RecentlyCleanedTimeout**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures the time in minutes before a detection in the "completed" state moves to the "cleared" state.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure time out for detections in recently remediated state*
-   GP name: *Reporting_RecentlyCleanedTimeout*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-reporting-wpptracingcomponents"></a>**ADMX_WindowsDefender/Reporting_WppTracingComponents**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy configures Windows software trace preprocessor (WPP Software Tracing) components.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Windows software trace preprocessor components*
-   GP name: *Reporting_WppTracingComponents*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-reporting-wpptracinglevel"></a>**ADMX_WindowsDefender/Reporting_WppTracingLevel**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy allows you to configure tracing levels for Windows software trace preprocessor (WPP Software Tracing). 

Tracing levels are defined as:

- 1 - Error
- 2 - Warning
- 3 - Info
- 4 - Debug

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure WPP tracing level*
-   GP name: *Reporting_WppTracingLevel*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-root-puaprotection"></a>**ADMX_WindowsDefender/Root_PUAProtection**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. Enable or disable detection for potentially unwanted applications. You can choose to block, audit, or allow when potentially unwanted software is being downloaded or attempts to install itself on your computer.

Enabled:
Specify the mode in the Options section:

- Block: Potentially unwanted software will be blocked.
- Audit Mode: Potentially unwanted software will not be blocked, however if this feature would have blocked access if it were set to Block, then a record of the event will be in the event logs.

Disabled:
Potentially unwanted software will not be blocked.

Not configured:
Same as Disabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure detection for potentially unwanted applications*
-   GP name: *Root_PUAProtection*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-scan-allowpause"></a>**ADMX_WindowsDefender/Scan_AllowPause**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to manage whether or not end users can pause a scan in progress.

If you enable or do not configure this setting, a new context menu will be added to the task tray icon to allow the user to pause a scan.

If you disable this setting, users will not be able to pause scans.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Allow users to pause scan*
-   GP name: *Scan_AllowPause*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-scan-archivemaxdepth"></a>**ADMX_WindowsDefender/Scan_ArchiveMaxDepth**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure the maximum directory depth level into which archive files such as .ZIP or .CAB are unpacked during scanning. The default directory depth level is 0.

If you enable this setting, archive files will be scanned to the directory depth level specified.

If you disable or do not configure this setting, archive files will be scanned to the default directory depth level.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify the maximum depth to scan archive files*
-   GP name: *Scan_ArchiveMaxDepth*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-scan-archivemaxsize"></a>**ADMX_WindowsDefender/Scan_ArchiveMaxSize**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure the maximum size of archive files such as .ZIP or .CAB that will be scanned. The value represents file size in kilobytes (KB). The default value is 0 and represents no limit to archive size for scanning.

If you enable this setting, archive files less than or equal to the size specified will be scanned.

If you disable or do not configure this setting, archive files will be scanned according to the default value.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify the maximum size of archive files to be scanned*
-   GP name: *Scan_ArchiveMaxSize*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-scan-avgcpuloadfactor"></a>**ADMX_WindowsDefender/Scan_AvgCPULoadFactor**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure the maximum percentage CPU utilization permitted during a scan. Valid values for this setting are a percentage represented by the integers 5 to 100. A value of 0 indicates that there should be no throttling of CPU utilization. The default value is 50.

If you enable this setting, CPU utilization will not exceed the percentage specified.

If you disable or do not configure this setting, CPU utilization will not exceed the default value.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify the maximum percentage of CPU utilization during a scan*
-   GP name: *Scan_AvgCPULoadFactor*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-scan-disablearchivescanning"></a>**ADMX_WindowsDefender/Scan_DisableArchiveScanning**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure scans for malicious software and unwanted software in archive files such as .ZIP or .CAB files.

If you enable or do not configure this setting, archive files will be scanned.

If you disable this setting, archive files will not be scanned.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Scan archive files*
-   GP name: *Scan_DisableArchiveScanning*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-scan-disablecatchupfullscan"></a>**ADMX_WindowsDefender/Scan_DisableCatchupFullScan**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure catch-up scans for scheduled full scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed. Usually these scheduled scans are missed because the computer was turned off at the scheduled time. 

If you enable this setting, catch-up scans for scheduled full scans will be turned on. If a computer is offline for two consecutive scheduled scans, a catch-up scan is started the next time someone logs on to the computer. If there is no scheduled scan configured, there will be no catch-up scan run. 

If you disable or do not configure this setting, catch-up scans for scheduled full scans will be turned off.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn on catch-up full scan*
-   GP name: *Scan_DisableCatchupFullScan*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-scan-disablecatchupquickscan"></a>**ADMX_WindowsDefender/Scan_DisableCatchupQuickScan**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure catch-up scans for scheduled quick scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed. Usually these scheduled scans are missed because the computer was turned off at the scheduled time. 

If you enable this setting, catch-up scans for scheduled quick scans will be turned on. If a computer is offline for two consecutive scheduled scans, a catch-up scan is started the next time someone logs on to the computer. If there is no scheduled scan configured, there will be no catch-up scan run.

If you disable or do not configure this setting, catch-up scans for scheduled quick scans will be turned off.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn on catch-up quick scan*
-   GP name: *Scan_DisableCatchupQuickScan*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-scan-disableemailscanning"></a>**ADMX_WindowsDefender/Scan_DisableEmailScanning**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure e-mail scanning. When e-mail scanning is enabled, the engine will parse the mailbox and mail files, according to their specific format, in order to analyze the mail bodies and attachments. Several e-mail formats are currently supported, for example: pst (Outlook), dbx, mbx, mime (Outlook Express), binhex (Mac).

If you enable this setting, e-mail scanning will be enabled.

If you disable or do not configure this setting, e-mail scanning will be disabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn on e-mail scanning*
-   GP name: *Scan_DisableEmailScanning*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-scan-disableheuristics"></a>**ADMX_WindowsDefender/Scan_DisableHeuristics**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure heuristics. Suspicious detections will be suppressed right before reporting to the engine client. Turning off heuristics will reduce the capability to flag new threats. It is recommended that you do not turn off heuristics.

If you enable or do not configure this setting, heuristics will be enabled.

If you disable this setting, heuristics will be disabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn on heuristics*
-   GP name: *Scan_DisableHeuristics*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-scan-disablepackedexescanning"></a>**ADMX_WindowsDefender/Scan_DisablePackedExeScanning**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure scanning for packed executables. It is recommended that this type of scanning remain enabled.

If you enable or do not configure this setting, packed executables will be scanned.

If you disable this setting, packed executables will not be scanned.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Scan packed executables*
-   GP name: *Scan_DisablePackedExeScanning*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsdefender-scan-disableremovabledrivescanning"></a>**ADMX_WindowsDefender/Scan_DisableRemovableDriveScanning**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to manage whether or not to scan for malicious software and unwanted software in the contents of removable drives, such as USB flash drives, when running a full scan.

If you enable this setting, removable drives will be scanned during any type of scan.

If you disable or do not configure this setting, removable drives will not be scanned during a full scan. Removable drives may still be scanned during quick scan and custom scan.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Scan removable drives*
-   GP name: *Scan_DisableRemovableDriveScanning*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607.
- 2 - Available in Windows 10, version 1703.
- 3 - Available in Windows 10, version 1709.
- 4 - Available in Windows 10, version 1803.
- 5 - Available in Windows 10, version 1809.
- 6 - Available in Windows 10, version 1903.
- 7 - Available in Windows 10, version 1909.
- 8 - Available in Windows 10, version 2004.

<!--/Policies-->

