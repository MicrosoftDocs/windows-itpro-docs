---
title: Change history for MDM documentation
description: This article lists new and updated articles for Mobile Device Management.
author: vinaypamnani-msft
ms.author: vinpa
ms.reviewer: 
manager: aaroncz
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
ms.localizationpriority: medium
ms.date: 11/06/2020
---

# Change history for Mobile Device Management documentation

As of November 2020 This page will no longer be updated. This article lists new and updated articles for the Mobile Device Management (MDM) documentation. Updated articles are those articles that had content addition, removal, or corrections—minor fixes, such as correction of typos, style, or formatting issues aren't listed.

## November 2020

|New or updated article | Description|
|--- | ---|
| [Policy CSP](mdm/policy-configuration-service-provider.md) | Added the following new policy:<br>- [Multitasking/BrowserAltTabBlowout](mdm/policy-csp-multitasking.md#multitasking-browseralttabblowout) |
| [SurfaceHub CSP](mdm/surfacehub-csp.md) | Added the following new node:<br>-Properties/SleepMode |

## October 2020

|New or updated article | Description|
|--- | ---|
| [Policy CSP](mdm/policy-configuration-service-provider.md) | Added the following new policies<br>- [Experience/DisableCloudOptimizedContent](mdm/policy-csp-experience.md#experience-disablecloudoptimizedcontent)<br>- [LocalUsersAndGroups/Configure](mdm/policy-csp-localusersandgroups.md#localusersandgroups-configure)<br>- [MixedReality/AADGroupMembershipCacheValidityInDays](mdm/policy-csp-mixedreality.md#mixedreality-aadgroupmembershipcachevalidityindays)<br>- [MixedReality/BrightnessButtonDisabled](mdm/policy-csp-mixedreality.md#mixedreality-brightnessbuttondisabled)<br>- [MixedReality/FallbackDiagnostics](mdm/policy-csp-mixedreality.md#mixedreality-fallbackdiagnostics)<br>- [MixedReality/MicrophoneDisabled](mdm/policy-csp-mixedreality.md#mixedreality-microphonedisabled)<br>- [MixedReality/VolumeButtonDisabled](mdm/policy-csp-mixedreality.md#mixedreality-volumebuttondisabled)<br>- [Update/DisableWUfBSafeguards](mdm/policy-csp-update.md#update-disablewufbsafeguards)<br>- [WindowsSandbox/AllowAudioInput](mdm/policy-csp-windowssandbox.md#windowssandbox-allowaudioinput)<br>- [WindowsSandbox/AllowClipboardRedirection](mdm/policy-csp-windowssandbox.md#windowssandbox-allowclipboardredirection)<br>- [WindowsSandbox/AllowNetworking](mdm/policy-csp-windowssandbox.md#windowssandbox-allownetworking)<br>- [WindowsSandbox/AllowPrinterRedirection](mdm/policy-csp-windowssandbox.md#windowssandbox-allowprinterredirection)<br>- [WindowsSandbox/AllowVGPU](mdm/policy-csp-windowssandbox.md#windowssandbox-allowvgpu)<br>- [WindowsSandbox/AllowVideoInput](mdm/policy-csp-windowssandbox.md#windowssandbox-allowvideoinput) |

## September 2020

|New or updated article | Description|
|--- | ---|
|[NetworkQoSPolicy CSP](mdm/networkqospolicy-csp.md)|Updated support information of the NetworkQoSPolicy CSP.|
|[Policy CSP - LocalPoliciesSecurityOptions](mdm/policy-csp-localpoliciessecurityoptions.md)|Removed the following unsupported LocalPoliciesSecurityOptions policy settings from the documentation:<br>- RecoveryConsole_AllowAutomaticAdministrativeLogon <br>- DomainMember_DigitallyEncryptOrSignSecureChannelDataAlways<br>- DomainMember_DigitallyEncryptSecureChannelDataWhenPossible<br>- DomainMember_DisableMachineAccountPasswordChanges<br>- SystemObjects_RequireCaseInsensitivityForNonWindowsSubsystems<br>|

## August 2020

|New or updated article | Description|
|--- | ---|
|[Policy CSP - System](mdm/policy-csp-system.md)|Removed the following policy settings:<br> - System/AllowDesktopAnalyticsProcessing <br>- System/AllowMicrosoftManagedDesktopProcessing <br> - System/AllowUpdateComplianceProcessing<br> - System/AllowWUfBCloudProcessing <br>|

## July 2020

|New or updated article | Description|
|--- | ---|
|[Policy CSP - System](mdm/policy-csp-system.md)|Added the following new policy settings:<br>  - System/AllowDesktopAnalyticsProcessing <br>- System/AllowMicrosoftManagedDesktopProcessing <br> - System/AllowUpdateComplianceProcessing<br> - System/AllowWUfBCloudProcessing <br> <br><br>Updated the following policy setting:<br>-  <a href="mdm/policy-csp-system.md#system-allowcommercialdatapipeline" id="system-allowcommercialdatapipeline">System/AllowCommercialDataPipeline</a> <br>|

## June 2020

|New or updated article | Description|
|--- | ---|
|[BitLocker CSP](mdm/bitlocker-csp.md)|Added SKU support table for **AllowStandardUserEncryption**.|
|[Policy CSP - NetworkIsolation](mdm/policy-csp-networkisolation.md)|Updated the description from Boolean to Integer for the following policy settings:<br>EnterpriseIPRangesAreAuthoritative, EnterpriseProxyServersAreAuthoritative.|

## May 2020

|New or updated article | Description|
|--- | ---|
|[BitLocker CSP](mdm/bitlocker-csp.md)|Added the bitmask table for the Status/DeviceEncryptionStatus node.|
|[Policy CSP - RestrictedGroups](mdm/policy-csp-restrictedgroups.md)| Updated the topic with more details. Added policy timeline table.

## February 2020

|New or updated article | Description|
|--- | ---|
|[CertificateStore CSP](mdm/certificatestore-csp.md)<br>[ClientCertificateInstall CSP](mdm/clientcertificateinstall-csp.md)|Added details about SubjectName value.|

## January 2020

|New or updated article | Description|
|--- | ---|
|[Policy CSP - Defender](mdm/policy-csp-defender.md)|Added descriptions for supported actions for Defender/ThreatSeverityDefaultAction.|

## November 2019

|New or updated article | Description|
|--- | ---|
|[Policy CSP - DeliveryOptimization](mdm/policy-csp-deliveryoptimization.md)|Added option 5 in the supported values list for DeliveryOptimization/DOGroupIdSource.|
|[DiagnosticLog CSP](mdm/diagnosticlog-csp.md)|Added substantial updates to this CSP doc.|

## October 2019

|New or updated article | Description|
|--- | ---|
|[BitLocker CSP](mdm/bitlocker-csp.md)|Added the following new nodes:<br>ConfigureRecoveryPasswordRotation, RotateRecoveryPasswords, RotateRecoveryPasswordsStatus, RotateRecoveryPasswordsRequestID.|
|[Defender CSP](mdm/defender-csp.md)|Added the following new nodes:<br>Health/TamperProtectionEnabled, Health/IsVirtualMachine, Configuration, Configuration/TamperProtection, Configuration/EnableFileHashComputation.|

## September 2019

|New or updated article | Description|
|--- | ---|
|[EnterpriseModernAppManagement CSP](mdm/enterprisemodernappmanagement-csp.md)|Added the following new node:<br>IsStub.|
|[Policy CSP - Defender](mdm/policy-csp-defender.md)|Updated the supported value list for Defender/ScheduleScanDay policy.|
|[Policy CSP - DeviceInstallation](mdm/policy-csp-deviceinstallation.md)|Added the following new policies: <br>DeviceInstallation/AllowInstallationOfMatchingDeviceInstanceIDs, DeviceInstallation/PreventInstallationOfMatchingDeviceInstanceIDs.|

## August 2019

|New or updated article | Description|
|--- | ---|
|[DiagnosticLog CSP](mdm/diagnosticlog-csp.md)<br>[DiagnosticLog DDF](mdm/diagnosticlog-ddf.md)|Added version 1.4 of the CSP in Windows 10, version 1903. Added the new 1.4 version of the DDF. Added the following new nodes:<br>Policy, Policy/Channels, Policy/Channels/ChannelName, Policy/Channels/ChannelName/MaximumFileSize, Policy/Channels/ChannelName/SDDL, Policy/Channels/ChannelName/ActionWhenFull, Policy/Channels/ChannelName/Enabled, DiagnosticArchive, DiagnosticArchive/ArchiveDefinition, DiagnosticArchive/ArchiveResults.|
|[Enroll a Windows 10 device automatically using Group Policy](enroll-a-windows-10-device-automatically-using-group-policy.md)|Enhanced the article to include more reference links and the following two topics:<br>Verify auto-enrollment requirements and settings, Troubleshoot auto-enrollment of devices.|

## July 2019

|New or updated article | Description|
|--- | ---|
|[Policy CSP](mdm/policy-configuration-service-provider.md)|Added the following list:<br>Policies supported by HoloLens 2|
|[ApplicationControl CSP](mdm/applicationcontrol-csp.md)|Added new CSP in Windows 10, version 1903.|
|[PassportForWork CSP](mdm/passportforwork-csp.md)|Added the following new nodes in Windows 10, version 1903:<br>SecurityKey, SecurityKey/UseSecurityKeyForSignin|
|[Policy CSP - Privacy](mdm/policy-csp-privacy.md)|Added the following new policies:<br>LetAppsActivateWithVoice, LetAppsActivateWithVoiceAboveLock|
|Create a custom configuration service provider|Deleted the following documents from the CSP reference because extensibility via CSPs isn't currently supported:<br>Create a custom configuration service provider<br>Design a custom configuration service provider<br>IConfigServiceProvider2<br>IConfigServiceProvider2::ConfigManagerNotification<br>IConfigServiceProvider2::GetNode<br>ICSPNode<br>ICSPNode::Add<br>ICSPNode::Clear<br>ICSPNode::Copy<br>ICSPNode::DeleteChild<br>ICSPNode::DeleteProperty<br>ICSPNode::Execute<br>ICSPNode::GetChildNodeNames<br>ICSPNode::GetProperty<br>ICSPNode::GetPropertyIdentifiers<br>ICSPNode::GetValue<br>ICSPNode::Move<br>ICSPNode::SetProperty<br>ICSPNode::SetValue<br>ICSPNodeTransactioning<br>ICSPValidate<br>Samples for writing a custom configuration service provider.|

## June 2019

|New or updated article | Description|
|--- | ---|
|[Policy CSP - DeviceHealthMonitoring](mdm/policy-csp-devicehealthmonitoring.md)|Added the following new policies:<br>AllowDeviceHealthMonitoring, ConfigDeviceHealthMonitoringScope, ConfigDeviceHealthMonitoringUploadDestination.|
|[Policy CSP - TimeLanguageSettings](mdm/policy-csp-timelanguagesettings.md)|Added the following new policy:<br>ConfigureTimeZone.|

## May 2019

|New or updated article | Description|
|--- | ---|
|[DeviceStatus CSP](mdm/devicestatus-csp.md)|Updated description of the following nodes:<br>DeviceStatus/Antivirus/SignatureStatus, DeviceStatus/Antispyware/SignatureStatus.|
|[EnrollmentStatusTracking CSP](mdm/enrollmentstatustracking-csp.md)|Added new CSP in Windows 10, version 1903.|
|[Policy CSP - DeliveryOptimization](mdm/policy-csp-deliveryoptimization.md)|Added the following new policies:<br> DODelayCacheServerFallbackBackground, DODelayCacheServerFallbackForeground.<br><br>Updated description of the following policies:<br>DOMinRAMAllowedToPeer, DOMinFileSizeToCache, DOMinDiskSizeAllowedToPeer.|
|[Policy CSP - Experience](mdm/policy-csp-experience.md)|Added the following new policy:<br>ShowLockOnUserTile.|
|[Policy CSP - InternetExplorer](mdm/policy-csp-internetexplorer.md)|Added the following new policies:<br>AllowEnhancedSuggestionsInAddressBar, DisableActiveXVersionListAutoDownload, DisableCompatView, DisableFeedsBackgroundSync, DisableGeolocation, DisableWebAddressAutoComplete, NewTabDefaultPage.|
|[Policy CSP - Power](mdm/policy-csp-power.md)|Added the following new policies:<br>EnergySaverBatteryThresholdOnBattery, EnergySaverBatteryThresholdPluggedIn, SelectLidCloseActionOnBattery, SelectLidCloseActionPluggedIn, SelectPowerButtonActionOnBattery, SelectPowerButtonActionPluggedIn, SelectSleepButtonActionOnBattery, SelectSleepButtonActionPluggedIn, TurnOffHybridSleepOnBattery, TurnOffHybridSleepPluggedIn, UnattendedSleepTimeoutOnBattery, UnattendedSleepTimeoutPluggedIn.|
|[Policy CSP - Search](mdm/policy-csp-search.md)|Added the following new policy:<br>AllowFindMyFiles.|
|[Policy CSP - ServiceControlManager](mdm/policy-csp-servicecontrolmanager.md)|Added the following new policy:<br>SvchostProcessMitigation.|
|[Policy CSP - System](mdm/policy-csp-system.md)|Added the following new policies:<br>AllowCommercialDataPipeline, TurnOffFileHistory.|
|[Policy CSP - Troubleshooting](mdm/policy-csp-troubleshooting.md)|Added the following new policy:<br>AllowRecommendations.|
|[Policy CSP - Update](mdm/policy-csp-update.md)|Added the following new policies:<br>AutomaticMaintenanceWakeUp, ConfigureDeadlineForFeatureUpdates, ConfigureDeadlineForQualityUpdates, ConfigureDeadlineGracePeriod, ConfigureDeadlineNoAutoReboot.|
|[Policy CSP - WindowsLogon](mdm/policy-csp-windowslogon.md)|Added the following new policies:<br>AllowAutomaticRestartSignOn, ConfigAutomaticRestartSignOn, EnableFirstLogonAnimation.<br><br>Removed the following policy:<br>SignInLastInteractiveUserAutomaticallyAfterASystemInitiatedRestart. This policy is replaced by AllowAutomaticRestartSignOn.|

## April 2019

|                                         New or updated article                                          |                                                                                                                                                                                                          Description                                                                                                                                                                                                          |
|-------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Win32 and Desktop Bridge app policy configuration](win32-and-centennial-app-policy-configuration.md) | Added the following warning at the end of the Overview section:<br>Some operating system components have built in functionality to check devices for domain membership. MDM enforces the configured policy values only if the devices are domain joined, otherwise it doesn't. However, you can still import ADMX files and set ADMX-backed policies regardless of whether the device is domain joined or non-domain joined. |
|                          [Policy CSP - UserRights](mdm/policy-csp-userrights.md)                          |                                                                                                                                  Added a note stating if you use Intune custom profiles to assign UserRights policies, you must use the CDATA tag (<![CDATA[...]]>) to wrap the data fields.                                                                                                                                  |

## March 2019

|New or updated article | Description|
|--- | ---|
|[Policy CSP - Storage](mdm/policy-csp-storage.md)|Updated ADMX Info of the following policies:<br>AllowStorageSenseGlobal, AllowStorageSenseTemporaryFilesCleanup, ConfigStorageSenseCloudContentDehydrationThreshold, ConfigStorageSenseDownloadsCleanupThreshold, ConfigStorageSenseGlobalCadence, ConfigStorageSenseRecycleBinCleanupThreshold. <br><br>Updated description of ConfigStorageSenseDownloadsCleanupThreshold.|

## February 2019

|New or updated article | Description|
|--- | ---|
|[Policy CSP](mdm/policy-configuration-service-provider.md)|Updated supported policies for Holographic.|

## January 2019

|New or updated article | Description|
|--- | ---|
|[Policy CSP - Storage](mdm/policy-csp-storage.md)|Added the following new policies: AllowStorageSenseGlobal, ConfigStorageSenseGlobalCadence, AllowStorageSenseTemporaryFilesCleanup, ConfigStorageSenseRecycleBinCleanupThreshold, ConfigStorageSenseDownloadsCleanupThreshold, and ConfigStorageSenseCloudContentCleanupThreshold.|
|[SharedPC CSP](mdm/sharedpc-csp.md)|Updated values and supported operations.|
|[Mobile device management](mdm/index.yml)|Updated information about MDM Security Baseline.|

## December 2018

|New or updated article | Description|
|--- | ---|
|[BitLocker CSP](mdm/bitlocker-csp.md)|Updated AllowWarningForOtherDiskEncryption policy description to describe silent and non-silent encryption scenarios, as well as where and how the recovery key is backed up for each scenario.|

## September 2018

|New or updated article | Description|
|--- | ---|
|[Policy CSP - DeviceGuard](mdm/policy-csp-deviceguard.md) | Updated ConfigureSystemGuardLaunch policy and replaced EnableSystemGuard with it.|

## August 2018

|New or updated article|Description|
|--- |--- |
|[BitLocker CSP](mdm/bitlocker-csp.md)|Added support for Windows 10 Pro starting in the version 1809.|
|[Office CSP](mdm/office-csp.md)|Added FinalStatus setting in Windows 10, version 1809.|
|[RemoteWipe CSP](mdm/remotewipe-csp.md)|Added new settings in Windows 10, version 1809.|
|[TenantLockdown CSP](mdm/tenantlockdown-csp.md)|Added new CSP in Windows 10, version 1809.|
|[WindowsDefenderApplicationGuard CSP](mdm/windowsdefenderapplicationguard-csp.md)|Added new settings in Windows 10, version 1809.|
|[Policy DDF file](mdm/policy-ddf-file.md)|Posted an updated version of the Policy DDF for Windows 10, version 1809.|
|[Policy CSP](mdm/policy-configuration-service-provider.md)|Added the following new policies in Windows 10, version 1809:<li>Browser/AllowFullScreenMode<li>Browser/AllowPrelaunch<li>Browser/AllowPrinting<li>Browser/AllowSavingHistory<li>Browser/AllowSideloadingOfExtensions<li>Browser/AllowTabPreloading<li>Browser/AllowWebContentOnNewTabPage<li>Browser/ConfigureFavoritesBar<li>Browser/ConfigureHomeButton<li>Browser/ConfigureKioskMode<li>Browser/ConfigureKioskResetAfterIdleTimeout<li>Browser/ConfigureOpenMicrosoftEdgeWith<li>Browser/ConfigureTelemetryForMicrosoft365Analytics<li>Browser/PreventCertErrorOverrides<li>Browser/SetHomeButtonURL<li>Browser/SetNewTabPageURL<li>Browser/UnlockHomeButton<li>Experience/DoNotSyncBrowserSettings<li>Experience/PreventUsersFromTurningOnBrowserSyncing<li>Kerberos/UPNNameHints<li>Privacy/AllowCrossDeviceClipboard<li>Privacy<li>DisablePrivacyExperience<li>Privacy/UploadUserActivities<li>System/AllowDeviceNameInDiagnosticData<li>System/ConfigureMicrosoft365UploadEndpoint<li>System/DisableDeviceDelete<li>System/DisableDiagnosticDataViewer<li>Storage/RemovableDiskDenyWriteAccess<li>Update/UpdateNotificationLevel<br/><br/>Start/DisableContextMenus - added in Windows 10, version 1803.<br/><br/>RestrictedGroups/ConfigureGroupMembership - added new schema to apply and retrieve the policy.|

## July 2018

|New or updated article|Description|
|--- |--- |
|[AssignedAccess CSP](mdm/assignedaccess-csp.md)|Added the following note:<br/><br/>You can only assign one single app kiosk profile to an individual user account on a device. The single app profile doesn't support domain groups.|
|[PassportForWork  CSP](mdm/passportforwork-csp.md)|Added new settings in Windows 10, version 1809.|
|[EnterpriseModernAppManagement  CSP](mdm/enterprisemodernappmanagement-csp.md)|Added NonRemovable setting under AppManagement node in Windows 10, version 1809.|
|[Win32CompatibilityAppraiser  CSP](mdm/win32compatibilityappraiser-csp.md)|Added new configuration service provider in Windows 10, version 1809.|
|[WindowsLicensing  CSP](mdm/windowslicensing-csp.md)|Added S mode settings and SyncML examples in Windows 10, version 1809.|
|[SUPL CSP](mdm/supl-csp.md)|Added three new certificate nodes in Windows 10, version 1809.|
|[Defender CSP](mdm/defender-csp.md)|Added a new node Health/ProductStatus in Windows 10, version 1809.|
|[BitLocker CSP](mdm/bitlocker-csp.md)|Added a new node AllowStandardUserEncryption in Windows 10, version 1809.|
|[DevDetail CSP](mdm/devdetail-csp.md)|Added a new node SMBIOSSerialNumber in Windows 10, version 1809.|
|[Policy CSP](mdm/policy-configuration-service-provider.md)|Added the following new policies in Windows 10, version 1809:<li>ApplicationManagement/LaunchAppAfterLogOn<li>ApplicationManagement/ScheduleForceRestartForUpdateFailures <li>Authentication/EnableFastFirstSignIn (Preview mode only)<li>Authentication/EnableWebSignIn (Preview mode only)<li>Authentication/PreferredAadTenantDomainName<li>Defender/CheckForSignaturesBeforeRunningScan<li>Defender/DisableCatchupFullScan <li>Defender/DisableCatchupQuickScan <li>Defender/EnableLowCPUPriority<li>Defender/SignatureUpdateFallbackOrder<li>Defender/SignatureUpdateFileSharesSources<li>DeviceGuard/ConfigureSystemGuardLaunch<li>DeviceInstallation/AllowInstallationOfMatchingDeviceIDs<li>DeviceInstallation/AllowInstallationOfMatchingDeviceSetupClasses<li>DeviceInstallation/PreventDeviceMetadataFromNetwork<li>DeviceInstallation/PreventInstallationOfDevicesNotDescribedByOtherPolicySettings<li>DmaGuard/DeviceEnumerationPolicy<li>Experience/AllowClipboardHistory<li>Security/RecoveryEnvironmentAuthentication<li>TaskManager/AllowEndTask<li>WindowsDefenderSecurityCenter/DisableClearTpmButton<li>WindowsDefenderSecurityCenter/DisableTpmFirmwareUpdateWarning<li>WindowsDefenderSecurityCenter/HideWindowsSecurityNotificationAreaControl<li>WindowsLogon/DontDisplayNetworkSelectionUI<br/><br/>Recent changes:<li>DataUsage/SetCost3G - deprecated in Windows 10, version 1809.|

## June 2018

|New or updated article|Description|
|--- |--- |
|[Wifi CSP](mdm/wifi-csp.md)|Added a new node WifiCost in Windows 10, version 1809.|
|[Diagnose MDM failures in Windows 10](diagnose-mdm-failures-in-windows-10.md)|Recent changes:<li>Added procedure for collecting logs remotely from Windows 10 Holographic.<li>Added procedure for downloading the MDM Diagnostic Information log.|
|[BitLocker CSP](mdm/bitlocker-csp.md)|Added new node AllowStandardUserEncryption in Windows 10, version 1809.|
|[Policy CSP](mdm/policy-configuration-service-provider.md)|Recent changes:<li>AccountPoliciesAccountLockoutPolicy<li>AccountLockoutDuration - removed from docs. Not supported.<li>AccountPoliciesAccountLockoutPolicy/AccountLockoutThreshold - removed from docs. Not supported.<li>AccountPoliciesAccountLockoutPolicy/ResetAccountLockoutCounterAfter - removed from docs. Not supported.<li>LocalPoliciesSecurityOptions/NetworkAccess_LetEveryonePermissionsApplyToAnonymousUsers - removed from docs. Not supported.<li>System/AllowFontProviders isn't supported in HoloLens (first gen) Commercial Suite.<li>Security/RequireDeviceEncryption is supported in the Home SKU.<li>Start/StartLayout - added a table of SKU support information.<li>Start/ImportEdgeAssets - added a table of SKU support information.<br/><br/>Added the following new policies in Windows 10, version 1809:<li>Update/EngagedRestartDeadlineForFeatureUpdates<li>Update/EngagedRestartSnoozeScheduleForFeatureUpdates<li>Update/EngagedRestartTransitionScheduleForFeatureUpdates<li>Update/SetDisablePauseUXAccess<li>Update/SetDisableUXWUAccess|
|[WiredNetwork CSP](mdm/wirednetwork-csp.md)|New CSP added in Windows 10, version 1809.|

## May 2018

|New or updated article|Description|
|--- |--- |
|[Policy DDF file](mdm/policy-ddf-file.md)|Updated the DDF files in the Windows 10 version 1703 and 1709.<li>[Download the Policy DDF file for Windows 10, version 1709](https://download.microsoft.com/download/8/C/4/8C43C116-62CB-470B-9B69-76A3E2BC32A8/PolicyDDF_all.xml)<li>[Download the Policy DDF file for Windows 10, version 1703](https://download.microsoft.com/download/7/2/C/72C36C37-20F9-41BF-8E23-721F6FFC253E/PolicyDDF_all.xml)|

## April 2018

|New or updated article|Description|
|--- |--- |
|[WindowsDefenderApplicationGuard CSP](mdm/windowsdefenderapplicationguard-csp.md)|Added the following node in Windows 10, version 1803:<li>Settings/AllowVirtualGPU<li>Settings/SaveFilesToHost|
|[NetworkProxy CSP](mdm/networkproxy-csp.md)|Added the following node in Windows 10, version 1803:<li>ProxySettingsPerUser|
|[Accounts CSP](mdm/accounts-csp.md)|Added a new CSP in Windows 10, version 1803.|
|[CSP DDF files download](mdm/configuration-service-provider-ddf.md)|Added the DDF download of Windows 10, version 1803 configuration service providers.|
|[Policy CSP](mdm/policy-configuration-service-provider.md)|Added the following new policies for Windows 10, version 1803:<li>Bluetooth/AllowPromptedProximalConnections<li>KioskBrowser/EnableEndSessionButton<li>LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication<li>LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic<li>LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic<li>LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers|

## March 2018

|New or updated article|Description|
|--- |--- |
|[eUICCs CSP](mdm/euiccs-csp.md)|Added the following node in Windows 10, version 1803:<li>IsEnabled|
|[DeviceStatus CSP](mdm/devicestatus-csp.md)|Added the following node in Windows 10, version 1803:<li>OS/Mode|
|[Understanding ADMX-backed policies](understanding-admx-backed-policies.md)|Added the following videos:<li>[How to create a custom xml to enable an ADMX-backed policy and deploy the XML in Intune](https://www.microsoft.com/showcase/video.aspx?uuid=bdc9b54b-11b0-4bdb-a022-c339d16e7121)<li>[How to import a custom ADMX file to a device using Intune](https://www.microsoft.com/showcase/video.aspx?uuid=a59888b1-429f-4a49-8570-c39a143d9a73)|
|[AccountManagement CSP](mdm/accountmanagement-csp.md)|Added a new CSP in Windows 10, version 1803.|
|[RootCATrustedCertificates CSP](mdm/rootcacertificates-csp.md)|Added the following node in Windows 10, version 1803:<li>UntrustedCertificates|
|[Policy CSP](mdm/policy-configuration-service-provider.md)|Added the following new policies for Windows 10, version 1803:<li>ApplicationDefaults/EnableAppUriHandlers<li>ApplicationManagement/MSIAllowUserControlOverInstall<li>ApplicationManagement/MSIAlwaysInstallWithElevatedPrivileges<li>Connectivity/AllowPhonePCLinking<li>Notifications/DisallowCloudNotification<li>Notifications/DisallowTileNotification<li>RestrictedGroups/ConfigureGroupMembership<br/><br/>The following existing policies were updated:<li>Browser/AllowCookies - updated the supported values. There are three values - 0, 1, 2.<li>InternetExplorer/AllowSiteToZoneAssignmentList - updated the description and added an example SyncML<li>TextInput/AllowIMENetworkAccess - introduced new suggestion services in Japanese IME in addition to cloud suggestion.<br/><br/>Added a new section:<li>[[Policies in Policy CSP supported by Group Policy](mdm/policies-in-policy-csp-supported-by-group-policy.md) - list of policies in Policy CSP that has corresponding Group Policy. The policy description contains the GP information, such as GP policy name and variable name.|
|[Policy CSP - Bluetooth](mdm/policy-csp-bluetooth.md)|Added new section [ServicesAllowedList usage guide](mdm/policy-csp-bluetooth.md#servicesallowedlist-usage-guide).|
|[MultiSIM CSP](mdm/multisim-csp.md)|Added SyncML examples and updated the settings descriptions.|
|[RemoteWipe CSP](mdm/remotewipe-csp.md)|Reverted back to Windows 10, version 1709. Removed previous draft documentation for version 1803.|

## February 2018

|New or updated article|Description|
|--- |--- |
|[Policy CSP](mdm/policy-configuration-service-provider.md)|Added the following new policies for Windows 10, version 1803:<li>Display/DisablePerProcessDpiForApps<li>Display/EnablePerProcessDpi<li>Display/EnablePerProcessDpiForApps<li>Experience/AllowWindowsSpotlightOnSettings<li>TextInput/ForceTouchKeyboardDockedState<li>TextInput/TouchKeyboardDictationButtonAvailability<li>TextInput/TouchKeyboardEmojiButtonAvailability<li>TextInput/TouchKeyboardFullModeAvailability<li>TextInput/TouchKeyboardHandwritingModeAvailability<li>TextInput/TouchKeyboardNarrowModeAvailability<li>TextInput/TouchKeyboardSplitModeAvailability<li>TextInput/TouchKeyboardWideModeAvailability|
|[VPNv2 ProfileXML XSD](mdm/vpnv2-profile-xsd.md)|Updated the XSD and Plug-in profile example for VPNv2 CSP.|
|[AssignedAccess CSP](mdm/assignedaccess-csp.md)|Added the following nodes in Windows 10, version 1803:<li>Status<li>ShellLauncher<li>StatusConfiguration<br/><br/>Updated the AssigneAccessConfiguration schema. Starting in Windows 10, version 1803 AssignedAccess CSP is supported in HoloLens (first gen) Commercial Suite. Added example for HoloLens (first gen) Commercial Suite.|
|[MultiSIM CSP](mdm/multisim-csp.md)|Added a new CSP in Windows 10, version 1803.|
|[EnterpriseModernAppManagement CSP](mdm/enterprisemodernappmanagement-csp.md)|Added the following node in Windows 10, version 1803:<li>MaintainProcessorArchitectureOnUpdate|

## January 2018

|New or updated article|Description|
|--- |--- |
|[Policy CSP](mdm/policy-configuration-service-provider.md)|Added the following new policies for Windows 10, version 1803:<li>Browser/AllowConfigurationUpdateForBooksLibrary<li>Browser/AlwaysEnableBooksLibrary<li>Browser/EnableExtendedBooksTelemetry<li>Browser/UseSharedFolderForBooks<li>DeliveryOptimization/DODelayBackgroundDownloadFromHttp<li>DeliveryOptimization/DODelayForegroundDownloadFromHttp<li>DeliveryOptimization/DOGroupIdSource<li>DeliveryOptimization/DOPercentageMaxBackDownloadBandwidth<li>DeliveryOptimization/DOPercentageMaxForeDownloadBandwidth<li>DeliveryOptimization/DORestrictPeerSelectionBy<li>DeliveryOptimization/DOSetHoursToLimitBackgroundDownloadBandwidth<li>DeliveryOptimization/DOSetHoursToLimitForegroundDownloadBandwidth<li>KioskBrowser/BlockedUrlExceptions<li>KioskBrowser/BlockedUrls<li>KioskBrowser/DefaultURL<li>KioskBrowser/EnableHomeButton<li>KioskBrowser/EnableNavigationButtons<li>KioskBrowser/RestartOnIdleTime<li>LocalPoliciesSecurityOptions/Devices_AllowUndockWithoutHavingToLogon<li>LocalPoliciesSecurityOptions/Devices_AllowedToFormatAndEjectRemovableMedia<li>LocalPoliciesSecurityOptions/Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters<li>LocalPoliciesSecurityOptions/Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly<li>LocalPoliciesSecurityOptions/InteractiveLogon_SmartCardRemovalBehavior<li>LocalPoliciesSecurityOptions/MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees<li>LocalPoliciesSecurityOptions/MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers<li>LocalPoliciesSecurityOptions/MicrosoftNetworkServer_DigitallySignCommunicationsAlways<li>LocalPoliciesSecurityOptions/MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees<li>LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts<li>LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares<li>LocalPoliciesSecurityOptions/NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares<li>LocalPoliciesSecurityOptions/NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM<li>LocalPoliciesSecurityOptions/NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange<li>LocalPoliciesSecurityOptions/NetworkSecurity_LANManagerAuthenticationLevel<li>LocalPoliciesSecurityOptions/NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients<li>LocalPoliciesSecurityOptions/NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers<li>LocalPoliciesSecurityOptions/Shutdown_ClearVirtualMemoryPageFile<li>LocalPoliciesSecurityOptions/UserAccountControl_DetectApplicationInstallationsAndPromptForElevation<li>LocalPoliciesSecurityOptions/UserAccountControl_UseAdminApprovalMode<li>RestrictedGroups/ConfigureGroupMembership<li>Search/AllowCortanaInAAD<li>Search/DoNotUseWebResults<li>Security/ConfigureWindowsPasswords<li>System/FeedbackHubAlwaysSaveDiagnosticsLocally<li>SystemServices/ConfigureHomeGroupListenerServiceStartupMode<li>SystemServices/ConfigureHomeGroupProviderServiceStartupMode<li>SystemServices/ConfigureXboxAccessoryManagementServiceStartupMode<li>SystemServices/ConfigureXboxLiveAuthManagerServiceStartupMode<li>SystemServices/ConfigureXboxLiveGameSaveServiceStartupMode<li>SystemServices/ConfigureXboxLiveNetworkingServiceStartupMode<li>TaskScheduler/EnableXboxGameSaveTask<li>TextInput/EnableTouchKeyboardAutoInvokeInDesktopMode<li>Update/ConfigureFeatureUpdateUninstallPeriod<li>UserRights/AccessCredentialManagerAsTrustedCaller<li>UserRights/AccessFromNetwork<li>UserRights/ActAsPartOfTheOperatingSystem<li>UserRights/AllowLocalLogOn<li>UserRights/BackupFilesAndDirectories<li>UserRights/ChangeSystemTime<li>UserRights/CreateGlobalObjects<li>UserRights/CreatePageFile<li>UserRights/CreatePermanentSharedObjects<li>UserRights/CreateSymbolicLinks<li>UserRights/CreateToken<li>UserRights/DebugPrograms<li>UserRights/DenyAccessFromNetwork<li>UserRights/DenyLocalLogOn<li>UserRights/DenyRemoteDesktopServicesLogOn<li>UserRights/EnableDelegation<li>UserRights/GenerateSecurityAudits<li>UserRights/ImpersonateClient<li>UserRights/IncreaseSchedulingPriority<li>UserRights/LoadUnloadDeviceDrivers<li>UserRights/LockMemory<li>UserRights/ManageAuditingAndSecurityLog<li>UserRights/ManageVolume<li>UserRights/ModifyFirmwareEnvironment<li>UserRights/ModifyObjectLabel<li>UserRights/ProfileSingleProcess<li>UserRights/RemoteShutdown<li>UserRights/RestoreFilesAndDirectories<li>UserRights/TakeOwnership<li>WindowsDefenderSecurityCenter/DisableAccountProtectionUI<li>WindowsDefenderSecurityCenter/DisableDeviceSecurityUI<li>WindowsDefenderSecurityCenter/HideRansomwareDataRecovery<li>WindowsDefenderSecurityCenter/HideSecureBoot<li>WindowsDefenderSecurityCenter/HideTPMTroubleshooting<br/><br/>Added the following policies in Windows 10, version 1709<li>DeviceLock/MinimumPasswordAge<li>Settings/AllowOnlineTips<li>System/DisableEnterpriseAuthProxy<br/><br/>Security/RequireDeviceEncryption - updated to show it's supported in desktop.|
|[BitLocker CSP](mdm/bitlocker-csp.md)|Updated the description for AllowWarningForOtherDiskEncryption to describe changes added in Windows 10, version 1803.|
|[EnterpriseModernAppManagement CSP](mdm/enterprisemodernappmanagement-csp.md)|Added new node MaintainProcessorArchitectureOnUpdate in Windows 10, next major update.|
|[DMClient CSP](mdm/dmclient-csp.md)|Added ./User/Vendor/MSFT/DMClient/Provider/[ProviderID]/FirstSyncStatus node. Also added the following nodes in Windows 10, version 1803:<li>AADSendDeviceToken<li>BlockInStatusPage<li>AllowCollectLogsButton<li>CustomErrorText<li>SkipDeviceStatusPage<li>SkipUserStatusPage|
|[Defender CSP](mdm/defender-csp.md)|Added new node (OfflineScan) in Windows 10, version 1803.|
|[UEFI CSP](mdm/uefi-csp.md)|Added a new CSP in Windows 10, version 1803.|
|[Update CSP](mdm/update-csp.md)|Added the following nodes in Windows 10, version 1803:<li>Rollback<li>Rollback/FeatureUpdate<li>Rollback/QualityUpdateStatus<li>Rollback/FeatureUpdateStatus|

## December 2017

|New or updated article|Description|
|--- |--- |
|[Configuration service provider reference](mdm/index.yml)|Added new section [CSP DDF files download](mdm/configuration-service-provider-ddf.md)|

## November 2017

|New or updated article|Description|
|--- |--- |
|[Policy CSP](mdm/policy-configuration-service-provider.md)|Added the following policies for Windows 10, version 1709:<li>Authentication/AllowFidoDeviceSignon<li>Cellular/LetAppsAccessCellularData<li>Cellular/LetAppsAccessCellularData_ForceAllowTheseApps<li>Cellular/LetAppsAccessCellularData_ForceDenyTheseApps<li>Cellular/LetAppsAccessCellularData_UserInControlOfTheseApps<li>Start/HidePeopleBar<li>Storage/EnhancedStorageDevices<li>Update/ManagePreviewBuilds<li>WirelessDisplay/AllowMdnsAdvertisement<li>WirelessDisplay/AllowMdnsDiscovery<br/><br/>Added missing policies from previous releases:<li>Connectivity/DisallowNetworkConnectivityActiveTest<li>Search/AllowWindowsIndexer|

## October 2017

| New or updated article | Description |
| --- | --- |
| [Policy DDF file](mdm/policy-ddf-file.md) | Updated the DDF content for Windows 10 version 1709. Added a link to the download of Policy DDF for Windows 10, version 1709. |
| [Policy CSP](mdm/policy-configuration-service-provider.md) | Updated the following policies:<br/><br/>- Defender/ControlledFolderAccessAllowedApplications - string separator is `|`  <br/>- Defender/ControlledFolderAccessProtectedFolders - string separator is `|` |
| [eUICCs CSP](mdm/euiccs-csp.md) | Added new CSP in Windows 10, version 1709. |
| [AssignedAccess CSP](mdm/assignedaccess-csp.md) | Added SyncML examples for the new Configuration node. |
| [DMClient CSP](mdm/dmclient-csp.md) | Added new nodes to the DMClient CSP in Windows 10, version 1709. Updated the CSP and DDF topics. |

## September 2017

|New or updated article|Description|
|--- |--- |
|[Policy CSP](mdm/policy-configuration-service-provider.md)|Added the following new policies for Windows 10, version 1709:<li>Authentication/AllowAadPasswordReset<li>Handwriting/PanelDefaultModeDocked<li>Search/AllowCloudSearch<li>System/LimitEnhancedDiagnosticDataWindowsAnalytics<br/><br/>Added new settings to Update/BranchReadinessLevel policy in Windows 10 version 1709.|
|[AssignedAccess CSP](mdm/assignedaccess-csp.md)|Starting in Windows 10, version 1709, AssignedAccess CSP is also supported in Windows 10 Pro.|
|Microsoft Store for Business and Microsoft Store|Windows Store for Business name changed to Microsoft Store for Business. Windows Store name changed to Microsoft Store.|
|The [[MS-MDE2]: Mobile Device Enrollment Protocol Version 2](/openspecs/windows_protocols/ms-mde2/4d7eadd5-3951-4f1c-8159-c39e07cbe692)|The Windows 10 enrollment protocol was updated. The following elements were added to the RequestSecurityToken message:<li>UXInitiated - boolean value that indicates whether the enrollment is user initiated from the Settings page.<li>ExternalMgmtAgentHint - a string the agent uses to give hints the enrollment server may need.<li>DomainName - fully qualified domain name if the device is domain-joined.<br/><br/>For examples, see section 4.3.1 RequestSecurityToken of the MS-MDE2 protocol documentation.|
|[EnterpriseAPN CSP](mdm/enterpriseapn-csp.md)|Added a SyncML example.|
|[VPNv2 CSP](mdm/vpnv2-csp.md)|Added RegisterDNS setting in Windows 10, version 1709.|
|[Enroll a Windows 10 device automatically using Group Policy](enroll-a-windows-10-device-automatically-using-group-policy.md)|Added new topic to introduce a new Group Policy for automatic MDM enrollment.|
|[MDM enrollment of Windows-based devices](mdm-enrollment-of-windows-devices.md)|New features in the Settings app:<li>User sees installation progress of critical policies during MDM enrollment.<li>User knows what policies, profiles, apps MDM has configured<li>IT helpdesk can get detailed MDM diagnostic information using client tools<br/><br/>For details, see [Managing connections](mdm-enrollment-of-windows-devices.md#manage-connections) and [Collecting diagnostic logs](mdm-enrollment-of-windows-devices.md#collecting-diagnostic-logs)|

## August 2017

|New or updated article|Description|
|--- |--- |
|[Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md)|Added new step-by-step guide to enable ADMX-backed policies.|
|[Mobile device enrollment](mobile-device-enrollment.md)|Added the following statement:<br/><br/>Devices that are joined to an on-premises Active Directory can enroll into MDM via the Work access page in Settings. However, the enrollment can only target the user enrolled with user-specific policies. Device targeted policies will continue to impact all users of the device.|
|[CM_CellularEntries CSP](mdm/cm-cellularentries-csp.md)|Updated the description of the PuposeGroups node to add the GUID for applications. This node is required instead of optional.|
|[EnterpriseDataProtection CSP](mdm/enterprisedataprotection-csp.md)|Updated the Settings/EDPEnforcementLevel values to the following values:<li> 0 (default) – Off / No protection (decrypts previously protected data).<li>  1 – Silent mode (encrypt and audit only).<li>  2 – Allow override mode (encrypt, prompt and allow overrides, and audit).<li>  3 – Hides overrides (encrypt, prompt but hide overrides, and audit).|
|[AppLocker CSP](mdm/applocker-csp.md)|Added two new SyncML examples (to disable the calendar app and to block usage of the map app) in [Allowlist examples](mdm/applocker-csp.md#allow-list-examples).|
|[DeviceManageability CSP](mdm/devicemanageability-csp.md)|Added the following settings in Windows 10, version 1709:<li>Provider/ProviderID/ConfigInfo<li> Provider/ProviderID/EnrollmentInfo|
|[Office CSP](mdm/office-csp.md)|Added the following setting in Windows 10, version 1709:<li>Installation/CurrentStatus|
|[BitLocker CSP](mdm/bitlocker-csp.md)|Added information to the ADMX-backed policies. Changed the minimum personal identification number (PIN) length to four digits in SystemDrivesRequireStartupAuthentication and SystemDrivesMinimumPINLength in Windows 10, version 1709.|
|[Firewall CSP](mdm/firewall-csp.md)|Updated the CSP and DDF topics. Here are the changes:<li>Removed the two settings - FirewallRules/FirewallRuleName/FriendlyName and FirewallRules/FirewallRuleName/IcmpTypesAndCodes.<li>Changed some data types from integer to bool.<li>Updated the list of supported operations for some settings.<li>Added default values.|
|[Policy DDF file](mdm/policy-ddf-file.md)|Added another Policy DDF file [download](https://download.microsoft.com/download/6/1/C/61C022FD-6F5D-4F73-9047-17F630899DC4/PolicyDDF_all_version1607_8C.xml) for the 8C release of Windows 10, version 1607, which added the following policies:<li>Browser/AllowMicrosoftCompatibilityList<li>Update/DisableDualScan<li>Update/FillEmptyContentUrls|
|[Policy CSP](mdm/policy-configuration-service-provider.md)|Added the following new policies for Windows 10, version 1709:<li>Browser/ProvisionFavorites<li>Browser/LockdownFavorites<li>ExploitGuard/ExploitProtectionSettings<li>Games/AllowAdvancedGamingServices<li>LocalPoliciesSecurityOptions/Accounts_BlockMicrosoftAccounts<li>LocalPoliciesSecurityOptions/Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly<li>LocalPoliciesSecurityOptions/Accounts_RenameAdministratorAccount<li>LocalPoliciesSecurityOptions/Accounts_RenameGuestAccount<li>LocalPoliciesSecurityOptions/InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked<li>LocalPoliciesSecurityOptions/Interactivelogon_DoNotDisplayLastSignedIn<li>LocalPoliciesSecurityOptions/Interactivelogon_DoNotDisplayUsernameAtSignIn<li>LocalPoliciesSecurityOptions/Interactivelogon_DoNotRequireCTRLALTDEL<li>LocalPoliciesSecurityOptions/InteractiveLogon_MachineInactivityLimit<li>LocalPoliciesSecurityOptions/InteractiveLogon_MessageTextForUsersAttemptingToLogOn<li>LocalPoliciesSecurityOptions/InteractiveLogon_MessageTitleForUsersAttemptingToLogOn<li>LocalPoliciesSecurityOptions/NetworkSecurity_AllowPKU2UAuthenticationRequests<li>LocalPoliciesSecurityOptions/Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn<li>LocalPoliciesSecurityOptions/UserAccountControl_AllowUIAccessApplicationsToPromptForElevation<li>LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForAdministrators<li>LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers<li>LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated<li>LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations<li>LocalPoliciesSecurityOptions/UserAccountControl_RunAllAdministratorsInAdminApprovalMode<li>LocalPoliciesSecurityOptions/UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation<li>LocalPoliciesSecurityOptions/UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations<li>Privacy/EnableActivityFeed<li>Privacy/PublishUserActivities<li>Update/DisableDualScan<li>Update/AllowAutoWindowsUpdateDownloadOverMeteredNetwork<br/><br/>Changed the name of new policy to CredentialProviders/DisableAutomaticReDeploymentCredentials from CredentialProviders/EnableWindowsAutopilotResetCredentials.<br/><br/>Changed the names of the following policies:<li>Defender/GuardedFoldersAllowedApplications to Defender/ControlledFolderAccessAllowedApplications<li>Defender/GuardedFoldersList to Defender/ControlledFolderAccessProtectedFolders<li>Defender/EnableGuardMyFolders to Defender/EnableControlledFolderAccess<br/><br/>Added links to the extra [ADMX-backed BitLocker policies](mdm/policy-csp-bitlocker.md).<br/><br/>There were issues reported with the previous release of the following policies. These issues were fixed in Windows 10, version 1709:<li>Privacy/AllowAutoAcceptPairingAndPrivacyConsentPrompts<li>Start/HideAppList|
