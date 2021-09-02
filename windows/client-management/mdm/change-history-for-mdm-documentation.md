---
title: Change history for MDM documentation
description: This article lists new and updated articles for Mobile Device Management.
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 10/19/2020
---

# Change history for Mobile Device Management documentation

This article lists new and updated articles for the Mobile Device Management (MDM) documentation. Updated articles are those that had content addition, removal, or corrections—minor fixes, such as correction of typos, style, or formatting issues are not listed.

## November 2020

|New or updated article | Description|
|--- | ---|
| [Policy CSP](policy-configuration-service-provider.md) | Added the following new policy:<br>- [Multitasking/BrowserAltTabBlowout](policy-csp-multitasking.md#multitasking-browseralttabblowout) |
| [SurfaceHub CSP](surfacehub-csp.md) | Added the following new node:<br>-Properties/SleepMode |

## October 2020

|New or updated article | Description|
|--- | ---|
| [Policy CSP](policy-configuration-service-provider.md) | Added the following new policies<br>- [Experience/DisableCloudOptimizedContent](policy-csp-experience.md#experience-disablecloudoptimizedcontent)<br>- [LocalUsersAndGroups/Configure](policy-csp-localusersandgroups.md#localusersandgroups-configure)<br>- [MixedReality/AADGroupMembershipCacheValidityInDays](policy-csp-mixedreality.md#mixedreality-aadgroupmembershipcachevalidityindays)<br>- [MixedReality/BrightnessButtonDisabled](policy-csp-mixedreality.md#mixedreality-brightnessbuttondisabled)<br>- [MixedReality/FallbackDiagnostics](policy-csp-mixedreality.md#mixedreality-fallbackdiagnostics)<br>- [MixedReality/MicrophoneDisabled](policy-csp-mixedreality.md#mixedreality-microphonedisabled)<br>- [MixedReality/VolumeButtonDisabled](policy-csp-mixedreality.md#mixedreality-volumebuttondisabled)<br>- [Update/DisableWUfBSafeguards](policy-csp-update.md#update-disablewufbsafeguards)<br>- [WindowsSandbox/AllowAudioInput](policy-csp-windowssandbox.md#windowssandbox-allowaudioinput)<br>- [WindowsSandbox/AllowClipboardRedirection](policy-csp-windowssandbox.md#windowssandbox-allowclipboardredirection)<br>- [WindowsSandbox/AllowNetworking](policy-csp-windowssandbox.md#windowssandbox-allownetworking)<br>- [WindowsSandbox/AllowPrinterRedirection](policy-csp-windowssandbox.md#windowssandbox-allowprinterredirection)<br>- [WindowsSandbox/AllowVGPU](policy-csp-windowssandbox.md#windowssandbox-allowvgpu)<br>- [WindowsSandbox/AllowVideoInput](policy-csp-windowssandbox.md#windowssandbox-allowvideoinput) |

## September 2020

|New or updated article | Description|
|--- | ---|
|[NetworkQoSPolicy CSP](networkqospolicy-csp.md)|Updated support information of the NetworkQoSPolicy CSP.|
|[Policy CSP - LocalPoliciesSecurityOptions](policy-csp-localpoliciessecurityoptions.md)|Removed the following unsupported LocalPoliciesSecurityOptions policy settings from the documentation:<br>- RecoveryConsole_AllowAutomaticAdministrativeLogon <br>- DomainMember_DigitallyEncryptOrSignSecureChannelDataAlways<br>- DomainMember_DigitallyEncryptSecureChannelDataWhenPossible<br>- DomainMember_DisableMachineAccountPasswordChanges<br>- SystemObjects_RequireCaseInsensitivityForNonWindowsSubsystems<br>|

## August 2020

|New or updated article | Description|
|--- | ---|
|[Policy CSP - System](policy-csp-system.md)|Removed the following policy settings:<br> - System/AllowDesktopAnalyticsProcessing <br>- System/AllowMicrosoftManagedDesktopProcessing <br> - System/AllowUpdateComplianceProcessing<br> - System/AllowWUfBCloudProcessing <br>|

## July 2020

|New or updated article | Description|
|--- | ---|
|[Policy CSP - System](policy-csp-system.md)|Added the following new policy settings:<br>  - System/AllowDesktopAnalyticsProcessing <br>- System/AllowMicrosoftManagedDesktopProcessing <br> - System/AllowUpdateComplianceProcessing<br> - System/AllowWUfBCloudProcessing <br> <br><br>Updated the following policy setting:<br>-  <a href="./policy-csp-system.md#system-allowcommercialdatapipeline" id="system-allowcommercialdatapipeline">System/AllowCommercialDataPipeline</a> <br>|

## June 2020

|New or updated article | Description|
|--- | ---|
|[BitLocker CSP](bitlocker-csp.md)|Added SKU support table for **AllowStandardUserEncryption**.|
|[Policy CSP - NetworkIsolation](policy-csp-networkisolation.md)|Updated the description from Boolean to Integer for the following policy settings:<br>EnterpriseIPRangesAreAuthoritative, EnterpriseProxyServersAreAuthoritative.|

## May 2020

|New or updated article | Description|
|--- | ---|
|[BitLocker CSP](bitlocker-csp.md)|Added the bitmask table for the Status/DeviceEncryptionStatus node.|
|[Policy CSP - RestrictedGroups](policy-csp-restrictedgroups.md)| Updated the topic with additional details. Added policy timeline table. 

## February 2020

|New or updated article | Description|
|--- | ---|
|[CertificateStore CSP](certificatestore-csp.md)<br>[ClientCertificateInstall CSP](clientcertificateinstall-csp.md)|Added details about SubjectName value.|

## January 2020

|New or updated article | Description|
|--- | ---|
|[Policy CSP - Defender](policy-csp-defender.md)|Added descriptions for supported actions for Defender/ThreatSeverityDefaultAction.|

## November 2019

|New or updated article | Description|
|--- | ---|
|[Policy CSP - DeliveryOptimization](policy-csp-deliveryoptimization.md)|Added option 5 in the supported values list for DeliveryOptimization/DOGroupIdSource.|
|[DiagnosticLog CSP](diagnosticlog-csp.md)|Added substantial updates to this CSP doc.|

## October 2019

|New or updated article | Description|
|--- | ---|
|[BitLocker CSP](bitlocker-csp.md)|Added the following new nodes:<br>ConfigureRecoveryPasswordRotation, RotateRecoveryPasswords, RotateRecoveryPasswordsStatus, RotateRecoveryPasswordsRequestID.|
|[Defender CSP](defender-csp.md)|Added the following new nodes:<br>Health/TamperProtectionEnabled, Health/IsVirtualMachine, Configuration, Configuration/TamperProtection, Configuration/EnableFileHashComputation.|

## September 2019

|New or updated article | Description|
|--- | ---|
|[EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md)|Added the following new node:<br>IsStub.|
|[Policy CSP - Defender](policy-csp-defender.md)|Updated the supported value list for Defender/ScheduleScanDay policy.|
|[Policy CSP - DeviceInstallation](policy-csp-deviceinstallation.md)|Added the following new policies: <br>DeviceInstallation/AllowInstallationOfMatchingDeviceInstanceIDs, DeviceInstallation/PreventInstallationOfMatchingDeviceInstanceIDs.|

## August 2019

|New or updated article | Description|
|--- | ---|
|[DiagnosticLog CSP](diagnosticlog-csp.md)<br>[DiagnosticLog DDF](diagnosticlog-ddf.md)|Added version 1.4 of the CSP in Windows 10, version 1903. Added the new 1.4 version of the DDF. Added the following new nodes:<br>Policy, Policy/Channels, Policy/Channels/ChannelName, Policy/Channels/ChannelName/MaximumFileSize, Policy/Channels/ChannelName/SDDL, Policy/Channels/ChannelName/ActionWhenFull, Policy/Channels/ChannelName/Enabled, DiagnosticArchive, DiagnosticArchive/ArchiveDefinition, DiagnosticArchive/ArchiveResults.|
|[Enroll a Windows 10 device automatically using Group Policy](enroll-a-windows-10-device-automatically-using-group-policy.md)|Enhanced the article to include additional reference links and the following two topics:<br>Verify auto-enrollment requirements and settings, Troubleshoot auto-enrollment of devices.|

## July 2019

|New or updated article | Description|
|--- | ---|
|[Policy CSP](policy-configuration-service-provider.md)|Added the following list:<br>Policies supported by HoloLens 2|
|[ApplicationControl CSP](applicationcontrol-csp.md)|Added new CSP in Windows 10, version 1903.|
|[PassportForWork CSP](passportforwork-csp.md)|Added the following new nodes in Windows 10, version 1903:<br>SecurityKey, SecurityKey/UseSecurityKeyForSignin|
|[Policy CSP - Privacy](policy-csp-privacy.md)|Added the following new policies:<br>LetAppsActivateWithVoice, LetAppsActivateWithVoiceAboveLock|
|Create a custom configuration service provider|Deleted the following documents from the CSP reference because extensibility via CSPs is not currently supported:<br>Create a custom configuration service provider<br>Design a custom configuration service provider<br>IConfigServiceProvider2<br>IConfigServiceProvider2::ConfigManagerNotification<br>IConfigServiceProvider2::GetNode<br>ICSPNode<br>ICSPNode::Add<br>ICSPNode::Clear<br>ICSPNode::Copy<br>ICSPNode::DeleteChild<br>ICSPNode::DeleteProperty<br>ICSPNode::Execute<br>ICSPNode::GetChildNodeNames<br>ICSPNode::GetProperty<br>ICSPNode::GetPropertyIdentifiers<br>ICSPNode::GetValue<br>ICSPNode::Move<br>ICSPNode::SetProperty<br>ICSPNode::SetValue<br>ICSPNodeTransactioning<br>ICSPValidate<br>Samples for writing a custom configuration service provider.|

## June 2019

|New or updated article | Description|
|--- | ---|
|[Policy CSP - DeviceHealthMonitoring](policy-csp-devicehealthmonitoring.md)|Added the following new policies:<br>AllowDeviceHealthMonitoring, ConfigDeviceHealthMonitoringScope, ConfigDeviceHealthMonitoringUploadDestination.|
|[Policy CSP - TimeLanguageSettings](policy-csp-timelanguagesettings.md)|Added the following new policy:<br>ConfigureTimeZone.|

## May 2019

|New or updated article | Description|
|--- | ---|
|[DeviceStatus CSP](devicestatus-csp.md)|Updated description of the following nodes:<br>DeviceStatus/Antivirus/SignatureStatus, DeviceStatus/Antispyware/SignatureStatus.|
|[EnrollmentStatusTracking CSP](enrollmentstatustracking-csp.md)|Added new CSP in Windows 10, version 1903.|
|[Policy CSP - DeliveryOptimization](policy-csp-deliveryoptimization.md)|Added the following new policies:<br> DODelayCacheServerFallbackBackground, DODelayCacheServerFallbackForeground.<br><br>Updated description of the following policies:<br>DOMinRAMAllowedToPeer, DOMinFileSizeToCache, DOMinDiskSizeAllowedToPeer.|
|[Policy CSP - Experience](policy-csp-experience.md)|Added the following new policy:<br>ShowLockOnUserTile.|
|[Policy CSP - InternetExplorer](policy-csp-internetexplorer.md)|Added the following new policies:<br>AllowEnhancedSuggestionsInAddressBar, DisableActiveXVersionListAutoDownload, DisableCompatView, DisableFeedsBackgroundSync, DisableGeolocation, DisableWebAddressAutoComplete, NewTabDefaultPage.|
|[Policy CSP - Power](policy-csp-power.md)|Added the following new policies:<br>EnergySaverBatteryThresholdOnBattery, EnergySaverBatteryThresholdPluggedIn, SelectLidCloseActionOnBattery, SelectLidCloseActionPluggedIn, SelectPowerButtonActionOnBattery, SelectPowerButtonActionPluggedIn, SelectSleepButtonActionOnBattery, SelectSleepButtonActionPluggedIn, TurnOffHybridSleepOnBattery, TurnOffHybridSleepPluggedIn, UnattendedSleepTimeoutOnBattery, UnattendedSleepTimeoutPluggedIn.|
|[Policy CSP - Search](policy-csp-search.md)|Added the following new policy:<br>AllowFindMyFiles.|
|[Policy CSP - ServiceControlManager](policy-csp-servicecontrolmanager.md)|Added the following new policy:<br>SvchostProcessMitigation.|
|[Policy CSP - System](policy-csp-system.md)|Added the following new policies:<br>AllowCommercialDataPipeline, TurnOffFileHistory.|
|[Policy CSP - Troubleshooting](policy-csp-troubleshooting.md)|Added the following new policy:<br>AllowRecommendations.|
|[Policy CSP - Update](policy-csp-update.md)|Added the following new policies:<br>AutomaticMaintenanceWakeUp, ConfigureDeadlineForFeatureUpdates, ConfigureDeadlineForQualityUpdates, ConfigureDeadlineGracePeriod, ConfigureDeadlineNoAutoReboot.|
|[Policy CSP - WindowsLogon](policy-csp-windowslogon.md)|Added the following new policies:<br>AllowAutomaticRestartSignOn, ConfigAutomaticRestartSignOn, EnableFirstLogonAnimation.<br><br>Removed the following policy:<br>SignInLastInteractiveUserAutomaticallyAfterASystemInitiatedRestart. This policy is replaced by AllowAutomaticRestartSignOn.|

## April 2019

|                                         New or updated article                                          |                                                                                                                                                                                                          Description                                                                                                                                                                                                          |
|-------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Win32 and Desktop Bridge app policy configuration](win32-and-centennial-app-policy-configuration.md) | Added the following warning at the end of the Overview section:<br>Some operating system components have built in functionality to check devices for domain membership. MDM enforces the configured policy values only if the devices are domain joined, otherwise it does not. However, you can still import ADMX files and set ADMX-backed policies regardless of whether the device is domain joined or non-domain joined. |
|                          [Policy CSP - UserRights](policy-csp-userrights.md)                          |                                                                                                                                  Added a note stating if you use Intune custom profiles to assign UserRights policies, you must use the CDATA tag (<![CDATA[...]]>) to wrap the data fields.                                                                                                                                  |

## March 2019

|New or updated article | Description|
|--- | ---|
|[Policy CSP - Storage](policy-csp-storage.md)|Updated ADMX Info of the following policies:<br>AllowStorageSenseGlobal, AllowStorageSenseTemporaryFilesCleanup, ConfigStorageSenseCloudContentDehydrationThreshold, ConfigStorageSenseDownloadsCleanupThreshold, ConfigStorageSenseGlobalCadence, ConfigStorageSenseRecycleBinCleanupThreshold. <br><br>Updated description of ConfigStorageSenseDownloadsCleanupThreshold.|

## February 2019

|New or updated article | Description|
|--- | ---|
|[Policy CSP](policy-configuration-service-provider.md)|Updated supported policies for Holographic.|

## January 2019

|New or updated article | Description|
|--- | ---|
|[Policy CSP - Storage](policy-csp-storage.md)|Added the following new policies: AllowStorageSenseGlobal, ConfigStorageSenseGlobalCadence, AllowStorageSenseTemporaryFilesCleanup, ConfigStorageSenseRecycleBinCleanupThreshold, ConfigStorageSenseDownloadsCleanupThreshold, and ConfigStorageSenseCloudContentCleanupThreshold.|
|[SharedPC CSP](sharedpc-csp.md)|Updated values and supported operations.|
|[Mobile device management](index.md)|Updated information about MDM Security Baseline.|

## December 2018

|New or updated article | Description|
|--- | ---|
|[BitLocker CSP](bitlocker-csp.md)|Updated AllowWarningForOtherDiskEncryption policy description to describe silent and non-silent encryption scenarios, as well as where and how the recovery key is backed up for each scenario.|

## September 2018

|New or updated article | Description|
|--- | ---|
|[Mobile device management](index.md#mmat) | Added information about the MDM Migration Analysis Tool (MMAT).|
|[Policy CSP - DeviceGuard](policy-csp-deviceguard.md) | Updated ConfigureSystemGuardLaunch policy and replaced EnableSystemGuard with it.|

## August 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated article</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="bitlocker-csp.md" data-raw-source="[BitLocker CSP](bitlocker-csp.md)">BitLocker CSP</a></td>
<td><p>Added support for Windows 10 Pro starting in the version 1809.</p>
</td></tr>
<tr>
<td><a href="office-csp.md" data-raw-source="[Office CSP](office-csp.md)">Office CSP</a></td>
<td><p>Added FinalStatus setting in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td><a href="remotewipe-csp.md" data-raw-source="[RemoteWipe CSP](remotewipe-csp.md)">RemoteWipe CSP</a></td>
<td><p>Added new settings in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td><a href="tenantlockdown-csp.md" data-raw-source="[TenantLockdown CSP](tenantlockdown-csp.md)">TenantLockdown CSP</a></td>
<td><p>Added new CSP in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td><a href="windowsdefenderapplicationguard-csp.md" data-raw-source="[WindowsDefenderApplicationGuard CSP](windowsdefenderapplicationguard-csp.md)">WindowsDefenderApplicationGuard CSP</a></td>
<td><p>Added new settings in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td><a href="policy-ddf-file.md" data-raw-source="[Policy DDF file](policy-ddf-file.md)">Policy DDF file</a></td>
<td><p>Posted an updated version of the Policy DDF for Windows 10, version 1809.</p>
</td></tr>
<tr>
<td><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td><p>Added the following new policies in Windows 10, version 1809:</p>
<ul>
<li>Browser/AllowFullScreenMode</li>
<li>Browser/AllowPrelaunch</li>
<li>Browser/AllowPrinting</li>
<li>Browser/AllowSavingHistory</li>
<li>Browser/AllowSideloadingOfExtensions</li>
<li>Browser/AllowTabPreloading</li>
<li>Browser/AllowWebContentOnNewTabPage</li>
<li>Browser/ConfigureFavoritesBar</li>
<li>Browser/ConfigureHomeButton</li>
<li>Browser/ConfigureKioskMode</li>
<li>Browser/ConfigureKioskResetAfterIdleTimeout</li>
<li>Browser/ConfigureOpenMicrosoftEdgeWith</li>
<li>Browser/ConfigureTelemetryForMicrosoft365Analytics</li>
<li>Browser/PreventCertErrorOverrides</li>
<li>Browser/SetHomeButtonURL</li>
<li>Browser/SetNewTabPageURL</li>
<li>Browser/UnlockHomeButton</li>
<li>Experience/DoNotSyncBrowserSettings</li>
<li>Experience/PreventUsersFromTurningOnBrowserSyncing</li>
<li>Kerberos/UPNNameHints</li>
<li>Privacy/AllowCrossDeviceClipboard</li>
<li>Privacy/DisablePrivacyExperience</li>
<li>Privacy/UploadUserActivities</li>
<li>System/AllowDeviceNameInDiagnosticData</li>
<li>System/ConfigureMicrosoft365UploadEndpoint</li>
<li>System/DisableDeviceDelete</li>
<li>System/DisableDiagnosticDataViewer</li>
<li>Storage/RemovableDiskDenyWriteAccess</li>
<li>Update/UpdateNotificationLevel</li>
</ul>
<p>Start/DisableContextMenus - added in Windows 10, version 1803.</p>
<p>RestrictedGroups/ConfigureGroupMembership - added new schema to apply and retrieve the policy.</p>
</td></tr>
</tbody>
</table>

## July 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated article</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="assignedaccess-csp.md" data-raw-source="[AssignedAccess CSP](assignedaccess-csp.md)">AssignedAccess CSP</a></td>
<td><p>Added the following note:</p>
<ul>
<li>You can only assign one single app kiosk profile to an individual user account on a device. The single app profile does not support domain groups.</li>
</ul>
</td></tr>
<tr>
<td><a href="passportforwork-csp.md" data-raw-source="[PassportForWork  CSP](passportforwork-csp.md)">PassportForWork  CSP</a></td>
<td><p>Added new settings in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td><a href="enterprisemodernappmanagement-csp.md" data-raw-source="[EnterpriseModernAppManagement  CSP](enterprisemodernappmanagement-csp.md)">EnterpriseModernAppManagement  CSP</a></td>
<td><p>Added NonRemovable setting under AppManagement node in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td><a href="win32compatibilityappraiser-csp.md" data-raw-source="[Win32CompatibilityAppraiser  CSP](win32compatibilityappraiser-csp.md)">Win32CompatibilityAppraiser  CSP</a></td>
<td><p>Added new configuration service provider in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td><a href="windowslicensing-csp.md" data-raw-source="[WindowsLicensing  CSP](windowslicensing-csp.md)">WindowsLicensing  CSP</a></td>
<td><p>Added S mode settings and SyncML examples in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td><a href="supl-csp.md" data-raw-source="[SUPL CSP](supl-csp.md)">SUPL CSP</a></td>
<td><p>Added 3 new certificate nodes in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td><a href="defender-csp.md" data-raw-source="[Defender CSP](defender-csp.md)">Defender CSP</a></td>
<td><p>Added a new node Health/ProductStatus in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td><a href="bitlocker-csp.md" data-raw-source="[BitLocker CSP](bitlocker-csp.md)">BitLocker CSP</a></td>
<td><p>Added a new node AllowStandardUserEncryption in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td><a href="devdetail-csp.md" data-raw-source="[DevDetail CSP](devdetail-csp.md)">DevDetail CSP</a></td>
<td><p>Added a new node SMBIOSSerialNumber in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td><p>Added the following new policies in Windows 10, version 1809:</p>
<ul>
<li>ApplicationManagement/LaunchAppAfterLogOn</li>
<li>ApplicationManagement/ScheduleForceRestartForUpdateFailures </li>
<li>Authentication/EnableFastFirstSignIn (Preview mode only)</li>
<li>Authentication/EnableWebSignIn (Preview mode only)</li>
<li>Authentication/PreferredAadTenantDomainName</li>
<li>Defender/CheckForSignaturesBeforeRunningScan</li>
<li>Defender/DisableCatchupFullScan </li>
<li>Defender/DisableCatchupQuickScan </li>
<li>Defender/EnableLowCPUPriority</li>
<li>Defender/SignatureUpdateFallbackOrder</li>
<li>Defender/SignatureUpdateFileSharesSources</li>
<li>DeviceGuard/ConfigureSystemGuardLaunch</li>
<li>DeviceInstallation/AllowInstallationOfMatchingDeviceIDs</li>
<li>DeviceInstallation/AllowInstallationOfMatchingDeviceSetupClasses</li>
<li>DeviceInstallation/PreventDeviceMetadataFromNetwork</li>
<li>DeviceInstallation/PreventInstallationOfDevicesNotDescribedByOtherPolicySettings</li>
<li>DmaGuard/DeviceEnumerationPolicy</li>
<li>Experience/AllowClipboardHistory</li>
<li>Security/RecoveryEnvironmentAuthentication</li>
<li>TaskManager/AllowEndTask</li>
<li>WindowsDefenderSecurityCenter/DisableClearTpmButton</li>
<li>WindowsDefenderSecurityCenter/DisableTpmFirmwareUpdateWarning</li>
<li>WindowsDefenderSecurityCenter/HideWindowsSecurityNotificationAreaControl</li>
<li>WindowsLogon/DontDisplayNetworkSelectionUI</li>
</ul>
<p>Recent changes:</p>
<ul>
<li>DataUsage/SetCost3G - deprecated in Windows 10, version 1809.</li>
</ul>
</td></tr>
</tbody>
</table>

## June 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated article</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="wifi-csp.md" data-raw-source="[Wifi CSP](wifi-csp.md)">Wifi CSP</a></td>
<td><p>Added a new node WifiCost in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td><a href="diagnose-mdm-failures-in-windows-10.md" data-raw-source="[Diagnose MDM failures in Windows 10](diagnose-mdm-failures-in-windows-10.md)">Diagnose MDM failures in Windows 10</a></td>
<td><p>Recent changes:</p>
<ul>
<li>Added procedure for collecting logs remotely from Windows 10 Holographic.</li>
<li>Added procedure for downloading the MDM Diagnostic Information log.</li>
</ul>
</td></tr>
<tr>
<td><a href="bitlocker-csp.md" data-raw-source="[BitLocker CSP](bitlocker-csp.md)">BitLocker CSP</a></td>
<td><p>Added new node AllowStandardUserEncryption in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td><p>Recent changes:</p>
<ul>
<li>AccountPoliciesAccountLockoutPolicy/AccountLockoutDuration - removed from docs. Not supported.</li>
<li>AccountPoliciesAccountLockoutPolicy/AccountLockoutThreshold - removed from docs. Not supported.</li>
<li>AccountPoliciesAccountLockoutPolicy/ResetAccountLockoutCounterAfter - removed from docs. Not supported.</li>
<li>LocalPoliciesSecurityOptions/NetworkAccess_LetEveryonePermissionsApplyToAnonymousUsers - removed from docs. Not supported.</li>
<li>System/AllowFontProviders is not supported in HoloLens (1st gen) Commercial Suite.</li>
<li>Security/RequireDeviceEncryption is supported in the Home SKU.</li>
<li>Start/StartLayout - added a table of SKU support information.</li>
<li>Start/ImportEdgeAssets - added a table of SKU support information.</li>
</ul>
<p>Added the following new policies in Windows 10, version 1809:</p>
<ul>
<li>Update/EngagedRestartDeadlineForFeatureUpdates</li>
<li>Update/EngagedRestartSnoozeScheduleForFeatureUpdates</li>
<li>Update/EngagedRestartTransitionScheduleForFeatureUpdates</li>
<li>Update/SetDisablePauseUXAccess</li>
<li>Update/SetDisableUXWUAccess</li>
</ul>
</td></tr>
<tr>
<td><a href="wirednetwork-csp.md" data-raw-source="[WiredNetwork CSP](wirednetwork-csp.md)">WiredNetwork CSP</a></td>
<td>New CSP added in Windows 10, version 1809.
</td></tr>
</tbody>
</table>

## May 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated article</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="policy-ddf-file.md" data-raw-source="[Policy DDF file](policy-ddf-file.md)">Policy DDF file</a></td>
<td><p>Updated the DDF files in the Windows 10 version 1703 and 1709.</p>
<ul>
<li><a href="https://download.microsoft.com/download/8/C/4/8C43C116-62CB-470B-9B69-76A3E2BC32A8/PolicyDDF_all.xml" data-raw-source="[Download the Policy DDF file for Windows 10, version 1709](https://download.microsoft.com/download/8/C/4/8C43C116-62CB-470B-9B69-76A3E2BC32A8/PolicyDDF_all.xml)">Download the Policy DDF file for Windows 10, version 1709</a></li>
<li><a href="https://download.microsoft.com/download/7/2/C/72C36C37-20F9-41BF-8E23-721F6FFC253E/PolicyDDF_all.xml" data-raw-source="[Download the Policy DDF file for Windows 10, version 1703](https://download.microsoft.com/download/7/2/C/72C36C37-20F9-41BF-8E23-721F6FFC253E/PolicyDDF_all.xml)">Download the Policy DDF file for Windows 10, version 1703</a></li>
</ul>
</td></tr>
</tbody>
</table>

## April 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated article</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="windowsdefenderapplicationguard-csp.md" data-raw-source="[WindowsDefenderApplicationGuard CSP](windowsdefenderapplicationguard-csp.md)">WindowsDefenderApplicationGuard CSP</a></td>
<td><p>Added the following node in Windows 10, version 1803:</p>
<ul>
<li>Settings/AllowVirtualGPU</li>
<li>Settings/SaveFilesToHost</li>
</ul>
</td></tr>
<tr>
<td><a href="\networkproxy--csp.md" data-raw-source="[NetworkProxy CSP](\networkproxy--csp.md)">NetworkProxy CSP</a></td>
<td><p>Added the following node in Windows 10, version 1803:</p>
<ul>
<li>ProxySettingsPerUser</li>
</ul>
</td></tr>
<tr>
<td><a href="accounts-csp.md" data-raw-source="[Accounts CSP](accounts-csp.md)">Accounts CSP</a></td>
<td><p>Added a new CSP in Windows 10, version 1803.</p>
</td></tr>
<tr>
<td><a href="https://aka.ms/mmat" data-raw-source="[MDM Migration Analysis Tool (MMAT)](https://aka.ms/mmat)">MDM Migration Analysis Tool (MMAT)</a></td>
<td><p>Updated version available. MMAT is a tool you can use to determine which Group Policies are set on a target user/computer and cross-reference them against the list of supported MDM policies.</p>
</td></tr>
<tr>
<td><a href="configuration-service-provider-reference.md#csp-ddf-files-download" data-raw-source="[CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download)">CSP DDF files download</a></td>
<td><p>Added the DDF download of Windows 10, version 1803 configuration service providers.</p>
</td></tr>
<tr>
<td><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td><p>Added the following new policies for Windows 10, version 1803:</p>
<ul>
<li>Bluetooth/AllowPromptedProximalConnections</li>
<li>KioskBrowser/EnableEndSessionButton</li>
<li>LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication</li>
<li>LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic</li>
<li>LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic</li>
<li>LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers</li>
</ul>
</td></tr>
</tbody>
</table>

## March 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated article</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="euiccs-csp.md" data-raw-source="[eUICCs CSP](euiccs-csp.md)">eUICCs CSP</a></td>
<td><p>Added the following node in Windows 10, version 1803:</p>
<ul>
<li>IsEnabled</li>
</ul>
</td></tr>
<tr>
<td><a href="devicestatus-csp.md" data-raw-source="[DeviceStatus CSP](devicestatus-csp.md)">DeviceStatus CSP</a></td>
<td><p>Added the following node in Windows 10, version 1803:</p>
<ul>
<li>OS/Mode</li>
</ul>
</td></tr>
<tr>
<td><a href="understanding-admx-backed-policies.md" data-raw-source="[Understanding ADMX-backed policies](understanding-admx-backed-policies.md)">Understanding ADMX-backed policies</a></td>
<td><p>Added the following videos:</p>
<ul>
<li><a href="https://www.microsoft.com/showcase/video.aspx?uuid=bdc9b54b-11b0-4bdb-a022-c339d16e7121" data-raw-source="[How to create a custom xml to enable an ADMX-backed policy and deploy the XML in Intune](https://www.microsoft.com/showcase/video.aspx?uuid=bdc9b54b-11b0-4bdb-a022-c339d16e7121)">How to create a custom xml to enable an ADMX-backed policy and deploy the XML in Intune</a></li>
<li><a href="https://www.microsoft.com/showcase/video.aspx?uuid=a59888b1-429f-4a49-8570-c39a143d9a73" data-raw-source="[How to import a custom ADMX file to a device using Intune](https://www.microsoft.com/showcase/video.aspx?uuid=a59888b1-429f-4a49-8570-c39a143d9a73)">How to import a custom ADMX file to a device using Intune</a></li>
</ul>
</td></tr>
<tr>
<td><a href="accountmanagement-csp.md" data-raw-source="[AccountManagement CSP](accountmanagement-csp.md)">AccountManagement CSP</a></td>
<td><p>Added a new CSP in Windows 10, version 1803.</p>
</td></tr>
<tr>
<td><a href="rootcacertificates-csp.md" data-raw-source="[RootCATrustedCertificates CSP](rootcacertificates-csp.md)">RootCATrustedCertificates CSP</a></td>
<td><p>Added the following node in Windows 10, version 1803:</p>
<ul>
<li>UntrustedCertificates</li>
</ul>
</td></tr>
<tr>
<td><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td><p>Added the following new policies for Windows 10, version 1803:</p>
<ul>
<li>ApplicationDefaults/EnableAppUriHandlers</li>
<li>ApplicationManagement/MSIAllowUserControlOverInstall</li>
<li>ApplicationManagement/MSIAlwaysInstallWithElevatedPrivileges</li>
<li>Connectivity/AllowPhonePCLinking</li>
<li>Notifications/DisallowCloudNotification</li>
<li>Notifications/DisallowTileNotification</li>
<li>RestrictedGroups/ConfigureGroupMembership</li>
</ul>
<p>The following existing policies were updated:</p>
<ul>
<li>Browser/AllowCookies - updated the supported values. There are 3 values - 0, 1, 2.</li>
<li>InternetExplorer/AllowSiteToZoneAssignmentList - updated the description and added an example SyncML</li>
<li>TextInput/AllowIMENetworkAccess - introduced new suggestion services in Japanese IME in addition to cloud suggestion.</li>
</ul>
<p>Added a new section:</p>
<ul>
<li><a href="/windows/client-management/mdm/policies-in-policy-csp-supported-by-group-policy" data-raw-source="[[Policies in Policy CSP supported by Group Policy](./policies-in-policy-csp-supported-by-group-policy.md)">[Policies in Policy CSP supported by Group Policy</a> - list of policies in Policy CSP that has corresponding Group Policy. The policy description contains the GP information, such as GP policy name and variable name.</li>
</ul>
</td></tr>
<tr>
<td><a href="policy-csp-bluetooth.md" data-raw-source="[Policy CSP - Bluetooth](policy-csp-bluetooth.md)">Policy CSP - Bluetooth</a></td>
<td><p>Added new section <a href="policy-csp-bluetooth.md#servicesallowedlist-usage-guide" data-raw-source="[ServicesAllowedList usage guide](policy-csp-bluetooth.md#servicesallowedlist-usage-guide)">ServicesAllowedList usage guide</a>.</p>
</td></tr>
<tr>
<td><a href="multisim-csp.md" data-raw-source="[MultiSIM CSP](multisim-csp.md)">MultiSIM CSP</a></td>
<td><p>Added SyncML examples and updated the settings descriptions.</p>
</td></tr>
<tr class="odd">
<td><a href="remotewipe-csp.md" data-raw-source="[RemoteWipe CSP](remotewipe-csp.md)">RemoteWipe CSP</a></td>
<td><p>Reverted back to Windows 10, version 1709. Removed previous draft documentation for version 1803.</p>
</td></tr>
</tbody>
</table>

## February 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated article</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td><p>Added the following new policies for Windows 10, version 1803:</p>
<ul>
<li>Display/DisablePerProcessDpiForApps</li>
<li>Display/EnablePerProcessDpi</li>
<li>Display/EnablePerProcessDpiForApps</li>
<li>Experience/AllowWindowsSpotlightOnSettings</li>
<li>TextInput/ForceTouchKeyboardDockedState</li>
<li>TextInput/TouchKeyboardDictationButtonAvailability</li>
<li>TextInput/TouchKeyboardEmojiButtonAvailability</li>
<li>TextInput/TouchKeyboardFullModeAvailability</li>
<li>TextInput/TouchKeyboardHandwritingModeAvailability</li>
<li>TextInput/TouchKeyboardNarrowModeAvailability</li>
<li>TextInput/TouchKeyboardSplitModeAvailability</li>
<li>TextInput/TouchKeyboardWideModeAvailability</li>
<ul>
</td></tr>
<tr class="odd">
<td><a href="vpnv2-profile-xsd.md" data-raw-source="[VPNv2 ProfileXML XSD](vpnv2-profile-xsd.md)">VPNv2 ProfileXML XSD</a></td>
<td><p>Updated the XSD and Plug-in profile example for VPNv2 CSP.</p>
</td></tr>
<tr class="odd">
<td><a href="assignedaccess-csp.md" data-raw-source="[AssignedAccess CSP](assignedaccess-csp.md)">AssignedAccess CSP</a></td>
<td><p>Added the following nodes in Windows 10, version 1803:</p>
<ul>
<li>Status</li>
<li>ShellLauncher</li>
<li>StatusConfiguration</li>
</ul>
<p>Updated the AssigneAccessConfiguration schema. Starting in Windows 10, version 1803 AssignedAccess CSP is supported in HoloLens (1st gen) Commercial Suite. Added example for HoloLens (1st gen) Commercial Suite.</p>
</td></tr>
<tr class="odd">
<td><a href="multisim-csp.md" data-raw-source="[MultiSIM CSP](multisim-csp.md)">MultiSIM CSP</a></td>
<td><p>Added a new CSP in Windows 10, version 1803.</p>
</td></tr>
<tr class="odd">
<td><a href="enterprisemodernappmanagement-csp.md" data-raw-source="[EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md)">EnterpriseModernAppManagement CSP</a></td>
<td><p>Added the following node in Windows 10, version 1803:</p>
<ul>
<li>MaintainProcessorArchitectureOnUpdate</li>
</ul>
</td></tr>
</tbody>
</table>

## January 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated article</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td><p>Added the following new policies for Windows 10, version 1803:</p>
<ul>
<li>Browser/AllowConfigurationUpdateForBooksLibrary</li>
<li>Browser/AlwaysEnableBooksLibrary</li>
<li>Browser/EnableExtendedBooksTelemetry</li>
<li>Browser/UseSharedFolderForBooks</li>
<li>DeliveryOptimization/DODelayBackgroundDownloadFromHttp</li>
<li>DeliveryOptimization/DODelayForegroundDownloadFromHttp</li>
<li>DeliveryOptimization/DOGroupIdSource</li>
<li>DeliveryOptimization/DOPercentageMaxBackDownloadBandwidth</li>
<li>DeliveryOptimization/DOPercentageMaxForeDownloadBandwidth</li>
<li>DeliveryOptimization/DORestrictPeerSelectionBy</li>
<li>DeliveryOptimization/DOSetHoursToLimitBackgroundDownloadBandwidth</li>
<li>DeliveryOptimization/DOSetHoursToLimitForegroundDownloadBandwidth</li>
<li>KioskBrowser/BlockedUrlExceptions</li>
<li>KioskBrowser/BlockedUrls</li>
<li>KioskBrowser/DefaultURL</li>
<li>KioskBrowser/EnableHomeButton</li>
<li>KioskBrowser/EnableNavigationButtons</li>
<li>KioskBrowser/RestartOnIdleTime</li>
<li>LocalPoliciesSecurityOptions/Devices_AllowUndockWithoutHavingToLogon</li>
<li>LocalPoliciesSecurityOptions/Devices_AllowedToFormatAndEjectRemovableMedia</li>
<li>LocalPoliciesSecurityOptions/Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters</li>
<li>LocalPoliciesSecurityOptions/Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly</li>
<li>LocalPoliciesSecurityOptions/InteractiveLogon_SmartCardRemovalBehavior</li>
<li>LocalPoliciesSecurityOptions/MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees</li>
<li>LocalPoliciesSecurityOptions/MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers</li>
<li>LocalPoliciesSecurityOptions/MicrosoftNetworkServer_DigitallySignCommunicationsAlways</li>
<li>LocalPoliciesSecurityOptions/MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees</li>
<li>LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts</li>
<li>LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares</li>
<li>LocalPoliciesSecurityOptions/NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares</li>
<li>LocalPoliciesSecurityOptions/NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM</li>
<li>LocalPoliciesSecurityOptions/NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange</li>
<li>LocalPoliciesSecurityOptions/NetworkSecurity_LANManagerAuthenticationLevel</li>
<li>LocalPoliciesSecurityOptions/NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients</li>
<li>LocalPoliciesSecurityOptions/NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers</li>
<li>LocalPoliciesSecurityOptions/Shutdown_ClearVirtualMemoryPageFile</li>
<li>LocalPoliciesSecurityOptions/UserAccountControl_DetectApplicationInstallationsAndPromptForElevation</li>
<li>LocalPoliciesSecurityOptions/UserAccountControl_UseAdminApprovalMode</li>
<li>RestrictedGroups/ConfigureGroupMembership</li>
<li>Search/AllowCortanaInAAD</li>
<li>Search/DoNotUseWebResults</li>
<li>Security/ConfigureWindowsPasswords</li>
<li>System/FeedbackHubAlwaysSaveDiagnosticsLocally</li>
<li>SystemServices/ConfigureHomeGroupListenerServiceStartupMode</li>
<li>SystemServices/ConfigureHomeGroupProviderServiceStartupMode</li>
<li>SystemServices/ConfigureXboxAccessoryManagementServiceStartupMode</li>
<li>SystemServices/ConfigureXboxLiveAuthManagerServiceStartupMode</li>
<li>SystemServices/ConfigureXboxLiveGameSaveServiceStartupMode</li>
<li>SystemServices/ConfigureXboxLiveNetworkingServiceStartupMode</li>
<li>TaskScheduler/EnableXboxGameSaveTask</li>
<li>TextInput/EnableTouchKeyboardAutoInvokeInDesktopMode</li>
<li>Update/ConfigureFeatureUpdateUninstallPeriod</li>
<li>UserRights/AccessCredentialManagerAsTrustedCaller</li>
<li>UserRights/AccessFromNetwork</li>
<li>UserRights/ActAsPartOfTheOperatingSystem</li>
<li>UserRights/AllowLocalLogOn</li>
<li>UserRights/BackupFilesAndDirectories</li>
<li>UserRights/ChangeSystemTime</li>
<li>UserRights/CreateGlobalObjects</li>
<li>UserRights/CreatePageFile</li>
<li>UserRights/CreatePermanentSharedObjects</li>
<li>UserRights/CreateSymbolicLinks</li>
<li>UserRights/CreateToken</li>
<li>UserRights/DebugPrograms</li>
<li>UserRights/DenyAccessFromNetwork</li>
<li>UserRights/DenyLocalLogOn</li>
<li>UserRights/DenyRemoteDesktopServicesLogOn</li>
<li>UserRights/EnableDelegation</li>
<li>UserRights/GenerateSecurityAudits</li>
<li>UserRights/ImpersonateClient</li>
<li>UserRights/IncreaseSchedulingPriority</li>
<li>UserRights/LoadUnloadDeviceDrivers</li>
<li>UserRights/LockMemory</li>
<li>UserRights/ManageAuditingAndSecurityLog</li>
<li>UserRights/ManageVolume</li>
<li>UserRights/ModifyFirmwareEnvironment</li>
<li>UserRights/ModifyObjectLabel</li>
<li>UserRights/ProfileSingleProcess</li>
<li>UserRights/RemoteShutdown</li>
<li>UserRights/RestoreFilesAndDirectories</li>
<li>UserRights/TakeOwnership</li>
<li>WindowsDefenderSecurityCenter/DisableAccountProtectionUI</li>
<li>WindowsDefenderSecurityCenter/DisableDeviceSecurityUI</li>
<li>WindowsDefenderSecurityCenter/HideRansomwareDataRecovery</li>
<li>WindowsDefenderSecurityCenter/HideSecureBoot</li>
<li>WindowsDefenderSecurityCenter/HideTPMTroubleshooting</li>
</ul>
<p>Added the following policies the were added in Windows 10, version 1709</p>
<ul>
<li>DeviceLock/MinimumPasswordAge</li>
<li>Settings/AllowOnlineTips</li>
<li>System/DisableEnterpriseAuthProxy </li>
</ul>
<p>Security/RequireDeviceEncryption - updated to show it is supported in desktop.</p>
</tr>
<tr class="odd">
<td><a href="bitlocker-csp.md" data-raw-source="[BitLocker CSP](bitlocker-csp.md)">BitLocker CSP</a></td>
<td><p>Updated the description for AllowWarningForOtherDiskEncryption to describe changes added in Windows 10, version 1803.</p>
</td></tr>
<tr class="odd">
<td><a href="enterprisemodernappmanagement-csp.md" data-raw-source="[EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md)">EnterpriseModernAppManagement CSP</a></td>
<td><p>Added new node MaintainProcessorArchitectureOnUpdate in Windows 10, next major update.</p>
</td></tr>
<tr class="odd">
<td><a href="dmclient-csp.md" data-raw-source="[DMClient CSP](dmclient-csp.md)">DMClient CSP</a></td>
<td><p>Added ./User/Vendor/MSFT/DMClient/Provider/[ProviderID]/FirstSyncStatus node. Also added the following nodes in Windows 10, version 1803:</p>
<ul>
<li>AADSendDeviceToken</li>
<li>BlockInStatusPage</li>
<li>AllowCollectLogsButton</li>
<li>CustomErrorText</li>
<li>SkipDeviceStatusPage</li>
<li>SkipUserStatusPage</li>
</ul>
</td></tr>
<tr class="odd">
<td><a href="defender-csp.md" data-raw-source="[Defender CSP](defender-csp.md)">Defender CSP</a></td>
<td><p>Added new node (OfflineScan) in Windows 10, version 1803.</p>
</td></tr>
<tr class="odd">
<td><a href="uefi-csp.md" data-raw-source="[UEFI CSP](uefi-csp.md)">UEFI CSP</a></td>
<td><p>Added a new CSP in Windows 10, version 1803.</p>
</td></tr>
<tr class="odd">
<td><a href="update-csp.md" data-raw-source="[Update CSP](update-csp.md)">Update CSP</a></td>
<td><p>Added the following nodes in Windows 10, version 1803:</p>
<ul>
<li>Rollback</li>
<li>Rollback/FeatureUpdate</li>
<li>Rollback/QualityUpdateStatus</li>
<li>Rollback/FeatureUpdateStatus</li>
</ul>
</td></tr>
</tbody>
</table>

## December 2017

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated article</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="configuration-service-provider-reference.md" data-raw-source="[Configuration service provider reference](configuration-service-provider-reference.md)">Configuration service provider reference</a></td>
<td><p>Added new section <a href="configuration-service-provider-reference.md#csp-ddf-files-download" data-raw-source="[CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download)">CSP DDF files download</a></p>
</td></tr>
</tbody>
</table>

## November 2017

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated article</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td><p>Added the following policies for Windows 10, version 1709:</p>
<ul>
<li>Authentication/AllowFidoDeviceSignon</li>
<li>Cellular/LetAppsAccessCellularData</li>
<li>Cellular/LetAppsAccessCellularData_ForceAllowTheseApps</li>
<li>Cellular/LetAppsAccessCellularData_ForceDenyTheseApps</li>
<li>Cellular/LetAppsAccessCellularData_UserInControlOfTheseApps</li>
<li>Start/HidePeopleBar</li>
<li>Storage/EnhancedStorageDevices</li>
<li>Update/ManagePreviewBuilds</li>
<li>WirelessDisplay/AllowMdnsAdvertisement</li>
<li>WirelessDisplay/AllowMdnsDiscovery</li>
</ul>
<p>Added missing policies from previous releases:</p>
<ul>
<li>Connectivity/DisallowNetworkConnectivityActiveTest</li>
<li>Search/AllowWindowsIndexer</li>
</ul>
</td></tr>
</tbody>
</table>

## October 2017

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated article</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="policy-ddf-file.md" data-raw-source="[Policy DDF file](policy-ddf-file.md)">Policy DDF file</a></td>
<td><p>Updated the DDF content for Windows 10 version 1709. Added a link to the download of Policy DDF for Windows 10, version 1709.</p>
</td></tr>
<tr class="odd">
<td><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td><p>Updated the following policies:</p>
<ul>
<li>Defender/ControlledFolderAccessAllowedApplications - string separator is |.</li>
<li>Defender/ControlledFolderAccessProtectedFolders - string separator is |.</li>
</ul>
</td></tr>
<tr class="even">
<td><a href="euiccs-csp.md" data-raw-source="[eUICCs CSP](euiccs-csp.md)">eUICCs CSP</a></td>
<td><p>Added new CSP in Windows 10, version 1709.</p>
</td></tr>
<tr class="odd">
<td><a href="assignedaccess-csp.md" data-raw-source="[AssignedAccess CSP](assignedaccess-csp.md)">AssignedAccess CSP</a></td>
<td><p>Added SyncML examples for the new Configuration node.</p>
</td></tr>
<tr class="odd">
<td><a href="dmclient-csp.md" data-raw-source="[DMClient CSP](dmclient-csp.md)">DMClient CSP</a></td>
<td><p>Added new nodes to the DMClient CSP in Windows 10, version 1709. Updated the CSP and DDF topics.</p>
</td></tr>
</tbody>
</table>

## September 2017

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated article</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td><p>Added the following new policies for Windows 10, version 1709:</p>
<ul>
<li>Authentication/AllowAadPasswordReset</li>
<li>Handwriting/PanelDefaultModeDocked</li>
<li>Search/AllowCloudSearch</li>
<li>System/LimitEnhancedDiagnosticDataWindowsAnalytics</li>
</ul>
<p>Added new settings to Update/BranchReadinessLevel policy in Windows 10 version 1709.</p>
</td></tr>
<tr class="even">
<td><a href="assignedaccess-csp.md" data-raw-source="[AssignedAccess CSP](assignedaccess-csp.md)">AssignedAccess CSP</a></td>
<td><p>Starting in Windows 10, version 1709, AssignedAccess CSP is also supported in Windows 10 Pro.</p>
</td></tr>
<tr class="odd">
<td>Microsoft Store for Business and Microsoft Store</td>
<td><p>Windows Store for Business name changed to Microsoft Store for Business. Windows Store name changed to Microsoft Store.</p>
</td></tr>
<tr class="even">
<td>The <a href="/openspecs/windows_protocols/ms-mde2/4d7eadd5-3951-4f1c-8159-c39e07cbe692" data-raw-source="[\[MS-MDE2\]: Mobile Device Enrollment Protocol Version 2](/openspecs/windows_protocols/ms-mde2/4d7eadd5-3951-4f1c-8159-c39e07cbe692)">[MS-MDE2]: Mobile Device Enrollment Protocol Version 2</a></td>
<td><p>The Windows 10 enrollment protocol was updated. The following elements were added to the RequestSecurityToken message:</p>
<ul>
<li>UXInitiated - boolean value that indicates whether the enrollment is user initiated from the Settings page. </li>
<li>ExternalMgmtAgentHint - a string the agent uses to give hints the enrollment server may need.</li>
<li>DomainName - fully qualified domain name if the device is domain-joined.</li>
</ul>
<p>For examples, see section 4.3.1 RequestSecurityToken of the MS-MDE2 protocol documentation.</p>
</td></tr>
<tr class="odd">
<td><a href="enterpriseapn-csp.md" data-raw-source="[EnterpriseAPN CSP](enterpriseapn-csp.md)">EnterpriseAPN CSP</a></td>
<td><p>Added a SyncML example.</p>
</td></tr>
<tr class="odd">
<td><a href="vpnv2-csp.md" data-raw-source="[VPNv2 CSP](vpnv2-csp.md)">VPNv2 CSP</a></td>
<td><p>Added RegisterDNS setting in Windows 10, version 1709.</p>
</td></tr>
<tr class="odd">
<td><a href="enroll-a-windows-10-device-automatically-using-group-policy.md" data-raw-source="[Enroll a Windows 10 device automatically using Group Policy](enroll-a-windows-10-device-automatically-using-group-policy.md)">Enroll a Windows 10 device automatically using Group Policy</a></td>
<td><p>Added new topic to introduce a new Group Policy for automatic MDM enrollment.</p>
</td></tr>
<tr class="odd">
<td><a href="mdm-enrollment-of-windows-devices.md" data-raw-source="[MDM enrollment of Windows-based devices](mdm-enrollment-of-windows-devices.md)">MDM enrollment of Windows-based devices</a></td>
<td><p>New features in the Settings app:</p>
<ul>
<li>User sees installation progress of critical policies during MDM enrollment.</li>
<li>User knows what policies, profiles, apps MDM has configured</li>
<li>IT helpdesk can get detailed MDM diagnostic information using client tools</li>
</ul>
<p>For details, see <a href="mdm-enrollment-of-windows-devices.md#manage-connections" data-raw-source="[Manage connections](mdm-enrollment-of-windows-devices.md#manage-connections)">Managing connections</a> and <a href="mdm-enrollment-of-windows-devices.md#collecting-diagnostic-logs" data-raw-source="[Collecting diagnostic logs](mdm-enrollment-of-windows-devices.md#collecting-diagnostic-logs)">Collecting diagnostic logs</a></p>
</td></tr>
</tbody>
</table>

## August 2017

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated article</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="enable-admx-backed-policies-in-mdm.md" data-raw-source="[Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md)">Enable ADMX-backed policies in MDM</a></td>
<td><p>Added new step-by-step guide to enable ADMX-backed policies.</p>
</td></tr>
<tr class="odd">
<td><a href="mobile-device-enrollment.md" data-raw-source="[Mobile device enrollment](mobile-device-enrollment.md)">Mobile device enrollment</a></td>
<td><p>Added the following statement:</p>
<ul>
<li>Devices that are joined to an on-premises Active Directory can enroll into MDM via the Work access page in <strong>Settings</strong>. However, the enrollment can only target the user enrolled with user-specific policies. Device targeted policies will continue to impact all users of the device.</li>
</ul>
</td></tr>
<tr class="odd">
<td><a href="cm-cellularentries-csp.md" data-raw-source="[CM\_CellularEntries CSP](cm-cellularentries-csp.md)">CM_CellularEntries CSP</a></td>
<td><p>Updated the description of the PuposeGroups node to add the GUID for applications. This node is required instead of optional.</p>
</td></tr>
<tr class="odd">
<td><a href="enterprisedataprotection-csp.md" data-raw-source="[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)">EnterpriseDataProtection CSP</a></td>
<td><p>Updated the Settings/EDPEnforcementLevel values to the following:</p>
<ul>
<li> 0 (default) – Off / No protection (decrypts previously protected data).</li>
<li>  1 – Silent mode (encrypt and audit only).</li>
<li>  2 – Allow override mode (encrypt, prompt and allow overrides, and audit).</li>
<li>  3 – Hides overrides (encrypt, prompt but hide overrides, and audit).</li>
</ul>
</td></tr>
<tr class="odd">
<td><a href="applocker-csp.md" data-raw-source="[AppLocker CSP](applocker-csp.md)">AppLocker CSP</a></td>
<td><p>Added two new SyncML examples (to disable the calendar app and to block usage of the map app) in <a href="applocker-csp.md#allow-list-examples" data-raw-source="[Allowlist examples](applocker-csp.md#allow-list-examples)">Allow list examples</a>.</p>
</td></tr>
<tr class="odd">
<td><a href="devicemanageability-csp.md" data-raw-source="[DeviceManageability CSP](devicemanageability-csp.md)">DeviceManageability CSP</a></td>
<td><p>Added the following settings in Windows 10, version 1709:</p>
<ul>
<li>Provider/<em>ProviderID</em>/ConfigInfo</li>
<li> Provider/<em>ProviderID</em>/EnrollmentInfo</li>
</ul>
</td></tr>
<tr class="odd">
<td><a href="office-csp.md" data-raw-source="[Office CSP](office-csp.md)">Office CSP</a></td>
<td><p>Added the following setting in Windows 10, version 1709:</p>
<ul>
<li>Installation/CurrentStatus</li>
</ul>
</td></tr>
<tr class="odd">
<td><a href="bitlocker-csp.md" data-raw-source="[BitLocker CSP](bitlocker-csp.md)">BitLocker CSP</a></td>
<td>Added information to the ADMX-backed policies. Changed the minimum personal identification number (PIN) length to 4 digits in SystemDrivesRequireStartupAuthentication and SystemDrivesMinimumPINLength in Windows 10, version 1709.
</td></tr>
<tr class="odd">
<td><a href="firewall-csp.md" data-raw-source="[Firewall CSP](firewall-csp.md)">Firewall CSP</a></td>
<td>Updated the CSP and DDF topics. Here are the changes:
<ul>
<li>Removed the two settings - FirewallRules/FirewallRuleName/FriendlyName and FirewallRules/FirewallRuleName/IcmpTypesAndCodes.</li>
<li>Changed some data types from integer to bool.</li>
<li>Updated the list of supported operations for some settings.</li>
<li>Added default values.</li>
</ul>
</td></tr>
<tr class="odd">
<td><a href="policy-ddf-file.md" data-raw-source="[Policy DDF file](policy-ddf-file.md)">Policy DDF file</a></td>
<td>Added another Policy DDF file <a href="https://download.microsoft.com/download/6/1/C/61C022FD-6F5D-4F73-9047-17F630899DC4/PolicyDDF_all_version1607_8C.xml" data-raw-source="[download](https://download.microsoft.com/download/6/1/C/61C022FD-6F5D-4F73-9047-17F630899DC4/PolicyDDF_all_version1607_8C.xml)">download</a> for the 8C release of Windows 10, version 1607, which added the following policies:
<ul>
<li>Browser/AllowMicrosoftCompatibilityList</li>
<li>Update/DisableDualScan</li>
<li>Update/FillEmptyContentUrls</li>
</ul>
</td></tr>
<tr class="even">
<td><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td><p>Added the following new policies for Windows 10, version 1709:</p>
<ul>
<li>Browser/ProvisionFavorites</li>
<li>Browser/LockdownFavorites</li>
<li>ExploitGuard/ExploitProtectionSettings</li>
<li>Games/AllowAdvancedGamingServices</li>
<li>LocalPoliciesSecurityOptions/Accounts_BlockMicrosoftAccounts</li>
<li>LocalPoliciesSecurityOptions/Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly</li>
<li>LocalPoliciesSecurityOptions/Accounts_RenameAdministratorAccount</li>
<li>LocalPoliciesSecurityOptions/Accounts_RenameGuestAccount</li>
<li>LocalPoliciesSecurityOptions/InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked</li>
<li>LocalPoliciesSecurityOptions/Interactivelogon_DoNotDisplayLastSignedIn</li>
<li>LocalPoliciesSecurityOptions/Interactivelogon_DoNotDisplayUsernameAtSignIn</li>
<li>LocalPoliciesSecurityOptions/Interactivelogon_DoNotRequireCTRLALTDEL</li>
<li>LocalPoliciesSecurityOptions/InteractiveLogon_MachineInactivityLimit</li>
<li>LocalPoliciesSecurityOptions/InteractiveLogon_MessageTextForUsersAttemptingToLogOn</li>
<li>LocalPoliciesSecurityOptions/InteractiveLogon_MessageTitleForUsersAttemptingToLogOn</li>
<li>LocalPoliciesSecurityOptions/NetworkSecurity_AllowPKU2UAuthenticationRequests</li>
<li>LocalPoliciesSecurityOptions/Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn</li>
<li>LocalPoliciesSecurityOptions/UserAccountControl_AllowUIAccessApplicationsToPromptForElevation</li>
<li>LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForAdministrators</li>
<li>LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers</li>
<li>LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated</li>
<li>LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations</li>
<li>LocalPoliciesSecurityOptions/UserAccountControl_RunAllAdministratorsInAdminApprovalMode</li>
<li>LocalPoliciesSecurityOptions/UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation</li>
<li>LocalPoliciesSecurityOptions/UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations</li>
<li>Privacy/EnableActivityFeed</li>
<li>Privacy/PublishUserActivities</li>
<li>Update/DisableDualScan</li>
<li>Update/AllowAutoWindowsUpdateDownloadOverMeteredNetwork</li>
</ul>
<p>Changed the name of new policy to CredentialProviders/DisableAutomaticReDeploymentCredentials from CredentialProviders/EnableWindowsAutopilotResetCredentials.</p>
<p>Changed the names of the following policies:</p>
<ul>
<li>Defender/GuardedFoldersAllowedApplications to Defender/ControlledFolderAccessAllowedApplications</li>
<li>Defender/GuardedFoldersList to Defender/ControlledFolderAccessProtectedFolders</li>
<li>Defender/EnableGuardMyFolders to Defender/EnableControlledFolderAccess</li>
</ul>
<p>Added links to the additional <a href="policy-csp-bitlocker.md" data-raw-source="[ADMX-backed BitLocker policies](policy-csp-bitlocker.md)">ADMX-backed BitLocker policies</a>.</p>
<p>There were issues reported with the previous release of the following policies. These issues were fixed in Window 10, version 1709:</p>
<ul>
<li>Privacy/AllowAutoAcceptPairingAndPrivacyConsentPrompts</li>
<li>Start/HideAppList</li>
</ul>
</td></tr>
</tbody>
</table>