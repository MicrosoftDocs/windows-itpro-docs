---
title: Policies in Policy CSP supported by Windows 10 IoT Enterprise
description: Policies in Policy CSP supported by Windows 10 IoT Enterprise
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 07/18/2019
---

# Policies in Policy CSP supported by Windows 10 IoT Enterprise

> [!div class="op_single_selector"]
>
> - [IoT Enterprise](policy-csps-supported-by-iot-enterprise.md)
> - [IoT Core](policy-csps-supported-by-iot-core.md)
>

- [InternetExplorer/AllowEnhancedSuggestionsInAddressBar](policy-csp-internetexplorer.md#internetexplorer-allowenhancedsuggestionsinaddressbar)
- [InternetExplorer/DisableActiveXVersionListAutoDownload](policy-csp-internetexplorer.md#internetexplorer-disableactivexversionlistautodownload)
- [InternetExplorer/DisableCompatView](policy-csp-internetexplorer.md#internetexplorer-disablecompatview)
- [InternetExplorer/DisableFeedsBackgroundSync](policy-csp-internetexplorer.md#internetexplorer-disablefeedsbackgroundsync)
- [InternetExplorer/DisableGeolocation](policy-csp-internetexplorer.md#internetexplorer-disablegeolocation)
- [InternetExplorer/DisableWebAddressAutoComplete](policy-csp-internetexplorer.md#internetexplorer-disablewebaddressautocomplete)
- [InternetExplorer/NewTabDefaultPage](policy-csp-internetexplorer.md#internetexplorer-newtabdefaultpage)
- [DeliveryOptimization/DOAbsoluteMaxCacheSize](policy-csp-deliveryoptimization.md#deliveryoptimization-doabsolutemaxcachesize)
- [DeliveryOptimization/DOAllowVPNPeerCaching](policy-csp-deliveryoptimization.md#deliveryoptimization-doallowvpnpeercaching)
- [DeliveryOptimization/DOCacheHost](policy-csp-deliveryoptimization.md#deliveryoptimization-docachehost)
- [DeliveryOptimization/DOCacheHostSource](policy-csp-deliveryoptimization.md#deliveryoptimization-docachehostsource)
- [DeliveryOptimization/DODelayBackgroundDownloadFromHttp](policy-csp-deliveryoptimization.md#deliveryoptimization-dodelaybackgrounddownloadfromhttp)
- [DeliveryOptimization/DODelayForegroundDownloadFromHttp](policy-csp-deliveryoptimization.md#deliveryoptimization-dodelayforegrounddownloadfromhttp)
- [DeliveryOptimization/DODelayCacheServerFallbackBackground](policy-csp-deliveryoptimization.md#deliveryoptimization-dodelaycacheserverfallbackbackground)
- [DeliveryOptimization/DODelayCacheServerFallbackForeground](policy-csp-deliveryoptimization.md#deliveryoptimization-dodelaycacheserverfallbackforeground)
- [DeliveryOptimization/DODownloadMode](policy-csp-deliveryoptimization.md#deliveryoptimization-dodownloadmode)
- [DeliveryOptimization/DOGroupId](policy-csp-deliveryoptimization.md#deliveryoptimization-dogroupid)
- [DeliveryOptimization/DOGroupIdSource](policy-csp-deliveryoptimization.md#deliveryoptimization-dogroupidsource)
-  [DeliveryOptimization/DOMaxBackgroundDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxbackgrounddownloadbandwidth)
- [DeliveryOptimization/DOMaxCacheAge](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxcacheage)
- [DeliveryOptimization/DOMaxCacheSize](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxcachesize)
- [DeliveryOptimization/DOMaxDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxdownloadbandwidth) (deprecated)
- [DeliveryOptimization/DOMaxForegroundDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxforegrounddownloadbandwidth)
- [DeliveryOptimization/DOMaxUploadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-domaxuploadbandwidth) (deprecated)
- [DeliveryOptimization/DOMinBackgroundQos](policy-csp-deliveryoptimization.md#deliveryoptimization-dominbackgroundqos)
- [DeliveryOptimization/DOMinBatteryPercentageAllowedToUpload](policy-csp-deliveryoptimization.md#deliveryoptimization-dominbatterypercentageallowedtoupload)
- [DeliveryOptimization/DOMinDiskSizeAllowedToPeer](policy-csp-deliveryoptimization.md#deliveryoptimization-domindisksizeallowedtopeer)
- [DeliveryOptimization/DOMinFileSizeToCache](policy-csp-deliveryoptimization.md#deliveryoptimization-dominfilesizetocache)
- [DeliveryOptimization/DOMinRAMAllowedToPeer](policy-csp-deliveryoptimization.md#deliveryoptimization-dominramallowedtopeer)
- [DeliveryOptimization/DOModifyCacheDrive](policy-csp-deliveryoptimization.md#deliveryoptimization-domodifycachedrive)
- [DeliveryOptimization/DOMonthlyUploadDataCap](policy-csp-deliveryoptimization.md#deliveryoptimization-domonthlyuploaddatacap)
- [DeliveryOptimization/DOPercentageMaxBackgroundBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-dopercentagemaxbackgroundbandwidth)
- [DeliveryOptimization/DOPercentageMaxDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-dopercentagemaxdownloadbandwidth) (deprecated)
- [DeliveryOptimization/DOPercentageMaxForegroundBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-dopercentagemaxforegroundbandwidth)
- [DeliveryOptimization/DORestrictPeerSelectionBy](policy-csp-deliveryoptimization.md#deliveryoptimization-dorestrictpeerselectionby)
- [DeliveryOptimization/DOSetHoursToLimitBackgroundDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-dosethourstolimitbackgrounddownloadbandwidth)
- [DeliveryOptimization/DOSetHoursToLimitForegroundDownloadBandwidth](policy-csp-deliveryoptimization.md#deliveryoptimization-dosethourstolimitforegrounddownloadbandwidth)
- [DeviceHealthMonitoring/AllowDeviceHealthMonitoring](policy-csp-devicehealthmonitoring.md#devicehealthmonitoring-allowdevicehealthmonitoring)
- [DeviceHealthMonitoring/ConfigDeviceHealthMonitoringScope](policy-csp-devicehealthmonitoring.md#devicehealthmonitoring-configdevicehealthmonitoringscope)
- [DeviceHealthMonitoring/ConfigDeviceHealthMonitoringUploadDestination](policy-csp-devicehealthmonitoring.md#devicehealthmonitoring-configdevicehealthmonitoringuploaddestination)
- [Privacy/LetAppsActivateWithVoice](policy-csp-privacy.md#privacy-letappsactivatewithvoice)
- [Privacy/LetAppsActivateWithVoiceAboveLock](policy-csp-privacy.md#privacy-letappsactivatewithvoiceabovelock)
- [Update/ConfigureDeadlineForFeatureUpdates](policy-csp-update.md#update-configuredeadlineforfeatureupdates)
- [Update/ConfigureDeadlineForQualityUpdates](policy-csp-update.md#update-configuredeadlineforqualityupdates)
- [Update/ConfigureDeadlineGracePeriod](policy-csp-update.md#update-configuredeadlinegraceperiod)
- [Update/ConfigureDeadlineNoAutoReboot](policy-csp-update.md#update-configuredeadlinenoautoreboot)
- [Update/SetProxyBehaviorForUpdateDetection](policy-csp-update.md#update-setproxybehaviorforupdatedetection)

## Related topics

[Policy CSP](policy-configuration-service-provider.md)
