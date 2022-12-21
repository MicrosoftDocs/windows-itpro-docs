---
title: ADMX_EnhancedStorage Policy CSP
description: Learn more about the ADMX_EnhancedStorage Area in Policy CSP
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

<!-- ADMX_EnhancedStorage-Begin -->
# Policy CSP - ADMX_EnhancedStorage

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_EnhancedStorage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_EnhancedStorage-Editable-End -->

<!-- ApprovedEnStorDevices-Begin -->
## ApprovedEnStorDevices

<!-- ApprovedEnStorDevices-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- ApprovedEnStorDevices-Applicability-End -->

<!-- ApprovedEnStorDevices-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EnhancedStorage/ApprovedEnStorDevices
```
<!-- ApprovedEnStorDevices-OmaUri-End -->

<!-- ApprovedEnStorDevices-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure a list of Enhanced Storage devices by manufacturer and product ID that are usable on your computer.

If you enable this policy setting, only Enhanced Storage devices that contain a manufacturer and product ID specified in this policy are usable on your computer.

If you disable or do not configure this policy setting, all Enhanced Storage devices are usable on your computer.
<!-- ApprovedEnStorDevices-Description-End -->

<!-- ApprovedEnStorDevices-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ApprovedEnStorDevices-Editable-End -->

<!-- ApprovedEnStorDevices-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ApprovedEnStorDevices-DFProperties-End -->

<!-- ApprovedEnStorDevices-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ApprovedEnStorDevices |
| Friendly Name | Configure list of Enhanced Storage devices usable on your computer |
| Location | Computer Configuration |
| Path | System > Enhanced Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\EnhancedStorageDevices\ApprovedEnStorDevices |
| Registry Value Name | PolicyEnabled |
| ADMX File Name | EnhancedStorage.admx |
<!-- ApprovedEnStorDevices-AdmxBacked-End -->

<!-- ApprovedEnStorDevices-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ApprovedEnStorDevices-Examples-End -->

<!-- ApprovedEnStorDevices-End -->

<!-- ApprovedSilos-Begin -->
## ApprovedSilos

<!-- ApprovedSilos-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- ApprovedSilos-Applicability-End -->

<!-- ApprovedSilos-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EnhancedStorage/ApprovedSilos
```
<!-- ApprovedSilos-OmaUri-End -->

<!-- ApprovedSilos-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to create a list of IEEE 1667 silos, compliant with the Institute of Electrical and Electronics Engineers, Inc. (IEEE) 1667 specification, that are usable on your computer.

If you enable this policy setting, only IEEE 1667 silos that match a silo type identifier specified in this policy are usable on your computer.

If you disable or do not configure this policy setting, all IEEE 1667 silos on Enhanced Storage devices are usable on your computer.
<!-- ApprovedSilos-Description-End -->

<!-- ApprovedSilos-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ApprovedSilos-Editable-End -->

<!-- ApprovedSilos-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ApprovedSilos-DFProperties-End -->

<!-- ApprovedSilos-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ApprovedSilos |
| Friendly Name | Configure list of IEEE 1667 silos usable on your computer |
| Location | Computer Configuration |
| Path | System > Enhanced Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\EnhancedStorageDevices\ApprovedSilos |
| Registry Value Name | SiloAllowListPolicy |
| ADMX File Name | EnhancedStorage.admx |
<!-- ApprovedSilos-AdmxBacked-End -->

<!-- ApprovedSilos-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ApprovedSilos-Examples-End -->

<!-- ApprovedSilos-End -->

<!-- DisablePasswordAuthentication-Begin -->
## DisablePasswordAuthentication

<!-- DisablePasswordAuthentication-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisablePasswordAuthentication-Applicability-End -->

<!-- DisablePasswordAuthentication-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EnhancedStorage/DisablePasswordAuthentication
```
<!-- DisablePasswordAuthentication-OmaUri-End -->

<!-- DisablePasswordAuthentication-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures whether or not a password can be used to unlock an Enhanced Storage device.

If you enable this policy setting, a password cannot be used to unlock an Enhanced Storage device.

If you disable or do not configure this policy setting, a password can be used to unlock an Enhanced Storage device.
<!-- DisablePasswordAuthentication-Description-End -->

<!-- DisablePasswordAuthentication-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisablePasswordAuthentication-Editable-End -->

<!-- DisablePasswordAuthentication-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisablePasswordAuthentication-DFProperties-End -->

<!-- DisablePasswordAuthentication-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisablePasswordAuthentication |
| Friendly Name | Do not allow password authentication of Enhanced Storage devices |
| Location | Computer Configuration |
| Path | System > Enhanced Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\EnhancedStorageDevices |
| Registry Value Name | DisablePasswordAuthentication |
| ADMX File Name | EnhancedStorage.admx |
<!-- DisablePasswordAuthentication-AdmxBacked-End -->

<!-- DisablePasswordAuthentication-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisablePasswordAuthentication-Examples-End -->

<!-- DisablePasswordAuthentication-End -->

<!-- DisallowLegacyDiskDevices-Begin -->
## DisallowLegacyDiskDevices

<!-- DisallowLegacyDiskDevices-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisallowLegacyDiskDevices-Applicability-End -->

<!-- DisallowLegacyDiskDevices-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EnhancedStorage/DisallowLegacyDiskDevices
```
<!-- DisallowLegacyDiskDevices-OmaUri-End -->

