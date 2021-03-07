---
title: Policies in Policy CSP supported by HoloLens 2
description: Policies in Policy CSP supported by HoloLens 2
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 10/08/2020
---

# Policies in Policy CSP supported by HoloLens 2

> [!div class="op_single_selector"]
>
> - [HoloLens 2](policy-csps-supported-by-hololens2.md)
> - [HoloLens (1st gen) Commercial Suite](policy-csps-supported-by-hololens-1st-gen-commercial-suite.md)
> - [HoloLens (1st gen) Development Edition](policy-csps-supported-by-hololens-1st-gen-development-edition.md)
>

- [Accounts/AllowMicrosoftAccountConnection](policy-csp-accounts.md#accounts-allowmicrosoftaccountconnection)
- [ApplicationManagement/AllowAllTrustedApps](policy-csp-applicationmanagement.md#applicationmanagement-allowalltrustedapps)
- [ApplicationManagement/AllowAppStoreAutoUpdate](policy-csp-applicationmanagement.md#applicationmanagement-allowappstoreautoupdate)
- [ApplicationManagement/AllowDeveloperUnlock](policy-csp-applicationmanagement.md#applicationmanagement-allowdeveloperunlock)
- [Authentication/AllowFastReconnect](policy-csp-authentication.md#authentication-allowfastreconnect)
- [Authentication/PreferredAadTenantDomainName](policy-csp-authentication.md#authentication-preferredaadtenantdomainname)
- [Bluetooth/AllowDiscoverableMode](policy-csp-bluetooth.md#bluetooth-allowdiscoverablemode)
- [Bluetooth/LocalDeviceName](policy-csp-bluetooth.md#bluetooth-localdevicename)
- [Browser/AllowAutofill](policy-csp-browser.md#browser-allowautofill)
- [Browser/AllowCookies](policy-csp-browser.md#browser-allowcookies)
- [Browser/AllowDoNotTrack](policy-csp-browser.md#browser-allowdonottrack)
- [Browser/AllowPasswordManager](policy-csp-browser.md#browser-allowpasswordmanager)
- [Browser/AllowPopups](policy-csp-browser.md#browser-allowpopups)
- [Browser/AllowSearchSuggestionsinAddressBar](policy-csp-browser.md#browser-allowsearchsuggestionsinaddressbar)
- [Browser/AllowSmartScreen](policy-csp-browser.md#browser-allowsmartscreen)
- [Connectivity/AllowBluetooth](policy-csp-connectivity.md#connectivity-allowbluetooth)
- [Connectivity/AllowUSBConnection](policy-csp-connectivity.md#connectivity-allowusbconnection)
- [DeviceLock/AllowIdleReturnWithoutPassword](policy-csp-devicelock.md#devicelock-allowidlereturnwithoutpassword)
- [DeviceLock/AllowSimpleDevicePassword](policy-csp-devicelock.md#devicelock-allowsimpledevicepassword)
- [DeviceLock/AlphanumericDevicePasswordRequired](policy-csp-devicelock.md#devicelock-alphanumericdevicepasswordrequired)
- [DeviceLock/DevicePasswordEnabled](policy-csp-devicelock.md#devicelock-devicepasswordenabled)
- [DeviceLock/DevicePasswordExpiration](policy-csp-devicelock.md#devicelock-devicepasswordexpiration)
- [DeviceLock/DevicePasswordHistory](policy-csp-devicelock.md#devicelock-devicepasswordhistory)
- [DeviceLock/MaxDevicePasswordFailedAttempts](policy-csp-devicelock.md#devicelock-maxdevicepasswordfailedattempts)
- [DeviceLock/MaxInactivityTimeDeviceLock](policy-csp-devicelock.md#devicelock-maxinactivitytimedevicelock)
- [DeviceLock/MinDevicePasswordComplexCharacters](policy-csp-devicelock.md#devicelock-mindevicepasswordcomplexcharacters)
- [DeviceLock/MinDevicePasswordLength](policy-csp-devicelock.md#devicelock-mindevicepasswordlength)
- [Experience/AllowCortana](policy-csp-experience.md#experience-allowcortana)
- [Experience/AllowManualMDMUnenrollment](policy-csp-experience.md#experience-allowmanualmdmunenrollment)
- [MixedReality/AADGroupMembershipCacheValidityInDays](./policy-csp-mixedreality.md#mixedreality-aadgroupmembershipcachevalidityindays) <sup>9</sup>
- [MixedReality/BrightnessButtonDisabled](./policy-csp-mixedreality.md#mixedreality-brightnessbuttondisabled) <sup>9</sup>
- [MixedReality/FallbackDiagnostics](./policy-csp-mixedreality.md#mixedreality-fallbackdiagnostics) <sup>9</sup>
- [MixedReality/MicrophoneDisabled](./policy-csp-mixedreality.md#mixedreality-microphonedisabled) <sup>9</sup>
- [MixedReality/VolumeButtonDisabled](./policy-csp-mixedreality.md#mixedreality-volumebuttondisabled) <sup>9</sup>
- [Power/DisplayOffTimeoutOnBattery](./policy-csp-power.md#power-displayofftimeoutonbattery) <sup>9</sup>
- [Power/DisplayOffTimeoutPluggedIn](./policy-csp-power.md#power-displayofftimeoutpluggedin) <sup>9</sup>
- [Power/EnergySaverBatteryThresholdOnBattery](./policy-csp-power.md#power-energysaverbatterythresholdonbattery) <sup>9</sup>
- [Power/EnergySaverBatteryThresholdPluggedIn](./policy-csp-power.md#power-energysaverbatterythresholdpluggedin) <sup>9</sup>
- [Power/StandbyTimeoutOnBattery](./policy-csp-power.md#power-standbytimeoutonbattery) <sup>9</sup>
- [Power/StandbyTimeoutPluggedIn](./policy-csp-power.md#power-standbytimeoutpluggedin) <sup>9</sup>
- [Privacy/AllowInputPersonalization](policy-csp-privacy.md#privacy-allowinputpersonalization)
- [Privacy/LetAppsAccessAccountInfo](policy-csp-privacy.md#privacy-letappsaccessaccountinfo)
- [Privacy/LetAppsAccessAccountInfo_ForceAllowTheseApps](policy-csp-privacy.md#privacy-letappsaccessaccountinfo-forceallowtheseapps)
- [Privacy/LetAppsAccessAccountInfo_ForceDenyTheseApps](policy-csp-privacy.md#privacy-letappsaccessaccountinfo-forcedenytheseapps)
- [Privacy/LetAppsAccessAccountInfo_UserInControlOfTheseApps](policy-csp-privacy.md#privacy-letappsaccessaccountinfo-userincontroloftheseapps)
- [Privacy/LetAppsAccessBackgroundSpatialPerception](policy-csp-privacy.md#privacy-letappsaccessbackgroundspatialperception)
- [Privacy/LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps](policy-csp-privacy.md#privacy-letappsaccessbackgroundspatialperception-forceallowtheseapps)
- [Privacy/LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps](policy-csp-privacy.md#privacy-letappsaccessbackgroundspatialperception-forcedenytheseapps)
- [Privacy/LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps](policy-csp-privacy.md#privacy-letappsaccessbackgroundspatialperception-userincontroloftheseapps)
- [Privacy/LetAppsAccessCamera_ForceAllowTheseApps](policy-csp-privacy.md#privacy-letappsaccesscamera-forceallowtheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessCamera_ForceDenyTheseApps](policy-csp-privacy.md#privacy-letappsaccesscamera-forcedenytheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessCamera_UserInControlOfTheseApps](policy-csp-privacy.md#privacy-letappsaccesscamera-userincontroloftheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessGazeInput](policy-csp-privacy.md#privacy-letappsaccessgazeinput) <sup>8</sup>
- [Privacy/LetAppsAccessGazeInput_ForceAllowTheseApps](policy-csp-privacy.md#privacy-letappsaccessgazeinput-forceallowtheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessGazeInput_ForceDenyTheseApps](policy-csp-privacy.md#privacy-letappsaccessgazeinput-forcedenytheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessGazeInput_UserInControlOfTheseApps](policy-csp-privacy.md#privacy-letappsaccessgazeinput-userincontroloftheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessCamera](policy-csp-privacy.md#privacy-letappsaccesscamera)
- [Privacy/LetAppsAccessLocation](policy-csp-privacy.md#privacy-letappsaccesslocation)
- [Privacy/LetAppsAccessMicrophone](policy-csp-privacy.md#privacy-letappsaccessmicrophone)
- [Privacy/LetAppsAccessMicrophone_ForceAllowTheseApps](policy-csp-privacy.md#privacy-letappsaccessmicrophone-forceallowtheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessMicrophone_ForceDenyTheseApps](policy-csp-privacy.md#privacy-letappsaccessmicrophone-forcedenytheseapps) <sup>8</sup>
- [Privacy/LetAppsAccessMicrophone_UserInControlOfTheseApps](policy-csp-privacy.md#privacy-letappsaccessmicrophone-userincontroloftheseapps) <sup>8</sup>
- [RemoteLock/Lock](https://docs.microsoft.com/windows/client-management/mdm/remotelock-csp) <sup>9</sup>
- [Search/AllowSearchToUseLocation](policy-csp-search.md#search-allowsearchtouselocation)
- [Security/AllowAddProvisioningPackage](policy-csp-security.md#security-allowaddprovisioningpackage) <sup>9</sup>
- [Security/AllowRemoveProvisioningPackage](policy-csp-security.md#security-allowremoveprovisioningpackage) <sup>9</sup>
- [Settings/AllowDateTime](policy-csp-settings.md#settings-allowdatetime)
- [Settings/AllowVPN](policy-csp-settings.md#settings-allowvpn)
- [Settings/PageVisibilityList](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-settings#settings-pagevisibilitylist) <sup>9</sup>
- [Speech/AllowSpeechModelUpdate](policy-csp-speech.md#speech-allowspeechmodelupdate)
- [System/AllowCommercialDataPipeline](policy-csp-system.md#system-allowcommercialdatapipeline)
- [System/AllowLocation](policy-csp-system.md#system-allowlocation)
- [System/AllowStorageCard](policy-csp-system.md#system-allowstoragecard)
- [System/AllowTelemetry](policy-csp-system.md#system-allowtelemetry)
- [TimeLanguageSettings/ConfigureTimeZone](./policy-csp-timelanguagesettings.md#timelanguagesettings-configuretimezone) <sup>9</sup>
- [Update/ActiveHoursEnd](./policy-csp-update.md#update-activehoursend) <sup>9</sup>
- [Update/ActiveHoursMaxRange](./policy-csp-update.md#update-activehoursmaxrange) <sup>9</sup>
- [Update/ActiveHoursStart](./policy-csp-update.md#update-activehoursstart) <sup>9</sup>
- [Update/AllowAutoUpdate](policy-csp-update.md#update-allowautoupdate)
- [Update/AllowUpdateService](policy-csp-update.md#update-allowupdateservice)
- [Update/BranchReadinessLevel](policy-csp-update.md#update-branchreadinesslevel)
- [Update/DeferFeatureUpdatesPeriodInDays](policy-csp-update.md#update-deferfeatureupdatesperiodindays)
- [Update/DeferQualityUpdatesPeriodInDays](policy-csp-update.md#update-deferqualityupdatesperiodindays)
- [Update/ManagePreviewBuilds](policy-csp-update.md#update-managepreviewbuilds)
- [Update/PauseFeatureUpdates](policy-csp-update.md#update-pausefeatureupdates)
- [Update/PauseQualityUpdates](policy-csp-update.md#update-pausequalityupdates)
- [Update/ScheduledInstallDay](policy-csp-update.md#update-scheduledinstallday)
- [Update/ScheduledInstallTime](policy-csp-update.md#update-scheduledinstalltime)
- [Update/SetDisablePauseUXAccess](policy-csp-update.md#update-setdisablepauseuxaccess)
- [Update/UpdateServiceUrl](policy-csp-update.md#update-updateserviceurl)
- [Wifi/AllowManualWiFiConfiguration](policy-csp-wifi.md#wifi-allowmanualwificonfiguration)
- [Wifi/AllowWiFi](policy-csp-wifi.md#wifi-allowwifi) <sup>8</sup>

Footnotes:

- 1 - Available in Windows 10, version 1607.
- 2 - Available in Windows 10, version 1703.
- 3 - Available in Windows 10, version 1709.
- 4 - Available in Windows 10, version 1803.
- 5 - Available in Windows 10, version 1809.
- 6 - Available in Windows 10, version 1903.
- 7 - Available in Windows 10, version 1909.
- 8 - Available in Windows 10, version 2004.
- 9 - Available in [Windows Holographic, version 20H2](https://docs.microsoft.com/hololens/hololens-release-notes#windows-holographic-version-20h2)

## Related topics

[Policy CSP](policy-configuration-service-provider.md)
