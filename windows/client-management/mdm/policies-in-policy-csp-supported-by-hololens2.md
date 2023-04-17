---
title: Policies in Policy CSP supported by HoloLens 2
description: Learn about the policies in Policy CSP supported by HoloLens 2.
ms.reviewer:
manager: aaroncz
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 02/03/2023
---

# Policies in Policy CSP supported by HoloLens 2

- [Accounts/AllowMicrosoftAccountConnection](policy-csp-accounts.md#allowmicrosoftaccountconnection)
- [ApplicationManagement/AllowAllTrustedApps](policy-csp-applicationmanagement.md#allowalltrustedapps)
- [ApplicationManagement/AllowAppStoreAutoUpdate](policy-csp-applicationmanagement.md#allowappstoreautoupdate)
- [ApplicationManagement/AllowDeveloperUnlock](policy-csp-applicationmanagement.md#allowdeveloperunlock)
- [ApplicationManagement/RequirePrivateStoreOnly](policy-csp-applicationmanagement.md#requireprivatestoreonly) <sup>11</sup>
- [ApplicationManagement/ScheduleForceRestartForUpdateFailures](policy-csp-applicationmanagement.md#scheduleforcerestartforupdatefailures)
- [Authentication/AllowFastReconnect](policy-csp-authentication.md#allowfastreconnect)
- [Authentication/PreferredAadTenantDomainName](policy-csp-authentication.md#preferredaadtenantdomainname)
- [Bluetooth/AllowDiscoverableMode](policy-csp-bluetooth.md#allowdiscoverablemode)
- [Bluetooth/LocalDeviceName](policy-csp-bluetooth.md#localdevicename)
- [Browser/AllowAutofill](policy-csp-browser.md#allowautofill)
- [Browser/AllowCookies](policy-csp-browser.md#allowcookies)
- [Browser/AllowDoNotTrack](policy-csp-browser.md#allowdonottrack)
- [Browser/AllowPasswordManager](policy-csp-browser.md#allowpasswordmanager)
- [Browser/AllowPopups](policy-csp-browser.md#allowpopups)
- [Browser/AllowSearchSuggestionsinAddressBar](policy-csp-browser.md#allowsearchsuggestionsinaddressbar)
- [Browser/AllowSmartScreen](policy-csp-browser.md#allowsmartscreen)
- [Connectivity/AllowBluetooth](policy-csp-connectivity.md#allowbluetooth)
- [Connectivity/AllowUSBConnection](policy-csp-connectivity.md#allowusbconnection)
- [DeliveryOptimization/DOCacheHost](policy-csp-deliveryoptimization.md#docachehost) <sup>10</sup>
- [DeliveryOptimization/DOCacheHostSource](policy-csp-deliveryoptimization.md#docachehostsource) <sup>10</sup>
- [DeliveryOptimization/DODelayCacheServerFallbackBackground](policy-csp-deliveryoptimization.md#dodelaycacheserverfallbackbackground) <sup>10</sup>
- [DeliveryOptimization/DODelayCacheServerFallbackForeground](policy-csp-deliveryoptimization.md#dodelaycacheserverfallbackforeground) <sup>10</sup>
- [DeliveryOptimization/DODownloadMode](policy-csp-deliveryoptimization.md#dodownloadmode) <sup>10</sup>
- [DeliveryOptimization/DOMaxBackgroundDownloadBandwidth](policy-csp-deliveryoptimization.md#domaxbackgrounddownloadbandwidth) <sup>10</sup>
- [DeliveryOptimization/DOMaxForegroundDownloadBandwidth](policy-csp-deliveryoptimization.md#domaxforegrounddownloadbandwidth) <sup>10</sup>
- [DeliveryOptimization/DOPercentageMaxBackgroundBandwidth](policy-csp-deliveryoptimization.md#dopercentagemaxbackgroundbandwidth) <sup>10</sup>
- [DeliveryOptimization/DOPercentageMaxForegroundBandwidth](policy-csp-deliveryoptimization.md#dopercentagemaxforegroundbandwidth) <sup>10</sup>
- [DeliveryOptimization/DOSetHoursToLimitForegroundDownloadBandwidth](policy-csp-deliveryoptimization.md#dosethourstolimitforegrounddownloadbandwidth) <sup>10</sup>
- [DeliveryOptimization/DOSetHoursToLimitBackgroundDownloadBandwidth](policy-csp-deliveryoptimization.md#dosethourstolimitbackgrounddownloadbandwidth) <sup>10</sup>
- [DeliveryOptimization/DOSetHoursToLimitBackgroundDownloadBandwidth](policy-csp-deliveryoptimization.md#dosethourstolimitbackgrounddownloadbandwidth) <sup>10</sup>
- [DeviceLock/AllowIdleReturnWithoutPassword](policy-csp-devicelock.md#allowidlereturnwithoutpassword)
- [DeviceLock/AllowSimpleDevicePassword](policy-csp-devicelock.md#allowsimpledevicepassword)
- [DeviceLock/AlphanumericDevicePasswordRequired](policy-csp-devicelock.md#alphanumericdevicepasswordrequired)
- [DeviceLock/DevicePasswordEnabled](policy-csp-devicelock.md#devicepasswordenabled)
- [DeviceLock/DevicePasswordExpiration](policy-csp-devicelock.md#devicepasswordexpiration)
- [DeviceLock/DevicePasswordHistory](policy-csp-devicelock.md#devicepasswordhistory)
- [DeviceLock/MaxDevicePasswordFailedAttempts](policy-csp-devicelock.md#maxdevicepasswordfailedattempts)
- [DeviceLock/MaxInactivityTimeDeviceLock](policy-csp-devicelock.md#maxinactivitytimedevicelock)
- [DeviceLock/MinDevicePasswordComplexCharacters](policy-csp-devicelock.md#mindevicepasswordcomplexcharacters)
- [DeviceLock/MinDevicePasswordLength](policy-csp-devicelock.md#mindevicepasswordlength)
- [Experience/AllowCortana](policy-csp-experience.md#allowcortana)
- [Experience/AllowManualMDMUnenrollment](policy-csp-experience.md#allowmanualmdmunenrollment)
- [MixedReality/AADGroupMembershipCacheValidityInDays](./policy-csp-mixedreality.md#aadgroupmembershipcachevalidityindays) <sup>9</sup>
- [MixedReality/AllowCaptivePortalBeforeLogon](./policy-csp-mixedreality.md#allowcaptiveportalbeforelogon) <sup>12</sup>
- [MixedReality/AllowLaunchUriInSingleAppKiosk](./policy-csp-mixedreality.md#allowlaunchuriinsingleappkiosk)<sup>10</sup>
- [MixedReality/AutoLogonUser](./policy-csp-mixedreality.md#autologonuser) <sup>11</sup>
- [MixedReality/BrightnessButtonDisabled](./policy-csp-mixedreality.md#brightnessbuttondisabled) <sup>9</sup>
- [MixedReality/ConfigureMovingPlatform](policy-csp-mixedreality.md#configuremovingplatform) <sup>*[Feb. 2022 Servicing release](/hololens/hololens-release-notes#windows-holographic-version-21h2---february-2022-update)</sup>
- [MixedReality/ConfigureNtpClient](./policy-csp-mixedreality.md#configurentpclient) <sup>12</sup>
- [MixedReality/DisallowNetworkConnectivityPassivePolling](./policy-csp-mixedreality.md#disallownetworkconnectivitypassivepolling) <sup>12</sup>
- [MixedReality/FallbackDiagnostics](./policy-csp-mixedreality.md#fallbackdiagnostics) <sup>9</sup>
- [MixedReality/HeadTrackingMode](policy-csp-mixedreality.md#headtrackingmode) <sup>9</sup>
- [MixedReality/ManualDownDirectionDisabled](policy-csp-mixedreality.md#manualdowndirectiondisabled) <sup>*[Feb. 2022 Servicing release](/hololens/hololens-release-notes#windows-holographic-version-21h2---february-2022-update)</sup>
- [MixedReality/MicrophoneDisabled](./policy-csp-mixedreality.md#microphonedisabled) <sup>9</sup>
- [MixedReality/NtpClientEnabled](./policy-csp-mixedreality.md#ntpclientenabled) <sup>12</sup>
- [MixedReality/SkipCalibrationDuringSetup](./policy-csp-mixedreality.md#skipcalibrationduringsetup) <sup>12</sup>
- [MixedReality/SkipTrainingDuringSetup](./policy-csp-mixedreality.md#skiptrainingduringsetup) <sup>12</sup>
- [MixedReality/VisitorAutoLogon](policy-csp-mixedreality.md#visitorautologon) <sup>10</sup>
- [MixedReality/VolumeButtonDisabled](./policy-csp-mixedreality.md#volumebuttondisabled) <sup>9</sup>
- [Power/DisplayOffTimeoutOnBattery](./policy-csp-power.md#displayofftimeoutonbattery) <sup>9</sup>
- [Power/DisplayOffTimeoutPluggedIn](./policy-csp-power.md#displayofftimeoutpluggedin) <sup>9</sup>
- [Power/EnergySaverBatteryThresholdOnBattery](./policy-csp-power.md#energysaverbatterythresholdonbattery) <sup>9</sup>
- [Power/EnergySaverBatteryThresholdPluggedIn](./policy-csp-power.md#energysaverbatterythresholdpluggedin) <sup>9</sup>
- [Power/StandbyTimeoutOnBattery](./policy-csp-power.md#standbytimeoutonbattery) <sup>9</sup>
- [Power/StandbyTimeoutPluggedIn](./policy-csp-power.md#standbytimeoutpluggedin) <sup>9</sup>
- [Privacy/AllowInputPersonalization](policy-csp-privacy.md#allowinputpersonalization)
- [Privacy/DisablePrivacyExperience](./policy-csp-privacy.md#disableprivacyexperience) <sup>Insider</sup>
- [Privacy/LetAppsAccessAccountInfo](policy-csp-privacy.md#letappsaccessaccountinfo)
- [Privacy/LetAppsAccessAccountInfo_ForceAllowTheseApps](policy-csp-privacy.md#letappsaccessaccountinfo_forceallowtheseapps)
- [Privacy/LetAppsAccessAccountInfo_ForceDenyTheseApps](policy-csp-privacy.md#letappsaccessaccountinfo_forcedenytheseapps)
- [Privacy/LetAppsAccessAccountInfo_UserInControlOfTheseApps](policy-csp-privacy.md#letappsaccessaccountinfo_userincontroloftheseapps)
- [Privacy/LetAppsAccessBackgroundSpatialPerception](policy-csp-privacy.md#letappsaccessbackgroundspatialperception)
- [Privacy/LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps](policy-csp-privacy.md#letappsaccessbackgroundspatialperception_forceallowtheseapps)
- [Privacy/LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps](policy-csp-privacy.md#letappsaccessbackgroundspatialperception_forcedenytheseapps)
- [Privacy/LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps](policy-csp-privacy.md#letappsaccessbackgroundspatialperception_userincontroloftheseapps)
- [Privacy/LetAppsAccessCamera](policy-csp-privacy.md#letappsaccesscamera)
- [Privacy/LetAppsAccessCamera_ForceAllowTheseApps](policy-csp-privacy.md#letappsaccesscamera_forceallowtheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessCamera_ForceDenyTheseApps](policy-csp-privacy.md#letappsaccesscamera_forcedenytheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessCamera_UserInControlOfTheseApps](policy-csp-privacy.md#letappsaccesscamera_userincontroloftheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessGazeInput](policy-csp-privacy.md#letappsaccessgazeinput) <sup>8</sup>
- [Privacy/LetAppsAccessGazeInput_ForceAllowTheseApps](policy-csp-privacy.md#letappsaccessgazeinput_forceallowtheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessGazeInput_ForceDenyTheseApps](policy-csp-privacy.md#letappsaccessgazeinput_forcedenytheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessGazeInput_UserInControlOfTheseApps](policy-csp-privacy.md#letappsaccessgazeinput_userincontroloftheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessLocation](policy-csp-privacy.md#letappsaccesslocation)
- [Privacy/LetAppsAccessMicrophone](policy-csp-privacy.md#letappsaccessmicrophone)
- [Privacy/LetAppsAccessMicrophone_ForceAllowTheseApps](policy-csp-privacy.md#letappsaccessmicrophone_forceallowtheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessMicrophone_ForceDenyTheseApps](policy-csp-privacy.md#letappsaccessmicrophone_forcedenytheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessMicrophone_UserInControlOfTheseApps](policy-csp-privacy.md#letappsaccessmicrophone_userincontroloftheseapps) <sup>8</sup>
- [Search/AllowSearchToUseLocation](policy-csp-search.md#allowsearchtouselocation)
- [Security/AllowAddProvisioningPackage](policy-csp-security.md#allowaddprovisioningpackage) <sup>9</sup>
- [Security/AllowRemoveProvisioningPackage](policy-csp-security.md#allowremoveprovisioningpackage) <sup>9</sup>
- [Settings/AllowDateTime](policy-csp-settings.md#allowdatetime)
- [Settings/AllowVPN](policy-csp-settings.md#allowvpn)
- [Settings/PageVisibilityList](./policy-csp-settings.md#pagevisibilitylist) <sup>9</sup>
- [Speech/AllowSpeechModelUpdate](policy-csp-speech.md#allowspeechmodelupdate)
- [Storage/AllowStorageSenseGlobal](policy-csp-storage.md#allowstoragesenseglobal) <sup>12</sup>
- [Storage/AllowStorageSenseTemporaryFilesCleanup](policy-csp-storage.md#allowstoragesensetemporaryfilescleanup) <sup>12</sup>
- [Storage/ConfigStorageSenseCloudContentDehydrationThreshold](policy-csp-storage.md#configstoragesensecloudcontentdehydrationthreshold) <sup>12</sup>
- [Storage/ConfigStorageSenseDownloadsCleanupThreshold](policy-csp-storage.md#configstoragesensedownloadscleanupthreshold) <sup>12</sup>
- [Storage/ConfigStorageSenseGlobalCadence](policy-csp-storage.md#configstoragesenseglobalcadence) <sup>12</sup>
- [System/AllowCommercialDataPipeline](policy-csp-system.md#allowcommercialdatapipeline)
- [System/AllowLocation](policy-csp-system.md#allowlocation)
- [System/AllowStorageCard](policy-csp-system.md#allowstoragecard)
- [System/AllowTelemetry](policy-csp-system.md#allowtelemetry)
- [TimeLanguageSettings/ConfigureTimeZone](./policy-csp-timelanguagesettings.md#configuretimezone) <sup>9</sup>
- [Update/ActiveHoursEnd](./policy-csp-update.md#activehoursend) <sup>9</sup>
- [Update/ActiveHoursMaxRange](./policy-csp-update.md#activehoursmaxrange) <sup>9</sup>
- [Update/ActiveHoursStart](./policy-csp-update.md#activehoursstart) <sup>9</sup>
- [Update/AllowAutoUpdate](policy-csp-update.md#allowautoupdate)
- [Update/AllowUpdateService](policy-csp-update.md#allowupdateservice)
- [Update/AutoRestartNotificationSchedule](policy-csp-update.md#autorestartnotificationschedule) <sup>11</sup>
- [Update/AutoRestartRequiredNotificationDismissal](policy-csp-update.md#autorestartrequirednotificationdismissal) <sup>11</sup>
- [Update/BranchReadinessLevel](policy-csp-update.md#branchreadinesslevel)
- [Update/ConfigureDeadlineForFeatureUpdates](policy-csp-update.md#configuredeadlineforfeatureupdates) <sup>11</sup>
- [Update/ConfigureDeadlineForQualityUpdates](policy-csp-update.md#configuredeadlineforqualityupdates) <sup>11</sup>
- [Update/ConfigureDeadlineGracePeriod](policy-csp-update.md#configuredeadlinegraceperiod) <sup>11</sup>
- [Update/ConfigureDeadlineNoAutoReboot](policy-csp-update.md#configuredeadlinenoautoreboot) <sup>11</sup>
- [Update/DeferFeatureUpdatesPeriodInDays](policy-csp-update.md#deferfeatureupdatesperiodindays)
- [Update/DeferQualityUpdatesPeriodInDays](policy-csp-update.md#deferqualityupdatesperiodindays)
- [Update/ManagePreviewBuilds](policy-csp-update.md#managepreviewbuilds)
- [Update/PauseFeatureUpdates](policy-csp-update.md#pausefeatureupdates)
- [Update/PauseQualityUpdates](policy-csp-update.md#pausequalityupdates)
- [Update/ScheduledInstallDay](policy-csp-update.md#scheduledinstallday)
- [Update/ScheduledInstallTime](policy-csp-update.md#scheduledinstalltime)
- [Update/ScheduleImminentRestartWarning](policy-csp-update.md#scheduleimminentrestartwarning) <sup>11</sup>
- [Update/ScheduleRestartWarning](policy-csp-update.md#schedulerestartwarning) <sup>11</sup>
- [Update/SetDisablePauseUXAccess](policy-csp-update.md#setdisablepauseuxaccess)
- [Update/UpdateNotificationLevel](policy-csp-update.md#updatenotificationlevel) <sup>11</sup>
- [Wifi/AllowManualWiFiConfiguration](policy-csp-wifi.md#allowmanualwificonfiguration)
- [Wifi/AllowWiFi](policy-csp-wifi.md#allowwifi) <sup>8</sup>

Footnotes:

- 1 - Available in Windows 10, version 1607.
- 2 - Available in Windows 10, version 1703.
- 3 - Available in Windows 10, version 1709.
- 4 - Available in Windows 10, version 1803.
- 5 - Available in Windows 10, version 1809.
- 6 - Available in Windows 10, version 1903.
- 7 - Available in Windows 10, version 1909.
- 8 - Available in Windows 10, version 2004.
- 9 - Available in [Windows Holographic, version 20H2](/hololens/hololens-release-notes-2004#windows-holographic-version-20h2)
- 10 - Available in [Windows Holographic, version 21H1](/hololens/hololens-release-notes#windows-holographic-version-21h1)
- 11 - Available in [Windows Holographic, version 21H2](/hololens/hololens-release-notes#windows-holographic-version-21h2)
- 12 - Available in [Windows Holographic, version 22H2](/hololens/hololens-release-notes#windows-holographic-version-22h2)
- Insider - Available in our current [HoloLens Insider builds](/hololens/hololens-insider).

## Related topics

[Policy CSP](policy-configuration-service-provider.md)
