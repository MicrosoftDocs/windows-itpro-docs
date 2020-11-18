---
title: What's new in MDM enrollment and management
description: Discover what's new and breaking changes in Windows 10 mobile device management (MDM) enrollment and management experience across all Windows 10 devices.
MS-HAID:
- 'p\_phdevicemgmt.mdm\_enrollment\_and\_management\_overview'
- 'p\_phDeviceMgmt.new\_in\_windows\_mdm\_enrollment\_management'
ms.assetid: 9C42064F-091C-4901-BC73-9ABE79EE4224
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 10/20/2020
---

# What's new in mobile device enrollment and management

This article provides information about what's new in Windows 10 mobile device management (MDM) enrollment and management experience across all Windows 10 devices. This article also provides details about the breaking changes and known issues and frequently asked questions.

For details about Microsoft mobile device management protocols for Windows 10 see [\[MS-MDM\]: Mobile Device Management Protocol](https://go.microsoft.com/fwlink/p/?LinkId=619346) and [\[MS-MDE2\]: Mobile Device Enrollment Protocol Version 2]( https://go.microsoft.com/fwlink/p/?LinkId=619347). 

## What’s new in MDM for Windows 10, version 20H2

|New or updated article|Description|
|-----|-----|
| [Policy CSP](policy-configuration-service-provider.md) | Added the following new policies in Windows 10, version 20H2:<br>- [Experience/DisableCloudOptimizedContent](policy-csp-experience.md#experience-disablecloudoptimizedcontent)<br>- [LocalUsersAndGroups/Configure](policy-csp-localusersandgroups.md#localusersandgroups-configure)<br>- [MixedReality/AADGroupMembershipCacheValidityInDays](policy-csp-mixedreality.md#mixedreality-aadgroupmembershipcachevalidityindays)<br>- [MixedReality/BrightnessButtonDisabled](policy-csp-mixedreality.md#mixedreality-brightnessbuttondisabled)<br>- [MixedReality/FallbackDiagnostics](policy-csp-mixedreality.md#mixedreality-fallbackdiagnostics)<br>- [MixedReality/MicrophoneDisabled](policy-csp-mixedreality.md#mixedreality-microphonedisabled)<br>- [MixedReality/VolumeButtonDisabled](policy-csp-mixedreality.md#mixedreality-volumebuttondisabled)<br>- [Multitasking/BrowserAltTabBlowout](policy-csp-multitasking.md#multitasking-browseralttabblowout) |
| [SurfaceHub CSP](surfacehub-csp.md) | Added the following new node:<br>-Properties/SleepMode |
| [WindowsDefenderApplicationGuard CSP](windowsdefenderapplicationguard-csp.md) | Updated the description of the following node:<br>- Settings/AllowWindowsDefenderApplicationGuard |

## What’s new in MDM for Windows 10, version 2004

| New or updated article | Description |
|-----|-----|
| [Policy CSP](policy-configuration-service-provider.md) | Added the following new policies in Windows 10, version 2004: <br>- [ApplicationManagement/BlockNonAdminUserInstall](policy-csp-applicationmanagement.md#applicationmanagement-blocknonadminuserinstall)<br>- [Bluetooth/SetMinimumEncryptionKeySize](policy-csp-bluetooth.md#bluetooth-setminimumencryptionkeysize)<br>- [DeliveryOptimization/DOCacheHostSource](policy-csp-deliveryoptimization.md#deliveryoptimization-docachehostsource)<br>- [DeliveryOptimization/DOMaxBackgroundDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxbackgrounddownloadbandwidth)<br>- [DeliveryOptimization/DOMaxForegroundDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxforegrounddownloadbandwidth)<br>- [Education/AllowGraphingCalculator](policy-csp-education.md#education-allowgraphingcalculator)<br>- [TextInput/ConfigureJapaneseIMEVersion](policy-csp-textinput.md#textinput-configurejapaneseimeversion)<br>- [TextInput/ConfigureSimplifiedChineseIMEVersion](policy-csp-textinput.md#textinput-configuresimplifiedchineseimeversion)<br>- [TextInput/ConfigureTraditionalChineseIMEVersion](policy-csp-textinput.md#textinput-configuretraditionalchineseimeversion)<br><br>Updated the following policy in Windows 10, version 2004:<br>- [DeliveryOptimization/DOCacheHost](policy-csp-deliveryoptimization.md#deliveryoptimization-docachehost)<br><br>Deprecated the following policies in Windows 10, version 2004:<br>- [DeliveryOptimization/DOMaxDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxdownloadbandwidth)<br>- [DeliveryOptimization/DOMaxUploadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxuploadbandwidth)<br>- [DeliveryOptimization/DOPercentageMaxDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-dopercentagemaxdownloadbandwidth) |
| [DevDetail CSP](devdetail-csp.md) | Added the following new node:<br>- Ext/Microsoft/DNSComputerName |
| [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md) | Added the following new node:<br>- IsStub |
| [SUPL CSP](supl-csp.md) | Added the following new node:<br>- FullVersion |

## What’s new in MDM for Windows 10, version 1909

| New or updated article | Description |
|-----|-----|
| [BitLocker CSP](bitlocker-csp.md) | Added the following new nodes in Windows 10, version 1909:<br>- ConfigureRecoveryPasswordRotation<br>- RotateRecoveryPasswords<br>- RotateRecoveryPasswordsStatus<br>- RotateRecoveryPasswordsRequestID|

## What’s new in MDM for Windows 10, version 1903

| New or updated article | Description |
|-----|-----|
|[Policy CSP](policy-configuration-service-provider.md) | Added the following new policies in Windows 10, version 1903:<br>- [DeliveryOptimization/DODelayCacheServerFallbackBackground](policy-csp-deliveryoptimization.md#deliveryoptimization-dodelaycacheserverfallbackbackground)<br>- [DeliveryOptimization/DODelayCacheServerFallbackForeground](policy-csp-deliveryoptimization.md#deliveryoptimization-dodelaycacheserverfallbackforeground)<br>- [DeviceHealthMonitoring/AllowDeviceHealthMonitoring](policy-csp-devicehealthmonitoring.md#devicehealthmonitoring-allowdevicehealthmonitoring)<br>- [DeviceHealthMonitoring/ConfigDeviceHealthMonitoringScope](policy-csp-devicehealthmonitoring.md#devicehealthmonitoring-configdevicehealthmonitoringscope)<br>- [DeviceHealthMonitoring/ConfigDeviceHealthMonitoringUploadDestination](policy-csp-devicehealthmonitoring.md#devicehealthmonitoring-configdevicehealthmonitoringuploaddestination)<br>- [DeviceInstallation/AllowInstallationOfMatchingDeviceInstanceIDs](policy-csp-deviceinstallation.md#deviceinstallation-allowinstallationofmatchingdeviceinstanceids)<br>- [DeviceInstallation/PreventInstallationOfMatchingDeviceInstanceIDs](policy-csp-deviceinstallation.md#deviceinstallation-preventinstallationofmatchingdeviceinstanceids)<br>- [Experience/ShowLockOnUserTile](policy-csp-experience.md#experience-showlockonusertile)<br>- [InternetExplorer/AllowEnhancedSuggestionsInAddressBar](policy-csp-internetexplorer.md#internetexplorer-allowenhancedsuggestionsinaddressbar)<br>- [InternetExplorer/DisableActiveXVersionListAutoDownload](policy-csp-internetexplorer.md#internetexplorer-disableactivexversionlistautodownload)<br>- [InternetExplorer/DisableCompatView](policy-csp-internetexplorer.md#internetexplorer-disablecompatview)<br>- [InternetExplorer/DisableFeedsBackgroundSync](policy-csp-internetexplorer.md#internetexplorer-disablefeedsbackgroundsync)<br>- [InternetExplorer/DisableGeolocation](policy-csp-internetexplorer.md#internetexplorer-disablegeolocation)<br>- [InternetExplorer/DisableWebAddressAutoComplete](policy-csp-internetexplorer.md#internetexplorer-disablewebaddressautocomplete)<br>- [InternetExplorer/NewTabDefaultPage](policy-csp-internetexplorer.md#internetexplorer-newtabdefaultpage)<br>- [Power/EnergySaverBatteryThresholdOnBattery](policy-csp-power.md#power-energysaverbatterythresholdonbattery)<br>- [Power/EnergySaverBatteryThresholdPluggedIn](policy-csp-power.md#power-energysaverbatterythresholdpluggedin)<br>- [Power/SelectLidCloseActionOnBattery](policy-csp-power.md#power-selectlidcloseactiononbattery)<br>- [Power/SelectLidCloseActionPluggedIn](policy-csp-power.md#power-selectlidcloseactionpluggedin)<br>- [Power/SelectPowerButtonActionOnBattery](policy-csp-power.md#power-selectpowerbuttonactiononbattery)<br>- [Power/SelectPowerButtonActionPluggedIn](policy-csp-power.md#power-selectpowerbuttonactionpluggedin)<br>- [Power/SelectSleepButtonActionOnBattery](policy-csp-power.md#power-selectsleepbuttonactiononbattery)<br>- [Power/SelectSleepButtonActionPluggedIn](policy-csp-power.md#power-selectsleepbuttonactionpluggedin)<br>- [Power/TurnOffHybridSleepOnBattery](policy-csp-power.md#power-turnoffhybridsleeponbattery)<br>- [Power/TurnOffHybridSleepPluggedIn](policy-csp-power.md#power-turnoffhybridsleeppluggedin)<br>- [Power/UnattendedSleepTimeoutOnBattery](policy-csp-power.md#power-unattendedsleeptimeoutonbattery)<br>- [Power/UnattendedSleepTimeoutPluggedIn](policy-csp-power.md#power-unattendedsleeptimeoutpluggedin)<br>- [Privacy/LetAppsActivateWithVoice](policy-csp-privacy.md#privacy-letappsactivatewithvoice)<br>- [Privacy/LetAppsActivateWithVoiceAboveLock](policy-csp-privacy.md#privacy-letappsactivatewithvoiceabovelock)<br>- [Search/AllowFindMyFiles](policy-csp-search.md#search-allowfindmyfiles)<br>- [ServiceControlManager/SvchostProcessMitigation](policy-csp-servicecontrolmanager.md#servicecontrolmanager-svchostprocessmitigation)<br>- [System/AllowCommercialDataPipeline](policy-csp-system.md#system-allowcommercialdatapipeline)<br>- [System/TurnOffFileHistory](policy-csp-system.md#system-turnofffilehistory)<br>- [TimeLanguageSettings/ConfigureTimeZone](policy-csp-timelanguagesettings.md#timelanguagesettings-configuretimezone)<br>- [Troubleshooting/AllowRecommendations](policy-csp-troubleshooting.md#troubleshooting-allowrecommendations)<br>- [Update/AutomaticMaintenanceWakeUp](policy-csp-update.md#update-automaticmaintenancewakeup)<br>- [Update/ConfigureDeadlineForFeatureUpdates](policy-csp-update.md#update-configuredeadlineforfeatureupdates)<br>- [Update/ConfigureDeadlineForQualityUpdates](policy-csp-update.md#update-configuredeadlineforqualityupdates)<br>- [Update/ConfigureDeadlineGracePeriod](policy-csp-update.md#update-configuredeadlinegraceperiod)<br>- [WindowsLogon/AllowAutomaticRestartSignOn](policy-csp-windowslogon.md#windowslogon-allowautomaticrestartsignon)<br>- [WindowsLogon/ConfigAutomaticRestartSignOn](policy-csp-windowslogon.md#windowslogon-configautomaticrestartsignon)<br>- [WindowsLogon/EnableFirstLogonAnimation](policy-csp-windowslogon.md#windowslogon-enablefirstlogonanimation)|
| [Policy CSP - Audit](policy-csp-audit.md) | Added the new Audit policy CSP. |
| [ApplicationControl CSP](applicationcontrol-csp.md) | Added the new CSP. |
| [Defender CSP](defender-csp.md) | Added the following new nodes:<br>- Health/TamperProtectionEnabled<br>- Health/IsVirtualMachine<br>- Configuration<br>- Configuration/TamperProtection<br>- Configuration/EnableFileHashComputation |
| [DiagnosticLog CSP](diagnosticlog-csp.md) <br> [DiagnosticLog DDF](diagnosticlog-ddf.md) | Added version 1.4 of the CSP in Windows 10, version 1903. <br>Added the new 1.4 version of the DDF. <br>Added the following new nodes:<br>- Policy<br>- Policy/Channels<br>- Policy/Channels/ChannelName<br>- Policy/Channels/ChannelName/MaximumFileSize<br>- Policy/Channels/ChannelName/SDDL<br>- Policy/Channels/ChannelName/ActionWhenFull<br>- Policy/Channels/ChannelName/Enabled<br>- DiagnosticArchive<br>- DiagnosticArchive/ArchiveDefinition<br>- DiagnosticArchive/ArchiveResults |
| [EnrollmentStatusTracking CSP](enrollmentstatustracking-csp.md) | Added the new CSP. |
| [PassportForWork CSP](passportforwork-csp.md) | Added the following new nodes:<br>- SecurityKey<br>- SecurityKey/UseSecurityKeyForSignin |


## What’s new in MDM for Windows 10, version 1809

| New or updated article | Description |
|-----|-----|
|[Policy CSP](policy-configuration-service-provider.md) | Added the following new policy settings in Windows 10, version 1809:<br>- ApplicationManagement/LaunchAppAfterLogOn<br>- ApplicationManagement/ScheduleForceRestartForUpdateFailures<br>- Authentication/EnableFastFirstSignIn (Preview mode only)<br>- Authentication/EnableWebSignIn (Preview mode only)<br>- Authentication/PreferredAadTenantDomainName<br>- Browser/AllowFullScreenMode<br>- Browser/AllowPrelaunch<br>- Browser/AllowPrinting<br>- Browser/AllowSavingHistory<br>- Browser/AllowSideloadingOfExtensions<br>- Browser/AllowTabPreloading<br>- Browser/AllowWebContentOnNewTabPage<br>- Browser/ConfigureFavoritesBar<br>- Browser/ConfigureHomeButton<br>- Browser/ConfigureKioskMode<br>- Browser/ConfigureKioskResetAfterIdleTimeout<br>- Browser/ConfigureOpenMicrosoftEdgeWith<br>- Browser/ConfigureTelemetryForMicrosoft365Analytics<br>- Browser/PreventCertErrorOverrides<br>- Browser/SetHomeButtonURL<br>- Browser/SetNewTabPageURL<br>- Browser/UnlockHomeButton<br>- Defender/CheckForSignaturesBeforeRunningScan<br>- Defender/DisableCatchupFullScan<br>- Defender/DisableCatchupQuickScan<br>- Defender/EnableLowCPUPriority<br>- Defender/SignatureUpdateFallbackOrder<br>- Defender/SignatureUpdateFileSharesSources<br>- DeviceGuard/ConfigureSystemGuardLaunch<br>- DeviceInstallation/AllowInstallationOfMatchingDeviceIDs<br>- DeviceInstallation/AllowInstallationOfMatchingDeviceSetupClasses<br>- DeviceInstallation/PreventDeviceMetadataFromNetwork<br>- DeviceInstallation/PreventInstallationOfDevicesNotDescribedByOtherPolicySettings<br>- DmaGuard/DeviceEnumerationPolicy<br>- Experience/AllowClipboardHistory<br>- Experience/DoNotSyncBrowserSettings<br>- Experience/PreventUsersFromTurningOnBrowserSyncing<br>- Kerberos/UPNNameHints<br>- Privacy/AllowCrossDeviceClipboard<br>- Privacy/DisablePrivacyExperience<br>- Privacy/UploadUserActivities<br>- Security/RecoveryEnvironmentAuthentication<br>- System/AllowDeviceNameInDiagnosticData<br>- System/ConfigureMicrosoft365UploadEndpoint<br>- System/DisableDeviceDelete<br>- System/DisableDiagnosticDataViewer<br>- Storage/RemovableDiskDenyWriteAccess<br>- TaskManager/AllowEndTask<br>- Update/DisableWUfBSafeguards<br>- Update/EngagedRestartDeadlineForFeatureUpdates<br>- Update/EngagedRestartSnoozeScheduleForFeatureUpdates<br>- Update/EngagedRestartTransitionScheduleForFeatureUpdates<br>- Update/SetDisablePauseUXAccess<br>- Update/SetDisableUXWUAccess<br>- WindowsDefenderSecurityCenter/DisableClearTpmButton<br>- WindowsDefenderSecurityCenter/DisableTpmFirmwareUpdateWarning<br>- WindowsDefenderSecurityCenter/HideWindowsSecurityNotificationAreaControl<br>- WindowsLogon/DontDisplayNetworkSelectionUI |
| [BitLocker CSP](bitlocker-csp.md) | Added a new node AllowStandardUserEncryption in Windows 10, version 1809. Added support for Windows 10 Pro. |
| [Defender CSP](defender-csp.md) | Added a new node Health/ProductStatus in Windows 10, version 1809. |
| [DevDetail CSP](devdetail-csp.md) | Added a new node SMBIOSSerialNumber in Windows 10, version 1809. |
| [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md) | Added NonRemovable setting under AppManagement node in Windows 10, version 1809. |
| [Office CSP](office-csp.md) | Added FinalStatus setting in Windows 10, version 1809. |
| [PassportForWork CSP](passportforwork-csp.md) | Added new settings in Windows 10, version 1809. |
| [RemoteWipe CSP](remotewipe-csp.md) | Added new settings in Windows 10, version 1809. |
| [SUPL CSP](supl-csp.md) | Added 3 new certificate nodes in Windows 10, version 1809. |
| [TenantLockdown CSP](tenantlockdown-csp.md) | Added new CSP in Windows 10, version 1809. |
| [Wifi CSP](wifi-csp.md) | Added a new node WifiCost in Windows 10, version 1809. |
| [WindowsDefenderApplicationGuard CSP](windowsdefenderapplicationguard-csp.md) | Added new settings in Windows 10, version 1809. |
| [WindowsLicensing CSP](windowslicensing-csp.md) | Added S mode settings and SyncML examples in Windows 10, version 1809. |
| [Win32CompatibilityAppraiser CSP](win32compatibilityappraiser-csp.md) | Added new configuration service provider in Windows 10, version 1809. |


## What’s new in MDM for Windows 10, version 1803

| New or updated article | Description |
|-----|-----|
|[Policy CSP](policy-configuration-service-provider.md) | Added the following new policies for Windows 10, version 1803:<br>- ApplicationDefaults/EnableAppUriHandlers<br>- ApplicationManagement/MSIAllowUserControlOverInstall<br>- ApplicationManagement/MSIAlwaysInstallWithElevatedPrivileges<br>- Bluetooth/AllowPromptedProximalConnections<br>- Browser/AllowConfigurationUpdateForBooksLibrary<br>- Browser/AlwaysEnableBooksLibrary<br>- Browser/EnableExtendedBooksTelemetry<br>- Browser/UseSharedFolderForBooks<br>- Connectivity/AllowPhonePCLinking<br>- DeliveryOptimization/DODelayBackgroundDownloadFromHttp<br>- DeliveryOptimization/DODelayForegroundDownloadFromHttp<br>- DeliveryOptimization/DOGroupIdSource<br>- DeliveryOptimization/DOPercentageMaxBackDownloadBandwidth<br>- DeliveryOptimization/DOPercentageMaxForeDownloadBandwidth<br>- DeliveryOptimization/DORestrictPeerSelectionBy<br>- DeliveryOptimization/DOSetHoursToLimitBackgroundDownloadBandwidth<br>- DeliveryOptimization/DOSetHoursToLimitForegroundDownloadBandwidth<br>- Display/DisablePerProcessDpiForApps<br>- Display/EnablePerProcessDpi<br>- Display/EnablePerProcessDpiForApps<br>- Experience/AllowWindowsSpotlightOnSettings<br>- KioskBrowser/BlockedUrlExceptions<br>- KioskBrowser/BlockedUrls<br>- KioskBrowser/DefaultURL<br>- KioskBrowser/EnableEndSessionButton<br>- KioskBrowser/EnableHomeButton<br>- KioskBrowser/EnableNavigationButtons<br>- KioskBrowser/RestartOnIdleTime<br>- LanmanWorkstation/EnableInsecureGuestLogons<br>- LocalPoliciesSecurityOptions/Devices_AllowUndockWithoutHavingToLogon<br>- LocalPoliciesSecurityOptions/Devices_AllowedToFormatAndEjectRemovableMedia<br>- LocalPoliciesSecurityOptions/Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters<br>- LocalPoliciesSecurityOptions/Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly<br>- LocalPoliciesSecurityOptions/InteractiveLogon_SmartCardRemovalBehavior<br>- LocalPoliciesSecurityOptions/MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees<br>- LocalPoliciesSecurityOptions/MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers<br>- LocalPoliciesSecurityOptions/MicrosoftNetworkServer_DigitallySignCommunicationsAlways<br>- LocalPoliciesSecurityOptions/MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees<br>- LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts<br>- LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares<br>- LocalPoliciesSecurityOptions/NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares<br>- LocalPoliciesSecurityOptions/NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM<br>- LocalPoliciesSecurityOptions/NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange<br>- LocalPoliciesSecurityOptions/NetworkSecurity_LANManagerAuthenticationLevel<br>- LocalPoliciesSecurityOptions/NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers<br>- LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication<br>- LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic<br>- LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic<br>- LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers<br>- LocalPoliciesSecurityOptions/Shutdown_ClearVirtualMemoryPageFile<br>- LocalPoliciesSecurityOptions/UserAccountControl_DetectApplicationInstallationsAndPromptForElevation<br>- LocalPoliciesSecurityOptions/UserAccountControl_UseAdminApprovalMode<br>- Notifications/DisallowCloudNotification<br>- RestrictedGroups/ConfigureGroupMembership<br>- Search/AllowCortanaInAAD<br>- Search/DoNotUseWebResults<br>- Security/ConfigureWindowsPasswords<br>- Start/DisableContextMenus<br>- System/FeedbackHubAlwaysSaveDiagnosticsLocally<br>- SystemServices/ConfigureHomeGroupListenerServiceStartupMode<br>- SystemServices/ConfigureHomeGroupProviderServiceStartupMode<br>- SystemServices/ConfigureXboxAccessoryManagementServiceStartupMode<br>- SystemServices/ConfigureXboxLiveAuthManagerServiceStartupMode<br>- SystemServices/ConfigureXboxLiveGameSaveServiceStartupMode<br>- SystemServices/ConfigureXboxLiveNetworkingServiceStartupMode<br>- TaskScheduler/EnableXboxGameSaveTask<br>- TextInput/EnableTouchKeyboardAutoInvokeInDesktopMode<br>- TextInput/ForceTouchKeyboardDockedState<br>- TextInput/TouchKeyboardDictationButtonAvailability<br>- TextInput/TouchKeyboardEmojiButtonAvailability<br>- TextInput/TouchKeyboardFullModeAvailability<br>- TextInput/TouchKeyboardHandwritingModeAvailability<br>- TextInput/TouchKeyboardNarrowModeAvailability<br>- TextInput/TouchKeyboardSplitModeAvailability<br>- TextInput/TouchKeyboardWideModeAvailability<br>- Update/ConfigureFeatureUpdateUninstallPeriod<br>- Update/TargetReleaseVersion<br>- UserRights/AccessCredentialManagerAsTrustedCaller<br>- UserRights/AccessFromNetwork<br>- UserRights/ActAsPartOfTheOperatingSystem<br>- UserRights/AllowLocalLogOn<br>- UserRights/BackupFilesAndDirectories<br>- UserRights/ChangeSystemTime<br>- UserRights/CreateGlobalObjects<br>- UserRights/CreatePageFile<br>- UserRights/CreatePermanentSharedObjects<br>- UserRights/CreateSymbolicLinks<br>- UserRights/CreateToken<br>- UserRights/DebugPrograms<br>- UserRights/DenyAccessFromNetwork<br>- UserRights/DenyLocalLogOn<br>- UserRights/DenyRemoteDesktopServicesLogOn<br>- UserRights/EnableDelegation<br>- UserRights/GenerateSecurityAudits<br>- UserRights/ImpersonateClient<br>- UserRights/IncreaseSchedulingPriority<br>- UserRights/LoadUnloadDeviceDrivers<br>- UserRights/LockMemory<br>- UserRights/ManageAuditingAndSecurityLog<br>- UserRights/ManageVolume<br>- UserRights/ModifyFirmwareEnvironment<br>- UserRights/ModifyObjectLabel<br>- UserRights/ProfileSingleProcess<br>- UserRights/RemoteShutdown<br>- UserRights/RestoreFilesAndDirectories<br>- UserRights/TakeOwnership<br>- WindowsDefenderSecurityCenter/DisableAccountProtectionUI<br>- WindowsDefenderSecurityCenter/DisableDeviceSecurityUI<br>- WindowsDefenderSecurityCenter/HideRansomwareDataRecovery<br>- WindowsDefenderSecurityCenter/HideSecureBoot<br>- WindowsDefenderSecurityCenter/HideTPMTroubleshooting<br>- Security/RequireDeviceEncryption - updated to show it is supported in desktop. |
| [Accounts CSP](accounts-csp.md) | Added a new CSP in Windows 10, version 1803. |
| [AccountManagement CSP](accountmanagement-csp.md) | Added a new CSP in Windows 10, version 1803. |
| [AssignedAccess CSP](assignedaccess-csp.md) | Added the following nodes in Windows 10, version 1803:<br>- Status<br>- ShellLauncher<br>- StatusConfiguration <br><br>Updated the AssigneAccessConfiguration schema. Starting in Windows 10, version 1803 AssignedAccess CSP is supported in HoloLens (1st gen) Commercial Suite. Added example for HoloLens (1st gen) Commercial Suite. | 
| [BitLocker CSP](bitlocker-csp.md) | Updated the description for AllowWarningForOtherDiskEncryption to describe changes added in Windows 10, version 1803. |
| [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download) | Added the DDF download of Windows 10, version 1803 configuration service providers. |
| [Defender CSP](defender-csp.md) | Added new node (OfflineScan) in Windows 10, version 1803. |
| [DeviceStatus CSP](devicestatus-csp.md) | Added the following node in Windows 10, version 1803:<br>- OS/Mode |
| [DMClient CSP](dmclient-csp.md) | Added ./User/Vendor/MSFT/DMClient/Provider/[ProviderID]/FirstSyncStatus node. Also added the following nodes in Windows 10, version 1803:<br>- AADSendDeviceToken<br>- BlockInStatusPage<br>- AllowCollectLogsButton<br>- CustomErrorText<br>- SkipDeviceStatusPage<br>- SkipUserStatusPage |
| [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md) | Added the following node in Windows 10, version 1803:<br>- MaintainProcessorArchitectureOnUpdate |
| [eUICCs CSP](euiccs-csp.md) | Added the following node in Windows 10, version 1803:<br>- IsEnabled |
| [MDM Migration Analysis Too (MMAT)](https://aka.ms/mmat) | MDM Migration Analysis Too (MMAT) <br>Updated version available. MMAT is a tool you can use to determine which Group Policies are set on a target user/computer and cross-reference them against the list of supported MDM policies. |
| [MultiSIM CSP](multisim-csp.md) | Added a new CSP in Windows 10, version 1803. |
| [NetworkProxy CSP](networkproxy-csp.md) | Added the following node in Windows 10, version 1803:<br>- ProxySettingsPerUser |
| [RootCATrustedCertificates CSP](rootcacertificates-csp.md) | Added the following node in Windows 10, version 1803:<br>- UntrustedCertificates |
| [UEFI CSP](uefi-csp.md) | Added a new CSP in Windows 10, version 1803. |
| [Update CSP](update-csp.md) | Added the following nodes in Windows 10, version 1803:<br>- Rollback<br>- Rollback/FeatureUpdate<br>- Rollback/QualityUpdateStatus<br>- Rollback/FeatureUpdateStatus |

## What’s new in MDM for Windows 10, version 1709

| New or updated article | Description |
|-----|-----|
| The [The [MS-MDE2]: Mobile Device Enrollment Protocol Version 2](https://docs.microsoft.com/openspecs/windows_protocols/ms-mde2/4d7eadd5-3951-4f1c-8159-c39e07cbe692?redirectedfrom=MSDN) | The Windows 10 enrollment protocol was updated. The following elements were added to the RequestSecurityToken message:<br>- UXInitiated - boolean value that indicates whether the enrollment is user initiated from the Settings page.<br>-ExternalMgmtAgentHint - a string the agent uses to give hints the enrollment server may need.<br>- DomainName - fully qualified domain name if the device is domain-joined. |
| [Firewall CSP](firewall-csp.md) | Added new CSP in Windows 10, version 1709. |
| [eUICCs CSP](euiccs-csp.md) | Added new CSP in Windows 10, version 1709. |
| [WindowsDefenderApplicationGuard CSP](windowsdefenderapplicationguard-csp.md)<br>[WindowsDefenderApplicationGuard DDF file](windowsdefenderapplicationguard-ddf-file.md) | New CSP added in Windows 10, version 1709. Also added the DDF topic. |
| [CM_ProxyEntries CSP](cm-proxyentries-csp.md) and [CMPolicy CSP](cmpolicy-csp.md) | In Windows 10, version 1709, support for desktop SKUs were added to these CSPs. |
| [VPNv2 CSP](vpnv2-csp.md) | Added DeviceTunnel and RegisterDNS settings in Windows 10, version 1709. |
| [DeviceStatus CSP](devicestatus-csp.md) | Added the following settings in Windows 10, version 1709:<br>- DeviceStatus/DomainName<br>- DeviceStatus/DeviceGuard/VirtualizationBasedSecurityHwReq<br>- DeviceStatus/DeviceGuard/VirtualizationBasedSecurityStatus<br>- DeviceStatus/DeviceGuard/LsaCfgCredGuardStatus |
| [AssignedAccess CSP](assignedaccess-csp.md) | Added the following setting in Windows 10, version 1709: <br>- Configuration <br> Starting in Windows 10, version 1709, AssignedAccess CSP is supported in Windows 10 Pro. |
| [DeviceManageability CSP](devicemanageability-csp.md) | Added the following settings in Windows 10, version 1709:<br>- Provider/_ProviderID_/ConfigInfo<br>- Provider/_ProviderID_/EnrollmentInfo |
| [Office CSP](office-csp.md) | Added the following setting in Windows 10, version 1709:<br>- Installation/CurrentStatus |
| [DMClient CSP](dmclient-csp.md) | Added new nodes to the DMClient CSP in Windows 10, version 1709. Updated the CSP and DDF articles. |
| [Bitlocker CSP](bitlocker-csp.md) | Changed the minimum personal identification number (PIN) length to 4 digits in SystemDrivesRequireStartupAuthentication and SystemDrivesMinimumPINLength in Windows 10, version 1709. |
| [ADMX-backed policies in Policy CSP](policy-csps-admx-backed.md) | Added new policies. |
| Microsoft Store for Business and Microsoft Store | Windows Store for Business name changed to Microsoft Store for Business. Windows Store name changed to Microsoft Store. |
| [MDM enrollment of Windows-based devices](mdm-enrollment-of-windows-devices.md) | New features in the Settings app:<br>- User sees installation progress of critical policies during MDM enrollment.<br>- User knows what policies, profiles, apps MDM has configured<br>- IT helpdesk can get detailed MDM diagnostic information using client tools <br> For details, see [Managing connection](https://docs.microsoft.com/windows/client-management/mdm/mdm-enrollment-of-windows-devices#manage-connections) and [Collecting diagnostic logs](https://docs.microsoft.com/windows/client-management/mdm/mdm-enrollment-of-windows-devices#collecting-diagnostic-logs).|
| [Enroll a Windows 10 device automatically using Group Policy](enroll-a-windows-10-device-automatically-using-group-policy.md) | Added new topic to introduce a new Group Policy for automatic MDM enrollment. |
| [Policy CSP](policy-configuration-service-provider.md) | Added the following new policies for Windows 10, version 1709:<br>- Authentication/AllowAadPasswordReset<br>- Authentication/AllowFidoDeviceSignon<br>- Browser/LockdownFavorites<br>- Browser/ProvisionFavorites<br>- Cellular/LetAppsAccessCellularData<br>- Cellular/LetAppsAccessCellularData_ForceAllowTheseApps<br>- Cellular/LetAppsAccessCellularData_ForceDenyTheseApps<br>- Cellular/LetAppsAccessCellularData_UserInControlOfTheseApps<br>- CredentialProviders/DisableAutomaticReDeploymentCredentials<br>- DeviceGuard/EnableVirtualizationBasedSecurity<br>- DeviceGuard/RequirePlatformSecurityFeatures<br>- DeviceGuard/LsaCfgFlags<br>- DeviceLock/MinimumPasswordAge<br>- ExploitGuard/ExploitProtectionSettings<br>- Games/AllowAdvancedGamingServices<br>- Handwriting/PanelDefaultModeDocked<br>- LocalPoliciesSecurityOptions/Accounts_BlockMicrosoftAccounts<br>- LocalPoliciesSecurityOptions/Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly<br>- LocalPoliciesSecurityOptions/Accounts_RenameAdministratorAccount<br>- LocalPoliciesSecurityOptions/Accounts_RenameGuestAccount<br>- LocalPoliciesSecurityOptions/InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked<br>- LocalPoliciesSecurityOptions/Interactivelogon_DoNotDisplayLastSignedIn<br>- LocalPoliciesSecurityOptions/Interactivelogon_DoNotDisplayUsernameAtSignIn<br>- LocalPoliciesSecurityOptions/Interactivelogon_DoNotRequireCTRLALTDEL<br>- LocalPoliciesSecurityOptions/InteractiveLogon_MachineInactivityLimit<br>- LocalPoliciesSecurityOptions/InteractiveLogon_MessageTextForUsersAttemptingToLogOn<br>- LocalPoliciesSecurityOptions/InteractiveLogon_MessageTitleForUsersAttemptingToLogOn<br>- LocalPoliciesSecurityOptions/NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM<br>- LocalPoliciesSecurityOptions/NetworkSecurity_AllowPKU2UAuthenticationRequests<br>- LocalPoliciesSecurityOptions/Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn<br>- LocalPoliciesSecurityOptions/UserAccountControl_AllowUIAccessApplicationsToPromptForElevation<br>- LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForAdministrators<br>- LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers<br>- LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated<br>- LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations<br>- LocalPoliciesSecurityOptions/UserAccountControl_RunAllAdministratorsInAdminApprovalMode<br>- LocalPoliciesSecurityOptions/UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation<br>- LocalPoliciesSecurityOptions/UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations<br>- Power/DisplayOffTimeoutOnBattery<br>- Power/DisplayOffTimeoutPluggedIn<br>- Power/HibernateTimeoutOnBattery<br>- Power/HibernateTimeoutPluggedIn<br>- Power/StandbyTimeoutOnBattery<br>- Power/StandbyTimeoutPluggedIn<br>- Privacy/EnableActivityFeed<br>- Privacy/PublishUserActivities<br>- Defender/AttackSurfaceReductionOnlyExclusions<br>- Defender/AttackSurfaceReductionRules<br>- Defender/CloudBlockLevel<br>- Defender/CloudExtendedTimeout<br>- Defender/ControlledFolderAccessAllowedApplications<br>- Defender/ControlledFolderAccessProtectedFolders<br>- Defender/EnableControlledFolderAccess<br>- Defender/EnableNetworkProtection<br>- Education/DefaultPrinterName<br>- Education/PreventAddingNewPrinters<br>- Education/PrinterNames<br>- Search/AllowCloudSearch<br>- Security/ClearTPMIfNotReady<br>- Settings/AllowOnlineTips<br>- Start/HidePeopleBar<br>- Storage/AllowDiskHealthModelUpdates<br>- System/DisableEnterpriseAuthProxy<br>- System/LimitEnhancedDiagnosticDataWindowsAnalytics<br>- Update/AllowAutoWindowsUpdateDownloadOverMeteredNetwork<br>- Update/DisableDualScan<br>- Update/ManagePreviewBuilds<br>- Update/ScheduledInstallEveryWeek<br>- Update/ScheduledInstallFirstWeek<br>- Update/ScheduledInstallFourthWeek<br>- Update/ScheduledInstallSecondWeek<br>- Update/ScheduledInstallThirdWeek<br>- WindowsDefenderSecurityCenter/CompanyName<br>- WindowsDefenderSecurityCenter/DisableAppBrowserUI<br>- WindowsDefenderSecurityCenter/DisableEnhancedNotifications<br>- WindowsDefenderSecurityCenter/DisableFamilyUI<br>- WindowsDefenderSecurityCenter/DisableHealthUI<br>- WindowsDefenderSecurityCenter/DisableNetworkUI<br>- WindowsDefenderSecurityCenter/DisableNotifications<br>- WindowsDefenderSecurityCenter/DisableVirusUI<br>- WindowsDefenderSecurityCenter/DisallowExploitProtectionOverride<br>- WindowsDefenderSecurityCenter/Email<br>- WindowsDefenderSecurityCenter/EnableCustomizedToasts<br>- WindowsDefenderSecurityCenter/EnableInAppCustomization<br>- WindowsDefenderSecurityCenter/Phone<br>- WindowsDefenderSecurityCenter/URL<br>- WirelessDisplay/AllowMdnsAdvertisement<br>- WirelessDisplay/AllowMdnsDiscovery |


## What’s new in MDM for Windows 10, version 1703

| New or updated article | Description |
|-----|-----|
| [Update CSP](update-csp.md) | Added the following nodes:<br>- FailedUpdates/_Failed Update Guid_/RevisionNumber<br>- InstalledUpdates/_Installed Update Guid_/RevisionNumber<br>- PendingRebootUpdates/_Pending Reboot Update Guid_/RevisionNumber |
| [CM_CellularEntries CSP](cm-cellularentries-csp.md) | To PurposeGroups setting, added the following values:<br>- Purchase - 95522B2B-A6D1-4E40-960B-05E6D3F962AB<br>- Administrative - 2FFD9261-C23C-4D27-8DCF-CDE4E14A3364 |
| [CertificateStore CSP](certificatestore-csp.md) | Added the following setting:<br>- My/WSTEP/Renew/RetryAfterExpiryInterval |
| [ClientCertificateInstall CSP](clientcertificateinstall-csp.md) | Added the following setting:<br>- SCEP/UniqueID/Install/AADKeyIdentifierList |
| [DMAcc CSP](dmacc-csp.md) | Added the following setting:<br>- AccountUID/EXT/Microsoft/InitiateSession |
| [DMClient CSP](dmclient-csp.md) | Added the following nodes and settings:<br>- HWDevID<br>- Provider/ProviderID/ManagementServerToUpgradeTo<br>- Provider/ProviderID/CustomEnrollmentCompletePage<br>- Provider/ProviderID/CustomEnrollmentCompletePage/Title<br>- Provider/ProviderID/CustomEnrollmentCompletePage/BodyText<br>- Provider/ProviderID/CustomEnrollmentCompletePage/HyperlinkHref<br>- Provider/ProviderID/CustomEnrollmentCompletePage/HyperlinkText |
| [CellularSettings CSP](cellularsettings-csp.md)<br>[CM_CellularEntries CSP](cm-cellularentries-csp.md)<br>[EnterpriseAPN CSP](enterpriseapn-csp.md) | For these CSPs, support was added for Windows 10 Home, Pro, Enterprise, and Education editions. |
| [SecureAssessment CSP](secureassessment-csp.md) | Added the following settings:<br>- AllowTextSuggestions<br>- RequirePrinting |
| [EnterpriseAPN CSP](enterpriseapn-csp.md) | Added the following setting:<br>- Roaming |
| [Messaging CSP](messaging-csp.md) | Added new CSP. This CSP is only supported in Windows 10 Mobile and Mobile Enterprise editions. |
| [Policy CSP](policy-configuration-service-provider.md) | Added the following new policies:<br>- Accounts/AllowMicrosoftAccountSignInAssistant<br>- ApplicationDefaults/DefaultAssociationsConfiguration<br>- Browser/AllowAddressBarDropdown<br>- Browser/AllowFlashClickToRun<br>- Browser/AllowMicrosoftCompatibilityList<br>- Browser/AllowSearchEngineCustomization<br>- Browser/ClearBrowsingDataOnExit<br>- Browser/ConfigureAdditionalSearchEngines<br>- Browser/DisableLockdownOfStartPages<br>- Browser/PreventFirstRunPage<br>- Browser/PreventLiveTileDataCollection<br>- Browser/SetDefaultSearchEngine<br>- Browser/SyncFavoritesBetweenIEAndMicrosoftEdge<br>- Connectivity/AllowConnectedDevices<br>- DeliveryOptimization/DOAllowVPNPeerCaching<br>- DeliveryOptimization/DOMinBatteryPercentageAllowedToUpload<br>- DeliveryOptimization/DOMinDiskSizeAllowedToPeer<br>- DeliveryOptimization/DOMinFileSizeToCache<br>- DeliveryOptimization/DOMinRAMAllowedToPeer<br>- DeviceLock/MaxInactivityTimeDeviceLockWithExternalDisplay<br>- Display/TurnOffGdiDPIScalingForApps<br>- Display/TurnOnGdiDPIScalingForApps<br>- EnterpriseCloudPrint/CloudPrinterDiscoveryEndPoint<br>- EnterpriseCloudPrint/CloudPrintOAuthAuthority<br>- EnterpriseCloudPrint/CloudPrintOAuthClientId<br>- EnterpriseCloudPrint/CloudPrintResourceId<br>- EnterpriseCloudPrint/DiscoveryMaxPrinterLimit<br>- EnterpriseCloudPrint/MopriaDiscoveryResourceId<br>- Experience/AllowFindMyDevice<br>- Experience/AllowTailoredExperiencesWithDiagnosticData<br>- Experience/AllowWindowsSpotlightOnActionCenter<br>- Experience/AllowWindowsSpotlightWindowsWelcomeExperience<br>- Location/EnableLocation<br>- Messaging/AllowMMS<br>- Messaging/AllowRCS<br>- Privacy/LetAppsAccessTasks<br>- Privacy/LetAppsAccessTasks_ForceAllowTheseApps<br>- Privacy/LetAppsAccessTasks_ForceDenyTheseApps<br>- Privacy/LetAppsAccessTasks_UserInControlOfTheseApps<br>- Privacy/LetAppsGetDiagnosticInfo<br>- Privacy/LetAppsGetDiagnosticInfo_ForceAllowTheseApps<br>- Privacy/LetAppsGetDiagnosticInfo_ForceDenyTheseApps<br>- Privacy/LetAppsGetDiagnosticInfo_UserInControlOfTheseApps<br>- Privacy/LetAppsRunInBackground<br>- Privacy/LetAppsRunInBackground_ForceAllowTheseApps<br>- Privacy/LetAppsRunInBackground_ForceDenyTheseApps<br>- Privacy/LetAppsRunInBackground_UserInControlOfTheseApps<br>- Settings/ConfigureTaskbarCalendar<br>- Settings/PageVisibilityList<br>- SmartScreen/EnableAppInstallControl<br>- SmartScreen/EnableSmartScreenInShell<br>- SmartScreen/PreventOverrideForFilesInShell<br>- Start/AllowPinnedFolderDocuments<br>- Start/AllowPinnedFolderDownloads<br>- Start/AllowPinnedFolderFileExplorer<br>- Start/AllowPinnedFolderHomeGroup<br>- Start/AllowPinnedFolderMusic<br>- Start/AllowPinnedFolderNetwork<br>- Start/AllowPinnedFolderPersonalFolder<br>- Start/AllowPinnedFolderPictures<br>- Start/AllowPinnedFolderSettings<br>- Start/AllowPinnedFolderVideos<br>- Start/HideAppList<br>- Start/HideChangeAccountSettings<br>- Start/HideFrequentlyUsedApps<br>- Start/HideHibernate<br>- Start/HideLock<br>- Start/HidePowerButton<br>- Start/HideRecentJumplists<br>- Start/HideRecentlyAddedApps<br>- Start/HideRestart<br>- Start/HideShutDown<br>- Start/HideSignOut<br>- Start/HideSleep<br>- Start/HideSwitchAccount<br>- Start/HideUserTile<br>- Start/ImportEdgeAssets<br>- Start/NoPinningToTaskbar<br>- System/AllowFontProviders<br>- System/DisableOneDriveFileSync<br>- TextInput/AllowKeyboardTextSuggestions<br>- TimeLanguageSettings/AllowSet24HourClock<br>- Update/ActiveHoursMaxRange<br>- Update/AutoRestartDeadlinePeriodInDays<br>- Update/AutoRestartNotificationSchedule<br>- Update/AutoRestartRequiredNotificationDismissal<br>- Update/DetectionFrequency<br>- Update/EngagedRestartDeadline<br>- Update/EngagedRestartSnoozeSchedule<br>- Update/EngagedRestartTransitionSchedule<br>- Update/IgnoreMOAppDownloadLimit<br>- Update/IgnoreMOUpdateDownloadLimit<br>- Update/PauseFeatureUpdatesStartTime<br>- Update/PauseQualityUpdatesStartTime<br>- Update/SetAutoRestartNotificationDisable<br>- Update/SetEDURestart<br>- WiFi/AllowWiFiDirect<br>- WindowsLogon/HideFastUserSwitching<br>- WirelessDisplay/AllowProjectionFromPC<br>- WirelessDisplay/AllowProjectionFromPCOverInfrastructure<br>- WirelessDisplay/AllowProjectionToPCOverInfrastructure<br>- WirelessDisplay/AllowUserInputFromWirelessDisplayReceiver<br>Removed TextInput/AllowLinguisticDataCollection<br>Starting in Windows 10, version 1703, Update/UpdateServiceUrl is not supported in Windows 10 Mobile Enterprise and IoT Enterprise<br>Starting in Windows 10, version 1703, the maximum value of Update/DeferFeatureUpdatesPeriodInDays has been increased from 180 days, to 365 days.<br>Starting in Windows 10, version 1703, in Browser/HomePages you can use the &quot;&lt;about:blank&gt;&quot; value if you don’t want to send traffic to Microsoft.<br>Starting in Windows 10, version 1703, Start/StartLayout can now be set on a per-device basis in addition to the pre-existing per-user basis.<br>Added the ConfigOperations/ADMXInstall node and setting, which is used to ingest ADMX files. |
| [DevDetail CSP](devdetail-csp.md) | Added the following setting:<br>- DeviceHardwareData |
| [CleanPC CSP](cleanpc-csp.md) | Added the new CSP. |
| [DeveloperSetup CSP](developersetup-csp.md) | Added the new CSP. |
| [NetworkProxy CSP](networkproxy-csp.md) | Added the new CSP. |
| [BitLocker CSP](bitlocker-csp.md) | Added the new CSP.<br><p>Added the following setting:<br>- AllowWarningForOtherDiskEncryption |
| [EnterpriseDataProtection CSP](enterprisedataprotection-csp.md) | Starting in Windows 10, version 1703, AllowUserDecryption is no longer supported.<br>Added the following settings:<br>- RevokeOnMDMHandoff<br>- SMBAutoEncryptedFileExtensions |
| [DynamicManagement CSP](dynamicmanagement-csp.md) | Added the new CSP. |
| [Implement server-side support for mobile application management on Windows](https://docs.microsoft.com/windows/client-management/mdm/implement-server-side-mobile-application-management) | New mobile application management (MAM) support added in Windows 10, version 1703. |
| [PassportForWork CSP](passportforwork-csp.md) | Added the following new node and settings:<br>- _TenantId_/Policies/ExcludeSecurityDevices (only for ./Device/Vendor/MSFT)<br>- _TenantId_/Policies/ExcludeSecurityDevices/TPM12 (only for ./Device/Vendor/MSFT)<br>- _TenantId_/Policies/EnablePinRecovery |
| [Office CSP](office-csp.md) | Added the new CSP. |
| [Personalization CSP](personalization-csp.md) | Added the new CSP. |
| [EnterpriseAppVManagement CSP](enterpriseappvmanagement-csp.md) | Added the new CSP. |
| [HealthAttestation CSP](healthattestation-csp.md) | Added the following settings:<br>- HASEndpoint - added in Windows 10, version 1607, but not documented<br>- TpmReadyStatus - added in the March service release of Windows 10, version 1607 |
| [SurfaceHub CSP](surfacehub-csp.md) | Added the following nodes and settings:<br>- InBoxApps/SkypeForBusiness<br>- InBoxApps/SkypeForBusiness/DomainName<br>- InBoxApps/Connect<br>- InBoxApps/Connect/AutoLaunch<br>- Properties/DefaultVolume<br>- Properties/ScreenTimeout<br>- Properties/SessionTimeout<br>- Properties/SleepTimeout<br>- Properties/AllowSessionResume<br>- Properties/AllowAutoProxyAuth<br>- Properties/DisableSigninSuggestions<br>- Properties/DoNotShowMyMeetingsAndFiles |
| [NetworkQoSPolicy CSP](networkqospolicy-csp.md) | Added the new CSP. |
| [WindowsLicensing CSP](windowslicensing-csp.md) | Added the following setting:<br>- ChangeProductKey |
| [WindowsAdvancedThreatProtection CSP](windowsadvancedthreatprotection-csp.md) | Added the following setting:<br>- Configuration/TelemetryReportingFrequency |
| [DMSessionActions CSP](dmsessionactions-csp.md) | Added the new CSP. |
| [SharedPC CSP](dmsessionactions-csp.md) | Added new settings in Windows 10, version 1703:<br>- RestrictLocalStorage<br>- KioskModeAUMID<br>- KioskModeUserTileDisplayText<br>- InactiveThreshold<br>- MaxPageFileSizeMB<br>The default value for SetEduPolicies changed to false. The default value for SleepTimeout changed to 300. |
| [RemoteLock CSP](remotelock-csp.md) | Added following setting:<br>- LockAndRecoverPIN |
| [NodeCache CSP](nodecache-csp.md) | Added following settings:<br>- ChangedNodesData<br>- AutoSetExpectedValue |
| [Download all the DDF files for Windows 10, version 1703](https://download.microsoft.com/download/C/7/C/C7C94663-44CF-4221-ABCA-BC895F42B6C2/Windows10_1703_DDF_download.zip) | Added a zip file containing the DDF XML files of the CSPs. The link to the download is available in the DDF articles of various CSPs. |
| [RemoteWipe CSP](remotewipe-csp.md) | Added new setting in Windows 10, version 1703:<br>- doWipeProtected |
| [MDM Bridge WMI Provider](https://msdn.microsoft.com/library/windows/hardware/dn905224) | Added new classes and properties. |
| [Understanding ADMX-backed policies](https://docs.microsoft.com/windows/client-management/mdm/understanding-admx-backed-policies) | Added a section describing SyncML examples of various ADMX elements. |
| [Win32 and Desktop Bridge app policy configuration](https://docs.microsoft.com/windows/client-management/mdm/win32-and-centennial-app-policy-configuration) | New article. |
| [Deploy and configure App-V apps using MDM](https://docs.microsoft.com/windows/client-management/mdm/appv-deploy-and-config) | Added a new article describing how to deploy and configure App-V apps using MDM. |
| [EnterpriseDesktopAppManagement CSP](enterprisedesktopappmanagement-csp.md) | Added new setting in the March service release of Windows 10, version 1607.<br>- MSI/UpgradeCode/[Guid] |
| [Reporting CSP](reporting-csp.md) | Added new settings in Windows 10, version 1703.<br>- EnterpriseDataProtection/RetrieveByTimeRange/Type<br>- EnterpriseDataProtection/RetrieveByCount/Type |
| [Connect your Windows 10-based device to work using a deep link](https://docs.microsoft.com/windows/client-management/mdm/mdm-enrollment-of-windows-devices#connect-your-windows-10-based-device-to-work-using-a-deep-link) | Added following deep link parameters to the table:<br>- Username<br>- Servername<br>- Accesstoken<br>- Deviceidentifier<br>- Tenantidentifier<br>- Ownership |
| MDM support for Windows 10 S | Updated the following articles to indicate MDM support in Windows 10 S.<br>- [Configuration service provider reference](configuration-service-provider-reference.md)<br>- [Policy CSP](policy-configuration-service-provider.md) |
| [TPMPolicy CSP](tpmpolicy-csp.md) | Added the new CSP. |

## What’s new in MDM for Windows 10, version 1607

| New or updated article | Description |
|-----|-----|
| Sideloading of apps | Starting in Windows 10, version 1607, sideloading of apps is only allowed through [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md). Product keys (5x5) will no longer be supported to enable sideloading on Windows 10, version 1607 devices. |
| [NodeCache CSP](nodecache-csp.md) | The value of NodeCache root node starting in Windows 10, version 1607 is com.microsoft/1.0/MDM/NodeCache. |
| [EnterpriseDataProtection CSP](enterprisedataprotection-csp.md) | New CSP. |
| [Policy CSP](policy-configuration-service-provider.md) | Removed the following policies:<br>- DataProtection/AllowAzureRMSForEDP - moved this policy to [EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)<br>- DataProtection/AllowUserDecryption - moved this policy to [EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)<br>- DataProtection/EDPEnforcementLevel - moved this policy to [EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)<br>- DataProtection/RequireProtectionUnderLockConfig - moved this policy to [EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)<br>- DataProtection/RevokeOnUnenroll - moved this policy to [EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)<br>- DataProtection/EnterpriseCloudResources - moved this policy to NetworkIsolation policy<br>- DataProtection/EnterpriseInternalProxyServers - moved this policy to NetworkIsolation policy<br>- DataProtection/EnterpriseIPRange - moved this policy to NetworkIsolation policy<br>- DataProtection/EnterpriseNetworkDomainNames - moved this policy to NetworkIsolation policy<br>- DataProtection/EnterpriseProxyServers - moved this policy to NetworkIsolation policy<br>- Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices - this policy has been deprecated.<br><br>Added the WiFi/AllowManualWiFiConfiguration and WiFi/AllowWiFi policies for Windows 10, version 1607:<br>- Windows 10 Pro<br>- Windows 10 Enterprise<br>- Windows 10 Education<br><br>Added the following new policies:<br>- AboveLock/AllowCortanaAboveLock<br>- ApplicationManagement/DisableStoreOriginatedApps<br>- Authentication/AllowSecondaryAuthenticationDevice<br>- Bluetooth/AllowPrepairing<br>- Browser/AllowExtensions<br>- Browser/PreventAccessToAboutFlagsInMicrosoftEdge<br>- Browser/ShowMessageWhenOpeningSitesInInternetExplorer<br>- DeliveryOptimization/DOAbsoluteMaxCacheSize<br>- DeliveryOptimization/DOMaxDownloadBandwidth<br>- DeliveryOptimization/DOMinBackgroundQoS<br>- DeliveryOptimization/DOModifyCacheDrive<br>- DeliveryOptimization/DOMonthlyUploadDataCap<br>- DeliveryOptimization/DOPercentageMaxDownloadBandwidth<br>- DeviceLock/EnforceLockScreenAndLogonImage<br>- DeviceLock/EnforceLockScreenProvider<br>- Defender/PUAProtection<br>- Experience/AllowThirdPartySuggestionsInWindowsSpotlight<br>- Experience/AllowWindowsSpotlight<br>- Experience/ConfigureWindowsSpotlightOnLockScreen<br>- Experience/DoNotShowFeedbackNotifications<br>- Licensing/AllowWindowsEntitlementActivation<br>- Licensing/DisallowKMSClientOnlineAVSValidation<br>- LockDown/AllowEdgeSwipe<br>- Maps/EnableOfflineMapsAutoUpdate<br>- Maps/AllowOfflineMapsDownloadOverMeteredConnection<br>- Messaging/AllowMessageSync<br>- NetworkIsolation/EnterpriseCloudResources<br>- NetworkIsolation/EnterpriseInternalProxyServers<br>- NetworkIsolation/EnterpriseIPRange<br>- NetworkIsolation/EnterpriseIPRangesAreAuthoritative<br>- NetworkIsolation/EnterpriseNetworkDomainNames<br>- NetworkIsolation/EnterpriseProxyServers<br>- NetworkIsolation/EnterpriseProxyServersAreAuthoritative<br>- NetworkIsolation/NeutralResources<br>- Notifications/DisallowNotificationMirroring<br>- Privacy/DisableAdvertisingId<br>- Privacy/LetAppsAccessAccountInfo<br>- Privacy/LetAppsAccessAccountInfo_ForceAllowTheseApps<br>- Privacy/LetAppsAccessAccountInfo_ForceDenyTheseApps<br>- Privacy/LetAppsAccessAccountInfo_UserInControlOfTheseApps<br>- Privacy/LetAppsAccessCalendar<br>- Privacy/LetAppsAccessCalendar_ForceAllowTheseApps<br>- Privacy/LetAppsAccessCalendar_ForceDenyTheseApps<br>- Privacy/LetAppsAccessCalendar_UserInControlOfTheseApps<br>- Privacy/LetAppsAccessCallHistory<br>- Privacy/LetAppsAccessCallHistory_ForceAllowTheseApps<br>- Privacy/LetAppsAccessCallHistory_ForceDenyTheseApps<br>- Privacy/LetAppsAccessCallHistory_UserInControlOfTheseApps<br>- Privacy/LetAppsAccessCamera<br>- Privacy/LetAppsAccessCamera_ForceAllowTheseApps<br>- Privacy/LetAppsAccessCamera_ForceDenyTheseApps<br>- Privacy/LetAppsAccessCamera_UserInControlOfTheseApps<br>- Privacy/LetAppsAccessContacts<br>- Privacy/LetAppsAccessContacts_ForceAllowTheseApps<br>- Privacy/LetAppsAccessContacts_ForceDenyTheseApps<br>- Privacy/LetAppsAccessContacts_UserInControlOfTheseApps<br>- Privacy/LetAppsAccessEmail<br>- Privacy/LetAppsAccessEmail_ForceAllowTheseApps<br>- Privacy/LetAppsAccessEmail_ForceDenyTheseApps<br>- Privacy/LetAppsAccessEmail_UserInControlOfTheseApps<br>- Privacy/LetAppsAccessLocation<br>- Privacy/LetAppsAccessLocation_ForceAllowTheseApps<br>- Privacy/LetAppsAccessLocation_ForceDenyTheseApps<br>- Privacy/LetAppsAccessLocation_UserInControlOfTheseApps<br>- Privacy/LetAppsAccessMessaging<br>- Privacy/LetAppsAccessMessaging_ForceAllowTheseApps<br>- Privacy/LetAppsAccessMessaging_ForceDenyTheseApps<br>- Privacy/LetAppsAccessMessaging_UserInControlOfTheseApps<br>- Privacy/LetAppsAccessMicrophone<br>- Privacy/LetAppsAccessMicrophone_ForceAllowTheseApps<br>- Privacy/LetAppsAccessMicrophone_ForceDenyTheseApps<br>- Privacy/LetAppsAccessMicrophone_UserInControlOfTheseApps<br>- Privacy/LetAppsAccessMotion<br>- Privacy/LetAppsAccessMotion_ForceAllowTheseApps<br>- Privacy/LetAppsAccessMotion_ForceDenyTheseApps<br>- Privacy/LetAppsAccessMotion_UserInControlOfTheseApps<br>- Privacy/LetAppsAccessNotifications<br>- Privacy/LetAppsAccessNotifications_ForceAllowTheseApps<br>- Privacy/LetAppsAccessNotifications_ForceDenyTheseApps<br>- Privacy/LetAppsAccessNotifications_UserInControlOfTheseApps<br>- Privacy/LetAppsAccessPhone<br>- Privacy/LetAppsAccessPhone_ForceAllowTheseApps<br>- Privacy/LetAppsAccessPhone_ForceDenyTheseApps<br>- Privacy/LetAppsAccessPhone_UserInControlOfTheseApps<br>- Privacy/LetAppsAccessRadios<br>- Privacy/LetAppsAccessRadios_ForceAllowTheseApps<br>- Privacy/LetAppsAccessRadios_ForceDenyTheseApps<br>- Privacy/LetAppsAccessRadios_UserInControlOfTheseApps<br>- Privacy/LetAppsAccessTrustedDevices<br>- Privacy/LetAppsAccessTrustedDevices_ForceAllowTheseApps<br>- Privacy/LetAppsAccessTrustedDevices_ForceDenyTheseApps<br>- Privacy/LetAppsAccessTrustedDevices_UserInControlOfTheseApps<br>- Privacy/LetAppsSyncWithDevices<br>- Privacy/LetAppsSyncWithDevices_ForceAllowTheseApps<br>- Privacy/LetAppsSyncWithDevices_ForceDenyTheseApps<br>- Privacy/LetAppsSyncWithDevices_UserInControlOfTheseApps<br>- Security/PreventAutomaticDeviceEncryptionForAzureADJoinedDevices<br>- Settings/AllowEditDeviceName<br>- Speech/AllowSpeechModelUpdate<br>- System/TelemetryProxy<br>- Update/ActiveHoursStart<br>- Update/ActiveHoursEnd<br>- Update/AllowMUUpdateService<br>- Update/BranchReadinessLevel<br>- Update/DeferFeatureUpdatesPeriodInDays<br>- Update/DeferQualityUpdatesPeriodInDays<br>- Update/ExcludeWUDriversInQualityUpdate<br>- Update/PauseFeatureUpdates<br>- Update/PauseQualityUpdates<br>- Update/SetProxyBehaviorForUpdateDetection<br>- Update/UpdateServiceUrlAlternate (Added in the January service release of Windows 10, version 1607)<br>- WindowsInkWorkspace/AllowWindowsInkWorkspace<br>- WindowsInkWorkspace/AllowSuggestedAppsInWindowsInkWorkspace<br>- WirelessDisplay/AllowProjectionToPC<br>- WirelessDisplay/RequirePinForPairing<br><br>Updated the Privacy/AllowAutoAcceptPairingAndPrivacyConsentPrompts description to remove outdated information.<br><br>Updated DeliveryOptimization/DODownloadMode to add new values.<br><br>Updated Experience/AllowCortana description to clarify what each supported value does.<br><br>Updated Security/AntiTheftMode description to clarify what each supported value does. |
| [DMClient CSP](dmclient-csp.md) | Added the following settings:<br>- ManagementServerAddressList<br>- AADDeviceID<br>- EnrollmentType<br>- HWDevID<br>- CommercialID<br><br>Removed the EnrollmentID setting. |
| [DeviceManageability CSP](devicemanageability-csp.md) | New CSP. |
| [DeviceStatus CSP](devicestatus-csp.md) | Added the following new settings:<br>- DeviceStatus/TPM/SpecificationVersion<br>- DeviceStatus/OS/Edition<br>- DeviceStatus/Antivirus/SignatureStatus<br>- DeviceStatus/Antivirus/Status<br>- DeviceStatus/Antispyware/SignatureStatus<br>- DeviceStatus/Antispyware/Status<br>- DeviceStatus/Firewall/Status<br>- DeviceStatus/UAC/Status<br>- DeviceStatus/Battery/Status<br>- DeviceStatus/Battery/EstimatedChargeRemaining<br>- DeviceStatus/Battery/EstimatedRuntime |
| [AssignedAccess CSP](assignedaccess-csp.md) | Added SyncML examples. |
| [EnterpriseAssignedAccess CSP](enterpriseassignedaccess-csp.md) | Added a new Folder table entry in the AssignedAccess/AssignedAccessXml description.<br>Updated the DDF and XSD file sections. |
| [SecureAssessment CSP](secureassessment-csp.md) | New CSP. |
| [DiagnosticLog CSP](diagnosticlog-csp.md)<br>[DiagnosticLog DDF](diagnosticlog-ddf.md) | Added version 1.3 of the CSP with two new settings.<br><br>Added the new 1.3 version of the DDF.<br><br>Added the following new settings in Windows 10, version 1607<br>- DeviceStateData<br>- DeviceStateData/MdmConfiguration |
| [Reboot CSP](reboot-csp.md) | New CSP. |
| [CMPolicyEnterprise CSP](cmpolicyenterprise-csp.md) | New CSP. |
| [VPNv2 CSP](vpnv2-csp.md) | Added the following settings for Windows 10, version 1607:<br>- _ProfileName_/RouteList/routeRowId/ExclusionRoute<br>- _ProfileName_/DomainNameInformationList/_dniRowId_/AutoTrigger<br>- _ProfileName_/DomainNameInformationList/dniRowId/Persistent<br>- _ProfileName_/ProfileXML<br>- _ProfileName_/DeviceCompliance/Enabled<br>- _ProfileName_/DeviceCompliance/Sso<br>- _ProfileName_/DeviceCompliance/Sso/Enabled<br>- _ProfileName_/DeviceCompliance/Sso/IssuerHash<br>- _ProfileName_/DeviceCompliance/Sso/Eku<br>- _ProfileName_/NativeProfile/CryptographySuite<br>- _ProfileName_/NativeProfile/CryptographySuite/AuthenticationTransformConstants<br>- _ProfileName_/NativeProfile/CryptographySuite/CipherTransformConstants<br>- _ProfileName_/NativeProfile/CryptographySuite/EncryptionMethod<br>- _ProfileName_/NativeProfile/CryptographySuite/IntegrityCheckMethod<br>- _ProfileName_/NativeProfile/CryptographySuite/DHGroup<br>- _ProfileName_/NativeProfile/CryptographySuite/PfsGroup<br>- _ProfileName_/NativeProfile/L2tpPsk |
| [Win32AppInventory CSP](win32appinventory-csp.md) | New CSP. |
| [SharedPC CSP](sharedpc-csp.md) | New CSP. |
| [WindowsAdvancedThreatProtection CSP](windowsadvancedthreatprotection-csp.md) | New CSP. |
| [MDM Bridge WMI Provider](https://msdn.microsoft.com/library/windows/hardware/dn905224) | Added new classes for Windows 10, version 1607. |
| [MDM enrollment of Windows devices](mdm-enrollment-of-windows-devices.md) | Article renamed from &quot;Enrollment UI&quot;.<br><br>Completely updated enrollment procedures and screenshots. |
| [UnifiedWriteFilter CSP](unifiedwritefilter-csp.md)<br>[UnifiedWriteFilter DDF File](unifiedwritefilter-ddf.md) | Added the following new setting for Windows 10, version 1607:<br>- NextSession/HORMEnabled |
| [CertificateStore CSP](certificatestore-csp.md)<br>[CertificateStore DDF file](certificatestore-ddf-file.md) | Added the following new settings in Windows 10, version 1607:<br>- My/WSTEP/Renew/LastRenewalAttemptTime<br>- My/WSTEP/Renew/RenewNow |
| [WindowsLicensing CSP](windowslicensing-csp.md) | Added the following new node and settings in Windows 10, version 1607, but not documented:<br>- Subscriptions<br>- Subscriptions/SubscriptionId<br>- Subscriptions/SubscriptionId/Status<br>- Subscriptions/SubscriptionId/Name |
| [WiFi CSP](wifi-csp.md) | Deprecated the following node in Windows 10, version 1607:<br>- DisableInternetConnectivityChecks |

## What’s new in MDM for Windows 10, version 1511

| New or updated article | Description |
|-----|-----|
| New configuration service providers added in Windows 10, version 1511 | - [AllJoynManagement CSP](alljoynmanagement-csp.md)<br>- [Maps CSP](maps-csp.md)<br>- [Reporting CSP](reporting-csp.md)<br>- [SurfaceHub CSP](surfacehub-csp.md)<br>- [WindowsSecurityAuditing CSP](windowssecurityauditing-csp.md) |
| [Policy CSP](policy-configuration-service-provider.md) | Added the following new policy settings:<br>- ApplicationManagement/AllowWindowsBridgeForAndroidAppsExecution<br>- Bluetooth/ServicesAllowedList<br>- DataProtection/AllowAzureRMSForEDP<br>- DataProtection/RevokeOnUnenroll<br>- DeviceLock/DevicePasswordExpiration<br>- DeviceLock/DevicePasswordHistory<br>- TextInput/AllowInputPanel<br>- Update/PauseDeferrals<br>- Update/RequireDeferUpdate<br>- Update/RequireUpdateApproval<br><br>Updated the following policy settings:<br>- System/AllowLocation<br>- Update/RequireDeferUpgrade<br><br>Deprecated the following policy settings:<br>- TextInput/AllowKoreanExtendedHanja<br>- WiFi/AllowWiFiHotSpotReporting |
| Management tool for the Microsoft Store for Business | New articles. The Store for Business has a new web service designed for the enterprise to acquire, manage, and distribute applications in bulk. It enables several capabilities that are required for the enterprise to manage the lifecycle of applications from acquisition to updates. |
| Custom header for generic alert | The MDM-GenericAlert is a new custom header that hosts one or more alert information provided in the http messages sent by the device to the server during an OMA DM session. The generic alert is sent if the session is triggered by the device due to one or more critical or fatal alerts. Here is alert format: `MDM-GenericAlert: <AlertType1><AlertType2>`<br><br>If present, the MDM-GenericAlert is presented in every the outgoing MDM message in the same OMA DM session. For more information about generic alerts, see section 8.7 in the OMA Device Management Protocol, Approved Version 1.2.1 in this [OMA website](https://go.microsoft.com/fwlink/p/?LinkId=267526). |
| Alert message for slow client response | When the MDM server sends a configuration request, sometimes it takes the client longer than the HTTP timeout to get all information together and then the session ends unexpectedly due to timeout. By default, the MDM client does not send an alert that a DM request is pending.<br><br>To work around the timeout, you can use EnableOmaDmKeepAliveMessage setting to keep the session alive by sending a heartbeat message back to the server. This is achieved by sending a SyncML message with a specific device alert element in the body until the client is able to respond back to the server with the requested information. For details, see EnableOmaDmKeepAliveMessage node in the [DMClient CSP](dmclient-csp.md). |
| [DMClient CSP](dmclient-csp.md) | Added a new node EnableOmaDmKeepAliveMessage to the [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md) and updated the ManagementServerAddress to indicate that it can contain a list of URLs. |
| [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md) | Added the following new nodes:<br>- AppManagement/GetInventoryQuery<br>- AppManagement/GetInventoryResults<br>- .../_PackageFamilyName_/AppSettingPolicy/_SettingValue_<br>- AppLicenses/StoreLicenses/_LicenseID_/LicenseCategory<br>- AppLicenses/StoreLicenses/_LicenseID_/LicenseUsage<br>- AppLicenses/StoreLicenses/_LicenseID_/RequesterID<br>- AppLicenses/StoreLicenses/_LicenseID_/GetLicenseFromStore |
| [EnterpriseExt CSP](enterpriseext-csp.md) | Added the following new nodes:<br>- DeviceCustomData (CustomID, CustomeString)<br>- Brightness (Default, MaxAuto)<br>- LedAlertNotification (State, Intensity, Period, DutyCycle, Cyclecount) |
| [EnterpriseExtFileSystem CSP](enterpriseextfilessystem-csp.md) | Added the OemProfile node.
| [PassportForWork CSP](passportforwork-csp.md) | Added the following new nodes:<br>- TenantId/Policies/PINComplexity/History<br>- TenantId/Policies/PINComplexity/Expiration<br>- TenantId/Policies/Remote/UseRemotePassport (only for ./Device/Vendor/MSFT)<br>- Biometrics/UseBiometrics (only for ./Device/Vendor/MSFT)<br>- Biometrics/FacialFeaturesUseEnhancedAntiSpoofing (only for ./Device/Vendor/MSFT) |
| [EnterpriseAssignedAccess CSP](enterpriseassignedaccess-csp.md) | The following updates are done to the [EnterpriseAssignedAccess CSP](enterpriseassignedaccess-csp.md):<br>- In AssignedAccessXML node, added new page settings and quick action settings.<br>- In AssignedAccessXML node, added an example about how to pin applications in multiple app packages using the AUMID.<br>- Updated the [EnterpriseAssignedAccess XSD](enterpriseassignedaccess-xsd.md) article. |
| [DevDetail CSP](devdetail-csp.md) | The following updates are done to [DevDetail CSP](devdetail-csp.md):<br>- Added TotalStore and TotalRAM settings.<br>- Added support for Replace command for the DeviceName setting. |
| Handling large objects | Added support for the client to handle uploading of large objects to the server. |

## Breaking changes and known issues

### Get command inside an atomic command is not supported

In Windows 10, a Get command inside an atomic command is not supported. This was allowed in Windows Phone 8 and Windows Phone 8.1.

### Notification channel URI not preserved during upgrade from Windows 8.1 to Windows 10

During an upgrade from Windows 8.1 to Windows 10, the notification channel URI information is not preserved. In addition, the MDM client loses the PFN, AppID, and client secret.

After upgrading to Windows 10, you should call MDM\_WNSConfiguration class to recreate the notification channel URI.

### Apps installed using WMI classes are not removed

Applications installed using WMI classes are not removed when the MDM account is removed from device.

### Passing CDATA in SyncML does not work

Passing CDATA in data in SyncML to ConfigManager and CSPs does not work in Windows 10. It worked in Windows Phone 8.

### SSL settings in IIS server for SCEP must be set to "Ignore"

The certificate setting under "SSL Settings" in the IIS server for SCEP must be set to "Ignore" in Windows 10. In Windows Phone 8.1, when you set the client certificate to "Accept," it works fine.

![ssl settings](images/ssl-settings.png)

### MDM enrollment fails on the mobile device when traffic is going through proxy

When the mobile device is configured to use a proxy that requires authentication, the enrollment will fail. To work around this issue, the user can use a proxy that does not require authentication or remove the proxy setting from the connected network.

### Server-initiated unenrollment failure

Server-initiated unenrollment for a device enrolled by adding a work account silently fails leaving the MDM account active. MDM policies and resources are still in place and the client can continue to sync with the server.

Remote server unenrollment is disabled for mobile devices enrolled via Azure Active Directory Join. It returns an error message to the server. The only way to remove enrollment for a mobile device that is Azure AD joined is by remotely wiping the device.

### Certificates causing issues with Wi-Fi and VPN

Currently in Windows 10, version 1511, when using the ClientCertificateInstall to install certificates to the device store and the user store and both certificates are sent to the device in the same MDM payload, the certificate intended for the device store will also get installed in the user store. This may cause issues with Wi-Fi or VPN when choosing the correct certificate to establish a connection. We are working to fix this issue.

### Version information for mobile devices

The software version information from **DevDetail/SwV** does not match the version in **Settings** under **System/About**.

### Upgrading Windows Phone 8.1 devices with app allow-listing using ApplicationRestriction policy has issues

-   When you upgrade Windows Phone 8.1 devices to Windows 10 Mobile using ApplicationRestrictions with a list of allowed apps, some Windows inbox apps get blocked causing unexpected behavior. To work around this issue, you must include the [inbox apps](applocker-csp.md#inboxappsandcomponents) that you need to your list of allowed apps.

    Here's additional guidance for the upgrade process:

    -   Use Windows 10 product IDs for the apps listed in [inbox apps](applocker-csp.md#inboxappsandcomponents).
    -   Use the new Microsoft publisher name (PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US") and Publisher="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" if you are using the publisher policy. Do not remove the Windows Phone 8.1 publisher rule if you are using it.
    -   In the SyncML, you must use lowercase product ID.
    -   Do not duplicate a product ID. Messaging and Skype Video use the same product ID. Duplicates cause an error.


-   Silverlight xaps may not install even if publisher policy is specified using Windows Phone 8.1 publisher rule. For example, Silverlight app "Level" will not install even if you specify &lt;Publisher PublisherName=”Microsoft Corporation” /&gt;.

    To workaround this issue, remove the Windows Phone 8.1 publisher rule and add the specific product ID for each Silverlight app you want to allow to the allowed app list.

-   Some apps (specifically those that are published in Microsoft Store as AppX Bundles) are blocked from installing even when they are included in the app list.

    No workaround is available at this time. An OS update to fix this issue is coming soon.

### Apps dependent on Microsoft Frameworks may get blocked in phones prior to build 10586.218

Applies only to phone prior to build 10586.218: When ApplicationManagement/ApplicationRestrictions policy is deployed to Windows 10 Mobile, installation and update of apps dependent on Microsoft Frameworks may get blocked with error 0x80073CF9. To work around this issue, you must include the Microsoft Framework Id to your list of allowed apps.

```xml
<App ProductId="{00000000-0000-0000-0000-000000000000}" PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US"/>
```

### Multiple certificates might cause Wi-Fi connection instabilities in Windows 10 Mobile

In your deployment, if you have multiple certificates provisioned on the device and the Wi-Fi profile provisioned does not have a strict filtering criteria, you may see connection failures when connecting to Wi-Fi. The solution is to ensure that the Wi-Fi profile provisioned has strict filtering criteria such that it matches only one certificate.

Enterprises deploying certificate based EAP authentication for VPN/Wi-Fi can face a situation where there are multiple certificates that meet the default criteria for authentication. This can lead to issues such as:

-   The user may be prompted to select the certificate.
-   The wrong certificate may get auto selected and cause an authentication failure.

A production ready deployment must have the appropriate certificate details as part of the profile being deployed. The following information explains how to create or update an EAP Configuration XML such that the extraneous certificates are filtered out and the appropriate certificate can be used for the authentication.

EAP XML must be updated with relevant information for your environment This can be done either manually by editing the XML sample below, or by using the step by step UI guide. After the EAP XML is updated, refer to instructions from your MDM to deploy the updated configuration as follows:

-   For Wi-Fi, look for the &lt;EAPConfig&gt; section of your current WLAN Profile XML (This is what you specify for the WLanXml node in the Wi-Fi CSP). Within these tags you will find the complete EAP configuration. Replace the section under &lt;EAPConfig&gt; with your updated XML and update your Wi-Fi profile. You might need to refer to your MDM’s guidance on how to deploy a new Wi-Fi profile.
-   For VPN, EAP Configuration is a separate field in the MDM Configuration. Work with your MDM provider to identify and update the appropriate Field.

For information about EAP Settings, see <https://technet.microsoft.com/library/hh945104.aspx#BKMK_Cfg_cert_Selct>

For information about generating an EAP XML, see [EAP configuration](eap-configuration.md)

For more information about extended key usage, see <http://tools.ietf.org/html/rfc5280#section-4.2.1.12>

For information about adding extended key usage (EKU) to a certificate, see <https://technet.microsoft.com/library/cc731792.aspx>

The following list describes the prerequisites for a certificate to be used with EAP:

-   The certificate must have at least one of the following EKU (Extended Key Usage) properties:

    -   Client Authentication
    -   As defined by RFC 5280, this is a well-defined OID with Value 1.3.6.1.5.5.7.3.2
    -   Any Purpose
    -   An EKU Defined and published by Microsoft, is a well-defined OID with value 1.3.6.1.4.1.311.10.12.1. The inclusion of this OID implies that the certificate can be used for any purpose. The advantage of this EKU over the All Purpose EKU is that additional non-critical or custom EKUs can still be added to the certificate for effective filtering.
    -   All Purpose
    -   As defined by RFC 5280, If a CA includes extended key usages to satisfy some application needs, but does not want to restrict usage of the key, the CA can add an Extended Key Usage Value of 0. A certificate with such an EKU can be used for all purposes.
-   The user or the computer certificate on the client chains to a trusted root CA
-   The user or the computer certificate does not fail any one of the checks that are performed by the CryptoAPI certificate store, and the certificate passes requirements in the remote access policy.
-   The user or the computer certificate does not fail any one of the certificate object identifier checks that are specified in the Internet Authentication Service (IAS)/Radius Server.
-   The Subject Alternative Name (SubjectAltName) extension in the certificate contains the user principal name (UPN) of the user.

The following XML sample explains the properties for the EAP TLS XML including certificate filtering.

> [!NOTE]
> For PEAP or TTLS Profiles the EAP TLS XML is embedded within some PEAP or TTLS specific elements.
 
```xml
<EapHostConfig xmlns="http://www.microsoft.com/provisioning/EapHostConfig">
 <EapMethod>
  <Type xmlns="http://www.microsoft.com/provisioning/EapCommon">13</Type>
  <!--The above property defines the Method type for EAP, 13 means EAP TLS -->

  <VendorId xmlns="http://www.microsoft.com/provisioning/EapCommon">0</VendorId>
  <VendorType xmlns="http://www.microsoft.com/provisioning/EapCommon">0</VendorType>
  <AuthorId xmlns="http://www.microsoft.com/provisioning/EapCommon">0</AuthorId>
  <!--The 3 properties above define the method publishers, this is seen primarily in 3rd party Vendor methods.-->
  <!-- For Microsoft EAP TLS the value of the above fields will always be 0 -->
 </EapMethod>
 <!-- Now that the EAP Method is Defined we will go into the Configuration -->
 <Config xmlns="http://www.microsoft.com/provisioning/EapHostConfig">
  <Eap xmlns="http://www.microsoft.com/provisioning/BaseEapConnectionPropertiesV1">
   <Type>13</Type>
   <EapType xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV1">
    <CredentialsSource>
     <!-- Credential Source can be either CertificateStore or SmartCard -->
     <CertificateStore>
      <SimpleCertSelection>true</SimpleCertSelection>
      <!--SimpleCertSelection automatically selects a cert if there are mutiple identical (Same UPN, Issuer, etc.) certs.-->
      <!--It uses a combination of rules to select the right cert-->
     </CertificateStore>
    </CredentialsSource>
    <ServerValidation>
     <!-- ServerValidation fields allow for checks on whether the server being connected to and the server cert being used are trusted -->
     <DisableUserPromptForServerValidation>false</DisableUserPromptForServerValidation>
     <ServerNames/>
    </ServerValidation>
    <DifferentUsername>false</DifferentUsername>
    <PerformServerValidation xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV2">false</PerformServerValidation>
    <AcceptServerName xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV2">false</AcceptServerName>
    <TLSExtensions xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV2">
     <!-- For filtering the relevant information is below -->
     <FilteringInfo xmlns="http://www.microsoft.com/provisioning/EapTlsConnectionPropertiesV3">
      <CAHashList Enabled="true">
       <!-- The above implies that you want to filter by Issuer Hash -->
       <IssuerHash>ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
        <!-- Issuing certs thumbprint goes here-->
       </IssuerHash>
       <!-- You can add multiple entries and it will find the list of certs that have at least one of these certs in its chain-->
      </CAHashList>
      <EKUMapping>
       <!-- This section defines Custom EKUs that you may be adding-->
       <!-- You do not need this section if you do not have custom EKUs -->
       <!-- You can have multiple EKUs defined here and then referenced below as shown -->
       <EKUMap>
        <EKUName>
         <!--Add a friendly Name for an EKU here for example -->ContostoITEKU</EKUName>
        <EKUOID>
         <!--Add the OID Value your CA adds to the certificate here, for example -->1.3.6.1.4.1.311.42.1.15</EKUOID>
       </EKUMap>
        <!-- All the EKU Names referenced in the example below must first be defined here
       <EKUMap>
        <EKUName>Example1</EKUName>
        <EKUOID>2.23.133.8.3</EKUOID>

       </EKUMap>
       <EKUMap>
        <EKUName>Example2</EKUName>
        <EKUOID>1.3.6.1.4.1.311.20.2.1</EKUOID>
       </EKUMap>
       -->
      </EKUMapping>
      <ClientAuthEKUList Enabled="true">
       <!-- The above implies that you want certs with Client Authentication EKU to be used for authentication -->
       <EKUMapInList>
        <!-- This section implies that the certificate should have the following custom EKUs in addition to the Client Authentication EKU -->
        <EKUName>
         <!--Use the name from the EKUMap Field above-->ContostoITEKU</EKUName>
       </EKUMapInList>
       <!-- You can have multiple Custom EKUs mapped here, Each additional EKU will be processed with an AND operand -->
       <!-- For example, Client Auth EKU AND ContosoITEKU AND Example1 etc. -->
       <EKUMapInList>
        <EKUName>Example1</EKUName>
       </EKUMapInList>
      </ClientAuthEKUList>
      <AllPurposeEnabled>true</AllPurposeEnabled>
      <!-- Implies that a certificate with the EKU field = 0 will be selected -->
      <AnyPurposeEKUList Enabled="true"/>
      <!-- Implies that a certificate with the EKU oid Value of 1.3.6.1.4.1.311.10.12.1 will be selected -->
      <!-- Like for Client Auth you can also add Custom EKU properties with AnyPurposeEKUList (but not with AllPurposeEnabled) -->
      <!-- So here is what the above policy implies.
      The certificate selected will have
      Issuer Thumbprint = ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
      AND
      ((Client Authentication EKU AND ContosoITEKU) OR (AnyPurposeEKU) OR AllPurpose Certificate)

      Any certificate(s) that match these criteria will be utilised for authentication
      -->
     </FilteringInfo>
    </TLSExtensions>
   </EapType>
  </Eap>
 </Config>
</EapHostConfig>
```

> [!NOTE]
> The EAP TLS XSD is located at **%systemdrive%\\Windows\\schemas\\EAPMethods\\eaptlsconnectionpropertiesv3.xsd**

Alternatively you can use the following procedure to create an EAP Configuration XML.

1.  Follow steps 1 through 7 in the [EAP configuration](eap-configuration.md) article.
2.  In the Microsoft VPN SelfHost Properties dialog box, select **Microsoft : Smart Card or other Certificate** from the drop down (this selects EAP TLS.)

    ![vpn selfhost properties window](images/certfiltering1.png)

    > [!NOTE]
    > For PEAP or TTLS, select the appropriate method and continue following this procedure.

3.  Click the **Properties** button underneath the drop down menu.
4.  In the **Smart Card or other Certificate Properties** menu, select the **Advanced** button.

    ![smart card or other certificate properties window](images/certfiltering2.png)
5.  In the **Configure Certificate Selection** menu, adjust the filters as needed.

    ![configure certificate selection window](images/certfiltering3.png)
6.  Click **OK** to close the windows to get back to the main rasphone.exe dialog box.
7.  Close the rasphone dialog box.
8.  Continue following the procedure in the [EAP configuration](eap-configuration.md) article from Step 9 to get an EAP TLS profile with appropriate filtering.

> [!NOTE]
> You can also set all the other applicable EAP Properties through this UI as well. A guide to what these properties mean can be found in [Extensible Authentication Protocol (EAP) Settings for Network Access](https://technet.microsoft.com/library/hh945104.aspx).


### Remote PIN reset not supported in Azure Active Directory joined mobile devices

In Windows 10 Mobile, remote PIN reset in Azure AD joined devices are not supported. Devices are wiped when you issue a remote PIN reset command using the RemoteLock CSP.

### MDM client will immediately check-in with the MDM server after client renews WNS channel URI

Starting in Windows 10, after the MDM client automatically renews the WNS channel URI, the MDM client will immediately check-in with the MDM server. Henceforth, for every MDM client check-in, the MDM server should send a GET request for "ProviderID/Push/ChannelURI" to retrieve the latest channel URI and compare it with the existing channel URI; then update the channel URI if necessary.

### User provisioning failure in Azure Active Directory joined Windows 10 PC

In Azure AD joined Windows 10 PC, provisioning /.User resources fails when the user is not logged in as an Azure AD user. If you attempt to join Azure AD from **Settings** &gt; **System** &gt; **About** user interface, make sure to log off and log on with Azure AD credentials to get your organizational configuration from your MDM server. This behavior is by design.

### Requirements to note for VPN certificates also used for Kerberos Authentication

If you want to use the certificate used for VPN authentication also for Kerberos authentication (required if you need access to on-premises resources using NTLM or Kerberos), the user's certificate must meet the requirements for smart card certificate, the Subject field should contain the DNS domain name in the DN or the SAN should contain a fully qualified UPN so that the DC can be located from the DNS registrations. If certificates that do not meet these requirements are used for VPN, users may fail to access resources that require Kerberos authentication. This issue primarily impacts Windows Phone.

### Device management agent for the push-button reset is not working

The DM agent for [push-button reset](https://msdn.microsoft.com/windows/hardware/commercialize/manufacture/desktop/push-button-reset-overview) keeps the registry settings for OMA DM sessions, but deletes the task schedules. The client enrollment is retained, but it never syncs with the MDM service.

## Frequently Asked Questions


### **Can there be more than one MDM server to enroll and manage devices in Windows 10?**
No. Only one MDM is allowed.

### **How do I set the maximum number of Azure Active Directory joined devices per user?**
1.  Login to the portal as tenant admin: https://manage.windowsazure.com.
2.  Click Active Directory on the left pane.
3.  Choose your tenant.
4.  Click **Configure**.
5.  Set quota to unlimited.

    ![aad maximum joined devices](images/faq-max-devices.png)
 

### **What is dmwappushsvc?**

Entry | Description
--------------- | --------------------
What is dmwappushsvc? | It is a Windows service that ships in Windows 10 operating system as a part of the windows management platform. It is used internally by the operating system as a queue for categorizing and processing all WAP messages, which include Windows management messages, MMS, NabSync, and Service Indication/Service Loading (SI/SL). The service also initiates and orchestrates management sync sessions with the MDM server. |
What data is handled by dmwappushsvc? | It is a component handling the internal workings of the management platform and involved in processing messages that have been received by the device remotely for management. The messages in the queue are serviced by another component that is also part of the Windows management stack to process messages. The service also routes and authenticates WAP messages received by the device to internal OS components that process them further: MMS, NabSync, SI/SL. This service does not send telemetry.|
How do I turn if off? | The service can be stopped from the "Services" console on the device (Start > Run > services.msc). However, since this is a component part of the OS and  required for the proper functioning of the device, we strongly recommend not to do this. Disabling this will cause your management to fail.|

## Change history for MDM documentation

To know what's changed in MDM documentation, see [Change history for MDM documentation](change-history-for-mdm-documentation.md).
