---
title: Policy CSP - ADMX_MicrosoftDefenderAntivirus
description: Learn about Policy CSP - ADMX_MicrosoftDefenderAntivirus.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 08/19/2022
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_MicrosoftDefenderAntivirus
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_MicrosoftDefenderAntivirus policies

<dl>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-allowfastservicestartup">ADMX_MicrosoftDefenderAntivirus/AllowFastServiceStartup</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-disableantispywaredefender">ADMX_MicrosoftDefenderAntivirus/DisableAntiSpywareDefender</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-disableautoexclusions">ADMX_MicrosoftDefenderAntivirus/DisableAutoExclusions</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-disableblockatfirstseen">ADMX_MicrosoftDefenderAntivirus/DisableBlockAtFirstSeen</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-disablelocaladminmerge">ADMX_MicrosoftDefenderAntivirus/DisableLocalAdminMerge</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-disablerealtimemonitoring">ADMX_MicrosoftDefenderAntivirus/DisableRealtimeMonitoring</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-disableroutinelytakingaction">ADMX_MicrosoftDefenderAntivirus/DisableRoutinelyTakingAction</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-exclusions-extensions">ADMX_MicrosoftDefenderAntivirus/Exclusions_Extensions</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-exclusions-paths">ADMX_MicrosoftDefenderAntivirus/Exclusions_Paths</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-exclusions-processes">ADMX_MicrosoftDefenderAntivirus/Exclusions_Processes</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-exploitguard-asr-asronlyexclusions">ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ASR_ASROnlyExclusions</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-exploitguard-asr-rules">ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ASR_Rules</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-exploitguard-controlledfolderaccess-allowedapplications">ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ControlledFolderAccess_AllowedApplications</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-exploitguard-controlledfolderaccess-protectedfolders">ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ControlledFolderAccess_ProtectedFolders</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-mpengine-enablefilehashcomputation">ADMX_MicrosoftDefenderAntivirus/MpEngine_EnableFileHashComputation</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-nis-consumers-ips-disablesignatureretirement">ADMX_MicrosoftDefenderAntivirus/Nis_Consumers_IPS_DisableSignatureRetirement</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-nis-consumers-ips-sku-differentiation-signature-set-guid">ADMX_MicrosoftDefenderAntivirus/Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-nis-disableprotocolrecognition">ADMX_MicrosoftDefenderAntivirus/Nis_DisableProtocolRecognition</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-proxybypass">ADMX_MicrosoftDefenderAntivirus/ProxyBypass</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-proxypacurl">ADMX_MicrosoftDefenderAntivirus/ProxyPacUrl</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-proxyserver">ADMX_MicrosoftDefenderAntivirus/ProxyServer</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-quarantine-localsettingoverridepurgeitemsafterdelay">ADMX_MicrosoftDefenderAntivirus/Quarantine_LocalSettingOverridePurgeItemsAfterDelay</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-quarantine-purgeitemsafterdelay">ADMX_MicrosoftDefenderAntivirus/Quarantine_PurgeItemsAfterDelay</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-randomizescheduletasktimes">ADMX_MicrosoftDefenderAntivirus/RandomizeScheduleTaskTimes</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-realtimeprotection-disablebehaviormonitoring">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableBehaviorMonitoring</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-realtimeprotection-disableioavprotection">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableIOAVProtection</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-realtimeprotection-disableonaccessprotection">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableOnAccessProtection</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-realtimeprotection-disablerawwritenotification">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableRawWriteNotification</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-realtimeprotection-disablescanonrealtimeenable">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableScanOnRealtimeEnable</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-realtimeprotection-ioavmaxsize">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_IOAVMaxSize</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisablebehaviormonitoring">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisableioavprotection">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableIOAVProtection</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisableonaccessprotection">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisablerealtimemonitoring">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverriderealtimescandirection">ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideRealtimeScanDirection</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-remediation-localsettingoverridescan-scheduletime">ADMX_MicrosoftDefenderAntivirus/Remediation_LocalSettingOverrideScan_ScheduleTime</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-remediation-scan-scheduleday">ADMX_MicrosoftDefenderAntivirus/Remediation_Scan_ScheduleDay</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-remediation-scan-scheduletime">ADMX_MicrosoftDefenderAntivirus/Remediation_Scan_ScheduleTime</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-reporting-additionalactiontimeout">ADMX_MicrosoftDefenderAntivirus/Reporting_AdditionalActionTimeout</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-reporting-criticalfailuretimeout">ADMX_MicrosoftDefenderAntivirus/Reporting_CriticalFailureTimeout</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-reporting-disableenhancednotifications">ADMX_MicrosoftDefenderAntivirus/Reporting_DisableEnhancedNotifications</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-reporting-disablegenericreports">ADMX_MicrosoftDefenderAntivirus/Reporting_Disablegenericreports</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-reporting-noncriticaltimeout">ADMX_MicrosoftDefenderAntivirus/Reporting_NonCriticalTimeout</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-reporting-recentlycleanedtimeout">ADMX_MicrosoftDefenderAntivirus/Reporting_RecentlyCleanedTimeout</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-reporting-wpptracingcomponents">ADMX_MicrosoftDefenderAntivirus/Reporting_WppTracingComponents</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-reporting-wpptracinglevel">ADMX_MicrosoftDefenderAntivirus/Reporting_WppTracingLevel</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-allowpause">ADMX_MicrosoftDefenderAntivirus/Scan_AllowPause</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-archivemaxdepth">ADMX_MicrosoftDefenderAntivirus/Scan_ArchiveMaxDepth</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-archivemaxsize">ADMX_MicrosoftDefenderAntivirus/Scan_ArchiveMaxSize</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-disablearchivescanning">ADMX_MicrosoftDefenderAntivirus/Scan_DisableArchiveScanning</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-disableemailscanning">ADMX_MicrosoftDefenderAntivirus/Scan_DisableEmailScanning</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-disableheuristics">ADMX_MicrosoftDefenderAntivirus/Scan_DisableHeuristics</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-disablepackedexescanning">ADMX_MicrosoftDefenderAntivirus/Scan_DisablePackedExeScanning</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-disableremovabledrivescanning">ADMX_MicrosoftDefenderAntivirus/Scan_DisableRemovableDriveScanning</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-disablereparsepointscanning">ADMX_MicrosoftDefenderAntivirus/Scan_DisableReparsePointScanning</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-disablerestorepoint">ADMX_MicrosoftDefenderAntivirus/Scan_DisableRestorePoint</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-disablescanningmappednetworkdrivesforfullscan">ADMX_MicrosoftDefenderAntivirus/Scan_DisableScanningMappedNetworkDrivesForFullScan</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-disablescanningnetworkfiles">ADMX_MicrosoftDefenderAntivirus/Scan_DisableScanningNetworkFiles</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-localsettingoverrideavgcpuloadfactor">ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideAvgCPULoadFactor</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-localsettingoverridescanparameters">ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScanParameters</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-localsettingoverridescheduleday">ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScheduleDay</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-localsettingoverrideschedulequickscantime">ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScheduleQuickScantime</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-localsettingoverridescheduletime">ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScheduleTime</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-lowcpupriority">ADMX_MicrosoftDefenderAntivirus/Scan_LowCpuPriority</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-missedscheduledscancountbeforecatchup">ADMX_MicrosoftDefenderAntivirus/Scan_MissedScheduledScanCountBeforeCatchup</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-purgeitemsafterdelay">ADMX_MicrosoftDefenderAntivirus/Scan_PurgeItemsAfterDelay</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-quickscaninterval">ADMX_MicrosoftDefenderAntivirus/Scan_QuickScanInterval</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-scanonlyifidle">ADMX_MicrosoftDefenderAntivirus/Scan_ScanOnlyIfIdle</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-scheduleday">ADMX_MicrosoftDefenderAntivirus/Scan_ScheduleDay</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-scan-scheduletime">ADMX_MicrosoftDefenderAntivirus/Scan_ScheduleTime</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-servicekeepalive">ADMX_MicrosoftDefenderAntivirus/ServiceKeepAlive</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-signatureupdate-assignaturedue">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ASSignatureDue</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-signatureupdate-avsignaturedue">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_AVSignatureDue</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-signatureupdate-definitionupdatefilesharessources">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DefinitionUpdateFileSharesSources</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-signatureupdate-disablescanonupdate">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DisableScanOnUpdate</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-signatureupdate-disablescheduledsignatureupdateonbattery">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DisableScheduledSignatureUpdateonBattery</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-signatureupdate-disableupdateonstartupwithoutengine">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DisableUpdateOnStartupWithoutEngine</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-signatureupdate-fallbackorder">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_FallbackOrder</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-signatureupdate-forceupdatefrommu">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ForceUpdateFromMU</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-signatureupdate-realtimesignaturedelivery">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_RealtimeSignatureDelivery</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-signatureupdate-scheduleday">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ScheduleDay</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-signatureupdate-scheduletime">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ScheduleTime</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-signatureupdate-sharedsignatureslocation">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_SharedSignaturesLocation</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-signatureupdate-signaturedisablenotification">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_SignatureDisableNotification</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-signatureupdate-signatureupdatecatchupinterval">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_SignatureUpdateCatchupInterval</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-signatureupdate-updateonstartup">ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_UpdateOnStartup</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-spynetreporting">ADMX_MicrosoftDefenderAntivirus/SpynetReporting</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-spynet-localsettingoverridespynetreporting">ADMX_MicrosoftDefenderAntivirus/Spynet_LocalSettingOverrideSpynetReporting</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-threats-threatiddefaultaction">ADMX_MicrosoftDefenderAntivirus/Threats_ThreatIdDefaultAction</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-ux-configuration-customdefaultactiontoaststring">ADMX_MicrosoftDefenderAntivirus/UX_Configuration_CustomDefaultActionToastString</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-ux-configuration-notification-suppress">ADMX_MicrosoftDefenderAntivirus/UX_Configuration_Notification_Suppress</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-ux-configuration-suppressrebootnotification">ADMX_MicrosoftDefenderAntivirus/UX_Configuration_SuppressRebootNotification</a>
  </dd>
  <dd>
    <a href="#admx-microsoftdefenderantivirus-ux-configuration-uilockdown">ADMX_MicrosoftDefenderAntivirus/UX_Configuration_UILockdown</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-allowfastservicestartup"></a>**ADMX_MicrosoftDefenderAntivirus/AllowFastServiceStartup**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting controls the load priority for the antimalware service. Increasing the load priority will allow for faster service startup, but may impact performance.

