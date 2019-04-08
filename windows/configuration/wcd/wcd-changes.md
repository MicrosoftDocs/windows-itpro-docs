---
title: Changes to settings in Windows Configuration Designer (Windows 10)
description: This section describes the changes to settings in Windows Configuration Designer in Windows 10, version 1809.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
ms.localizationpriority: medium
ms.author: jdecker
ms.topic: article
---

# Changes to settings in Windows Configuration Designer

## Settings added in Windows 10, version 1903

- [DeviceUpdateCenter](wcd-deviceupdatecenter.md)
- [Privacy](wcd-privacy.md)
- [Time](wcd-time.md)
- [Cellular > DataClassMappingTable](wcd-cellular.md#dataclassmappingtable)
- [OOBE > EnableCortanaVoice](wcd-oobe.md#enablecortanavoice)
- [Policies > LocalPoliciesSecurityOptions](wcd-policies.md#localpoliciessecurityoptions)
- [Policies > Power](wcd-policies.md#power)
- [StorageD3InModernStandby](wcd-storaged3inmodernstandby.md)

## Settings removed in Windows 10, version 1903

- [WLAN](wcd-wlan.md)

## Settings added in Windows 10, version 1809


- [Browser > AllowPrelaunch](wcd-browser.md#allowprelaunch)
- [Browser > FavoriteBarItems](wcd-browser.md#favoritebaritems)
- [Cellular > SignalBarMappingTable](wcd-cellular.md#signalbarmappingtable)
- [KioskBrowser](wcd-kioskbrowser.md)
- [Location](wcd-location.md)
- [Policies > ApplicationManagement > LaunchAppAfterLogOn](wcd-policies.md#applicationmanagement)
- [Policies > Authentication:](wcd-policies.md#authentication)
    - EnableFastFirstSignin
    - EnableWebSignin
    - PreferredAadTenantDomainName
- [Policies > Browser:](wcd-policies.md#browser)
    - AllowFullScreenMode
    - AllowPrelaunch
    - AllowPrinting
    - AllowSavingHistory
    - AllowSideloadingOfExtensions
    - AllowTabPreloading
    - AllowWebContentOnNewTabPage
    - ConfigureFavoritesBar
    - ConfigureHomeButton
    - ConfigureKioskMode
    - ConfigureKioskResetAfterIdleTimer
    - ConfigureOpenMicrosoftEdgeWith
    - ConfigureTelemetryForMicrosoft365
    - FirstRunURL
    - PreventCertErrorOverrides 
    - PreventTurningOffRequiredExtensions
    - SetHomeButtonURL
    - SetNewTabPageURL
    - UnlockHomeButton
- [Policies > DeliveryOptimization:](wcd-policies.md#deliveryoptimization)
    - DODelayBackgroundDownloadFromHttp
    - DODelayForegroundDownloadFromHttp
    - DOGroupIdSource
    - DOPercentageMaxBackDownloadBandwidth
    - DOPercentageMaxForeDownloadBandwidth
    - DORestrictPeerSelectionsBy
    - DOSetHoursToLimitBackgroundDownloadBandwidth
    - DOSetHoursToLimitForegroundDownloadBandwidth
- [Policies > KioskBrowser](wcd-policies.md#kioskbrowser) > EnableEndSessionButton
- [Policies > Search](wcd-policies.md#search) > DoNotUseWebResults
- [Policies > System:](wcd-policies.md#system)
    - DisableDeviceDelete
    - DisableDiagnosticDataViewer
- [Policies > Update:](wcd-policies.md#update)
    - AutoRestartDeadlinePeriodInDaysForFeatureUpdates
    - EngagedRestartDeadlineForFeatureUpdates
    - EngagedRestartSnoozeScheduleForFeatureUpdates
    - EngagedRestartTransitionScheduleForFeatureUpdates
    - ExcludeWUDriversInQualityUpdate
    - SetDisablePauseUXAccess
    - SetDisableUXWUAccess
    - UpdateNotificationLevel
- [UnifiedWriteFilter > OverlayFlags](wcd-unifiedwritefilter.md#overlayflags)
- [UnifiedWriteFilter > ResetPersistentState](wcd-unifiedwritefilter.md#resetpersistentstate)
- [WindowsHelloForBusiness](wcd-windowshelloforbusiness.md)


## Settings removed in Windows 10, version 1809

- [CellCore](wcd-cellcore.md)
- [Policies > Browser:](wcd-policies.md#browser)
    - AllowBrowser
    - PreventTabReloading

