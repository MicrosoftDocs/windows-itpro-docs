---
title: RemoteLock CSP
description: Learn more about the RemoteLock CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 02/17/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- RemoteLock-Begin -->
# RemoteLock CSP

<!-- RemoteLock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemoteLock-Editable-End -->

<!-- RemoteLock-Tree-Begin -->
The following example shows the RemoteLock configuration service provider in tree format.

```text
./Device/Vendor/MSFT/RemoteLock
--- Lock
--- LockAndRecoverPIN
--- LockAndResetPIN
--- NewPINValue
```
<!-- RemoteLock-Tree-End -->

<!-- Device-Lock-Begin -->
## Lock

<!-- Device-Lock-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Lock-Applicability-End -->

<!-- Device-Lock-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RemoteLock/Lock
```
<!-- Device-Lock-OmaUri-End -->

<!-- Device-Lock-Description-Begin -->
<!-- Description-Source-DDF -->
Required. The setting accepts requests to lock the device screen. The device screen will lock immediately if a PIN has been set. If no PIN is set, the lock request is ignored and the OMA DM (405) Forbidden error is returned over the management channel. All OMA DM errors are listed here in the protocol specification.
<!-- Device-Lock-Description-End -->

<!-- Device-Lock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Lock-Editable-End -->

<!-- Device-Lock-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | null |
| Access Type | Exec, Get |
<!-- Device-Lock-DFProperties-End -->

<!-- Device-Lock-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Lock-Examples-End -->

<!-- Device-Lock-End -->

<!-- Device-LockAndRecoverPIN-Begin -->
## LockAndRecoverPIN

<!-- Device-LockAndRecoverPIN-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-LockAndRecoverPIN-Applicability-End -->

<!-- Device-LockAndRecoverPIN-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RemoteLock/LockAndRecoverPIN
```
<!-- Device-LockAndRecoverPIN-OmaUri-End -->

<!-- Device-LockAndRecoverPIN-Description-Begin -->
<!-- Description-Source-DDF -->
This setting performs a similar function to the LockAndResetPIN node. With LockAndResetPIN any Windows Hello keys associated with the PIN gets deleted, but with LockAndRecoverPIN those keys are saved. After the Exec operation is called successfully on this setting, the new PIN can be retrieved from the NewPINValue setting. The previous PIN will no longer work. Executing this node requires a ticket from the Microsoft credential reset service. Additionally, the execution of this setting is only supported when the EnablePinRecovery policy is set on the client.
<!-- Device-LockAndRecoverPIN-Description-End -->

<!-- Device-LockAndRecoverPIN-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-LockAndRecoverPIN-Editable-End -->

<!-- Device-LockAndRecoverPIN-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | null |
| Access Type | Exec, Get |
<!-- Device-LockAndRecoverPIN-DFProperties-End -->

<!-- Device-LockAndRecoverPIN-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-LockAndRecoverPIN-Examples-End -->

<!-- Device-LockAndRecoverPIN-End -->

<!-- Device-LockAndResetPIN-Begin -->
## LockAndResetPIN

<!-- Device-LockAndResetPIN-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-LockAndResetPIN-Applicability-End -->

<!-- Device-LockAndResetPIN-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RemoteLock/LockAndResetPIN
```
<!-- Device-LockAndResetPIN-OmaUri-End -->

<!-- Device-LockAndResetPIN-Description-Begin -->
<!-- Description-Source-DDF -->
This setting can be used to lock and reset the PIN on the device. It is used in conjunction with the NewPINValue node. After the Exec operation is called successfully on this node, the previous PIN will no longer work and cannot be recovered.
<!-- Device-LockAndResetPIN-Description-End -->

<!-- Device-LockAndResetPIN-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-LockAndResetPIN-Editable-End -->

<!-- Device-LockAndResetPIN-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | null |
| Access Type | Exec, Get |
<!-- Device-LockAndResetPIN-DFProperties-End -->

<!-- Device-LockAndResetPIN-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-LockAndResetPIN-Examples-End -->

<!-- Device-LockAndResetPIN-End -->

<!-- Device-NewPINValue-Begin -->
## NewPINValue

<!-- Device-NewPINValue-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-NewPINValue-Applicability-End -->

<!-- Device-NewPINValue-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RemoteLock/NewPINValue
```
<!-- Device-NewPINValue-OmaUri-End -->

<!-- Device-NewPINValue-Description-Begin -->
<!-- Description-Source-DDF -->
This setting contains the PIN after Exec has been called on /RemoteLock/LockAndResetPIN or /RemoteLock/LockAndRecoverPin. If LockAndResetPIN or LockAndResetPIN has never been called, the value will be null. If Get is called on this node after a successful Exec call on /RemoteLock/LockAndResetPIN or /RemoteLock/LockAndRecoverPin, then the new PIN will be provided. If another Get command is called on this node, the value will be null. If you need to reset the PIN again, then another LockAndResetPIN Exec can be communicated to the device to generate a new PIN. The PIN value will conform to the minimum PIN complexity requirements of the merged policies that are set on the device. If no PIN policy has been set on the device, the generated PIN will conform to the default policy of the device. A Get operation on this node must follow an Exec operation on the /RemoteLock/LockAndResetPIN or /RemoteLock/LockAndRecoverPin node in the proper order and in the same SyncML message. The Sequence tag can be used to guarantee the order in which commands are processed.
<!-- Device-NewPINValue-Description-End -->

<!-- Device-NewPINValue-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-NewPINValue-Editable-End -->

<!-- Device-NewPINValue-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Get |
<!-- Device-NewPINValue-DFProperties-End -->

<!-- Device-NewPINValue-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-NewPINValue-Examples-End -->

<!-- Device-NewPINValue-End -->

<!-- RemoteLock-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- RemoteLock-CspMoreInfo-End -->

<!-- RemoteLock-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