If you enable or don't configure this setting, the antimalware service will load as a normal priority task.

If you disable this setting, the antimalware service will load as a low priority task.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow antimalware service to startup with normal priority*
-   GP name: *AllowFastServiceStartup*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-disableantispywaredefender"></a>**ADMX_MicrosoftDefenderAntivirus/DisableAntiSpywareDefender**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting turns off Microsoft Defender Antivirus.

If you enable this policy setting, Microsoft Defender Antivirus doesn't run, and won't scan computers for malware or other potentially unwanted software.

If you disable this policy setting, Microsoft Defender Antivirus will run regardless of any other installed antivirus product.

If you don't configure this policy setting, Windows will internally manage Microsoft Defender Antivirus. If you install another antivirus program, Windows automatically disables Microsoft Defender Antivirus. Otherwise, Microsoft Defender Antivirus will scan your computers for malware and other potentially unwanted software.

Enabling or disabling this policy may lead to unexpected or unsupported behavior. It's recommended that you leave this policy setting unconfigured.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Microsoft Defender Antivirus*
-   GP name: *DisableAntiSpywareDefender*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-disableautoexclusions"></a>**ADMX_MicrosoftDefenderAntivirus/DisableAutoExclusions**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
Allows an administrator to specify if Automatic Exclusions feature for Server SKUs should be turned off.

If you disable or don't configure this policy setting, Microsoft Defender Antivirus will exclude pre-defined list of paths from the scan to improve performance. It is disabled by default.

If you enable this policy setting, Microsoft Defender Antivirus won't exclude pre-defined list of paths from scans. This non-exclusion can impact machine performance in some scenarios.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Auto Exclusions*
-   GP name: *DisableAutoExclusions*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Exclusions*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-disableblockatfirstseen"></a>**ADMX_MicrosoftDefenderAntivirus/DisableBlockAtFirstSeen**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This feature ensures the device checks in real time with the Microsoft Active Protection Service (MAPS) before allowing certain content to be run or accessed. If this feature is disabled, the check won't occur, which will lower the protection state of the device.

If you enable this feature, the Block at First Sight setting is turned on.
If you disable this feature, the Block at First Sight setting is turned off.

This feature requires these Policy settings to be set as follows:

- MAPS -> The “Join Microsoft MAPS” must be enabled or the “Block at First Sight” feature won't function.
- MAPS -> The “Send file samples when further analysis is required” should be set to 1 (Send safe samples) or 3 (Send all samples). Setting to 0 (Always Prompt) will lower the protection state of the device. Setting to 2 (Never send) means the “Block at First Sight” feature won't function.
- Real-time Protection -> The “Scan all downloaded files and attachments” policy must be enabled or the “Block at First Sight” feature won't function.
- Real-time Protection -> don't enable the “Turn off real-time protection” policy or the “Block at First Sight” feature won't function.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure the 'Block at First Sight' feature*
-   GP name: *DisableBlockAtFirstSeen*
-   GP path: *Windows Components\Microsoft Defender Antivirus\MAPS*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-disablelocaladminmerge"></a>**ADMX_MicrosoftDefenderAntivirus/DisableLocalAdminMerge**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting controls whether or not complex list settings configured by a local administrator are merged with Policy settings. This setting applies to lists such as threats and Exclusions.

If you enable or don't configure this setting, unique items defined in Policy and in preference settings configured by the local administrator will be merged into the resulting effective policy. If conflicts occur, Policy Settings will override preference settings.

If you disable this setting, only items defined by Policy will be used in the resulting effective policy. Policy settings will override preference settings configured by the local administrator.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure local administrator merge behavior for lists*
-   GP name: *DisableLocalAdminMerge*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-disablerealtimemonitoring"></a>**ADMX_MicrosoftDefenderAntivirus/DisableRealtimeMonitoring**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting turns off real-time protection prompts for known malware detection.

Microsoft Defender Antivirus alerts you when malware or potentially unwanted software attempts to install itself or to run on your computer.

If you enable this policy setting, Microsoft Defender Antivirus won't prompt users to take actions on malware detections.

If you disable or don't configure this policy setting, Microsoft Defender Antivirus will prompt users to take actions on malware detections.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off real-time protection*
-   GP name: *DisableRealtimeMonitoring*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-disableroutinelytakingaction"></a>**ADMX_MicrosoftDefenderAntivirus/DisableRoutinelyTakingAction**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure whether Microsoft Defender Antivirus automatically takes action on all detected threats. The action to be taken on a particular threat is determined by the combination of the policy-defined action, user-defined action, and the signature-defined action.

