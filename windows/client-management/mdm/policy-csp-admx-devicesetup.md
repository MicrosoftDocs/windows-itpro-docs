---
title: ADMX_DeviceSetup Policy CSP
description: Learn more about the ADMX_DeviceSetup Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 12/21/2022
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_DeviceSetup-Begin -->
# Policy CSP - ADMX_DeviceSetup

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_DeviceSetup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DeviceSetup-Editable-End -->

<!-- DeviceInstall_BalloonTips-Begin -->
## DeviceInstall_BalloonTips

<!-- DeviceInstall_BalloonTips-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DeviceInstall_BalloonTips-Applicability-End -->

<!-- DeviceInstall_BalloonTips-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DeviceSetup/DeviceInstall_BalloonTips
```
<!-- DeviceInstall_BalloonTips-OmaUri-End -->

<!-- DeviceInstall_BalloonTips-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off "Found New Hardware" balloons during device installation.

If you enable this policy setting, "Found New Hardware" balloons do not appear while a device is being installed.

If you disable or do not configure this policy setting, "Found New Hardware" balloons appear while a device is being installed, unless the driver for the device suppresses the balloons.
<!-- DeviceInstall_BalloonTips-Description-End -->

<!-- DeviceInstall_BalloonTips-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeviceInstall_BalloonTips-Editable-End -->

<!-- DeviceInstall_BalloonTips-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DeviceInstall_BalloonTips-DFProperties-End -->

<!-- DeviceInstall_BalloonTips-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_BalloonTips |
| Friendly Name | Turn off "Found New Hardware" balloons during device installation |
| Location | Computer Configuration |
| Path | System > Device Installation |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Settings |
| Registry Value Name | DisableBalloonTips |
| ADMX File Name | DeviceSetup.admx |
<!-- DeviceInstall_BalloonTips-AdmxBacked-End -->

<!-- DeviceInstall_BalloonTips-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DeviceInstall_BalloonTips-Examples-End -->

<!-- DeviceInstall_BalloonTips-End -->

<!-- DriverSearchPlaces_SearchOrderConfiguration-Begin -->
## DriverSearchPlaces_SearchOrderConfiguration

<!-- DriverSearchPlaces_SearchOrderConfiguration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DriverSearchPlaces_SearchOrderConfiguration-Applicability-End -->

<!-- DriverSearchPlaces_SearchOrderConfiguration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DeviceSetup/DriverSearchPlaces_SearchOrderConfiguration
```
<!-- DriverSearchPlaces_SearchOrderConfiguration-OmaUri-End -->

<!-- DriverSearchPlaces_SearchOrderConfiguration-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the order in which Windows searches source locations for device drivers.

If you enable this policy setting, you can select whether Windows searches for drivers on Windows Update unconditionally, only if necessary, or not at all.

Note that searching always implies that Windows will attempt to search Windows Update exactly one time. With this setting, Windows will not continually search for updates. This setting is used to ensure that the best software will be found for the device, even if the network is temporarily available.

If the setting for searching only if needed is specified, then Windows will search for a driver only if a driver is not locally available on the system.

If you disable or do not configure this policy setting, members of the Administrators group can determine the priority order in which Windows searches source locations for device drivers.
<!-- DriverSearchPlaces_SearchOrderConfiguration-Description-End -->

<!-- DriverSearchPlaces_SearchOrderConfiguration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DriverSearchPlaces_SearchOrderConfiguration-Editable-End -->

<!-- DriverSearchPlaces_SearchOrderConfiguration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DriverSearchPlaces_SearchOrderConfiguration-DFProperties-End -->

<!-- DriverSearchPlaces_SearchOrderConfiguration-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DriverSearchPlaces_SearchOrderConfiguration |
| Friendly Name | Specify search order for device driver source locations |
| Location | Computer Configuration |
| Path | System > Device Installation |
| Registry Key Name | Software\Policies\Microsoft\Windows\DriverSearching |
| ADMX File Name | DeviceSetup.admx |
<!-- DriverSearchPlaces_SearchOrderConfiguration-AdmxBacked-End -->

<!-- DriverSearchPlaces_SearchOrderConfiguration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DriverSearchPlaces_SearchOrderConfiguration-Examples-End -->

<!-- DriverSearchPlaces_SearchOrderConfiguration-End -->

<!-- ADMX_DeviceSetup-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DeviceSetup-CspMoreInfo-End -->

<!-- ADMX_DeviceSetup-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