<!-- DisallowLegacyDiskDevices-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures whether or not non-Enhanced Storage removable devices are allowed on your computer.

If you enable this policy setting, non-Enhanced Storage removable devices are not allowed on your computer.

If you disable or do not configure this policy setting, non-Enhanced Storage removable devices are allowed on your computer.
<!-- DisallowLegacyDiskDevices-Description-End -->

<!-- DisallowLegacyDiskDevices-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowLegacyDiskDevices-Editable-End -->

<!-- DisallowLegacyDiskDevices-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisallowLegacyDiskDevices-DFProperties-End -->

<!-- DisallowLegacyDiskDevices-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisallowLegacyDiskDevices |
| Friendly Name | Do not allow non-Enhanced Storage removable devices |
| Location | Computer Configuration |
| Path | System > Enhanced Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\EnhancedStorageDevices |
| Registry Value Name | DisallowLegacyDiskDevices |
| ADMX File Name | EnhancedStorage.admx |
<!-- DisallowLegacyDiskDevices-AdmxBacked-End -->

<!-- DisallowLegacyDiskDevices-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowLegacyDiskDevices-Examples-End -->

<!-- DisallowLegacyDiskDevices-End -->

<!-- LockDeviceOnMachineLock-Begin -->
## LockDeviceOnMachineLock

<!-- LockDeviceOnMachineLock-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- LockDeviceOnMachineLock-Applicability-End -->

<!-- LockDeviceOnMachineLock-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EnhancedStorage/LockDeviceOnMachineLock
```
<!-- LockDeviceOnMachineLock-OmaUri-End -->

<!-- LockDeviceOnMachineLock-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting locks Enhanced Storage devices when the computer is locked.

This policy setting is supported in Windows Server SKUs only.

If you enable this policy setting, the Enhanced Storage device remains locked when the computer is locked.

If you disable or do not configure this policy setting, the Enhanced Storage device state is not changed when the computer is locked.
<!-- LockDeviceOnMachineLock-Description-End -->

<!-- LockDeviceOnMachineLock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockDeviceOnMachineLock-Editable-End -->

<!-- LockDeviceOnMachineLock-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockDeviceOnMachineLock-DFProperties-End -->

<!-- LockDeviceOnMachineLock-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LockDeviceOnMachineLock |
| Friendly Name | Lock Enhanced Storage when the computer is locked |
| Location | Computer Configuration |
| Path | System > Enhanced Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\EnhancedStorageDevices |
| Registry Value Name | LockDeviceOnMachineLock |
| ADMX File Name | EnhancedStorage.admx |
<!-- LockDeviceOnMachineLock-AdmxBacked-End -->

<!-- LockDeviceOnMachineLock-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockDeviceOnMachineLock-Examples-End -->

<!-- LockDeviceOnMachineLock-End -->

<!-- RootHubConnectedEnStorDevices-Begin -->
## RootHubConnectedEnStorDevices

<!-- RootHubConnectedEnStorDevices-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- RootHubConnectedEnStorDevices-Applicability-End -->

<!-- RootHubConnectedEnStorDevices-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EnhancedStorage/RootHubConnectedEnStorDevices
```
<!-- RootHubConnectedEnStorDevices-OmaUri-End -->

<!-- RootHubConnectedEnStorDevices-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures whether or not only USB root hub connected Enhanced Storage devices are allowed. Allowing only root hub connected Enhanced Storage devices minimizes the risk of an unauthorized USB device reading data on an Enhanced Storage device.

If you enable this policy setting, only USB root hub connected Enhanced Storage devices are allowed.

If you disable or do not configure this policy setting, USB Enhanced Storage devices connected to both USB root hubs and non-root hubs will be allowed.
<!-- RootHubConnectedEnStorDevices-Description-End -->

<!-- RootHubConnectedEnStorDevices-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RootHubConnectedEnStorDevices-Editable-End -->

<!-- RootHubConnectedEnStorDevices-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RootHubConnectedEnStorDevices-DFProperties-End -->

<!-- RootHubConnectedEnStorDevices-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RootHubConnectedEnStorDevices |
| Friendly Name | Allow only USB root hub connected Enhanced Storage devices |
| Location | Computer Configuration |
| Path | System > Enhanced Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\EnhancedStorageDevices |
| Registry Value Name | RootHubConnectedEnStorDevices |
| ADMX File Name | EnhancedStorage.admx |
<!-- RootHubConnectedEnStorDevices-AdmxBacked-End -->

<!-- RootHubConnectedEnStorDevices-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RootHubConnectedEnStorDevices-Examples-End -->

<!-- RootHubConnectedEnStorDevices-End -->

<!-- ADMX_EnhancedStorage-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_EnhancedStorage-CspMoreInfo-End -->

<!-- ADMX_EnhancedStorage-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