If you enable this policy setting, Microsoft Defender Antivirus doesn't automatically take action on the detected threats, but prompts users to choose from the actions available for each threat.

If you disable or don't configure this policy setting, Microsoft Defender Antivirus automatically takes action on all detected threats after a nonconfigurable delay of approximately five seconds.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off routine remediation*
-   GP name: *DisableRoutinelyTakingAction*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-exclusions-extensions"></a>**ADMX_MicrosoftDefenderAntivirus/Exclusions_Extensions**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to specify a list of file types that should be excluded from scheduled, custom, and real-time scanning. File types should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of the file type extension (such as "obj" or "lib"). The value isn't used and it's recommended that this value is set to 0.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Extension Exclusions*
-   GP name: *Exclusions_Extensions*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Exclusions*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-exclusions-paths"></a>**ADMX_MicrosoftDefenderAntivirus/Exclusions_Paths**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to disable scheduled and real-time scanning for files under the paths specified or for the fully qualified resources specified. Paths should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of a path or a fully qualified resource name.

As an example, a path might be defined as: "c:\Windows" to exclude all files in this directory. A fully qualified resource name might be defined as: "C:\Windows\App.exe". The value isn't used and it's recommended that this value is set to 0.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Path Exclusions*
-   GP name: *Exclusions_Paths*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Exclusions*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-exclusions-processes"></a>**ADMX_MicrosoftDefenderAntivirus/Exclusions_Processes**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to disable scheduled and real-time scanning for any file opened by any of the specified processes. The process itself won't be excluded. To exclude the process, use the Path exclusion. Processes should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of the path to the process image. Only executables can be excluded. For example, a process might be defined as: "c:\windows\app.exe". The value isn't used and it's recommended that this value is set to 0.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Process Exclusions*
-   GP name: *Exclusions_Processes*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Exclusions*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-exploitguard-asr-asronlyexclusions"></a>**ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ASR_ASROnlyExclusions**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
Exclude files and paths from Attack Surface Reduction (ASR) rules.

Enabled:
Specify the folders or files and resources that should be excluded from ASR rules in the Options section.
Enter each rule on a new line as a name-value pair:

- Name column: Enter a folder path or a fully qualified resource name. For example, "C:\Windows" will exclude all files in that directory. "C:\Windows\App.exe" will exclude only that specific file in that specific folder
- Value column: Enter "0" for each item

Disabled:
No exclusions will be applied to the ASR rules.

Not configured:
Same as Disabled.

You can configure ASR rules in the "Configure Attack Surface Reduction rules" GP setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Exclude files and paths from Attack Surface Reduction Rules*
-   GP name: *ExploitGuard_ASR_ASROnlyExclusions*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Microsoft Defender Exploit Guard\Attack Surface Reduction*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-exploitguard-asr-rules"></a>**ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ASR_Rules**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
Set the state for each ASR rule.

After enabling this setting, you can set each rule to the following values in the Options section:

