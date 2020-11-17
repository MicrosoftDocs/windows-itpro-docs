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
    <a href="#admx-windowsdefender-proxybypass">ADMX_WindowsDefender/RealtimeProtection_DisableScanOnRealtimeEnable</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-disablescanonrealtimeenable">ADMX_WindowsDefender/RealtimeProtection_IOAVMaxSize</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-ioavmaxsize">ADMX_WindowsDefender/RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-localsettingoverridedisablebehaviormonitoring">ADMX_WindowsDefender/RealtimeProtection_LocalSettingOverrideDisableIOAVProtection</a>
  </dd>
  <dd>
    <a href="#admx-windowsdefender-realtimeprotection-localsettingoverridedisableioavprotection">ADMX_WindowsDefender/RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection</a>
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
    <a href="#admx-windowsdefender-scan-disablecatchupquickscan">Scan_DisableCatchupQuickScan/ProxyBypass</a>
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

