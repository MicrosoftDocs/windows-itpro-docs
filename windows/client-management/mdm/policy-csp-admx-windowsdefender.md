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
<a href="" id="admx-auditsettings-includecmdline"></a>**ADMX_AuditSettings/IncludeCmdLine**  

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
Available in Windows 10 Insider Preview Build 20185. This policy setting determines what information is logged in security audit events when a new process has been created. This setting only applies when the Audit Process Creation policy is enabled.

If you enable this policy setting, the command line information for every process will be logged in plain text in the security event log as part of the Audit Process Creation event 4688, "a new process has been created," on the workstations and servers on which this policy setting is applied.

If you disable or do not configure this policy setting, the process's command line information will not be included in Audit Process Creation events.  

Default is Not configured.

> [!NOTE]
> When this policy setting is enabled, any user with access to read the security events will be able to read the command line arguments for any successfully created process. Command line arguments can contain sensitive or private information, such as passwords or user data.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Include command line in process creation events*
-   GP name: *IncludeCmdLine*
-   GP path: *System/Audit Process Creation*
-   GP ADMX file name: *AuditSettings.admx*

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