- Block: The rule will be applied
- Audit Mode: If the rule would normally cause an event, then it will be recorded (although the rule won't actually be applied)
- Off: The rule won't be applied

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


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Attack Surface Reduction rules*
-   GP name: *ExploitGuard_ASR_Rules*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Microsoft Defender Exploit Guard\Attack Surface Reduction*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-exploitguard-controlledfolderaccess-allowedapplications"></a>**ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ControlledFolderAccess_AllowedApplications**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
Add other applications that should be considered "trusted" by controlled folder access.

These applications are allowed to modify or delete files in controlled folder access folders.

Microsoft Defender Antivirus automatically determines which applications should be trusted. You can configure this setting to add other applications.

Enabled:
Specify other allowed applications in the Options section.

Disabled:
No other applications will be added to the trusted list.

Not configured:
Same as Disabled.

You can enable controlled folder access in the "Configure controlled folder access" GP setting.

Default system folders are automatically guarded, but you can add folders in the "Configure protected folders" GP setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure allowed applications*
-   GP name: *ExploitGuard_ControlledFolderAccess_AllowedApplications*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Microsoft Defender Exploit Guard\Controlled Folder Access*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-exploitguard-controlledfolderaccess-protectedfolders"></a>**ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ControlledFolderAccess_ProtectedFolders**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
Specify additional folders that should be guarded by the Controlled folder access feature.

Files in these folders can't be modified or deleted by untrusted applications.

Default system folders are automatically protected. You can configure this setting to add more folders.
The list of default system folders that are protected is shown in Windows Security.

Enabled:
Specify more folders that should be protected in the Options section.

Disabled:
No other folders will be protected.

Not configured:
Same as Disabled.

You can enable controlled folder access in the "Configure controlled folder access" GP setting.

Microsoft Defender Antivirus automatically determines which applications can be trusted. You can add more trusted applications in the "Configure allowed applications" GP setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure protected folders*
-   GP name: *ExploitGuard_ControlledFolderAccess_ProtectedFolders*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Microsoft Defender Exploit Guard\Controlled Folder Access*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-mpengine-enablefilehashcomputation"></a>**ADMX_MicrosoftDefenderAntivirus/MpEngine_EnableFileHashComputation**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
Enable or disable file hash computation feature.

Enabled:
When this feature is enabled, Microsoft Defender Antivirus will compute hash value for files it scans.

Disabled:
File hash value isn't computed

Not configured:
Same as Disabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable file hash computation feature*
-   GP name: *MpEngine_EnableFileHashComputation*
-   GP path: *Windows Components\Microsoft Defender Antivirus\MpEngine*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-nis-consumers-ips-disablesignatureretirement"></a>**ADMX_MicrosoftDefenderAntivirus/Nis_Consumers_IPS_DisableSignatureRetirement**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure definition retirement for network protection against exploits of known vulnerabilities. Definition retirement checks to see if a computer has the required security updates necessary to protect it against a particular vulnerability. If the system isn't vulnerable to the exploit detected by a definition, then that definition is "retired". If all security intelligence for a given protocol are retired, then that protocol is no longer parsed. Enabling this feature helps to improve performance. On a computer that is up-to-date with all the latest security updates, network protection will have no impact on network performance.

If you enable or don't configure this setting, definition retirement will be enabled.

If you disable this setting, definition retirement will be disabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on definition retirement*
-   GP name: *Nis_Consumers_IPS_DisableSignatureRetirement*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Network Inspection System*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-nis-consumers-ips-sku-differentiation-signature-set-guid"></a>**ADMX_MicrosoftDefenderAntivirus/Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting defines more definition sets to enable for network traffic inspection. Definition set GUIDs should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of a definition set GUID. As an example, the definition set GUID to enable test security intelligence is defined as: “{b54b6ac9-a737-498e-9120-6616ad3bf590}”. The value isn't used and it's recommended that this value is set to 0.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify additional definition sets for network traffic inspection*
-   GP name: *Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Network Inspection System*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-nis-disableprotocolrecognition"></a>**ADMX_MicrosoftDefenderAntivirus/Nis_DisableProtocolRecognition**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure protocol recognition for network protection against exploits of known vulnerabilities.

If you enable or don't configure this setting, protocol recognition will be enabled.

If you disable this setting, protocol recognition will be disabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on protocol recognition*
-   GP name: *Nis_DisableProtocolRecognition*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Network Inspection System*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-proxybypass"></a>**ADMX_MicrosoftDefenderAntivirus/ProxyBypass**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy, if defined, will prevent antimalware from using the configured proxy server when communicating with the specified IP addresses. The address value should be entered as a valid URL.

If you enable this setting, the proxy server will be bypassed for the specified addresses.

If you disable or don't configure this setting, the proxy server won't be bypassed for the specified addresses.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Define addresses to bypass proxy server*
-   GP name: *ProxyBypass*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-proxypacurl"></a>**ADMX_MicrosoftDefenderAntivirus/ProxyPacUrl**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting defines the URL of a proxy .pac file that should be used when the client attempts to connect the network for security intelligence updates and MAPS reporting. If the proxy auto-config fails or if there's no proxy auto-config specified, the client will fall back to the alternative options (in order):

1. Proxy server (if specified)
2. Proxy .pac URL (if specified)
3. None
4. Internet Explorer proxy settings
5. Autodetect

If you enable this setting, the proxy setting will be set to use the specified proxy .pac according to the order specified above.

If you disable or don't configure this setting, the proxy will skip over this fallback step according to the order specified above.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Define proxy auto-config (.pac) for connecting to the network*
-   GP name: *ProxyPacUrl*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-proxyserver"></a>**ADMX_MicrosoftDefenderAntivirus/ProxyServer**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure the named proxy that should be used when the client attempts to connect to the network for security intelligence updates and MAPS reporting. If the named proxy fails or if there's no proxy specified, the client will fall back to the alternative options (in order):

1. Proxy server (if specified)
2. Proxy .pac URL (if specified)
3. None
4. Internet Explorer proxy settings
5. Autodetect

If you enable this setting, the proxy will be set to the specified URL according to the order specified above. The URL should be proceeded with either http:// or https://.

If you disable or don't configure this setting, the proxy will skip over this fallback step according to the order specified above.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Define proxy server for connecting to the network*
-   GP name: *ProxyServer*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-quarantine-localsettingoverridepurgeitemsafterdelay"></a>**ADMX_MicrosoftDefenderAntivirus/Quarantine_LocalSettingOverridePurgeItemsAfterDelay**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures a local override for the configuration of the number of days items should be kept in the Quarantine folder before being removed. This setting can only be set by Policy.

If you enable this setting, the local preference setting will take priority over Policy.

If you disable or don't configure this setting, Policy will take priority over the local preference setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure local setting override for the removal of items from Quarantine folder*
-   GP name: *Quarantine_LocalSettingOverridePurgeItemsAfterDelay*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Quarantine*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-quarantine-purgeitemsafterdelay"></a>**ADMX_MicrosoftDefenderAntivirus/Quarantine_PurgeItemsAfterDelay**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting defines the number of days items should be kept in the Quarantine folder before being removed.

If you enable this setting, items will be removed from the Quarantine folder after the number of days specified.

If you disable or don't configure this setting, items will be kept in the quarantine folder indefinitely and won't be automatically removed.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure removal of items from Quarantine folder*
-   GP name: *Quarantine_PurgeItemsAfterDelay*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Quarantine*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-randomizescheduletasktimes"></a>**ADMX_MicrosoftDefenderAntivirus/RandomizeScheduleTaskTimes**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to enable or disable randomization of the scheduled scan start time and the scheduled security intelligence update start time. This setting is used to distribute the resource impact of scanning. For example, it could be used in guest virtual machines sharing a host, to prevent multiple guest virtual machines from undertaking a disk-intensive operation at the same time.

If you enable or don't configure this setting, scheduled tasks will begin at a random time within an interval of 30 minutes before and after the specified start time.

If you disable this setting, scheduled tasks will begin at the specified start time.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Randomize scheduled task times*
-   GP name: *RandomizeScheduleTaskTimes*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-realtimeprotection-disablebehaviormonitoring"></a>**ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableBehaviorMonitoring**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure behavior monitoring.

If you enable or don't configure this setting, behavior monitoring will be enabled.

If you disable this setting, behavior monitoring will be disabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on behavior monitoring*
-   GP name: *RealtimeProtection_DisableBehaviorMonitoring*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-realtimeprotection-disableioavprotection"></a>**ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableIOAVProtection**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure scanning for all downloaded files and attachments.

If you enable or don't configure this setting, scanning for all downloaded files and attachments will be enabled.

If you disable this setting, scanning for all downloaded files and attachments will be disabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Scan all downloaded files and attachments*
-   GP name: *RealtimeProtection_DisableIOAVProtection*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-realtimeprotection-disableonaccessprotection"></a>**ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableOnAccessProtection**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure monitoring for file and program activity.

If you enable or don't configure this setting, monitoring for file and program activity will be enabled.

If you disable this setting, monitoring for file and program activity will be disabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Monitor file and program activity on your computer*
-   GP name: *RealtimeProtection_DisableOnAccessProtection*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-realtimeprotection-disablerawwritenotification"></a>**ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableRawWriteNotification**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting controls whether raw volume write notifications are sent to behavior monitoring.

If you enable or don't configure this setting, raw write notifications will be enabled.

If you disable this setting, raw write notifications be disabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on raw volume write notifications*
-   GP name: *RealtimeProtection_DisableRawWriteNotification*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-realtimeprotection-disablescanonrealtimeenable"></a>**ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableScanOnRealtimeEnable**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure process scanning when real-time protection is turned on. This configuration helps to catch malware that could start when real-time protection is turned off.

If you enable or don't configure this setting, a process scan will be initiated when real-time protection is turned on.

If you disable this setting, a process scan won't be initiated when real-time protection is turned on.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on process scanning whenever real-time protection is enabled*
-   GP name: *RealtimeProtection_DisableScanOnRealtimeEnable*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-realtimeprotection-ioavmaxsize"></a>**ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_IOAVMaxSize**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting defines the maximum size (in kilobytes) of downloaded files and attachments that will be scanned.

If you enable this setting, downloaded files and attachments smaller than the size specified will be scanned.

If you disable or don't configure this setting, a default size will be applied.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Define the maximum size of downloaded files and attachments to be scanned*
-   GP name: *RealtimeProtection_IOAVMaxSize*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisablebehaviormonitoring"></a>**ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures a local override for the configuration of behavior monitoring. This setting can only be set by Policy.

If you enable this setting, the local preference setting will take priority over Policy.

If you disable or don't configure this setting, Policy will take priority over the local preference setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure local setting override for turn on behavior monitoring*
-   GP name: *RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisableioavprotection"></a>**ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableIOAVProtection**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures a local override for the configuration of scanning for all downloaded files and attachments. This setting can only be set by Policy.

If you enable this setting, the local preference setting will take priority over Policy.

If you disable or don't configure this setting, Policy will take priority over the local preference setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure local setting override for scanning all downloaded files and attachments*
-   GP name: *RealtimeProtection_LocalSettingOverrideDisableIOAVProtection*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisableonaccessprotection"></a>**ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures a local override for the configuration of monitoring for file and program activity on your computer. This setting can only be set by Policy.

If you enable this setting, the local preference setting will take priority over Policy.

If you disable or don't configure this setting, Policy will take priority over the local preference setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure local setting override for monitoring file and program activity on your computer*
-   GP name: *RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverridedisablerealtimemonitoring"></a>**ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures a local override for the configuration to turn on real-time protection. This setting can only be set by Policy.

If you enable this setting, the local preference setting will take priority over Policy.

If you disable or don't configure this setting, Policy will take priority over the local preference setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure local setting override to turn on real-time protection*
-   GP name: *RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-realtimeprotection-localsettingoverriderealtimescandirection"></a>**ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideRealtimeScanDirection**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures a local override for the configuration of monitoring for incoming and outgoing file activity. This setting can only be set by Policy.

If you enable this setting, the local preference setting will take priority over Policy.

If you disable or don't configure this setting, Policy will take priority over the local preference setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure local setting override for monitoring for incoming and outgoing file activity*
-   GP name: *RealtimeProtection_LocalSettingOverrideRealtimeScanDirection*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Real-time Protection*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-remediation-localsettingoverridescan-scheduletime"></a>**ADMX_MicrosoftDefenderAntivirus/Remediation_LocalSettingOverrideScan_ScheduleTime**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures a local override for the configuration of the time to run a scheduled full scan to complete remediation. This setting can only be set by Policy.

If you enable this setting, the local preference setting will take priority over Policy.

If you disable or don't configure this setting, Policy will take priority over the local preference setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure local setting override for the time of day to run a scheduled full scan to complete remediation*
-   GP name: *Remediation_LocalSettingOverrideScan_ScheduleTime*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Remediation*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-remediation-scan-scheduleday"></a>**ADMX_MicrosoftDefenderAntivirus/Remediation_Scan_ScheduleDay**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to specify the day of the week on which to perform a scheduled full scan in order to complete remediation. The scan can also be configured to run every day or to never run at all.

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

If you disable or don't configure this setting, a scheduled full scan to complete remediation will run at a default frequency.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify the day of the week to run a scheduled full scan to complete remediation*
-   GP name: *Remediation_Scan_ScheduleDay*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Remediation*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-remediation-scan-scheduletime"></a>**ADMX_MicrosoftDefenderAntivirus/Remediation_Scan_ScheduleTime**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to specify the time of day at which to perform a scheduled full scan in order to complete remediation. The time value is represented as the number of minutes past midnight (00:00).  For example, 120 (0x78) is equivalent to 02:00 AM.  The schedule is based on local time on the computer where the scan is executing.

If you enable this setting, a scheduled full scan to complete remediation will run at the time of day specified.

If you disable or don't configure this setting, a scheduled full scan to complete remediation will run at a default time.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify the time of day to run a scheduled full scan to complete remediation*
-   GP name: *Remediation_Scan_ScheduleTime*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Remediation*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-reporting-additionalactiontimeout"></a>**ADMX_MicrosoftDefenderAntivirus/Reporting_AdditionalActionTimeout**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures the time in minutes before a detection in the "additional action" state moves to the "cleared" state.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure time out for detections requiring additional action*
-   GP name: *Reporting_AdditionalActionTimeout*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-reporting-criticalfailuretimeout"></a>**ADMX_MicrosoftDefenderAntivirus/Reporting_CriticalFailureTimeout**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures the time in minutes before a detection in the “critically failed” state to moves to either the “additional action” state or the “cleared” state.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure time out for detections in critically failed state*
-   GP name: *Reporting_CriticalFailureTimeout*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-reporting-disableenhancednotifications"></a>**ADMX_MicrosoftDefenderAntivirus/Reporting_DisableEnhancedNotifications**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
Use this policy setting to specify if you want Microsoft Defender Antivirus enhanced notifications to display on clients.

If you disable or don't configure this setting, Microsoft Defender Antivirus enhanced notifications will display on clients.

If you enable this setting, Microsoft Defender Antivirus enhanced notifications won't display on clients.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off enhanced notifications*
-   GP name: *Reporting_DisableEnhancedNotifications*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<a href="" id="admx-microsoftdefenderantivirus-reporting-disablegenericreports"></a>**ADMX_MicrosoftDefenderAntivirus/Reporting_Disablegenericreports**
<hr/>

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure whether or not Watson events are sent.

If you enable or don't configure this setting, Watson events will be sent.

If you disable this setting, Watson events won't be sent.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Watson events*
-   GP name: *Reporting_Disablegenericreports*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-reporting-noncriticaltimeout"></a>**ADMX_MicrosoftDefenderAntivirus/Reporting_NonCriticalTimeout**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures the time in minutes before a detection in the "non-critically failed" state moves to the "cleared" state.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure time out for detections in non-critical failed state*
-   GP name: *Reporting_NonCriticalTimeout*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<a href="" id="admx-microsoftdefenderantivirus-reporting-recentlycleanedtimeout"></a>**ADMX_MicrosoftDefenderAntivirus/Reporting_RecentlyCleanedTimeout**
<hr/>

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures the time in minutes before a detection in the "completed" state moves to the "cleared" state.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure time out for detections in recently remediated state*
-   GP name: *Reporting_RecentlyCleanedTimeout*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-reporting-wpptracingcomponents"></a>**ADMX_MicrosoftDefenderAntivirus/Reporting_WppTracingComponents**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy configures Windows software trace preprocessor (WPP Software Tracing) components.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Windows software trace preprocessor components*
-   GP name: *Reporting_WppTracingComponents*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-reporting-wpptracinglevel"></a>**ADMX_MicrosoftDefenderAntivirus/Reporting_WppTracingLevel**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy allows you to configure tracing levels for Windows software trace preprocessor (WPP Software Tracing).

Tracing levels are defined as:

- 1 - Error
- 2 - Warning
- 3 - Info
- 4 - Debug

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure WPP tracing level*
-   GP name: *Reporting_WppTracingLevel*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Reporting*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-allowpause"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_AllowPause**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to manage whether or not end users can pause a scan in progress.

If you enable or don't configure this setting, a new context menu will be added to the task tray icon to allow the user to pause a scan.

If you disable this setting, users won't be able to pause scans.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow users to pause scan*
-   GP name: *Scan_AllowPause*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-archivemaxdepth"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_ArchiveMaxDepth**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure the maximum directory depth level into which archive files such as .ZIP or .CAB are unpacked during scanning. The default directory depth level is 0.

If you enable this setting, archive files will be scanned to the directory depth level specified.

If you disable or don't configure this setting, archive files will be scanned to the default directory depth level.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify the maximum depth to scan archive files*
-   GP name: *Scan_ArchiveMaxDepth*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-archivemaxsize"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_ArchiveMaxSize**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure the maximum size of archive files such as .ZIP or .CAB that will be scanned. The value represents file size in kilobytes (KB). The default value is 0 and represents no limit to archive size for scanning.

If you enable this setting, archive files less than or equal to the size specified will be scanned.

If you disable or don't configure this setting, archive files will be scanned according to the default value.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify the maximum size of archive files to be scanned*
-   GP name: *Scan_ArchiveMaxSize*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-disablearchivescanning"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_DisableArchiveScanning**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure scans for malicious software and unwanted software in archive files such as .ZIP or .CAB files.

If you enable or don't configure this setting, archive files will be scanned.

If you disable this setting, archive files won't be scanned.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Scan archive files*
-   GP name: *Scan_DisableArchiveScanning*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-disableemailscanning"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_DisableEmailScanning**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure e-mail scanning. When e-mail scanning is enabled, the engine will parse the mailbox and mail files, according to their specific format, in order to analyze the mail bodies and attachments. Several e-mail formats are currently supported, for example: pst (Outlook), dbx, mbx, mime (Outlook Express), binhex (Mac).

If you enable this setting, e-mail scanning will be enabled.

If you disable or don't configure this setting, e-mail scanning will be disabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on e-mail scanning*
-   GP name: *Scan_DisableEmailScanning*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-disableheuristics"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_DisableHeuristics**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure heuristics. Suspicious detections will be suppressed right before reporting to the engine client. Turning off heuristics will reduce the capability to flag new threats. It's recommended that you don't turn off heuristics.

If you enable or don't configure this setting, heuristics will be enabled.

If you disable this setting, heuristics will be disabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on heuristics*
-   GP name: *Scan_DisableHeuristics*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-disablepackedexescanning"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_DisablePackedExeScanning**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure scanning for packed executables. It's recommended that this type of scanning remains enabled.

If you enable or don't configure this setting, packed executables will be scanned.

If you disable this setting, packed executables won't be scanned.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Scan packed executables*
-   GP name: *Scan_DisablePackedExeScanning*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-disableremovabledrivescanning"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_DisableRemovableDriveScanning**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to manage whether or not to scan for malicious software and unwanted software in the contents of removable drives, such as USB flash drives, when running a full scan.

If you enable this setting, removable drives will be scanned during any type of scan.

If you disable or don't configure this setting, removable drives won't be scanned during a full scan. Removable drives may still be scanned during quick scan and custom scan.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Scan removable drives*
-   GP name: *Scan_DisableRemovableDriveScanning*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-disablereparsepointscanning"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_DisableReparsePointScanning**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure reparse point scanning. If you allow reparse points to be scanned, there's a possible risk of recursion. However, the engine supports following reparse points to a maximum depth so at worst scanning could be slowed. Reparse point scanning is disabled by default and this setting is the recommended state for this functionality.

If you enable this setting, reparse point scanning will be enabled.

If you disable or don't configure this setting, reparse point scanning will be disabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on reparse point scanning*
-   GP name: *Scan_DisableReparsePointScanning*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-disablerestorepoint"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_DisableRestorePoint**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to create a system restore point on the computer on a daily basis prior to cleaning.

If you enable this setting, a system restore point will be created.

If you disable or don't configure this setting, a system restore point won't be created.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Create a system restore point*
-   GP name: *Scan_DisableRestorePoint*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-disablescanningmappednetworkdrivesforfullscan"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_DisableScanningMappedNetworkDrivesForFullScan**
<hr/>
<!--Policy-->

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure scanning mapped network drives.

If you enable this setting, mapped network drives will be scanned.

If you disable or don't configure this setting, mapped network drives won't be scanned.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Run full scan on mapped network drives*
-   GP name: *Scan_DisableScanningMappedNetworkDrivesForFullScan*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-disablescanningnetworkfiles"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_DisableScanningNetworkFiles**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure scanning for network files. It's recommended that you don't enable this setting.

If you enable this setting, network files will be scanned.

If you disable or don't configure this setting, network files won't be scanned.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Scan network files*
-   GP name: *Scan_DisableScanningNetworkFiles*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-localsettingoverrideavgcpuloadfactor"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideAvgCPULoadFactor**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures a local override for the configuration of maximum percentage of CPU utilization during scan. This setting can only be set by Policy.

If you enable this setting, the local preference setting will take priority over Policy.

If you disable or don't configure this setting, Policy will take priority over the local preference setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure local setting override for maximum percentage of CPU utilization*
-   GP name: *Scan_LocalSettingOverrideAvgCPULoadFactor*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-localsettingoverridescanparameters"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScanParameters**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures a local override for the configuration of the scan type to use during a scheduled scan. This setting can only be set by Policy.

If you enable this setting, the local preference setting will take priority over Policy.

If you disable or don't configure this setting, Policy will take priority over the local preference setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure local setting override for the scan type to use for a scheduled scan*
-   GP name: *Scan_LocalSettingOverrideScanParameters*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-localsettingoverridescheduleday"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScheduleDay**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures a local override for the configuration of scheduled scan day. This setting can only be set by Policy.

If you enable this setting, the local preference setting will take priority over Policy.

If you disable or don't configure this setting, Policy will take priority over the local preference setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure local setting override for schedule scan day*
-   GP name: *Scan_LocalSettingOverrideScheduleDay*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-localsettingoverrideschedulequickscantime"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScheduleQuickScantime**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures a local override for the configuration of scheduled quick scan time. This setting can only be set by Policy.

If you enable this setting, the local preference setting will take priority over Policy.

If you disable or don't configure this setting, Policy will take priority over the local preference setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure local setting override for scheduled quick scan time*
-   GP name: *Scan_LocalSettingOverrideScheduleQuickScantime*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-localsettingoverridescheduletime"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScheduleTime**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting configures a local override for the configuration of scheduled scan time. This setting can only be set by Policy.

If you enable this setting, the local preference setting will take priority over Policy.

If you disable or don't configure this setting, Policy will take priority over the local preference setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure local setting override for scheduled scan time*
-   GP name: *Scan_LocalSettingOverrideScheduleTime*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-lowcpupriority"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_LowCpuPriority**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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

If you disable or don't configure this setting, not changes will be made to CPU priority for scheduled scans.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure low CPU priority for scheduled scans*
-   GP name: *Scan_LowCpuPriority*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-missedscheduledscancountbeforecatchup"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_MissedScheduledScanCountBeforeCatchup**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to define the number of consecutive scheduled scans that can be missed after which a catch-up scan will be forced. By default, the value of this setting is 2 consecutive scheduled scans.

If you enable this setting, a catch-up scan will occur after the specified number consecutive missed scheduled scans.

If you disable or don't configure this setting, a catch-up scan will occur after the 2 consecutive missed scheduled scans.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Define the number of days after which a catch-up scan is forced*
-   GP name: *Scan_MissedScheduledScanCountBeforeCatchup*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-purgeitemsafterdelay"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_PurgeItemsAfterDelay**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting defines the number of days items should be kept in the scan history folder before being permanently removed. The value represents the number of days to keep items in the folder. If set to zero, items will be kept forever and won't be automatically removed. By default, the value is set to 30 days.

If you enable this setting, items will be removed from the scan history folder after the number of days specified.

If you disable or don't configure this setting, items will be kept in the scan history folder for the default number of days.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on removal of items from scan history folder*
-   GP name: *Scan_PurgeItemsAfterDelay*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-quickscaninterval"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_QuickScanInterval**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to specify an interval at which to perform a quick scan. The time value is represented as the number of hours between quick scans. Valid values range from 1 (every hour) to 24 (once per day). If set to zero, interval quick scans won't occur. By default, this setting is set to 0.

If you enable this setting, a quick scan will run at the interval specified.

If you disable or don't configure this setting, a quick scan will run at a default time.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify the interval to run quick scans per day*
-   GP name: *Scan_QuickScanInterval*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-scanonlyifidle"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_ScanOnlyIfIdle**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure scheduled scans to start only when your computer is on but not in use.

If you enable or don't configure this setting, scheduled scans will only run when the computer is on but not in use.

If you disable this setting, scheduled scans will run at the scheduled time.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Start the scheduled scan only when computer is on but not in use*
-   GP name: *Scan_ScanOnlyIfIdle*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-scheduleday"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_ScheduleDay**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to specify the day of the week on which to perform a scheduled scan. The scan can also be configured to run every day or to never run at all.

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

If you enable this setting, a scheduled scan will run at the frequency specified.

If you disable or don't configure this setting, a scheduled scan will run at a default frequency.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify the day of the week to run a scheduled scan*
-   GP name: *Scan_ScheduleDay*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-scan-scheduletime"></a>**ADMX_MicrosoftDefenderAntivirus/Scan_ScheduleTime**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to specify the time of day at which to perform a scheduled scan. The time value is represented as the number of minutes past midnight (00:00). For example, 120 (0x78) is equivalent to 02:00 AM. By default, this setting is set to a time value of 2:00 AM. The schedule is based on local time on the computer where the scan is executing.

If you enable this setting, a scheduled scan will run at the time of day specified.

If you disable or don't configure this setting, a scheduled scan will run at a default time.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify the time of day to run a scheduled scan*
-   GP name: *Scan_ScheduleTime*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Scan*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-servicekeepalive"></a>**ADMX_MicrosoftDefenderAntivirus/ServiceKeepAlive**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure whether or not the antimalware service remains running when antivirus and antispyware security intelligence is disabled. It's recommended that this setting remains disabled.

If you enable this setting, the antimalware service will always remain running even if both antivirus and antispyware security intelligence are disabled.

If you disable or don't configure this setting, the antimalware service will be stopped when both antivirus and antispyware security intelligence is disabled. If the computer is restarted, the service will be started if it's set to Automatic startup. After the service has started, there will be a check to see if antivirus and antispyware security intelligence is enabled. If at least one is enabled, the service will remain running. If both are disabled, the service will be stopped.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow antimalware service to remain running always*
-   GP name: *ServiceKeepAlive*
-   GP path: *Windows Components\Microsoft Defender Antivirus*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-signatureupdate-assignaturedue"></a>**ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ASSignatureDue**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to define the number of days that must pass before spyware security intelligence is considered out of date. If security intelligence is determined to be out of date, this state may trigger several other actions, including falling back to an alternative update source or displaying a warning icon in the user interface. By default, this value is set to 7 days.

We don't recommend setting the value to less than 2 days to prevent machines from going out of date.

If you enable this setting, spyware security intelligence will be considered out of date after the number of days specified have passed without an update.

If you disable or don't configure this setting, spyware security intelligence will be considered out of date after the default number of days have passed without an update.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Define the number of days before spyware security intelligence is considered out of date*
-   GP name: *SignatureUpdate_ASSignatureDue*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-signatureupdate-avsignaturedue"></a>**ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_AVSignatureDue**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to define the number of days that must pass before virus security intelligence is considered out of date. If security intelligence is determined to be out of date, this state may trigger several other actions, including falling back to an alternative update source or displaying a warning icon in the user interface. By default, this value is set to 14 days.

If you enable this setting, virus security intelligence will be considered out of date after the number of days specified have passed without an update.

If you disable or don't configure this setting, virus security intelligence will be considered out of date after the default number of days have passed without an update.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Define the number of days before virus security intelligence is considered out of date*
-   GP name: *SignatureUpdate_AVSignatureDue*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-signatureupdate-definitionupdatefilesharessources"></a>**ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DefinitionUpdateFileSharesSources**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure UNC file share sources for downloading security intelligence updates. Sources will be contacted in the order specified. The value of this setting should be entered as a pipe-separated string enumerating the security intelligence update sources. For example: "{\\\unc1 | \\\unc2 }". The list is empty by default.

If you enable this setting, the specified sources will be contacted for security intelligence updates. Once security intelligence updates have been successfully downloaded from one specified source, the remaining sources in the list won't be contacted.

If you disable or don't configure this setting, the list will remain empty by default and no sources will be contacted.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Define file shares for downloading security intelligence updates*
-   GP name: *SignatureUpdate_DefinitionUpdateFileSharesSources*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-signatureupdate-disablescanonupdate"></a>**ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DisableScanOnUpdate**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure the automatic scan that starts after a security intelligence update has occurred.

If you enable or don't configure this setting, a scan will start following a security intelligence update.

If you disable this setting, a scan won't start following a security intelligence update.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on scan after security intelligence update*
-   GP name: *SignatureUpdate_DisableScanOnUpdate*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-signatureupdate-disablescheduledsignatureupdateonbattery"></a>**ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DisableScheduledSignatureUpdateonBattery**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure security intelligence updates when the computer is running on battery power.

If you enable or don't configure this setting, security intelligence updates will occur as usual regardless of power state.

If you disable this setting, security intelligence updates will be turned off while the computer is running on battery power.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow security intelligence updates when running on battery power*
-   GP name: *SignatureUpdate_DisableScheduledSignatureUpdateonBattery*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-signatureupdate-disableupdateonstartupwithoutengine"></a>**ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DisableUpdateOnStartupWithoutEngine**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure security intelligence updates on startup when there's no antimalware engine present.

If you enable or don't configure this setting, security intelligence updates will be initiated on startup when there's no antimalware engine present.

If you disable this setting, security intelligence updates won't be initiated on startup when there's no antimalware engine present.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Initiate security intelligence update on startup*
-   GP name: *SignatureUpdate_DisableUpdateOnStartupWithoutEngine*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-signatureupdate-fallbackorder"></a>**ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_FallbackOrder**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to define the order in which different security intelligence update sources should be contacted. The value of this setting should be entered as a pipe-separated string enumerating the security intelligence update sources in order. Possible values are: “InternalDefinitionUpdateServer”, “MicrosoftUpdateServer”, “MMPC”, and “FileShares”.

For example: { InternalDefinitionUpdateServer | MicrosoftUpdateServer | MMPC }

If you enable this setting, security intelligence update sources will be contacted in the order specified. Once security intelligence updates have been successfully downloaded from one specified source, the remaining sources in the list won't be contacted.

If you disable or don't configure this setting, security intelligence update sources will be contacted in a default order.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Define the order of sources for downloading security intelligence updates*
-   GP name: *SignatureUpdate_FallbackOrder*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-signatureupdate-forceupdatefrommu"></a>**ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ForceUpdateFromMU**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to enable download of security intelligence updates from Microsoft Update even if the Automatic Updates default server is configured to another download source such as Windows Update.

If you enable this setting, security intelligence updates will be downloaded from Microsoft Update.

If you disable or don't configure this setting, security intelligence updates will be downloaded from the configured download source.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow security intelligence updates from Microsoft Update*
-   GP name: *SignatureUpdate_ForceUpdateFromMU*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-signatureupdate-realtimesignaturedelivery"></a>**ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_RealtimeSignatureDelivery**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to enable real-time security intelligence updates in response to reports sent to Microsoft MAPS. If the service reports a file as an unknown and Microsoft MAPS finds that the latest security intelligence update has security intelligence for a threat involving that file, the service will receive all of the latest security intelligence for that threat immediately. You must have configured your computer to join Microsoft MAPS for this functionality to work.

If you enable or don't configure this setting, real-time security intelligence updates will be enabled.

If you disable this setting, real-time security intelligence updates will be disabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow real-time security intelligence updates based on reports to Microsoft MAPS*
-   GP name: *SignatureUpdate_RealtimeSignatureDelivery*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-signatureupdate-scheduleday"></a>**ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ScheduleDay**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to specify the day of the week on which to check for security intelligence updates. The check can also be configured to run every day or to never run at all.

This setting can be configured with the following ordinal number values:

- (0x0) Every Day (default)
- (0x1) Sunday
- (0x2) Monday
- (0x3) Tuesday
- (0x4) Wednesday
- (0x5) Thursday
- (0x6) Friday
- (0x7) Saturday
- (0x8) Never

If you enable this setting, the check for security intelligence updates will occur at the frequency specified.

If you disable or don't configure this setting, the check for security intelligence updates will occur at a default frequency.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify the day of the week to check for security intelligence updates*
-   GP name: *SignatureUpdate_ScheduleDay*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-signatureupdate-scheduletime"></a>**ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ScheduleTime**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to specify the time of day at which to check for security intelligence updates. The time value is represented as the number of minutes past midnight (00:00). For example, 120 (0x78) is equivalent to 02:00 AM. By default this setting is configured to check for security intelligence updates 15 minutes before the scheduled scan time. The schedule is based on local time on the computer where the check is occurring.

If you enable this setting, the check for security intelligence updates will occur at the time of day specified.

If you disable or don't configure this setting,  the check for security intelligence updates will occur at the default time.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify the time to check for security intelligence updates*
-   GP name: *SignatureUpdate_ScheduleTime*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-signatureupdate-sharedsignatureslocation"></a>**ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_SharedSignaturesLocation**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Define security intelligence location for VDI clients.*
-   GP name: *SignatureUpdate_SharedSignaturesLocation*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<a href="" id="admx-microsoftdefenderantivirus-signatureupdate-signaturedisablenotification"></a>**ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_SignatureDisableNotification**

<hr/>
<!--Policy-->

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure the antimalware service to receive notifications to disable individual security intelligence in response to reports it sends to Microsoft MAPS. Microsoft MAPS uses these notifications to disable security intelligence that are causing false positive reports. You must have configured your computer to join Microsoft MAPS for this functionality to work.

If you enable this setting or don't configure, the antimalware service will receive notifications to disable security intelligence.

If you disable this setting, the antimalware service won't receive notifications to disable security intelligence.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow notifications to disable security intelligence based reports to Microsoft MAPS*
-   GP name: *SignatureUpdate_SignatureDisableNotification*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-signatureupdate-signatureupdatecatchupinterval"></a>**ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_SignatureUpdateCatchupInterval**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to define the number of days after which a catch-up security intelligence update will be required. By default, the value of this setting is 1 day.

If you enable this setting, a catch-up security intelligence update will occur after the specified number of days.

If you disable or don't configure this setting, a catch-up security intelligence update will be required after the default number of days.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Define the number of days after which a catch-up security intelligence update is required*
-   GP name: *SignatureUpdate_SignatureUpdateCatchupInterval*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-signatureupdate-updateonstartup"></a>**ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_UpdateOnStartup**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to manage whether a check for new virus and spyware security intelligence will occur immediately after service startup.

If you enable this setting, a check for new security intelligence will occur after service startup.

If you disable this setting or don't configure this setting, a check for new security intelligence won't occur after service startup.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Check for the latest virus and spyware security intelligence on startup*
-   GP name: *SignatureUpdate_UpdateOnStartup*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-spynetreporting"></a>**ADMX_MicrosoftDefenderAntivirus/SpynetReporting**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to join Microsoft MAPS. Microsoft MAPS is the online community that helps you choose how to respond to potential threats. The community also helps stop the spread of new malicious software infections.

You can choose to send basic or additional information about detected software. Additional information helps Microsoft create new security intelligence and help it to protect your computer. This information can include things like location of detected items on your computer if harmful software was removed. The information will be automatically collected and sent. In some instances, personal information might unintentionally be sent to Microsoft. However, Microsoft won't use this information to identify you or contact you.

Possible options are:

- (0x0) Disabled (default)
- (0x1) Basic membership
- (0x2) Advanced membership

Basic membership will send basic information to Microsoft about software that has been detected, including where the software came from, the actions that you apply or that are applied automatically, and whether the actions were successful.

Advanced membership, in addition to basic information, will send more information to Microsoft about malicious software, spyware, and potentially unwanted software, including the location of the software, file names, how the software operates, and how it has impacted your computer.

If you enable this setting, you'll join Microsoft MAPS with the membership specified.

If you disable or don't configure this setting, you won't join Microsoft MAPS.

In Windows 10, Basic membership is no longer available, so setting the value to 1 or 2 enrolls the device into Advanced membership.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Join Microsoft MAPS*
-   GP name: *SpynetReporting*
-   GP path: *Windows Components\Microsoft Defender Antivirus\MAPS*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-spynet-localsettingoverridespynetreporting"></a>**ADMX_MicrosoftDefenderAntivirus/Spynet_LocalSettingOverrideSpynetReporting**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
 This policy setting configures a local override for the configuration to join Microsoft MAPS. This setting can only be set by Policy.

If you enable this setting, the local preference setting will take priority over Policy.

If you disable or don't configure this setting, Policy will take priority over the local preference setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure local setting override for reporting to Microsoft MAPS*
-   GP name: *Spynet_LocalSettingOverrideSpynetReporting*
-   GP path: *Windows Components\Microsoft Defender Antivirus\MAPS*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-threats-threatiddefaultaction"></a>**ADMX_MicrosoftDefenderAntivirus/Threats_ThreatIdDefaultAction**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting customizes which remediation action will be taken for each listed Threat ID when it's detected during a scan. Threats should be added under the Options for this setting. Each entry must be listed as a name value pair. The name defines a valid Threat ID, while the value contains the action ID for the remediation action that should be taken.

Valid remediation action values are:

- 2 = Quarantine
- 3 = Remove
- 6 = Ignore

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify threats upon which default action should not be taken when detected*
-   GP name: *Threats_ThreatIdDefaultAction*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Threats*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-ux-configuration-customdefaultactiontoaststring"></a>**ADMX_MicrosoftDefenderAntivirus/UX_Configuration_CustomDefaultActionToastString**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure whether or not to display more text to clients when they need to perform an action. The text displayed is a custom administrator-defined string. For example, the phone number to call the company help desk. The client interface will only display a maximum of 1024 characters. Longer strings will be truncated before display.

If you enable this setting, the extra text specified will be displayed.

If you disable or don't configure this setting, there will be no extra text displayed.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Display additional text to clients when they need to perform an action*
-   GP name: *UX_Configuration_CustomDefaultActionToastString*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Client Interface*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-ux-configuration-notification-suppress"></a>**ADMX_MicrosoftDefenderAntivirus/UX_Configuration_Notification_Suppress**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
Use this policy setting to specify if you want Microsoft Defender Antivirus notifications to display on clients.

If you disable or don't configure this setting, Microsoft Defender Antivirus notifications will display on clients.

If you enable this setting, Microsoft Defender Antivirus notifications won't display on clients.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Suppress all notifications*
-   GP name: *UX_Configuration_Notification_Suppress*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Client Interface*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-ux-configuration-suppressrebootnotification"></a>**ADMX_MicrosoftDefenderAntivirus/UX_Configuration_SuppressRebootNotification**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows user to suppress reboot notifications in UI only mode (for cases where UI can't be in lockdown mode).

If you enable this setting, AM UI won't show reboot notifications.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Suppresses reboot notifications*
-   GP name: *UX_Configuration_SuppressRebootNotification*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Client Interface*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-microsoftdefenderantivirus-ux-configuration-uilockdown"></a>**ADMX_MicrosoftDefenderAntivirus/UX_Configuration_UILockdown**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
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
This policy setting allows you to configure whether or not to display AM UI to the users.

If you enable this setting, AM UI won't be available to users.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable headless UI mode*
-   GP name: *UX_Configuration_UILockdown*
-   GP path: *Windows Components\Microsoft Defender Antivirus\Client Interface*
-   GP ADMX file name: *WindowsDefender.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
