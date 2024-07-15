---
title: What's new in MDM enrollment and management
description: Discover what's new and breaking changes in mobile device management (MDM) enrollment and management experience across all Windows devices.
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 07/08/2024
---

# What's new in mobile device enrollment and management

This article provides information about what's new in mobile device management (MDM) enrollment and management experience across all Windows devices. This article also provides details about the breaking changes and known issues and frequently asked questions.

For details about Microsoft mobile device management protocols for Windows, see [[MS-MDM]: Mobile Device Management Protocol](/openspecs/windows_protocols/ms-mdm/33769a92-ac31-47ef-ae7b-dc8501f7104f) and [[MS-MDE2]: Mobile Device Enrollment Protocol Version 2]( https://go.microsoft.com/fwlink/p/?LinkId=619347).

## What's new in MDM for Windows 11, version 22H2

| New or updated article | Description |
|--|--|
| [DeviceStatus](mdm/devicestatus-csp.md) | Added the following node:<br><li>MDMClientCertAttestation |
| [eUUICs](mdm/euiccs-csp.md) | Added the following node:<br><li>IsDiscoveryServer |
| [PersonalDataEncryption](mdm/personaldataencryption-csp.md) | New CSP |
| [Policy CSP](mdm/policy-configuration-service-provider.md) | Added the following nodes:<br><li>Accounts/RestrictToEnterpriseDeviceAuthenticationOnly<br><li>DesktopAppInstaller/EnableAdditionalSources<br><li>DesktopAppInstaller/EnableAllowedSources<br><li>DesktopAppInstaller/EnableAppInstaller<br><li>DesktopAppInstaller/EnableDefaultSource<br><li>DesktopAppInstaller/EnableExperimentalFeatures<br><li>DesktopAppInstaller/EnableHashOverride<br><li>DesktopAppInstaller/EnableLocalManifestFiles<br><li>DesktopAppInstaller/EnableMicrosoftStoreSource<br><li>DesktopAppInstaller/EnableMSAppInstallerProtocol<br><li>DesktopAppInstaller/EnableSettings<br><li>DesktopAppInstaller/SourceAutoUpdateInterval<br><li>Education/EnableEduThemes<br><li>Experience/AllowSpotlightCollectionOnDesktop<br><li>FileExplorer/DisableGraphRecentItems<br><li>HumanPresence/ForceInstantDim<br><li>InternetExplorer/EnableGlobalWindowListInIEMode<br><li>InternetExplorer/HideIEAppRetirementNotification<br><li>InternetExplorer/ResetZoomForDialogInIEMode<br><li>LocalSecurityAuthority/AllowCustomSSPsAPs<br><li>LocalSecurityAuthority/ConfigureLsaProtectedProcess<br><li>MixedReality/AllowCaptivePortalBeforeLogon<br><li>MixedReality/AllowLaunchUriInSingleAppKiosk<br><li>MixedReality/AutoLogonUser<br><li>MixedReality/ConfigureMovingPlatform<br><li>MixedReality/ConfigureNtpClient<br><li>MixedReality/ManualDownDirectionDisabled<br><li>MixedReality/NtpClientEnabled<br><li>MixedReality/SkipCalibrationDuringSetup<br><li>MixedReality/SkipTrainingDuringSetup<br><li>NetworkListManager/AllowedTlsAuthenticationEndpoints<br><li>NetworkListManager/ConfiguredTLSAuthenticationNetworkName<br><li>Printers/ConfigureCopyFilesPolicy<br><li>Printers/ConfigureDriverValidationLevel<br><li>Printers/ConfigureIppPageCountsPolicy<br><li>Printers/ConfigureRedirectionGuard<br><li>Printers/ConfigureRpcConnectionPolicy<br><li>Printers/ConfigureRpcListenerPolicy<br><li>Printers/ConfigureRpcTcpPort<br><li>Printers/ManageDriverExclusionList<br><li>Printers/RestrictDriverInstallationToAdministrators<br><li>RemoteDesktopServices/DoNotAllowWebAuthnRedirection<br><li>Search/AllowSearchHighlights<br><li>Search/DisableSearch<br><li>SharedPC/EnableSharedPCModeWithOneDriveSync<br><li>Start/DisableControlCenter<br><li>Start/DisableEditingQuickSettings<br><li>Start/HideRecommendedSection<br><li>Start/HideTaskViewButton<br><li>Start/SimplifyQuickSettings<br><li>Stickers/EnableStickers<br><li>Textinput/allowimenetworkaccess<br><li>Update/NoUpdateNotificationDuringActiveHours<br><li>WebThreatDefense/EnableService<br><li>WebThreatDefense/NotifyMalicious<br><li>WebThreatDefense/NotifyPasswordReuse<br><li>WebThreatDefense/NotifyUnsafeApp<br><li>Windowslogon/EnableMPRNotifications |
| [SecureAssessment](mdm/secureassessment-csp.md) | Added the following node:<br><li>Assessments |
| [WindowsAutopilot](mdm/windowsautopilot-csp.md) | Added the following node:<br><li>HardwareMismatchRemediationData |

## What's new in MDM for Windows 11, version 21H2

| New or updated article | Description |
|--|--|
| [Policy CSP](mdm/policy-configuration-service-provider.md) |  Added the following nodes:<br><li>Kerberos/PKInitHashAlgorithmConfiguration<br><li>Kerberos/PKInitHashAlgorithmSHA1<br><li>Kerberos/PKInitHashAlgorithmSHA256<br><li>Kerberos/PKInitHashAlgorithmSHA384<br><li>Kerberos/PKInitHashAlgorithmSHA512<br><li>NewsAndInterests/AllowNewsAndInterests<br><li>Experiences/ConfigureChatIcon<br><li>Start/ConfigureStartPins<br><li>Virtualizationbasedtechnology/HypervisorEnforcedCodeIntegrity<br><li>Virtualizationbasedtechnology/RequireUEFIMemoryAttributesTable |
| [DMClient CSP](mdm/dmclient-csp.md) | Updated the description of the following nodes:<br><li>Provider/ProviderID/ConfigLock/Lock<br><li>Provider/ProviderID/ConfigLock/UnlockDuration<br><li>Provider/ProviderID/ConfigLock/SecuredCore |
| [PrinterProvisioning](mdm/universalprint-csp.md) | New CSP |

## What's new in MDM for Windows 10, version 20H2

|New or updated article|Description|
|-----|-----|
| [Policy CSP](mdm/policy-configuration-service-provider.md) |  Added the following nodes:<br><li>Experience/DisableCloudOptimizedContent<br><li>LocalUsersAndGroups/Configure<br><li>MixedReality/AADGroupMembershipCacheValidityInDays<br><li>MixedReality/BrightnessButtonDisabled<br><li>MixedReality/FallbackDiagnostics<br><li>MixedReality/MicrophoneDisabled<br><li>MixedReality/VolumeButtonDisabled<br><li>Multitasking/BrowserAltTabBlowout|
| [SurfaceHub CSP](mdm/surfacehub-csp.md) | Added the following new node:<br><li>Properties/SleepMode |
| [WindowsDefenderApplicationGuard CSP](mdm/windowsdefenderapplicationguard-csp.md) | Updated the description of the following node:<br><li>Settings/AllowWindowsDefenderApplicationGuard |

## What's new in MDM for Windows 10, version 2004

| New or updated article | Description |
|-----|-----|
| [Policy CSP](mdm/policy-configuration-service-provider.md) |  Added the following nodes:<br><li>ApplicationManagement/BlockNonAdminUserInstall<br><li>Bluetooth/SetMinimumEncryptionKeySize<br><li>DeliveryOptimization/DOCacheHostSource<br><li>DeliveryOptimization/DOMaxBackgroundDownloadBandwidth<br><li>DeliveryOptimization/DOMaxForegroundDownloadBandwidth<br><li>Education/AllowGraphingCalculator<br><li>TextInput/ConfigureJapaneseIMEVersion<br><li>TextInput/ConfigureSimplifiedChineseIMEVersion<br><li>TextInput/ConfigureTraditionalChineseIMEVersion<br><br>Updated the following policy:<br><li>DeliveryOptimization/DOCacheHost<br><br>Deprecated the following policies:<br><li>DeliveryOptimization/DOMaxDownloadBandwidth<br><li>DeliveryOptimization/DOMaxUploadBandwidth<br><li>DeliveryOptimization/DOPercentageMaxDownloadBandwidth |
| [DevDetail CSP](mdm/devdetail-csp.md) | Added the following new node:<br><li>Ext/Microsoft/DNSComputerName |
| [EnterpriseModernAppManagement CSP](mdm/enterprisemodernappmanagement-csp.md) | Added the following node:<br><li>IsStub |
| [SUPL CSP](mdm/supl-csp.md) | Added the following node:<br><li>FullVersion |

## What's new in MDM for Windows 10, version 1909

| New or updated article | Description |
|-----|-----|
| [BitLocker CSP](mdm/bitlocker-csp.md) | Added the following nodes:<br><li>ConfigureRecoveryPasswordRotation<br><li>RotateRecoveryPasswords<br><li>RotateRecoveryPasswordsStatus<br><li>RotateRecoveryPasswordsRequestID|

## What's new in MDM for Windows 10, version 1903

| New or updated article | Description |
|-----|-----|
|[Policy CSP](mdm/policy-configuration-service-provider.md) | Added the following nodes:<br><li>DeliveryOptimization/DODelayCacheServerFallbackBackground<br><li>DeliveryOptimization/DODelayCacheServerFallbackForeground<br><li>DeviceHealthMonitoring/AllowDeviceHealthMonitoring<br><li>DeviceHealthMonitoring/ConfigDeviceHealthMonitoringScope<br><li>DeviceHealthMonitoring/ConfigDeviceHealthMonitoringUploadDestination<br><li>DeviceInstallation/AllowInstallationOfMatchingDeviceInstanceIDs<br><li>DeviceInstallation/PreventInstallationOfMatchingDeviceInstanceIDs<br><li>Experience/ShowLockOnUserTile<br><li>InternetExplorer/AllowEnhancedSuggestionsInAddressBar<br><li>InternetExplorer/DisableActiveXVersionListAutoDownload<br><li>InternetExplorer/DisableCompatView<br><li>InternetExplorer/DisableFeedsBackgroundSync<br><li>InternetExplorer/DisableGeolocation<br><li>InternetExplorer/DisableWebAddressAutoComplete<br><li>InternetExplorer/NewTabDefaultPage<br><li>Power/EnergySaverBatteryThresholdOnBattery<br><li>Power/EnergySaverBatteryThresholdPluggedIn<br><li>Power/SelectLidCloseActionOnBatterybr><li>Power/SelectLidCloseActionPluggedIn<br><li>Power/SelectPowerButtonActionOnBattery<br><li>Power/SelectPowerButtonActionPluggedIn<br><li>Power/SelectSleepButtonActionOnBattery<br><li>Power/SelectSleepButtonActionPluggedIn<br><li>Power/TurnOffHybridSleepOnBattery<br><li>Power/TurnOffHybridSleepPluggedIn<br><li>Power/UnattendedSleepTimeoutOnBattery<br><li>Power/UnattendedSleepTimeoutPluggedIn<br><li>Privacy/LetAppsActivateWithVoice<br><li>Privacy/LetAppsActivateWithVoiceAboveLock<br><li>Search/AllowFindMyFiles<br><li>ServiceControlManager/SvchostProcessMitigation<br><li>System/AllowCommercialDataPipelinebr><li>System/TurnOffFileHistory<br><li>TimeLanguageSettings/ConfigureTimeZonebr><li>Troubleshooting/AllowRecommendations<br><li>Update/AutomaticMaintenanceWakeUp<br><li>Update/ConfigureDeadlineForFeatureUpdates<br><li>Update/ConfigureDeadlineForQualityUpdates<br><li>Update/ConfigureDeadlineGracePeriod<br><li>WindowsLogon/AllowAutomaticRestartSignOn<br><li>WindowsLogon/ConfigAutomaticRestartSignOn<br><li>WindowsLogon/EnableFirstLogonAnimation|
| [Policy CSP - Audit](mdm/policy-csp-audit.md) | Added the new Audit policy CSP. |
| [ApplicationControl CSP](mdm/applicationcontrol-csp.md) | Added the new CSP. |
| [Defender CSP](mdm/defender-csp.md) | Added the following new nodes:<br><li>Health/TamperProtectionEnabled<br><li>Health/IsVirtualMachine<br><li>Configuration<br><li>Configuration/TamperProtection<br><li>Configuration/EnableFileHashComputation |
| [DiagnosticLog CSP](mdm/diagnosticlog-csp.md) <br> [DiagnosticLog DDF](mdm/diagnosticlog-ddf.md) | Added version 1.4 of the CSP. <br>Added the new 1.4 version of the DDF. <br>Added the following new nodes:<br><li>Policy<br><li>Policy/Channels<br><li>Policy/Channels/ChannelName<br><li>Policy/Channels/ChannelName/MaximumFileSize<br><li>Policy/Channels/ChannelName/SDDL<br><li>Policy/Channels/ChannelName/ActionWhenFull<br><li>Policy/Channels/ChannelName/Enabled<br><li>DiagnosticArchive<br><li>DiagnosticArchive/ArchiveDefinition<br><li>DiagnosticArchive/ArchiveResults |
| [EnrollmentStatusTracking CSP](mdm/enrollmentstatustracking-csp.md) | Added the new CSP. |
| [PassportForWork CSP](mdm/passportforwork-csp.md) | Added the following new nodes:<br><li>SecurityKey<br><li>SecurityKey/UseSecurityKeyForSignin |

## What's new in MDM for Windows 10, version 1809

| New or updated article | Description |
|-----|-----|
|[Policy CSP](mdm/policy-configuration-service-provider.md) |  Added the following nodes:<br><li>ApplicationManagement/LaunchAppAfterLogOn<br><li>ApplicationManagement/ScheduleForceRestartForUpdateFailures<br><li>Authentication/EnableFastFirstSignIn (Preview mode only<br><li>Authentication/EnableWebSignIn (Preview mode only<br><li>Authentication/PreferredAadTenantDomainName<br><li>Browser/AllowFullScreenMode<br><li>Browser/AllowPrelaunch<br><li>Browser/AllowPrinting<br><li>Browser/AllowSavingHistory<br><li>Browser/AllowSideloadingOfExtensions<br><li>Browser/AllowTabPreloading<br><li>Browser/AllowWebContentOnNewTabPage<br><li>Browser/ConfigureFavoritesBar<br><li>Browser/ConfigureHomeButton<br><li>Browser/ConfigureKioskMode<br><li>Browser/ConfigureKioskResetAfterIdleTimeout<br><li>Browser/ConfigureOpenMicrosoftEdgeWith<br><li>Browser/ConfigureTelemetryForMicrosoft365Analytics<br><li>Browser/PreventCertErrorOverrides<br><li>Browser/SetHomeButtonURL<br><li>Browser/SetNewTabPageURL<br><li>Browser/UnlockHomeButton<br><li>Defender/CheckForSignaturesBeforeRunningScan<br><li>Defender/DisableCatchupFullScan<br><li>Defender/DisableCatchupQuickScan<br><li>Defender/EnableLowCPUPriority<br><li>Defender/SignatureUpdateFallbackOrder<br><li>Defender/SignatureUpdateFileSharesSources<br><li>DeviceGuard/ConfigureSystemGuardLaunch<br><li>DeviceInstallation/AllowInstallationOfMatchingDeviceIDs<br><li>DeviceInstallation/AllowInstallationOfMatchingDeviceSetupClasses<br><li>DeviceInstallation/PreventDeviceMetadataFromNetwork<br><li>DeviceInstallation/PreventInstallationOfDevicesNotDescribedByOtherPolicySettings<br><li>DmaGuard/DeviceEnumerationPolicy<br><li>Experience/AllowClipboardHistory<br><li>Experience/DoNotSyncBrowserSettings<br><li>Experience/PreventUsersFromTurningOnBrowserSyncing<br><li>Kerberos/UPNNameHints<br><li>Privacy/AllowCrossDeviceClipboard<br><li>Privacy/DisablePrivacyExperience<br><li>Privacy/UploadUserActivities<br><li>Security/RecoveryEnvironmentAuthentication<br><li>System/AllowDeviceNameInDiagnosticData<br><li>System/ConfigureMicrosoft365UploadEndpoint<br><li>System/DisableDeviceDelete<br><li>System/DisableDiagnosticDataViewer<br><li>Storage/RemovableDiskDenyWriteAccess<br><li>TaskManager/AllowEndTask<br><li>Update/DisableWUfBSafeguards<br><li>Update/EngagedRestartDeadlineForFeatureUpdates<br><li>Update/EngagedRestartSnoozeScheduleForFeatureUpdates<br><li>Update/EngagedRestartTransitionScheduleForFeatureUpdates<br><li>Update/SetDisablePauseUXAccess<br><li>Update/SetDisableUXWUAccess<br><li>WindowsDefenderSecurityCenter/DisableClearTpmButton<br><li>WindowsDefenderSecurityCenter/DisableTpmFirmwareUpdateWarning<br><li>WindowsDefenderSecurityCenter/HideWindowsSecurityNotificationAreaControl<br><li>WindowsLogon/DontDisplayNetworkSelectionUI |
| [BitLocker CSP](mdm/bitlocker-csp.md) | Added a new node AllowStandardUserEncryption.<br><li>Added support for Pro edition. |
| [Defender CSP](mdm/defender-csp.md) | Added a new node Health/ProductStatus. |
| [DevDetail CSP](mdm/devdetail-csp.md) | Added a new node SMBIOSSerialNumber. |
| [EnterpriseModernAppManagement CSP](mdm/enterprisemodernappmanagement-csp.md) | Added Non-Removable setting under AppManagement node. |
| [Office CSP](mdm/office-csp.md) | Added FinalStatus setting. |
| [PassportForWork CSP](mdm/passportforwork-csp.md) | Added new settings. |
| [RemoteWipe CSP](mdm/remotewipe-csp.md) | Added new settings. |
| [SUPL CSP](mdm/supl-csp.md) | Added three new certificate nodes. |
| [TenantLockdown CSP](mdm/tenantlockdown-csp.md) | Added new CSP. |
| [Wifi CSP](mdm/wifi-csp.md) | Added a new node WifiCost. |
| [WindowsDefenderApplicationGuard CSP](mdm/windowsdefenderapplicationguard-csp.md) | Added new settings. |
| [WindowsLicensing CSP](mdm/windowslicensing-csp.md) | Added S mode settings and SyncML examples. |
| [Win32CompatibilityAppraiser CSP](mdm/win32compatibilityappraiser-csp.md) | New CSP. |
