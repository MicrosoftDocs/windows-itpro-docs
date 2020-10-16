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
ms.date: 08/18/2020
---

# What's new in mobile device enrollment and management


This topic provides information about what's new and breaking changes in Windows 10 mobile device management (MDM) enrollment and management experience across all Windows 10 devices.

For details about Microsoft mobile device management protocols for Windows 10 see [\[MS-MDM\]: Mobile Device Management Protocol](https://go.microsoft.com/fwlink/p/?LinkId=619346) and [\[MS-MDE2\]: Mobile Device Enrollment Protocol Version 2]( https://go.microsoft.com/fwlink/p/?LinkId=619347). 

- **What’s new in MDM for Windows 10 versions**
  - [What’s new in MDM for Windows 10, version 2010](#whats-new-in-mdm-for-windows-10-version-2010)
  - [What’s new in MDM for Windows 10, version 2004](#whats-new-in-mdm-for-windows-10-version-2004)
  - [What’s new in MDM for Windows 10, version 1909](#whats-new-in-mdm-for-windows-10-version-1909)
  - [What’s new in MDM for Windows 10, version 1903](#whats-new-in-mdm-for-windows-10-version-1903)
  - [What’s new in MDM for Windows 10, version 1809](#whats-new-in-mdm-for-windows-10-version-1809)
  - [What’s new in MDM for Windows 10, version 1803](#whats-new-in-mdm-for-windows-10-version-1803)
  - [What’s new in MDM for Windows 10, version 1709](#whats-new-in-mdm-for-windows-10-version-1709)
  - [What’s new in MDM for Windows 10, version 1703](#whats-new-in-mdm-for-windows-10-version-1703)
  - [What’s new in MDM for Windows 10, version 1607](#whats-new-in-mdm-for-windows-10-version-1607)
  - [What’s new in MDM for Windows 10, version 1511](#whats-new-in-mdm-for-windows-10-version-1511)

- **Breaking changes and known issues**
  - [Get command inside an atomic command is not supported](#get-command-inside-an-atomic-command-is-not-supported)
  - [Notification channel URI not preserved during upgrade from Windows 8.1 to Windows 10](#notification-channel-uri-not-preserved-during-upgrade-from-windows-81-to-windows-10)
  - [Apps installed using WMI classes are not removed](#apps-installed-using-wmi-classes-are-not-removed)
  - [Passing CDATA in SyncML does not work](#passing-cdata-in-syncml-does-not-work)
  - [SSL settings in IIS server for SCEP must be set to "Ignore"](#ssl-settings-in-iis-server-for-scep-must-be-set-to-ignore)
  - [MDM enrollment fails on the mobile device when traffic is going through proxy](#mdm-enrollment-fails-on-the-mobile-device-when-traffic-is-going-through-proxy)
  - [Server-initiated unenrollment failure](#server-initiated-unenrollment-failure)
  - [Certificates causing issues with Wi-Fi and VPN](#certificates-causing-issues-with-wi-fi-and-vpn)
  - [Version information for mobile devices](#version-information-for-mobile-devices)
    - [Apps dependent on Microsoft Frameworks may get blocked in phones prior to build 10586.218](#apps-dependent-on-microsoft-frameworks-may-get-blocked-in-phones-prior-to-build-10586218)
  - [Multiple certificates might cause Wi-Fi connection instabilities in Windows 10 Mobile](#multiple-certificates-might-cause-wi-fi-connection-instabilities-in-windows-10-mobile)
  - [Remote PIN reset not supported in Azure Active Directory joined mobile devices](#remote-pin-reset-not-supported-in-azure-active-directory-joined-mobile-devices)
  - [MDM client will immediately check-in with the MDM server after client renews WNS channel URI](#mdm-client-will-immediately-check-in-with-the-mdm-server-after-client-renews-wns-channel-uri)
  - [User provisioning failure in Azure Active Directory joined Windows 10 PC](#user-provisioning-failure-in-azure-active-directory-joined-windows-10-pc)
  - [Requirements to note for VPN certificates also used for Kerberos Authentication](#requirements-to-note-for-vpn-certificates-also-used-for-kerberos-authentication)
  - [Device management agent for the push-button reset is not working](#device-management-agent-for-the-push-button-reset-is-not-working)

- **Frequently Asked Questions**
  - [Can there be more than 1 MDM server to enroll and manage devices in Windows 10?](#can-there-be-more-than-1-mdm-server-to-enroll-and-manage-devices-in-windows-10)
  - [How do I set the maximum number of Azure Active Directory joined devices per user?](#how-do-i-set-the-maximum-number-of-azure-active-directory-joined-devices-per-user)
  - [What is dmwappushsvc?](#what-is-dmwappushsvc)

- **Change history in MDM documentation**
    - [September 2020](#september-2020)
    - [August 2020](#august-2020)
    - [July 2020](#july-2020)
    - [June 2020](#june-2020)
    - [May 2020](#may-2020)
    - [February 2020](#february-2020)
    - [January 2020](#january-2020)
    - [November 2019](#november-2019)
    - [October 2019](#october-2019)
    - [September 2019](#september-2019)
    - [August 2019](#august-2019)
    - [July 2019](#july-2019)
    - [June 2019](#june-2019)
    - [May 2019](#may-2019)
    - [April 2019](#april-2019)
    - [March 2019](#march-2019)
    - [February 2019](#february-2019)
    - [January 2019](#january-2019)
    - [December 2018](#december-2018)
    - [September 2018](#september-2018)
    - [August 2018](#august-2018)
    - [July 2018](#july-2018)
    - [June 2018](#june-2018)
    - [May 2018](#may-2018)
    - [April 2018](#april-2018)
    - [March 2018](#march-2018)
    - [February 2018](#february-2018)
    - [January 2018](#january-2018)
    - [December 2017](#december-2017)
    - [November 2017](#november-2017)
    - [October 2017](#october-2017)
    - [September 2017](#september-2017)
    - [August 2017](#august-2017)

## What’s new in MDM for Windows 10, version 2010
|New or updated topic|Description|
|-----|-----|
|[Policy CSP - MixedReality](policy-csp-mixedreality.md)|Added the new MixedReality policy CSP.|
|[Policy CSP - LocalUsersandGroups](policy-csp-localusersandgroups.md)|Added the new LocalUsersandGroups policy CSP.|

## What’s new in MDM for Windows 10, version 2004
| New or updated topic | Description |
|-----|-----|
| [Policy CSP](policy-configuration-service-provider.md) | Added the following new policies in Windows 10, version 2004: <br>- [ApplicationManagement/BlockNonAdminUserInstall](policy-csp-applicationmanagement.md#applicationmanagement-blocknonadminuserinstall)<br>- [Bluetooth/SetMinimumEncryptionKeySize](policy-csp-bluetooth.md#bluetooth-setminimumencryptionkeysize)<br>- [DeliveryOptimization/DOCacheHostSource]("policy-csp-deliveryoptimization.md#deliveryoptimization-docachehostsource)<br>- [DeliveryOptimization/DOMaxBackgroundDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxbackgrounddownloadbandwidth)<br>- [DeliveryOptimization/DOMaxForegroundDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxforegrounddownloadbandwidth)<br>- [Education/AllowGraphingCalculator](policy-csp-education.md#education-allowgraphingcalculator)<br>- [TextInput/ConfigureJapaneseIMEVersion](policy-csp-textinput.md#textinput-configurejapaneseimeversion)<br>- [TextInput/ConfigureSimplifiedChineseIMEVersion](policy-csp-textinput.md#textinput-configuresimplifiedchineseimeversion)<br>- [TextInput/ConfigureTraditionalChineseIMEVersion](policy-csp-textinput.md#textinput-configuretraditionalchineseimeversion)<br><br>Updated the following policy in Windows 10, version 2004:<br>- [DeliveryOptimization/DOCacheHost](policy-csp-deliveryoptimization.md#deliveryoptimization-docachehost)<br><br>Deprecated the following policies in Windows 10, version 2004:<br>- [DeliveryOptimization/DOMaxDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxdownloadbandwidth)<br>- [DeliveryOptimization/DOMaxUploadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxuploadbandwidth)<br>- [DeliveryOptimization/DOPercentageMaxDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-dopercentagemaxdownloadbandwidth) |
| [DevDetail CSP](devdetail-csp.md) | Added the following new node:<br>- Ext/Microsoft/DNSComputerName |
| [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md) | Added the following new node:<br>- IsStub |
| [SUPL CSP](supl-csp.md) | Added the following new node:<br>- FullVersion |


## What’s new in MDM for Windows 10, version 1909
| New or updated topic | Description |
|-----|-----|
| [BitLocker CSP](bitlocker-csp.md) | Added the following new nodes in Windows 10, version 1909:<br>- ConfigureRecoveryPasswordRotation<br>- RotateRecoveryPasswords<br>- RotateRecoveryPasswordsStatus<br>- RotateRecoveryPasswordsRequestID|

## What’s new in MDM for Windows 10, version 1903
| New or updated topic | Description |
|-----|-----|
|[Policy CSP](policy-configuration-service-provider.md) | Added the following new policies in Windows 10, version 1903:<br>- [DeliveryOptimization/DODelayCacheServerFallbackBackground](policy-csp-deliveryoptimization.md#deliveryoptimization-dodelaycacheserverfallbackbackground)<br>- [DeliveryOptimization/DODelayCacheServerFallbackForeground](policy-csp-deliveryoptimization.md#deliveryoptimization-dodelaycacheserverfallbackforeground)<br>- [DeviceHealthMonitoring/AllowDeviceHealthMonitoring](policy-csp-devicehealthmonitoring.md#devicehealthmonitoring-allowdevicehealthmonitoring)<br>- [DeviceHealthMonitoring/ConfigDeviceHealthMonitoringScope](policy-csp-devicehealthmonitoring.md#devicehealthmonitoring-configdevicehealthmonitoringscope)<br>- [DeviceHealthMonitoring/ConfigDeviceHealthMonitoringUploadDestination](policy-csp-devicehealthmonitoring.md#devicehealthmonitoring-configdevicehealthmonitoringuploaddestination)<br>- [DeviceInstallation/AllowInstallationOfMatchingDeviceInstanceIDs](policy-csp-deviceinstallation.md#deviceinstallation-allowinstallationofmatchingdeviceinstanceids)<br>- [DeviceInstallation/PreventInstallationOfMatchingDeviceInstanceIDs](policy-csp-deviceinstallation.md#deviceinstallation-preventinstallationofmatchingdeviceinstanceids)<br>- [Experience/ShowLockOnUserTile](policy-csp-experience.md#experience-showlockonusertile)<br>- [InternetExplorer/AllowEnhancedSuggestionsInAddressBar](policy-csp-internetexplorer.md#internetexplorer-allowenhancedsuggestionsinaddressbar)<br>- [InternetExplorer/DisableActiveXVersionListAutoDownload](policy-csp-internetexplorer.md#internetexplorer-disableactivexversionlistautodownload)<br>- [InternetExplorer/DisableCompatView](policy-csp-internetexplorer.md#internetexplorer-disablecompatview)<br>- [InternetExplorer/DisableFeedsBackgroundSync](policy-csp-internetexplorer.md#internetexplorer-disablefeedsbackgroundsync)<br>- [InternetExplorer/DisableGeolocation](policy-csp-internetexplorer.md#internetexplorer-disablegeolocation)<br>- [InternetExplorer/DisableWebAddressAutoComplete](policy-csp-internetexplorer.md#internetexplorer-disablewebaddressautocomplete)<br>- [InternetExplorer/NewTabDefaultPage](policy-csp-internetexplorer.md#internetexplorer-newtabdefaultpage)<br>- [Power/EnergySaverBatteryThresholdOnBattery](policy-csp-power.md#power-energysaverbatterythresholdonbattery)<br>- [Power/EnergySaverBatteryThresholdPluggedIn](policy-csp-power.md#power-energysaverbatterythresholdpluggedin)<br>- [Power/SelectLidCloseActionOnBattery](policy-csp-power.md#power-selectlidcloseactiononbattery)<br>- [Power/SelectLidCloseActionPluggedIn](policy-csp-power.md#power-selectlidcloseactionpluggedin)<br>- [Power/SelectPowerButtonActionOnBattery](policy-csp-power.md#power-selectpowerbuttonactiononbattery)<br>- [Power/SelectPowerButtonActionPluggedIn](policy-csp-power.md#power-selectpowerbuttonactionpluggedin)<br>- [Power/SelectSleepButtonActionOnBattery](policy-csp-power.md#power-selectsleepbuttonactiononbattery)<br>- [Power/SelectSleepButtonActionPluggedIn](policy-csp-power.md#power-selectsleepbuttonactionpluggedin)<br>- [Power/TurnOffHybridSleepOnBattery](policy-csp-power.md#power-turnoffhybridsleeponbattery)<br>- [Power/TurnOffHybridSleepPluggedIn](policy-csp-power.md#power-turnoffhybridsleeppluggedin)<br>- [Power/UnattendedSleepTimeoutOnBattery](policy-csp-power.md#power-unattendedsleeptimeoutonbattery)<br>- [Power/UnattendedSleepTimeoutPluggedIn](policy-csp-power.md#power-unattendedsleeptimeoutpluggedin)<br>- [Privacy/LetAppsActivateWithVoice](policy-csp-privacy.md#privacy-letappsactivatewithvoice)<br>- [Privacy/LetAppsActivateWithVoiceAboveLock](policy-csp-privacy.md#privacy-letappsactivatewithvoiceabovelock)<br>- [Search/AllowFindMyFiles](policy-csp-search.md#search-allowfindmyfiles)<br>- [ServiceControlManager/SvchostProcessMitigation](policy-csp-servicecontrolmanager.md#servicecontrolmanager-svchostprocessmitigation)<br>- [System/AllowCommercialDataPipeline](policy-csp-system.md#system-allowcommercialdatapipeline)<br>- [System/TurnOffFileHistory](policy-csp-system.md#system-turnofffilehistory)<br>- [TimeLanguageSettings/ConfigureTimeZone](policy-csp-timelanguagesettings.md#timelanguagesettings-configuretimezone)<br>- [Troubleshooting/AllowRecommendations](policy-csp-troubleshooting.md#troubleshooting-allowrecommendations)<br>- [Update/AutomaticMaintenanceWakeUp](policy-csp-update.md#update-automaticmaintenancewakeup)<br>- [Update/ConfigureDeadlineForFeatureUpdates](policy-csp-update.md#update-configuredeadlineforfeatureupdates)<br>- [Update/ConfigureDeadlineForQualityUpdates](policy-csp-update.md#update-configuredeadlineforqualityupdates)<br>- [Update/ConfigureDeadlineGracePeriod](policy-csp-update.md#update-configuredeadlinegraceperiod)<br>- [WindowsLogon/AllowAutomaticRestartSignOn](policy-csp-windowslogon.md#windowslogon-allowautomaticrestartsignon)<br>- [WindowsLogon/ConfigAutomaticRestartSignOn](policy-csp-windowslogon.md#windowslogon-configautomaticrestartsignon)<br>- [WindowsLogon/EnableFirstLogonAnimation](policy-csp-windowslogon.md#windowslogon-enablefirstlogonanimation)|
| [Policy CSP - Audit](policy-csp-audit.md) | Added the new Audit policy CSP. |
| [ApplicationControl CSP](applicationcontrol-csp.md) | Added the new CSP. |
| [Defender CSP](defender-csp.md) | Added the following new nodes:<br>- Health/TamperProtectionEnabled<br>- Health/IsVirtualMachine<br>- Configuration<br>- Configuration/TamperProtection<br>- Configuration/EnableFileHashComputation |
| [DiagnosticLog CSP](diagnosticlog-csp.md) <br> [DiagnosticLog DDF](diagnosticlog-ddf.md) | Added version 1.4 of the CSP in Windows 10, version 1903. <br>Added the new 1.4 version of the DDF. <br>Added the following new nodes:<br>- Policy<br>- Policy/Channels<br>- Policy/Channels/ChannelName<br>- Policy/Channels/ChannelName/MaximumFileSize<br>- Policy/Channels/ChannelName/SDDL<br>- Policy/Channels/ChannelName/ActionWhenFull<br>- Policy/Channels/ChannelName/Enabled<br>- DiagnosticArchive<br>- DiagnosticArchive/ArchiveDefinition<br>- DiagnosticArchive/ArchiveResults |
| [EnrollmentStatusTracking CSP](enrollmentstatustracking-csp.md) | Added the new CSP. |
| [PassportForWork CSP](passportforwork-csp.md) | Added the following new nodes:<br>- SecurityKey<br>- SecurityKey/UseSecurityKeyForSignin |


## What’s new in MDM for Windows 10, version 1809

| New or updated topic | Description |
|-----|-----|
|[Policy CSP](policy-configuration-service-provider.md) | Added the following new policy settings in Windows 10, version 1809:<br>- ApplicationManagement/LaunchAppAfterLogOn<br>- ApplicationManagement/ScheduleForceRestartForUpdateFailures<br>- Authentication/EnableFastFirstSignIn (Preview mode only)<br>- Authentication/EnableWebSignIn (Preview mode only)<br>- Authentication/PreferredAadTenantDomainName<br>- Browser/AllowFullScreenMode<br>- Browser/AllowPrelaunch<br>- Browser/AllowPrinting<br>- Browser/AllowSavingHistory<br>- Browser/AllowSideloadingOfExtensions<br>- Browser/AllowTabPreloading<br>- Browser/AllowWebContentOnNewTabPage<br>- Browser/ConfigureFavoritesBar<br>- Browser/ConfigureHomeButton<br>- Browser/ConfigureKioskMode<br>- Browser/ConfigureKioskResetAfterIdleTimeout<br>- Browser/ConfigureOpenMicrosoftEdgeWith<br>- Browser/ConfigureTelemetryForMicrosoft365Analytics<br>- Browser/PreventCertErrorOverrides<br>- Browser/SetHomeButtonURL<br>- Browser/SetNewTabPageURL<br>- Browser/UnlockHomeButton<br>- Defender/CheckForSignaturesBeforeRunningScan<br>- Defender/DisableCatchupFullScan<br>- Defender/DisableCatchupQuickScan<br>- Defender/EnableLowCPUPriority<br>- Defender/SignatureUpdateFallbackOrder<br>- Defender/SignatureUpdateFileSharesSources<br>- DeviceGuard/ConfigureSystemGuardLaunch<br>- DeviceInstallation/AllowInstallationOfMatchingDeviceIDs<br>- DeviceInstallation/AllowInstallationOfMatchingDeviceSetupClasses<br>- DeviceInstallation/PreventDeviceMetadataFromNetwork<br>- DeviceInstallation/PreventInstallationOfDevicesNotDescribedByOtherPolicySettings<br>- DmaGuard/DeviceEnumerationPolicy<br>- Experience/AllowClipboardHistory<br>- Experience/DoNotSyncBrowserSettings<br>- Experience/PreventUsersFromTurningOnBrowserSyncing<br>- Kerberos/UPNNameHints<br>- Privacy/AllowCrossDeviceClipboard<br>- Privacy/DisablePrivacyExperience<br>- Privacy/UploadUserActivities<br>- Security/RecoveryEnvironmentAuthentication<br>- System/AllowDeviceNameInDiagnosticData<br>- System/ConfigureMicrosoft365UploadEndpoint<br>- System/DisableDeviceDelete<br>- System/DisableDiagnosticDataViewer<br>- Storage/RemovableDiskDenyWriteAccess<br>- TaskManager/AllowEndTask<br>- Update/EngagedRestartDeadlineForFeatureUpdates<br>- Update/EngagedRestartSnoozeScheduleForFeatureUpdates<br>- Update/EngagedRestartTransitionScheduleForFeatureUpdates<br>- Update/SetDisablePauseUXAccess<br>- Update/SetDisableUXWUAccess<br>- WindowsDefenderSecurityCenter/DisableClearTpmButton<br>- WindowsDefenderSecurityCenter/DisableTpmFirmwareUpdateWarning<br>- WindowsDefenderSecurityCenter/HideWindowsSecurityNotificationAreaControl<br>- WindowsLogon/DontDisplayNetworkSelectionUI |
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

| New or updated topic | Description |
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

| New or updated topic | Description |
|-----|-----|
| The [The [MS-MDE2]: Mobile Device Enrollment Protocol Version 2](https://docs.microsoft.com/en-us/openspecs/windows_protocols/ms-mde2/4d7eadd5-3951-4f1c-8159-c39e07cbe692?redirectedfrom=MSDN) | The Windows 10 enrollment protocol was updated. The following elements were added to the RequestSecurityToken message:<br>- UXInitiated - boolean value that indicates whether the enrollment is user initiated from the Settings page.<br>-ExternalMgmtAgentHint - a string the agent uses to give hints the enrollment server may need.<br>- DomainName - fully qualified domain name if the device is domain-joined. |
| [Firewall CSP](firewall-csp.md) | Added new CSP in Windows 10, version 1709. |
| [eUICCs CSP](euiccs-csp.md) | Added new CSP in Windows 10, version 1709. |
| [WindowsDefenderApplicationGuard CSP](windowsdefenderapplicationguard-csp.md)<br>[WindowsDefenderApplicationGuard DDF file](windowsdefenderapplicationguard-ddf-file.md) | New CSP added in Windows 10, version 1709. Also added the DDF topic. |
| [CM_ProxyEntries CSP](cm-proxyentries-csp.md) and [CMPolicy CSP](cmpolicy-csp.md) | In Windows 10, version 1709, support for desktop SKUs were added to these CSPs. |
| [VPNv2 CSP](vpnv2-csp.md) | Added DeviceTunnel and RegisterDNS settings in Windows 10, version 1709. |
| [DeviceStatus CSP](devicestatus-csp.md) | Added the following settings in Windows 10, version 1709:<br>- DeviceStatus/DomainName<br>- DeviceStatus/DeviceGuard/VirtualizationBasedSecurityHwReq<br>- DeviceStatus/DeviceGuard/VirtualizationBasedSecurityStatus<br>- DeviceStatus/DeviceGuard/LsaCfgCredGuardStatus |
| [AssignedAccess CSP](assignedaccess-csp.md) | Added the following setting in Windows 10, version 1709: <br>- Configuration <br> Starting in Windows 10, version 1709, AssignedAccess CSP is supported in Windows 10 Pro. |
| [DeviceManageability CSP](devicemanageability-csp.md) | Added the following settings in Windows 10, version 1709:<br>- Provider/_ProviderID_/ConfigInfo<br>- Provider/_ProviderID_/EnrollmentInfo |
| [Office CSP](office-csp.md) | Added the following setting in Windows 10, version 1709:<br>- Installation/CurrentStatus |
| [DMClient CSP](dmclient-csp.md) | Added new nodes to the DMClient CSP in Windows 10, version 1709. Updated the CSP and DDF topics. |
| [Bitlocker CSP](bitlocker-csp.md) | Changed the minimum personal identification number (PIN) length to 4 digits in SystemDrivesRequireStartupAuthentication and SystemDrivesMinimumPINLength in Windows 10, version 1709. |
| [ADMX-backed policies in Policy CSP](policy-csps-admx-backed.md) | Added new policies. |
| Microsoft Store for Business and Microsoft Store | Windows Store for Business name changed to Microsoft Store for Business. Windows Store name changed to Microsoft Store. |
| [MDM enrollment of Windows-based devices](mdm-enrollment-of-windows-devices.md) | New features in the Settings app:<br>- User sees installation progress of critical policies during MDM enrollment.<br>- User knows what policies, profiles, apps MDM has configured<br>- IT helpdesk can get detailed MDM diagnostic information using client tools <br> For details, see [Managing connection](https://docs.microsoft.com/windows/client-management/mdm/mdm-enrollment-of-windows-devices#manage-connections) and [Collecting diagnostic logs](https://docs.microsoft.com/windows/client-management/mdm/mdm-enrollment-of-windows-devices#collecting-diagnostic-logs).|
| [Enroll a Windows 10 device automatically using Group Policy](enroll-a-windows-10-device-automatically-using-group-policy.md) | Added new topic to introduce a new Group Policy for automatic MDM enrollment. |
| [Policy CSP](policy-configuration-service-provider.md) | Added the following new policies for Windows 10, version 1709:<br>- Authentication/AllowAadPasswordReset<br>- Authentication/AllowFidoDeviceSignon<br>- Browser/LockdownFavorites<br>- Browser/ProvisionFavorites<br>- Cellular/LetAppsAccessCellularData<br>- Cellular/LetAppsAccessCellularData_ForceAllowTheseApps<br>- Cellular/LetAppsAccessCellularData_ForceDenyTheseApps<br>- Cellular/LetAppsAccessCellularData_UserInControlOfTheseApps<br>- CredentialProviders/DisableAutomaticReDeploymentCredentials<br>- DeviceGuard/EnableVirtualizationBasedSecurity<br>- DeviceGuard/RequirePlatformSecurityFeatures<br>- DeviceGuard/LsaCfgFlags<br>- DeviceLock/MinimumPasswordAge<br>- ExploitGuard/ExploitProtectionSettings<br>- Games/AllowAdvancedGamingServices<br>- Handwriting/PanelDefaultModeDocked<br>- LocalPoliciesSecurityOptions/Accounts_BlockMicrosoftAccounts<br>- LocalPoliciesSecurityOptions/Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly<br>- LocalPoliciesSecurityOptions/Accounts_RenameAdministratorAccount<br>- LocalPoliciesSecurityOptions/Accounts_RenameGuestAccount<br>- LocalPoliciesSecurityOptions/InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked<br>- LocalPoliciesSecurityOptions/Interactivelogon_DoNotDisplayLastSignedIn<br>- LocalPoliciesSecurityOptions/Interactivelogon_DoNotDisplayUsernameAtSignIn<br>- LocalPoliciesSecurityOptions/Interactivelogon_DoNotRequireCTRLALTDEL<br>- LocalPoliciesSecurityOptions/InteractiveLogon_MachineInactivityLimit<br>- LocalPoliciesSecurityOptions/InteractiveLogon_MessageTextForUsersAttemptingToLogOn<br>- LocalPoliciesSecurityOptions/InteractiveLogon_MessageTitleForUsersAttemptingToLogOn<br>- LocalPoliciesSecurityOptions/NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM<br>- LocalPoliciesSecurityOptions/NetworkSecurity_AllowPKU2UAuthenticationRequests<br>- LocalPoliciesSecurityOptions/Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn<br>- LocalPoliciesSecurityOptions/UserAccountControl_AllowUIAccessApplicationsToPromptForElevation<br>- LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForAdministrators<br>- LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers<br>- LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated<br>- LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations<br>- LocalPoliciesSecurityOptions/UserAccountControl_RunAllAdministratorsInAdminApprovalMode<br>- LocalPoliciesSecurityOptions/UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation<br>- LocalPoliciesSecurityOptions/UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations<br>- Power/DisplayOffTimeoutOnBattery<br>- Power/DisplayOffTimeoutPluggedIn<br>- Power/HibernateTimeoutOnBattery<br>- Power/HibernateTimeoutPluggedIn<br>- Power/StandbyTimeoutOnBattery<br>- Power/StandbyTimeoutPluggedIn<br>- Privacy/EnableActivityFeed<br>- Privacy/PublishUserActivities<br>- Defender/AttackSurfaceReductionOnlyExclusions<br>- Defender/AttackSurfaceReductionRules<br>- Defender/CloudBlockLevel<br>- Defender/CloudExtendedTimeout<br>- Defender/ControlledFolderAccessAllowedApplications<br>- Defender/ControlledFolderAccessProtectedFolders<br>- Defender/EnableControlledFolderAccess<br>- Defender/EnableNetworkProtection<br>- Education/DefaultPrinterName<br>- Education/PreventAddingNewPrinters<br>- Education/PrinterNames<br>- Search/AllowCloudSearch<br>- Security/ClearTPMIfNotReady<br>- Settings/AllowOnlineTips<br>- Start/HidePeopleBar<br>- Storage/AllowDiskHealthModelUpdates<br>- System/DisableEnterpriseAuthProxy<br>- System/LimitEnhancedDiagnosticDataWindowsAnalytics<br>- Update/AllowAutoWindowsUpdateDownloadOverMeteredNetwork<br>- Update/DisableDualScan<br>- Update/ManagePreviewBuilds<br>- Update/ScheduledInstallEveryWeek<br>- Update/ScheduledInstallFirstWeek<br>- Update/ScheduledInstallFourthWeek<br>- Update/ScheduledInstallSecondWeek<br>- Update/ScheduledInstallThirdWeek<br>- WindowsDefenderSecurityCenter/CompanyName<br>- WindowsDefenderSecurityCenter/DisableAppBrowserUI<br>- WindowsDefenderSecurityCenter/DisableEnhancedNotifications<br>- WindowsDefenderSecurityCenter/DisableFamilyUI<br>- WindowsDefenderSecurityCenter/DisableHealthUI<br>- WindowsDefenderSecurityCenter/DisableNetworkUI<br>- WindowsDefenderSecurityCenter/DisableNotifications<br>- WindowsDefenderSecurityCenter/DisableVirusUI<br>- WindowsDefenderSecurityCenter/DisallowExploitProtectionOverride<br>- WindowsDefenderSecurityCenter/Email<br>- WindowsDefenderSecurityCenter/EnableCustomizedToasts<br>- WindowsDefenderSecurityCenter/EnableInAppCustomization<br>- WindowsDefenderSecurityCenter/Phone<br>- WindowsDefenderSecurityCenter/URL<br>- WirelessDisplay/AllowMdnsAdvertisement<br>- WirelessDisplay/AllowMdnsDiscovery |


## What’s new in MDM for Windows 10, version 1703

| New or updated topic | Description |
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
| [Download all the DDF files for Windows 10, version 1703](https://download.microsoft.com/download/C/7/C/C7C94663-44CF-4221-ABCA-BC895F42B6C2/Windows10_1703_DDF_download.zip) | Added a zip file containing the DDF XML files of the CSPs. The link to the download is available in the DDF topics of various CSPs. |
| [RemoteWipe CSP](remotewipe-csp.md) | Added new setting in Windows 10, version 1703:<br>- doWipeProtected |
| [MDM Bridge WMI Provider](https://msdn.microsoft.com/library/windows/hardware/dn905224) | Added new classes and properties. |
| [Understanding ADMX-backed policies](https://docs.microsoft.com/windows/client-management/mdm/understanding-admx-backed-policies) | Added a section describing SyncML examples of various ADMX elements. |
| [Win32 and Desktop Bridge app policy configuration](https://docs.microsoft.com/windows/client-management/mdm/win32-and-centennial-app-policy-configuration) | New topic. |
| [Deploy and configure App-V apps using MDM](https://docs.microsoft.com/windows/client-management/mdm/appv-deploy-and-config) | Added a new topic describing how to deploy and configure App-V apps using MDM. |
| [EnterpriseDesktopAppManagement CSP](enterprisedesktopappmanagement-csp.md) | Added new setting in the March service release of Windows 10, version 1607.<br>- MSI/UpgradeCode/[Guid] |
| [Reporting CSP](reporting-csp.md) | Added new settings in Windows 10, version 1703.<br>- EnterpriseDataProtection/RetrieveByTimeRange/Type<br>- EnterpriseDataProtection/RetrieveByCount/Type |
| [Connect your Windows 10-based device to work using a deep link](https://docs.microsoft.com/windows/client-management/mdm/mdm-enrollment-of-windows-devices#connect-your-windows-10-based-device-to-work-using-a-deep-link) | Added following deep link parameters to the table:<br>- Username<br>- Servername<br>- Accesstoken<br>- Deviceidentifier<br>- Tenantidentifier<br>- Ownership |
| MDM support for Windows 10 S | Updated the following topics to indicate MDM support in Windows 10 S.<br>- [Configuration service provider reference](onfiguration-service-provider-reference.md)<br>- [Policy CSP](policy-configuration-service-provider.md) |
| [TPMPolicy CSP](tpmpolicy-csp.md) | Added the new CSP. |

## What’s new in MDM for Windows 10, version 1607

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>Sideloading of apps</p></td>
<td style="vertical-align:top"><p>Starting in Windows 10, version 1607, sideloading of apps is only allowed through <a href="enterprisemodernappmanagement-csp.md" data-raw-source="[EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md)">EnterpriseModernAppManagement CSP</a>. Product keys (5x5) will no longer be supported to enable sideloading on Windows 10, version 1607 devices.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>New value for <a href="nodecache-csp.md" data-raw-source="[NodeCache CSP](nodecache-csp.md)">NodeCache CSP</a></p></td>
<td style="vertical-align:top"><p>In <a href="nodecache-csp.md" data-raw-source="[NodeCache CSP](nodecache-csp.md)">NodeCache CSP</a>, the value of NodeCache root node starting in Windows 10, version 1607 is com.microsoft/1.0/MDM/NodeCache.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><a href="enterprisedataprotection-csp.md" data-raw-source="[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)">EnterpriseDataProtection CSP</a></td>
<td style="vertical-align:top"><p>New CSP.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td style="vertical-align:top"><p>Removed the following policies:</p>
<ul>
<li>DataProtection/AllowAzureRMSForEDP - moved this policy to <a href="enterprisedataprotection-csp.md" data-raw-source="[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)">EnterpriseDataProtection CSP</a></li>
<li>DataProtection/AllowUserDecryption - moved this policy to <a href="enterprisedataprotection-csp.md" data-raw-source="[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)">EnterpriseDataProtection CSP</a></li>
<li>DataProtection/EDPEnforcementLevel - moved this policy to <a href="enterprisedataprotection-csp.md" data-raw-source="[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)">EnterpriseDataProtection CSP</a></li>
<li>DataProtection/RequireProtectionUnderLockConfig - moved this policy to <a href="enterprisedataprotection-csp.md" data-raw-source="[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)">EnterpriseDataProtection CSP</a></li>
<li>DataProtection/RevokeOnUnenroll - moved this policy to <a href="enterprisedataprotection-csp.md" data-raw-source="[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)">EnterpriseDataProtection CSP</a></li>
<li>DataProtection/EnterpriseCloudResources - moved this policy to NetworkIsolation policy</li>
<li>DataProtection/EnterpriseInternalProxyServers - moved this policy to NetworkIsolation policy</li>
<li>DataProtection/EnterpriseIPRange - moved this policy to NetworkIsolation policy</li>
<li>DataProtection/EnterpriseNetworkDomainNames - moved this policy to NetworkIsolation policy</li>
<li>DataProtection/EnterpriseProxyServers - moved this policy to NetworkIsolation policy</li>
<li>Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices - this policy has been deprecated.</li>
</ul>
<p>Added the <strong>WiFi/AllowManualWiFiConfiguration</strong> and <strong>WiFi/AllowWiFi</strong> policies for Windows 10, version 1607:</p>
<ul>
<li>Windows 10 Pro</li>
<li>Windows 10 Enterprise</li>
<li>Windows 10 Education</li>
</ul>
<p>Added the following new policies:</p>
<ul>
<li>AboveLock/AllowCortanaAboveLock</li>
<li>ApplicationManagement/DisableStoreOriginatedApps</li>
<li>Authentication/AllowSecondaryAuthenticationDevice</li>
<li>Bluetooth/AllowPrepairing</li>
<li>Browser/AllowExtensions</li>
<li>Browser/PreventAccessToAboutFlagsInMicrosoftEdge</li>
<li>Browser/ShowMessageWhenOpeningSitesInInternetExplorer</li>
<li>DeliveryOptimization/DOAbsoluteMaxCacheSize</li>
<li>DeliveryOptimization/DOMaxDownloadBandwidth</li>
<li>DeliveryOptimization/DOMinBackgroundQoS</li>
<li>DeliveryOptimization/DOModifyCacheDrive</li>
<li>DeliveryOptimization/DOMonthlyUploadDataCap</li>
<li>DeliveryOptimization/DOPercentageMaxDownloadBandwidth</li>
<li>DeviceLock/EnforceLockScreenAndLogonImage</li>
<li>DeviceLock/EnforceLockScreenProvider</li>
<li>Defender/PUAProtection</li>
<li>Experience/AllowThirdPartySuggestionsInWindowsSpotlight</li>
<li>Experience/AllowWindowsSpotlight</li>
<li>Experience/ConfigureWindowsSpotlightOnLockScreen</li>
<li>Experience/DoNotShowFeedbackNotifications</li>
<li>Licensing/AllowWindowsEntitlementActivation</li>
<li>Licensing/DisallowKMSClientOnlineAVSValidation</li>
<li>LockDown/AllowEdgeSwipe</li>
<li>Maps/EnableOfflineMapsAutoUpdate</li>
<li>Maps/AllowOfflineMapsDownloadOverMeteredConnection</li>
<li>Messaging/AllowMessageSync</li>
<li>NetworkIsolation/EnterpriseCloudResources</li>
<li>NetworkIsolation/EnterpriseInternalProxyServers</li>
<li>NetworkIsolation/EnterpriseIPRange</li>
<li>NetworkIsolation/EnterpriseIPRangesAreAuthoritative</li>
<li>NetworkIsolation/EnterpriseNetworkDomainNames</li>
<li>NetworkIsolation/EnterpriseProxyServers</li>
<li>NetworkIsolation/EnterpriseProxyServersAreAuthoritative</li>
<li>NetworkIsolation/NeutralResources</li>
<li>Notifications/DisallowNotificationMirroring</li>
<li>Privacy/DisableAdvertisingId</li>
<li>Privacy/LetAppsAccessAccountInfo</li>
<li>Privacy/LetAppsAccessAccountInfo_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessAccountInfo_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessAccountInfo_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessCalendar</li>
<li>Privacy/LetAppsAccessCalendar_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessCalendar_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessCalendar_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessCallHistory</li>
<li>Privacy/LetAppsAccessCallHistory_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessCallHistory_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessCallHistory_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessCamera</li>
<li>Privacy/LetAppsAccessCamera_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessCamera_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessCamera_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessContacts</li>
<li>Privacy/LetAppsAccessContacts_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessContacts_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessContacts_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessEmail</li>
<li>Privacy/LetAppsAccessEmail_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessEmail_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessEmail_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessLocation</li>
<li>Privacy/LetAppsAccessLocation_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessLocation_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessLocation_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessMessaging</li>
<li>Privacy/LetAppsAccessMessaging_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessMessaging_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessMessaging_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessMicrophone</li>
<li>Privacy/LetAppsAccessMicrophone_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessMicrophone_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessMicrophone_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessMotion</li>
<li>Privacy/LetAppsAccessMotion_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessMotion_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessMotion_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessNotifications</li>
<li>Privacy/LetAppsAccessNotifications_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessNotifications_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessNotifications_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessPhone</li>
<li>Privacy/LetAppsAccessPhone_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessPhone_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessPhone_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessRadios</li>
<li>Privacy/LetAppsAccessRadios_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessRadios_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessRadios_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsAccessTrustedDevices</li>
<li>Privacy/LetAppsAccessTrustedDevices_ForceAllowTheseApps</li>
<li>Privacy/LetAppsAccessTrustedDevices_ForceDenyTheseApps</li>
<li>Privacy/LetAppsAccessTrustedDevices_UserInControlOfTheseApps</li>
<li>Privacy/LetAppsSyncWithDevices</li>
<li>Privacy/LetAppsSyncWithDevices_ForceAllowTheseApps</li>
<li>Privacy/LetAppsSyncWithDevices_ForceDenyTheseApps</li>
<li>Privacy/LetAppsSyncWithDevices_UserInControlOfTheseApps</li>
<li>Security/PreventAutomaticDeviceEncryptionForAzureADJoinedDevices</li>
<li>Settings/AllowEditDeviceName</li>
<li>Speech/AllowSpeechModelUpdate</li>
<li>System/TelemetryProxy</li>
<li>Update/ActiveHoursStart</li>
<li>Update/ActiveHoursEnd</li>
<li>Update/AllowMUUpdateService</li>
<li>Update/BranchReadinessLevel</li>
<li>Update/DeferFeatureUpdatesPeriodInDays</li>
<li>Update/DeferQualityUpdatesPeriodInDays</li>
<li>Update/ExcludeWUDriversInQualityUpdate</li>
<li>Update/PauseFeatureUpdates</li>
<li>Update/PauseQualityUpdates</li>
<li>Update/SetProxyBehaviorForUpdateDetection</li>
<li>Update/UpdateServiceUrlAlternate (Added in the January service release of Windows 10, version 1607)</li>
<li>WindowsInkWorkspace/AllowWindowsInkWorkspace</li>
<li>WindowsInkWorkspace/AllowSuggestedAppsInWindowsInkWorkspace</li>
<li>WirelessDisplay/AllowProjectionToPC</li>
<li>WirelessDisplay/RequirePinForPairing</li>
</ul>
<p>Updated the <strong>Privacy/AllowAutoAcceptPairingAndPrivacyConsentPrompts</strong> description to remove outdated information.</p>
<p>Updated DeliveryOptimization/DODownloadMode to add new values.</p>
<p>Updated Experience/AllowCortana description to clarify what each supported value does.</p>
<p>Updated Security/AntiTheftMode description to clarify what each supported value does.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><a href="dmclient-csp.md" data-raw-source="[DMClient CSP](dmclient-csp.md)">DMClient CSP</a></td>
<td style="vertical-align:top"><p>Added the following settings:</p>
<ul>
<li>ManagementServerAddressList</li>
<li>AADDeviceID</li>
<li>EnrollmentType</li>
<li>HWDevID</li>
<li>CommercialID</li>
</ul>
<p>Removed the EnrollmentID setting.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><a href="devicemanageability-csp.md" data-raw-source="[DeviceManageability CSP](devicemanageability-csp.md)">DeviceManageability CSP</a></td>
<td style="vertical-align:top"><p>New CSP.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><a href="devicestatus-csp.md" data-raw-source="[DeviceStatus CSP](devicestatus-csp.md)">DeviceStatus CSP</a></td>
<td style="vertical-align:top"><p>Added the following new settings:</p>
<ul>
<li>DeviceStatus/TPM/SpecificationVersion</li>
<li>DeviceStatus/OS/Edition</li>
<li>DeviceStatus/Antivirus/SignatureStatus</li>
<li>DeviceStatus/Antivirus/Status</li>
<li>DeviceStatus/Antispyware/SignatureStatus</li>
<li>DeviceStatus/Antispyware/Status</li>
<li>DeviceStatus/Firewall/Status</li>
<li>DeviceStatus/UAC/Status</li>
<li>DeviceStatus/Battery/Status</li>
<li>DeviceStatus/Battery/EstimatedChargeRemaining</li>
<li>DeviceStatus/Battery/EstimatedRuntime</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><a href="assignedaccess-csp.md" data-raw-source="[AssignedAccess CSP](assignedaccess-csp.md)">AssignedAccess CSP</a></td>
<td style="vertical-align:top"><p>Added SyncML examples.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><a href="enterpriseassignedaccess-csp.md" data-raw-source="[EnterpriseAssignedAccess CSP](enterpriseassignedaccess-csp.md)">EnterpriseAssignedAccess CSP</a></td>
<td style="vertical-align:top"><ul>
<li>Added a new Folder table entry in the AssignedAccess/AssignedAccessXml description.</li>
<li>Updated the DDF and XSD file sections.</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><a href="secureassessment-csp.md" data-raw-source="[SecureAssessment CSP](secureassessment-csp.md)">SecureAssessment CSP</a></td>
<td style="vertical-align:top"><p>New CSP for Windows 10, version 1607</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><a href="diagnosticlog-csp.md" data-raw-source="[DiagnosticLog CSP](diagnosticlog-csp.md)">DiagnosticLog CSP</a>
<p><a href="diagnosticlog-ddf.md" data-raw-source="[DiagnosticLog DDF](diagnosticlog-ddf.md)">DiagnosticLog DDF</a></p></td>
<td style="vertical-align:top"><p>Added version 1.3 of the CSP with two new settings. Added the new 1.3 version of the DDF. Added the following new settings in Windows 10, version 1607.</p>
<ul>
<li>DeviceStateData</li>
<li>DeviceStateData/MdmConfiguration</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><a href="reboot-csp.md" data-raw-source="[Reboot CSP](reboot-csp.md)">Reboot CSP</a></td>
<td style="vertical-align:top"><p>New CSP for Windows 10, version 1607</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><a href="cmpolicyenterprise-csp.md" data-raw-source="[CMPolicyEnterprise CSP](cmpolicyenterprise-csp.md)">CMPolicyEnterprise CSP</a></td>
<td style="vertical-align:top"><p>New CSP for Windows 10, version 1607</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><a href="vpnv2-csp.md" data-raw-source="[VPNv2 CSP](vpnv2-csp.md)">VPNv2 CSP</a></td>
<td style="vertical-align:top"><p>Added the following settings for Windows 10, version 1607</p>
<ul>
<li><em>ProfileName</em>/RouteList/routeRowId/ExclusionRoute</li>
<li><em>ProfileName</em>/DomainNameInformationList/<em>dniRowId</em>/AutoTrigger</li>
<li><em>ProfileName</em>/DomainNameInformationList/dniRowId/Persistent</li>
<li><em>ProfileName</em>/ProfileXML</li>
<li><em>ProfileName</em>/DeviceCompliance/Enabled</li>
<li><em>ProfileName</em>/DeviceCompliance/Sso</li>
<li><em>ProfileName</em>/DeviceCompliance/Sso/Enabled</li>
<li><em>ProfileName</em>/DeviceCompliance/Sso/IssuerHash</li>
<li><em>ProfileName</em>/DeviceCompliance/Sso/Eku</li>
<li><em>ProfileName</em>/NativeProfile/CryptographySuite</li>
<li><em>ProfileName</em>/NativeProfile/CryptographySuite/AuthenticationTransformConstants</li>
<li><em>ProfileName</em>/NativeProfile/CryptographySuite/CipherTransformConstants</li>
<li><em>ProfileName</em>/NativeProfile/CryptographySuite/EncryptionMethod</li>
<li><em>ProfileName</em>/NativeProfile/CryptographySuite/IntegrityCheckMethod</li>
<li><em>ProfileName</em>/NativeProfile/CryptographySuite/DHGroup</li>
<li><em>ProfileName</em>/NativeProfile/CryptographySuite/PfsGroup</li>
<li><em>ProfileName</em>/NativeProfile/L2tpPsk</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><a href="win32appinventory-csp.md" data-raw-source="[Win32AppInventory CSP](win32appinventory-csp.md)">Win32AppInventory CSP</a>
<p><a href="win32appinventory-ddf-file.md" data-raw-source="[Win32AppInventory DDF](win32appinventory-ddf-file.md)">Win32AppInventory DDF</a></p></td>
<td style="vertical-align:top"><p>New CSP for Windows 10, version 1607.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><a href="sharedpc-csp.md" data-raw-source="[SharedPC CSP](sharedpc-csp.md)">SharedPC CSP</a></td>
<td style="vertical-align:top"><p>New CSP for Windows 10, version 1607.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><a href="windowsadvancedthreatprotection-csp.md" data-raw-source="[WindowsAdvancedThreatProtection CSP](windowsadvancedthreatprotection-csp.md)">WindowsAdvancedThreatProtection CSP</a></td>
<td style="vertical-align:top"><p>New CSP for Windows 10, version 1607.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><a href="https://msdn.microsoft.com/library/windows/hardware/dn905224" data-raw-source="[MDM Bridge WMI Provider](https://msdn.microsoft.com/library/windows/hardware/dn905224)">MDM Bridge WMI Provider</a></td>
<td style="vertical-align:top"><p>Added new classes for Windows 10, version 1607.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><a href="mdm-enrollment-of-windows-devices.md" data-raw-source="[MDM enrollment of Windows devices](mdm-enrollment-of-windows-devices.md)">MDM enrollment of Windows devices</a></td>
<td style="vertical-align:top"><p>Topic renamed from &quot;Enrollment UI&quot;.</p>
<p>Completely updated enrollment procedures and screenshots.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><a href="unifiedwritefilter-csp.md" data-raw-source="[UnifiedWriteFilter CSP](unifiedwritefilter-csp.md)">UnifiedWriteFilter CSP</a>
<p><a href="unifiedwritefilter-ddf.md" data-raw-source="[UnifiedWriteFilter DDF File](unifiedwritefilter-ddf.md)">UnifiedWriteFilter DDF File</a></p></td>
<td style="vertical-align:top"><p>Added the following new setting for Windows 10, version 1607:</p>
<ul>
<li>NextSession/HORMEnabled</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><a href="certificatestore-csp.md" data-raw-source="[CertificateStore CSP](certificatestore-csp.md)">CertificateStore CSP</a>
<p><a href="certificatestore-ddf-file.md" data-raw-source="[CertificateStore DDF file](certificatestore-ddf-file.md)">CertificateStore DDF file</a></p></td>
<td style="vertical-align:top"><p>Added the following new settings in Windows 10, version 1607:</p>
<ul>
<li>My/WSTEP/Renew/LastRenewalAttemptTime</li>
<li>My/WSTEP/Renew/RenewNow</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p><a href="windowslicensing-csp.md" data-raw-source="[WindowsLicensing CSP](windowslicensing-csp.md)">WindowsLicensing CSP</a></p></td>
<td style="vertical-align:top"><p>Added the following new node and settings in Windows 10, version 1607, but not documented:</p>
<ul>
<li>Subscriptions</li>
<li>Subscriptions/SubscriptionId</li>
<li>Subscriptions/SubscriptionId/Status</li>
<li>Subscriptions/SubscriptionId/Name</li>
</ul>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p><a href="wifi-csp.md" data-raw-source="[WiFi CSP](wifi-csp.md)">WiFi CSP</a></p></td>
<td style="vertical-align:top"><p>Deprecated the following node in Windows 10, version 1607:</p>
<ul>
<li>DisableInternetConnectivityChecks</li>
</ul>
</tr>
</td>
</tbody>
</table>

## What’s new in MDM for Windows 10, version 1511

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>New configuration service providers added in Windows 10, version 1511</p></td>
<td style="vertical-align:top"><ul>
<li><a href="alljoynmanagement-csp.md" data-raw-source="[AllJoynManagement CSP](alljoynmanagement-csp.md)">AllJoynManagement CSP</a></li>
<li><a href="maps-csp.md" data-raw-source="[Maps CSP](maps-csp.md)">Maps CSP</a></li>
<li><a href="reporting-csp.md" data-raw-source="[Reporting CSP](reporting-csp.md)">Reporting CSP</a></li>
<li><a href="surfacehub-csp.md" data-raw-source="[SurfaceHub CSP](surfacehub-csp.md)">SurfaceHub CSP</a></li>
<li><a href="windowssecurityauditing-csp.md" data-raw-source="[WindowsSecurityAuditing CSP](windowssecurityauditing-csp.md)">WindowsSecurityAuditing CSP</a></li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>New and updated policies in Policy CSP</p></td>
<td style="vertical-align:top"><p>The following policies have been added to the <a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a>:</p>
<ul>
<li>ApplicationManagement/AllowWindowsBridgeForAndroidAppsExecution</li>
<li>Bluetooth/ServicesAllowedList</li>
<li>DataProtection/AllowAzureRMSForEDP</li>
<li>DataProtection/RevokeOnUnenroll</li>
<li>DeviceLock/DevicePasswordExpiration</li>
<li>DeviceLock/DevicePasswordHistory</li>
<li>TextInput/AllowInputPanel</li>
<li>Update/PauseDeferrals</li>
<li>Update/RequireDeferUpdate</li>
<li>Update/RequireUpdateApproval</li>
</ul>
<p>The following policies have been updated in the Policy CSP:</p>
<ul>
<li>System/AllowLocation</li>
<li>Update/RequireDeferUpgrade</li>
</ul>
<p>The following policies have been deprecated in the Policy CSP:</p>
<ul>
<li>TextInput/AllowKoreanExtendedHanja</li>
<li>WiFi/AllowWiFiHotSpotReporting</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Management tool for the Microsoft Store for Business</p></td>
<td style="vertical-align:top"><p>New topics. The Store for Business has a new web service designed for the enterprise to acquire, manage, and distribute applications in bulk. It enables several capabilities that are required for the enterprise to manage the lifecycle of applications from acquisition to updates.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Custom header for generic alert</p></td>
<td style="vertical-align:top"><p>The MDM-GenericAlert is a new custom header that hosts one or more alert information provided in the http messages sent by the device to the server during an OMA DM session. The generic alert is sent if the session is triggered by the device due to one or more critical or fatal alerts. Here is alert format:</p>
<code>MDM-GenericAlert: &lt;AlertType1&gt;&lt;AlertType2&gt;</code>
<p>If present, the MDM-GenericAlert is presented in every the outgoing MDM message in the same OMA DM session. For more information about generic alerts, see section 8.7 in the OMA Device Management Protocol, Approved Version 1.2.1 in this <a href="https://go.microsoft.com/fwlink/p/?LinkId=267526" data-raw-source="[OMA website](https://go.microsoft.com/fwlink/p/?LinkId=267526)">OMA website</a>.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Alert message for slow client response</p></td>
<td style="vertical-align:top"><p>When the MDM server sends a configuration request, sometimes it takes the client longer than the HTTP timeout to get all information together and then the session ends unexpectedly due to timeout. By default, the MDM client does not send an alert that a DM request is pending.</p>
<p>To work around the timeout, you can use EnableOmaDmKeepAliveMessage setting to keep the session alive by sending a heartbeat message back to the server. This is achieved by sending a SyncML message with a specific device alert element in the body until the client is able to respond back to the server with the requested information. For details, see EnableOmaDmKeepAliveMessage node in the <a href="dmclient-csp.md" data-raw-source="[DMClient CSP](dmclient-csp.md)">DMClient CSP</a>.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>New node in DMClient CSP</p></td>
<td style="vertical-align:top"><p>Added a new node EnableOmaDmKeepAliveMessage to the <a href="dmclient-csp.md" data-raw-source="[DMClient CSP](dmclient-csp.md)">DMClient CSP</a> and updated the ManagementServerAddress to indicate that it can contain a list of URLs.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>New nodes in EnterpriseModernAppManagement CSP</p></td>
<td style="vertical-align:top"><p>Added the following nodes to the <a href="enterprisemodernappmanagement-csp.md" data-raw-source="[EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md)">EnterpriseModernAppManagement CSP</a>:</p>
<ul>
<li>AppManagement/GetInventoryQuery</li>
<li>AppManagement/GetInventoryResults</li>
<li>.../<em>PackageFamilyName</em>/AppSettingPolicy/<em>SettingValue</em></li>
<li>AppLicenses/StoreLicenses/<em>LicenseID</em>/LicenseCategory</li>
<li>AppLicenses/StoreLicenses/<em>LicenseID</em>/LicenseUsage</li>
<li>AppLicenses/StoreLicenses/<em>LicenseID</em>/RequesterID</li>
<li>AppLicenses/StoreLicenses/<em>LicenseID</em>/GetLicenseFromStore</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>New nodes in EnterpriseExt CSP</p></td>
<td style="vertical-align:top"><p>Added the following nodes to the <a href="enterpriseext-csp.md" data-raw-source="[EnterpriseExt CSP](enterpriseext-csp.md)">EnterpriseExt CSP</a>:</p>
<ul>
<li>DeviceCustomData (CustomID, CustomeString)</li>
<li>Brightness (Default, MaxAuto)</li>
<li>LedAlertNotification (State, Intensity, Period, DutyCycle, Cyclecount)</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>New node in EnterpriseExtFileSystem CSP</p></td>
<td style="vertical-align:top"><p>Added OemProfile node to <a href="enterpriseextfilessystem-csp.md" data-raw-source="[EnterpriseExtFileSystem CSP](enterpriseextfilessystem-csp.md)">EnterpriseExtFileSystem CSP</a>.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>New nodes in PassportForWork CSP</p></td>
<td style="vertical-align:top"><p>Added the following nodes to <a href="passportforwork-csp.md" data-raw-source="[PassportForWork CSP](passportforwork-csp.md)">PassportForWork CSP</a>:</p>
<ul>
<li>TenantId/Policies/PINComplexity/History</li>
<li>TenantId/Policies/PINComplexity/Expiration</li>
<li>TenantId/Policies/Remote/UseRemotePassport (only for ./Device/Vendor/MSFT)</li>
<li>Biometrics/UseBiometrics (only for ./Device/Vendor/MSFT)</li>
<li>Biometrics/FacialFeaturesUseEnhancedAntiSpoofing (only for ./Device/Vendor/MSFT)</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Updated EnterpriseAssignedAccess CSP</p></td>
<td style="vertical-align:top"><p>Here are the changes to the <a href="enterpriseassignedaccess-csp.md" data-raw-source="[EnterpriseAssignedAccess CSP](enterpriseassignedaccess-csp.md)">EnterpriseAssignedAccess CSP</a>:</p>
<ul>
<li>In AssignedAccessXML node, added new page settings and quick action settings.</li>
<li>In AssignedAccessXML node, added an example about how to pin applications in multiple app packages using the AUMID.</li>
<li>Updated the <a href="enterpriseassignedaccess-xsd.md" data-raw-source="[EnterpriseAssignedAccess XSD](enterpriseassignedaccess-xsd.md)">EnterpriseAssignedAccess XSD</a> topic.</li>
</ul></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>New nodes in the DevDetail CSP</p></td>
<td style="vertical-align:top"><p>Here are the changes to the <a href="devdetail-csp.md" data-raw-source="[DevDetail CSP](devdetail-csp.md)">DevDetail CSP</a>:</p>
<ul>
<li>Added TotalStore and TotalRAM settings.</li>
<li>Added support for Replace command for the DeviceName setting.</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Handling large objects</p></td>
<td style="vertical-align:top"><p>Added support for the client to handle uploading of large objects to the server.</p></td>
</tr>
</tbody>
</table>

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
>For PEAP or TTLS Profiles the EAP TLS XML is embedded within some PEAP or TTLS specific elements.

 
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
>The EAP TLS XSD is located at **%systemdrive%\\Windows\\schemas\\EAPMethods\\eaptlsconnectionpropertiesv3.xsd**

 

Alternatively you can use the following procedure to create an EAP Configuration XML.

1.  Follow steps 1 through 7 in the [EAP configuration](eap-configuration.md) topic.
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
8.  Continue following the procedure in the [EAP configuration](eap-configuration.md) topic from Step 9 to get an EAP TLS profile with appropriate filtering.

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


### **Can there be more than 1 MDM server to enroll and manage devices in Windows 10?**
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
What data is handled by dmwappushsvc? | It is a component handling the internal workings of the management platform and involved in processing messages that have been received by the device remotely for management. The messages in the queue are serviced by another component that is also part of the Windows management stack to process messages. The service also routes and authenticates WAP messages received by the device to internal OS components that process them further: MMS, NabSync, SI/SL. |
How do I turn if off? | The service can be stopped from the "Services" console on the device (Start > Run > services.msc). However, since this is a component part of the OS and  required for the proper functioning of the device, we strongly recommend not to do this. |

## Change history in MDM documentation

### September 2020
|New or updated topic | Description|
|--- | ---|
|[NetworkQoSPolicy CSP](networkqospolicy-csp.md)|Updated support information of the NetworkQoSPolicy CSP.|
|[Policy CSP - LocalPoliciesSecurityOptions](policy-csp-localpoliciessecurityoptions.md)|Removed the following unsupported LocalPoliciesSecurityOptions policy settings from the documentation:<br>- RecoveryConsole_AllowAutomaticAdministrativeLogon <br>- DomainMember_DigitallyEncryptOrSignSecureChannelDataAlways<br>- DomainMember_DigitallyEncryptSecureChannelDataWhenPossible<br>- DomainMember_DisableMachineAccountPasswordChanges<br>- SystemObjects_RequireCaseInsensitivityForNonWindowsSubsystems<br>|

### August 2020
|New or updated topic | Description|
|--- | ---|
|[Policy CSP - System](policy-csp-system.md)|Removed the following policy settings:<br> - System/AllowDesktopAnalyticsProcessing <br>- System/AllowMicrosoftManagedDesktopProcessing <br> - System/AllowUpdateComplianceProcessing<br> - System/AllowWUfBCloudProcessing <br>|

### July 2020
|New or updated topic | Description|
|--- | ---|
|[Policy CSP - System](policy-csp-system.md)|Added the following new policy settings:<br>  - System/AllowDesktopAnalyticsProcessing <br>- System/AllowMicrosoftManagedDesktopProcessing <br> - System/AllowUpdateComplianceProcessing<br> - System/AllowWUfBCloudProcessing <br> <br><br>Updated the following policy setting:<br>-  <a href="./policy-csp-system.md#system-allowcommercialdatapipeline" id="system-allowcommercialdatapipeline">System/AllowCommercialDataPipeline</a> <br>|

### June 2020
|New or updated topic | Description|
|--- | ---|
|[BitLocker CSP](bitlocker-csp.md)|Added SKU support table for **AllowStandardUserEncryption**.|
|[Policy CSP - NetworkIsolation](policy-csp-networkisolation.md)|Updated the description from Boolean to Integer for the following policy settings:<br>EnterpriseIPRangesAreAuthoritative, EnterpriseProxyServersAreAuthoritative.|

### May 2020
|New or updated topic | Description|
|--- | ---|
|[BitLocker CSP](bitlocker-csp.md)|Added the bitmask table for the Status/DeviceEncryptionStatus node.|
|[Policy CSP - RestrictedGroups](policy-csp-restrictedgroups.md)| Updated the topic with additional details. Added policy timeline table. 


### February 2020
|New or updated topic | Description|
|--- | ---|
|[CertificateStore CSP](certificatestore-csp.md)<br>[ClientCertificateInstall CSP](clientcertificateinstall-csp.md)|Added details about SubjectName value.|

### January 2020
|New or updated topic | Description|
|--- | ---|
|[Policy CSP - Defender](policy-csp-defender.md)|Added descriptions for supported actions for Defender/ThreatSeverityDefaultAction.|


### November 2019

|New or updated topic | Description|
|--- | ---|
|[Policy CSP - DeliveryOptimization](policy-csp-deliveryoptimization.md)|Added option 5 in the supported values list for DeliveryOptimization/DOGroupIdSource.|
|[DiagnosticLog CSP](diagnosticlog-csp.md)|Added substantial updates to this CSP doc.|

### October 2019

|New or updated topic | Description|
|--- | ---|
|[BitLocker CSP](bitlocker-csp.md)|Added the following new nodes:<br>ConfigureRecoveryPasswordRotation, RotateRecoveryPasswords, RotateRecoveryPasswordsStatus, RotateRecoveryPasswordsRequestID.|
|[Defender CSP](defender-csp.md)|Added the following new nodes:<br>Health/TamperProtectionEnabled, Health/IsVirtualMachine, Configuration, Configuration/TamperProtection, Configuration/EnableFileHashComputation.|

### September 2019

|New or updated topic | Description|
|--- | ---|
|[EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md)|Added the following new node:<br>IsStub.|
|[Policy CSP - Defender](policy-csp-defender.md)|Updated the supported value list for Defender/ScheduleScanDay policy.|
|[Policy CSP - DeviceInstallation](policy-csp-deviceinstallation.md)|Added the following new policies: <br>DeviceInstallation/AllowInstallationOfMatchingDeviceInstanceIDs, DeviceInstallation/PreventInstallationOfMatchingDeviceInstanceIDs.|

### August 2019

|New or updated topic | Description|
|--- | ---|
|[DiagnosticLog CSP](diagnosticlog-csp.md)<br>[DiagnosticLog DDF](diagnosticlog-ddf.md)|Added version 1.4 of the CSP in Windows 10, version 1903. Added the new 1.4 version of the DDF. Added the following new nodes:<br>Policy, Policy/Channels, Policy/Channels/ChannelName, Policy/Channels/ChannelName/MaximumFileSize, Policy/Channels/ChannelName/SDDL, Policy/Channels/ChannelName/ActionWhenFull, Policy/Channels/ChannelName/Enabled, DiagnosticArchive, DiagnosticArchive/ArchiveDefinition, DiagnosticArchive/ArchiveResults.|
|[Enroll a Windows 10 device automatically using Group Policy](enroll-a-windows-10-device-automatically-using-group-policy.md)|Enhanced the article to include additional reference links and the following two topics:<br>Verify auto-enrollment requirements and settings, Troubleshoot auto-enrollment of devices.|

### July 2019

|New or updated topic | Description|
|--- | ---|
|[Policy CSP](policy-configuration-service-provider.md)|Added the following list:<br>Policies supported by HoloLens 2|
|[ApplicationControl CSP](applicationcontrol-csp.md)|Added new CSP in Windows 10, version 1903.|
|[PassportForWork CSP](passportforwork-csp.md)|Added the following new nodes in Windows 10, version 1903:<br>SecurityKey, SecurityKey/UseSecurityKeyForSignin|
|[Policy CSP - Privacy](policy-csp-privacy.md)|Added the following new policies:<br>LetAppsActivateWithVoice, LetAppsActivateWithVoiceAboveLock|
|Create a custom configuration service provider|Deleted the following documents from the CSP reference because extensibility via CSPs is not currently supported:<br>Create a custom configuration service provider<br>Design a custom configuration service provider<br>IConfigServiceProvider2<br>IConfigServiceProvider2::ConfigManagerNotification<br>IConfigServiceProvider2::GetNode<br>ICSPNode<br>ICSPNode::Add<br>ICSPNode::Clear<br>ICSPNode::Copy<br>ICSPNode::DeleteChild<br>ICSPNode::DeleteProperty<br>ICSPNode::Execute<br>ICSPNode::GetChildNodeNames<br>ICSPNode::GetProperty<br>ICSPNode::GetPropertyIdentifiers<br>ICSPNode::GetValue<br>ICSPNode::Move<br>ICSPNode::SetProperty<br>ICSPNode::SetValue<br>ICSPNodeTransactioning<br>ICSPValidate<br>Samples for writing a custom configuration service provider.|


### June 2019

|New or updated topic | Description|
|--- | ---|
|[Policy CSP - DeviceHealthMonitoring](policy-csp-devicehealthmonitoring.md)|Added the following new policies:<br>AllowDeviceHealthMonitoring, ConfigDeviceHealthMonitoringScope, ConfigDeviceHealthMonitoringUploadDestination.|
|[Policy CSP - TimeLanguageSettings](policy-csp-timelanguagesettings.md)|Added the following new policy:<br>ConfigureTimeZone.|


### May 2019

|New or updated topic | Description|
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

### April 2019

|                                         New or updated topic                                          |                                                                                                                                                                                                          Description                                                                                                                                                                                                          |
|-------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Win32 and Desktop Bridge app policy configuration](win32-and-centennial-app-policy-configuration.md) | Added the following warning at the end of the Overview section:<br>Some operating system components have built in functionality to check devices for domain membership. MDM enforces the configured policy values only if the devices are domain joined, otherwise it does not. However, you can still import ADMX files and set ADMX-backed policies regardless of whether the device is domain joined or non-domain joined. |
|                          [Policy CSP - UserRights](policy-csp-userrights.md)                          |                                                                                                                                  Added a note stating if you use Intune custom profiles to assign UserRights policies, you must use the CDATA tag (<![CDATA[...]]>) to wrap the data fields.                                                                                                                                  |

### March 2019

|New or updated topic | Description|
|--- | ---|
|[Policy CSP - Storage](policy-csp-storage.md)|Updated ADMX Info of the following policies:<br>AllowStorageSenseGlobal, AllowStorageSenseTemporaryFilesCleanup, ConfigStorageSenseCloudContentDehydrationThreshold, ConfigStorageSenseDownloadsCleanupThreshold, ConfigStorageSenseGlobalCadence, ConfigStorageSenseRecycleBinCleanupThreshold. <br><br>Updated description of ConfigStorageSenseDownloadsCleanupThreshold.|


### February 2019

|New or updated topic | Description|
|--- | ---|
|[Policy CSP](policy-configuration-service-provider.md)|Updated supported policies for Holographic.|

### January 2019

|New or updated topic | Description|
|--- | ---|
|[Policy CSP - Storage](policy-csp-storage.md)|Added the following new policies: AllowStorageSenseGlobal, ConfigStorageSenseGlobalCadence, AllowStorageSenseTemporaryFilesCleanup, ConfigStorageSenseRecycleBinCleanupThreshold, ConfigStorageSenseDownloadsCleanupThreshold, and ConfigStorageSenseCloudContentCleanupThreshold.|
|[SharedPC CSP](sharedpc-csp.md)|Updated values and supported operations.|
|[Mobile device management](index.md)|Updated information about MDM Security Baseline.|

### December 2018

|New or updated topic | Description|
|--- | ---|
|[BitLocker CSP](bitlocker-csp.md)|Updated AllowWarningForOtherDiskEncryption policy description to describe silent and non-silent encryption scenarios, as well as where and how the recovery key is backed up for each scenario.|

### September 2018

|New or updated topic | Description|
|--- | ---|
|[Mobile device management](index.md#mmat) | Added information about the MDM Migration Analysis Tool (MMAT).|
|[Policy CSP - DeviceGuard](policy-csp-deviceguard.md) | Updated ConfigureSystemGuardLaunch policy and replaced EnableSystemGuard with it.|

### August 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td style="vertical-align:top"><a href="bitlocker-csp.md" data-raw-source="[BitLocker CSP](bitlocker-csp.md)">BitLocker CSP</a></td>
<td style="vertical-align:top"><p>Added support for Windows 10 Pro starting in the version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="office-csp.md" data-raw-source="[Office CSP](office-csp.md)">Office CSP</a></td>
<td style="vertical-align:top"><p>Added FinalStatus setting in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="remotewipe-csp.md" data-raw-source="[RemoteWipe CSP](remotewipe-csp.md)">RemoteWipe CSP</a></td>
<td style="vertical-align:top"><p>Added new settings in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="\tenantlockdown-csp.md" data-raw-source="[TenantLockdown CSP](\tenantlockdown-csp.md)">TenantLockdown CSP</a></td>
<td style="vertical-align:top"><p>Added new CSP in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="windowsdefenderapplicationguard-csp.md" data-raw-source="[WindowsDefenderApplicationGuard CSP](windowsdefenderapplicationguard-csp.md)">WindowsDefenderApplicationGuard CSP</a></td>
<td style="vertical-align:top"><p>Added new settings in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="policy-ddf-file.md" data-raw-source="[Policy DDF file](policy-ddf-file.md)">Policy DDF file</a></td>
<td style="vertical-align:top"><p>Posted an updated version of the Policy DDF for Windows 10, version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td style="vertical-align:top"><p>Added the following new policies in Windows 10, version 1809:</p>
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

### July 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td style="vertical-align:top"><a href="assignedaccess-csp.md" data-raw-source="[AssignedAccess CSP](assignedaccess-csp.md)">AssignedAccess CSP</a></td>
<td style="vertical-align:top"><p>Added the following note:</p>
<ul>
<li>You can only assign one single app kiosk profile to an individual user account on a device. The single app profile does not support domain groups.</li>
</ul>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="passportforwork-csp.md" data-raw-source="[PassportForWork  CSP](passportforwork-csp.md)">PassportForWork  CSP</a></td>
<td style="vertical-align:top"><p>Added new settings in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="enterprisemodernappmanagement-csp.md" data-raw-source="[EnterpriseModernAppManagement  CSP](enterprisemodernappmanagement-csp.md)">EnterpriseModernAppManagement  CSP</a></td>
<td style="vertical-align:top"><p>Added NonRemovable setting under AppManagement node in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="win32compatibilityappraiser-csp.md" data-raw-source="[Win32CompatibilityAppraiser  CSP](win32compatibilityappraiser-csp.md)">Win32CompatibilityAppraiser  CSP</a></td>
<td style="vertical-align:top"><p>Added new configuration service provider in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="windowslicensing-csp.md" data-raw-source="[WindowsLicensing  CSP](windowslicensing-csp.md)">WindowsLicensing  CSP</a></td>
<td style="vertical-align:top"><p>Added S mode settings and SyncML examples in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="supl-csp.md" data-raw-source="[SUPL CSP](supl-csp.md)">SUPL CSP</a></td>
<td style="vertical-align:top"><p>Added 3 new certificate nodes in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="defender-csp.md" data-raw-source="[Defender CSP](defender-csp.md)">Defender CSP</a></td>
<td style="vertical-align:top"><p>Added a new node Health/ProductStatus in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="bitlocker-csp.md" data-raw-source="[BitLocker CSP](bitlocker-csp.md)">BitLocker CSP</a></td>
<td style="vertical-align:top"><p>Added a new node AllowStandardUserEncryption in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="devdetail-csp.md" data-raw-source="[DevDetail CSP](devdetail-csp.md)">DevDetail CSP</a></td>
<td style="vertical-align:top"><p>Added a new node SMBIOSSerialNumber in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td style="vertical-align:top"><p>Added the following new policies in Windows 10, version 1809:</p>
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

### June 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td style="vertical-align:top"><a href="wifi-csp.md" data-raw-source="[Wifi CSP](wifi-csp.md)">Wifi CSP</a></td>
<td style="vertical-align:top"><p>Added a new node WifiCost in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="diagnose-mdm-failures-in-windows-10.md" data-raw-source="[Diagnose MDM failures in Windows 10](diagnose-mdm-failures-in-windows-10.md)">Diagnose MDM failures in Windows 10</a></td>
<td style="vertical-align:top"><p>Recent changes:</p>
<ul>
<li>Added procedure for collecting logs remotely from Windows 10 Holographic.</li>
<li>Added procedure for downloading the MDM Diagnostic Information log.</li>
</ul>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="bitlocker-csp.md" data-raw-source="[Bitlocker CSP](bitlocker-csp.md)">Bitlocker CSP</a></td>
<td style="vertical-align:top"><p>Added new node AllowStandardUserEncryption in Windows 10, version 1809.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td style="vertical-align:top"><p>Recent changes:</p>
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
<td style="vertical-align:top"><a href="wirednetwork-csp.md" data-raw-source="[WiredNetwork CSP](wirednetwork-csp.md)">WiredNetwork CSP</a></td>
<td style="vertical-align:top">New CSP added in Windows 10, version 1809.
</td></tr>
</tbody>
</table>


### May 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td style="vertical-align:top"><a href="policy-ddf-file.md" data-raw-source="[Policy DDF file](policy-ddf-file.md)">Policy DDF file</a></td>
<td style="vertical-align:top"><p>Updated the DDF files in the Windows 10 version 1703 and 1709.</p>
<ul>
<li><a href="https://download.microsoft.com/download/8/C/4/8C43C116-62CB-470B-9B69-76A3E2BC32A8/PolicyDDF_all.xml" data-raw-source="[Download the Policy DDF file for Windows 10, version 1709](https://download.microsoft.com/download/8/C/4/8C43C116-62CB-470B-9B69-76A3E2BC32A8/PolicyDDF_all.xml)">Download the Policy DDF file for Windows 10, version 1709</a></li>
<li><a href="https://download.microsoft.com/download/7/2/C/72C36C37-20F9-41BF-8E23-721F6FFC253E/PolicyDDF_all.xml" data-raw-source="[Download the Policy DDF file for Windows 10, version 1703](https://download.microsoft.com/download/7/2/C/72C36C37-20F9-41BF-8E23-721F6FFC253E/PolicyDDF_all.xml)">Download the Policy DDF file for Windows 10, version 1703</a></li>
</ul>
</td></tr>
</tbody>
</table>

### April 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td style="vertical-align:top"><a href="windowsdefenderapplicationguard-csp.md" data-raw-source="[WindowsDefenderApplicationGuard CSP](windowsdefenderapplicationguard-csp.md)">WindowsDefenderApplicationGuard CSP</a></td>
<td style="vertical-align:top"><p>Added the following node in Windows 10, version 1803:</p>
<ul>
<li>Settings/AllowVirtualGPU</li>
<li>Settings/SaveFilesToHost</li>
</ul>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="\networkproxy--csp.md" data-raw-source="[NetworkProxy CSP](\networkproxy--csp.md)">NetworkProxy CSP</a></td>
<td style="vertical-align:top"><p>Added the following node in Windows 10, version 1803:</p>
<ul>
<li>ProxySettingsPerUser</li>
</ul>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="accounts-csp.md" data-raw-source="[Accounts CSP](accounts-csp.md)">Accounts CSP</a></td>
<td style="vertical-align:top"><p>Added a new CSP in Windows 10, version 1803.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="https://aka.ms/mmat" data-raw-source="[MDM Migration Analysis Too (MMAT)](https://aka.ms/mmat)">MDM Migration Analysis Too (MMAT)</a></td>
<td style="vertical-align:top"><p>Updated version available. MMAT is a tool you can use to determine which Group Policies are set on a target user/computer and cross-reference them against the list of supported MDM policies.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="configuration-service-provider-reference.md#csp-ddf-files-download" data-raw-source="[CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download)">CSP DDF files download</a></td>
<td style="vertical-align:top"><p>Added the DDF download of Windows 10, version 1803 configuration service providers.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td style="vertical-align:top"><p>Added the following new policies for Windows 10, version 1803:</p>
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

### March 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td style="vertical-align:top"><a href="euiccs-csp.md" data-raw-source="[eUICCs CSP](euiccs-csp.md)">eUICCs CSP</a></td>
<td style="vertical-align:top"><p>Added the following node in Windows 10, version 1803:</p>
<ul>
<li>IsEnabled</li>
</ul>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="devicestatus-csp.md" data-raw-source="[DeviceStatus CSP](devicestatus-csp.md)">DeviceStatus CSP</a></td>
<td style="vertical-align:top"><p>Added the following node in Windows 10, version 1803:</p>
<ul>
<li>OS/Mode</li>
</ul>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="understanding-admx-backed-policies.md" data-raw-source="[Understanding ADMX-backed policies](understanding-admx-backed-policies.md)">Understanding ADMX-backed policies</a></td>
<td style="vertical-align:top"><p>Added the following videos:</p>
<ul>
<li><a href="https://www.microsoft.com/showcase/video.aspx?uuid=bdc9b54b-11b0-4bdb-a022-c339d16e7121" data-raw-source="[How to create a custom xml to enable an ADMX-backed policy and deploy the XML in Intune](https://www.microsoft.com/showcase/video.aspx?uuid=bdc9b54b-11b0-4bdb-a022-c339d16e7121)">How to create a custom xml to enable an ADMX-backed policy and deploy the XML in Intune</a></li>
<li><a href="https://www.microsoft.com/showcase/video.aspx?uuid=a59888b1-429f-4a49-8570-c39a143d9a73" data-raw-source="[How to import a custom ADMX file to a device using Intune](https://www.microsoft.com/showcase/video.aspx?uuid=a59888b1-429f-4a49-8570-c39a143d9a73)">How to import a custom ADMX file to a device using Intune</a></li>
</ul>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="accountmanagement-csp.md" data-raw-source="[AccountManagement CSP](accountmanagement-csp.md)">AccountManagement CSP</a></td>
<td style="vertical-align:top"><p>Added a new CSP in Windows 10, version 1803.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="rootcacertificates-csp.md" data-raw-source="[RootCATrustedCertificates CSP](rootcacertificates-csp.md)">RootCATrustedCertificates CSP</a></td>
<td style="vertical-align:top"><p>Added the following node in Windows 10, version 1803:</p>
<ul>
<li>UntrustedCertificates</li>
</ul>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td style="vertical-align:top"><p>Added the following new policies for Windows 10, version 1803:</p>
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
<li><a href="policy-csps-supported-by-group-policy.md" data-raw-source="[[Policies in Policy CSP supported by Group Policy](policy-csps-supported-by-group-policy.md)">[Policies in Policy CSP supported by Group Policy</a> - list of policies in Policy CSP that has corresponding Group Policy. The policy description contains the GP information, such as GP policy name and variable name.</li>
</ul>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="policy-csp-bluetooth.md" data-raw-source="[Policy CSP - Bluetooth](policy-csp-bluetooth.md)">Policy CSP - Bluetooth</a></td>
<td style="vertical-align:top"><p>Added new section <a href="policy-csp-bluetooth.md#servicesallowedlist-usage-guide" data-raw-source="[ServicesAllowedList usage guide](policy-csp-bluetooth.md#servicesallowedlist-usage-guide)">ServicesAllowedList usage guide</a>.</p>
</td></tr>
<tr>
<td style="vertical-align:top"><a href="multisim-csp.md" data-raw-source="[MultiSIM CSP](multisim-csp.md)">MultiSIM CSP</a></td>
<td style="vertical-align:top"><p>Added SyncML examples and updated the settings descriptions.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="remotewipe-csp.md" data-raw-source="[RemoteWipe CSP](remotewipe-csp.md)">RemoteWipe CSP</a></td>
<td style="vertical-align:top"><p>Reverted back to Windows 10, version 1709. Removed previous draft documentation for version 1803.</p>
</td></tr>
</tbody>
</table>

### February 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td style="vertical-align:top"><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td style="vertical-align:top"><p>Added the following new policies for Windows 10, version 1803:</p>
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
<td style="vertical-align:top"><a href="vpnv2-profile-xsd.md" data-raw-source="[VPNv2 ProfileXML XSD](vpnv2-profile-xsd.md)">VPNv2 ProfileXML XSD</a></td>
<td style="vertical-align:top"><p>Updated the XSD and Plug-in profile example for VPNv2 CSP.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="assignedaccess-csp.md" data-raw-source="[AssignedAccess CSP](assignedaccess-csp.md)">AssignedAccess CSP</a></td>
<td style="vertical-align:top"><p>Added the following nodes in Windows 10, version 1803:</p>
<ul>
<li>Status</li>
<li>ShellLauncher</li>
<li>StatusConfiguration</li>
</ul>
<p>Updated the AssigneAccessConfiguration schema. Starting in Windows 10, version 1803 AssignedAccess CSP is supported in HoloLens (1st gen) Commercial Suite. Added example for HoloLens (1st gen) Commercial Suite.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="multisim-csp.md" data-raw-source="[MultiSIM CSP](multisim-csp.md)">MultiSIM CSP</a></td>
<td style="vertical-align:top"><p>Added a new CSP in Windows 10, version 1803.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="enterprisemodernappmanagement-csp.md" data-raw-source="[EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md)">EnterpriseModernAppManagement CSP</a></td>
<td style="vertical-align:top"><p>Added the following node in Windows 10, version 1803:</p>
<ul>
<li>MaintainProcessorArchitectureOnUpdate</li>
</ul>
</td></tr>
</tbody>
</table>

### January 2018

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td style="vertical-align:top"><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td style="vertical-align:top"><p>Added the following new policies for Windows 10, version 1803:</p>
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
<td style="vertical-align:top"><a href="bitlocker-csp.md" data-raw-source="[BitLocker CSP](bitlocker-csp.md)">BitLocker CSP</a></td>
<td style="vertical-align:top"><p>Updated the description for AllowWarningForOtherDiskEncryption to describe changes added in Windows 10, version 1803.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="enterprisemodernappmanagement-csp.md" data-raw-source="[EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md)">EnterpriseModernAppManagement CSP</a></td>
<td style="vertical-align:top"><p>Added new node MaintainProcessorArchitectureOnUpdate in Windows 10, next major update.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="dmclient-csp.md" data-raw-source="[DMClient CSP](dmclient-csp.md)">DMClient CSP</a></td>
<td style="vertical-align:top"><p>Added ./User/Vendor/MSFT/DMClient/Provider/[ProviderID]/FirstSyncStatus node. Also added the following nodes in Windows 10, version 1803:</p>
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
<td style="vertical-align:top"><a href="defender-csp.md" data-raw-source="[Defender CSP](defender-csp.md)">Defender CSP</a></td>
<td style="vertical-align:top"><p>Added new node (OfflineScan) in Windows 10, version 1803.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="uefi-csp.md" data-raw-source="[UEFI CSP](uefi-csp.md)">UEFI CSP</a></td>
<td style="vertical-align:top"><p>Added a new CSP in Windows 10, version 1803.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="update-csp.md" data-raw-source="[Update CSP](update-csp.md)">Update CSP</a></td>
<td style="vertical-align:top"><p>Added the following nodes in Windows 10, version 1803:</p>
<ul>
<li>Rollback</li>
<li>Rollback/FeatureUpdate</li>
<li>Rollback/QualityUpdateStatus</li>
<li>Rollback/FeatureUpdateStatus</li>
</ul>
</td></tr>
</tbody>
</table>

### December 2017

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><a href="configuration-service-provider-reference.md" data-raw-source="[Configuration service provider reference](configuration-service-provider-reference.md)">Configuration service provider reference</a></td>
<td style="vertical-align:top"><p>Added new section <a href="configuration-service-provider-reference.md#csp-ddf-files-download" data-raw-source="[CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download)">CSP DDF files download</a></p>
</td></tr>
</tbody>
</table>

### November 2017

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td style="vertical-align:top"><p>Added the following policies for Windows 10, version 1709:</p>
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

### October 2017

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><a href="policy-ddf-file.md" data-raw-source="[Policy DDF file](policy-ddf-file.md)">Policy DDF file</a></td>
<td style="vertical-align:top"><p>Updated the DDF content for Windows 10 version 1709. Added a link to the download of Policy DDF for Windows 10, version 1709.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td style="vertical-align:top"><p>Updated the following policies:</p>
<ul>
<li>Defender/ControlledFolderAccessAllowedApplications - string separator is |.</li>
<li>Defender/ControlledFolderAccessProtectedFolders - string separator is |.</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top"><a href="euiccs-csp.md" data-raw-source="[eUICCs CSP](euiccs-csp.md)">eUICCs CSP</a></td>
<td style="vertical-align:top"><p>Added new CSP in Windows 10, version 1709.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="assignedaccess-csp.md" data-raw-source="[AssignedAccess CSP](assignedaccess-csp.md)">AssignedAccess CSP</a></td>
<td style="vertical-align:top"><p>Added SyncML examples for the new Configuration node.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="dmclient-csp.md" data-raw-source="[DMClient CSP](dmclient-csp.md)">DMClient CSP</a></td>
<td style="vertical-align:top"><p>Added new nodes to the DMClient CSP in Windows 10, version 1709. Updated the CSP and DDF topics.</p>
</td></tr>
</tbody>
</table>


### September 2017

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td style="vertical-align:top"><p>Added the following new policies for Windows 10, version 1709:</p>
<ul>
<li>Authentication/AllowAadPasswordReset</li>
<li>Handwriting/PanelDefaultModeDocked</li>
<li>Search/AllowCloudSearch</li>
<li>System/LimitEnhancedDiagnosticDataWindowsAnalytics</li>
</ul>
<p>Added new settings to Update/BranchReadinessLevel policy in Windows 10 version 1709.</p>
</td></tr>
<tr class="even">
<td style="vertical-align:top"><a href="assignedaccess-csp.md" data-raw-source="[AssignedAccess CSP](assignedaccess-csp.md)">AssignedAccess CSP</a></td>
<td style="vertical-align:top"><p>Starting in Windows 10, version 1709, AssignedAccess CSP is also supported in Windows 10 Pro.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top">Microsoft Store for Business and Microsoft Store</td>
<td style="vertical-align:top"><p>Windows Store for Business name changed to Microsoft Store for Business. Windows Store name changed to Microsoft Store.</p>
</td></tr>
<tr class="even">
<td style="vertical-align:top">The <a href="https://msdn.microsoft.com/library/mt221945.aspx" data-raw-source="[\[MS-MDE2\]: Mobile Device Enrollment Protocol Version 2](https://msdn.microsoft.com/library/mt221945.aspx)">[MS-MDE2]: Mobile Device Enrollment Protocol Version 2</a></td>
<td style="vertical-align:top"><p>The Windows 10 enrollment protocol was updated. The following elements were added to the RequestSecurityToken message:</p>
<ul>
<li>UXInitiated - boolean value that indicates whether the enrollment is user initiated from the Settings page. </li>
<li>ExternalMgmtAgentHint - a string the agent uses to give hints the enrollment server may need.</li>
<li>DomainName - fully qualified domain name if the device is domain-joined.</li>
</ul>
<p>For examples, see section 4.3.1 RequestSecurityToken of the MS-MDE2 protocol documentation.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="enterpriseapn-csp.md" data-raw-source="[EnterpriseAPN CSP](enterpriseapn-csp.md)">EnterpriseAPN CSP</a></td>
<td style="vertical-align:top"><p>Added a SyncML example.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="vpnv2-csp.md" data-raw-source="[VPNv2 CSP](vpnv2-csp.md)">VPNv2 CSP</a></td>
<td style="vertical-align:top"><p>Added RegisterDNS setting in Windows 10, version 1709.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="enroll-a-windows-10-device-automatically-using-group-policy.md" data-raw-source="[Enroll a Windows 10 device automatically using Group Policy](enroll-a-windows-10-device-automatically-using-group-policy.md)">Enroll a Windows 10 device automatically using Group Policy</a></td>
<td style="vertical-align:top"><p>Added new topic to introduce a new Group Policy for automatic MDM enrollment.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="mdm-enrollment-of-windows-devices.md" data-raw-source="[MDM enrollment of Windows-based devices](mdm-enrollment-of-windows-devices.md)">MDM enrollment of Windows-based devices</a></td>
<td style="vertical-align:top"><p>New features in the Settings app:</p>
<ul>
<li>User sees installation progress of critical policies during MDM enrollment.</li>
<li>User knows what policies, profiles, apps MDM has configured</li>
<li>IT helpdesk can get detailed MDM diagnostic information using client tools</li>
</ul>
<p>For details, see <a href="mdm-enrollment-of-windows-devices.md#manage-connections" data-raw-source="[Manage connections](mdm-enrollment-of-windows-devices.md#manage-connections)">Managing connections</a> and <a href="mdm-enrollment-of-windows-devices.md#collecting-diagnostic-logs" data-raw-source="[Collecting diagnostic logs](mdm-enrollment-of-windows-devices.md#collecting-diagnostic-logs)">Collecting diagnostic logs</a></p>
</td></tr>
</tbody>
</table>

### August 2017

<table class="mx-tdBreakAll">
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th>New or updated topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><a href="enable-admx-backed-policies-in-mdm.md" data-raw-source="[Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md)">Enable ADMX-backed policies in MDM</a></td>
<td style="vertical-align:top"><p>Added new step-by-step guide to enable ADMX-backed policies.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="mobile-device-enrollment.md" data-raw-source="[Mobile device enrollment](mobile-device-enrollment.md)">Mobile device enrollment</a></td>
<td style="vertical-align:top"><p>Added the following statement:</p>
<ul>
<li>Devices that are joined to an on-premises Active Directory can enroll into MDM via the Work access page in <strong>Settings</strong>. However, the enrollment can only target the user enrolled with user-specific policies. Device targeted policies will continue to impact all users of the device.</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="cm-cellularentries-csp.md" data-raw-source="[CM\_CellularEntries CSP](cm-cellularentries-csp.md)">CM_CellularEntries CSP</a></td>
<td style="vertical-align:top"><p>Updated the description of the PuposeGroups node to add the GUID for applications. This node is required instead of optional.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="enterprisedataprotection-csp.md" data-raw-source="[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)">EnterpriseDataProtection CSP</a></td>
<td style="vertical-align:top"><p>Updated the Settings/EDPEnforcementLevel values to the following:</p>
<ul>
<li> 0 (default) – Off / No protection (decrypts previously protected data).</li>
<li>  1 – Silent mode (encrypt and audit only).</li>
<li>  2 – Allow override mode (encrypt, prompt and allow overrides, and audit).</li>
<li>  3 – Hides overrides (encrypt, prompt but hide overrides, and audit).</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="applocker-csp.md" data-raw-source="[AppLocker CSP](applocker-csp.md)">AppLocker CSP</a></td>
<td style="vertical-align:top"><p>Added two new SyncML examples (to disable the calendar app and to block usage of the map app) in <a href="applocker-csp.md#allow-list-examples" data-raw-source="[Allowlist examples](applocker-csp.md#allow-list-examples)">Allow list examples</a>.</p>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="devicemanageability-csp.md" data-raw-source="[DeviceManageability CSP](devicemanageability-csp.md)">DeviceManageability CSP</a></td>
<td style="vertical-align:top"><p>Added the following settings in Windows 10, version 1709:</p>
<ul>
<li>Provider/<em>ProviderID</em>/ConfigInfo</li>
<li> Provider/<em>ProviderID</em>/EnrollmentInfo</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="office-csp.md" data-raw-source="[Office CSP](office-csp.md)">Office CSP</a></td>
<td style="vertical-align:top"><p>Added the following setting in Windows 10, version 1709:</p>
<ul>
<li>Installation/CurrentStatus</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="bitlocker-csp.md" data-raw-source="[BitLocker CSP](bitlocker-csp.md)">BitLocker CSP</a></td>
<td style="vertical-align:top">Added information to the ADMX-backed policies. Changed the minimum personal identification number (PIN) length to 4 digits in SystemDrivesRequireStartupAuthentication and SystemDrivesMinimumPINLength in Windows 10, version 1709.
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="firewall-csp.md" data-raw-source="[Firewall CSP](firewall-csp.md)">Firewall CSP</a></td>
<td style="vertical-align:top">Updated the CSP and DDF topics. Here are the changes:
<ul>
<li>Removed the two settings - FirewallRules/FirewallRuleName/FriendlyName and FirewallRules/FirewallRuleName/IcmpTypesAndCodes.</li>
<li>Changed some data types from integer to bool.</li>
<li>Updated the list of supported operations for some settings.</li>
<li>Added default values.</li>
</ul>
</td></tr>
<tr class="odd">
<td style="vertical-align:top"><a href="policy-ddf-file.md" data-raw-source="[Policy DDF file](policy-ddf-file.md)">Policy DDF file</a></td>
<td style="vertical-align:top">Added another Policy DDF file <a href="https://download.microsoft.com/download/6/1/C/61C022FD-6F5D-4F73-9047-17F630899DC4/PolicyDDF_all_version1607_8C.xml" data-raw-source="[download](https://download.microsoft.com/download/6/1/C/61C022FD-6F5D-4F73-9047-17F630899DC4/PolicyDDF_all_version1607_8C.xml)">download</a> for the 8C release of Windows 10, version 1607, which added the following policies:
<ul>
<li>Browser/AllowMicrosoftCompatibilityList</li>
<li>Update/DisableDualScan</li>
<li>Update/FillEmptyContentUrls</li>
</ul>
</td></tr>
<tr class="even">
<td style="vertical-align:top"><a href="policy-configuration-service-provider.md" data-raw-source="[Policy CSP](policy-configuration-service-provider.md)">Policy CSP</a></td>
<td style="vertical-align:top"><p>Added the following new policies for Windows 10, version 1709:</p>
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
