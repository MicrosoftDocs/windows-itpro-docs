---
title: RemoteWipe CSP
description: Learn more about the RemoteWipe CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- RemoteWipe-Begin -->
# RemoteWipe CSP

<!-- RemoteWipe-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The RemoteWipe configuration service provider can be used by mobile operators DM server or enterprise management server to remotely reset a device. The RemoteWipe configuration service provider can make the data stored in memory and hard disks difficult to recover if the device is remotely reset after being lost or stolen. Enterprise IT Professionals can update these settings by using the Exchange Server.

[!INCLUDE [remote-wipe](../../../includes/licensing/remote-wipe.md)]
<!-- RemoteWipe-Editable-End -->

<!-- RemoteWipe-Tree-Begin -->
The following list shows the RemoteWipe configuration service provider nodes:

- ./Device/Vendor/MSFT/RemoteWipe
  - [AutomaticRedeployment](#automaticredeployment)
    - [doAutomaticRedeployment](#automaticredeploymentdoautomaticredeployment)
    - [LastError](#automaticredeploymentlasterror)
    - [Status](#automaticredeploymentstatus)
  - [doWipe](#dowipe)
  - [doWipeCloud](#dowipecloud)
  - [doWipeCloudPersistProvisionedData](#dowipecloudpersistprovisioneddata)
  - [doWipeCloudPersistUserData](#dowipecloudpersistuserdata)
  - [doWipePersistProvisionedData](#dowipepersistprovisioneddata)
  - [doWipePersistUserData](#dowipepersistuserdata)
  - [doWipeProtected](#dowipeprotected)
<!-- RemoteWipe-Tree-End -->

<!-- Device-AutomaticRedeployment-Begin -->
## AutomaticRedeployment

<!-- Device-AutomaticRedeployment-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-AutomaticRedeployment-Applicability-End -->

<!-- Device-AutomaticRedeployment-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RemoteWipe/AutomaticRedeployment
```
<!-- Device-AutomaticRedeployment-OmaUri-End -->

<!-- Device-AutomaticRedeployment-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the Autopilot Reset operation.
<!-- Device-AutomaticRedeployment-Description-End -->

<!-- Device-AutomaticRedeployment-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AutomaticRedeployment-Editable-End -->

<!-- Device-AutomaticRedeployment-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-AutomaticRedeployment-DFProperties-End -->

<!-- Device-AutomaticRedeployment-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AutomaticRedeployment-Examples-End -->

<!-- Device-AutomaticRedeployment-End -->

<!-- Device-AutomaticRedeployment-doAutomaticRedeployment-Begin -->
### AutomaticRedeployment/doAutomaticRedeployment

<!-- Device-AutomaticRedeployment-doAutomaticRedeployment-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-AutomaticRedeployment-doAutomaticRedeployment-Applicability-End -->

<!-- Device-AutomaticRedeployment-doAutomaticRedeployment-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RemoteWipe/AutomaticRedeployment/doAutomaticRedeployment
```
<!-- Device-AutomaticRedeployment-doAutomaticRedeployment-OmaUri-End -->

<!-- Device-AutomaticRedeployment-doAutomaticRedeployment-Description-Begin -->
<!-- Description-Source-DDF -->
Exec on this node triggers Autopilot Reset operation. This works like PC Reset, similar to other existing nodes in this RemoteWipe CSP, except that it keeps the device enrolled in Microsoft Entra ID and MDM, keeps Wi-Fi profiles, and a few other settings like region, language, keyboard.
<!-- Device-AutomaticRedeployment-doAutomaticRedeployment-Description-End -->

<!-- Device-AutomaticRedeployment-doAutomaticRedeployment-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AutomaticRedeployment-doAutomaticRedeployment-Editable-End -->

<!-- Device-AutomaticRedeployment-doAutomaticRedeployment-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec |
<!-- Device-AutomaticRedeployment-doAutomaticRedeployment-DFProperties-End -->

<!-- Device-AutomaticRedeployment-doAutomaticRedeployment-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AutomaticRedeployment-doAutomaticRedeployment-Examples-End -->

<!-- Device-AutomaticRedeployment-doAutomaticRedeployment-End -->

<!-- Device-AutomaticRedeployment-LastError-Begin -->
### AutomaticRedeployment/LastError

<!-- Device-AutomaticRedeployment-LastError-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-AutomaticRedeployment-LastError-Applicability-End -->

<!-- Device-AutomaticRedeployment-LastError-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RemoteWipe/AutomaticRedeployment/LastError
```
<!-- Device-AutomaticRedeployment-LastError-OmaUri-End -->

<!-- Device-AutomaticRedeployment-LastError-Description-Begin -->
<!-- Description-Source-DDF -->
Error value, if any, associated with Automatic Redeployment operation (typically an HRESULT).
<!-- Device-AutomaticRedeployment-LastError-Description-End -->

<!-- Device-AutomaticRedeployment-LastError-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AutomaticRedeployment-LastError-Editable-End -->

<!-- Device-AutomaticRedeployment-LastError-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 0 |
<!-- Device-AutomaticRedeployment-LastError-DFProperties-End -->

<!-- Device-AutomaticRedeployment-LastError-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AutomaticRedeployment-LastError-Examples-End -->

<!-- Device-AutomaticRedeployment-LastError-End -->

<!-- Device-AutomaticRedeployment-Status-Begin -->
### AutomaticRedeployment/Status

<!-- Device-AutomaticRedeployment-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-AutomaticRedeployment-Status-Applicability-End -->

<!-- Device-AutomaticRedeployment-Status-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RemoteWipe/AutomaticRedeployment/Status
```
<!-- Device-AutomaticRedeployment-Status-OmaUri-End -->

<!-- Device-AutomaticRedeployment-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Status value indicating current state of an Automatic Redeployment operation. 0: Never run (not started). The default state. 1: Complete. 10: Reset has been scheduled. 20: Reset is scheduled and waiting for a reboot. 30: Failed during CSP Execute ("Exec" in SyncML). 40: Failed: power requirements not met. 50: Failed: reset internals failed during reset attempt.
<!-- Device-AutomaticRedeployment-Status-Description-End -->

<!-- Device-AutomaticRedeployment-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AutomaticRedeployment-Status-Editable-End -->

<!-- Device-AutomaticRedeployment-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 0 |
<!-- Device-AutomaticRedeployment-Status-DFProperties-End -->

<!-- Device-AutomaticRedeployment-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AutomaticRedeployment-Status-Examples-End -->

<!-- Device-AutomaticRedeployment-Status-End -->

<!-- Device-doWipe-Begin -->
## doWipe

<!-- Device-doWipe-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-doWipe-Applicability-End -->

<!-- Device-doWipe-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RemoteWipe/doWipe
```
<!-- Device-doWipe-OmaUri-End -->

<!-- Device-doWipe-Description-Begin -->
<!-- Description-Source-DDF -->
Exec on this node will perform a remote wipe on the device. The return status code shows whether the device accepted the Exec command. When used with OMA Client Provisioning, a dummy value of "1" should be included for this element.
<!-- Device-doWipe-Description-End -->

<!-- Device-doWipe-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
A remote reset is equivalent to running **Reset this PC** > **Remove everything** from the **Settings** app, with **Clean Data** set to No and **Delete Files** set to Yes. If a doWipe reset is started and then interrupted, the PC will attempt to roll-back to the pre-reset state. If the PC can't be rolled-back, the recovery environment will take no additional actions and the PC could be in an unusable state and Windows will have to be reinstalled.
<!-- Device-doWipe-Editable-End -->

<!-- Device-doWipe-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec |
<!-- Device-doWipe-DFProperties-End -->

<!-- Device-doWipe-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-doWipe-Examples-End -->

<!-- Device-doWipe-End -->

<!-- Device-doWipeCloud-Begin -->
## doWipeCloud

<!-- Device-doWipeCloud-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-doWipeCloud-Applicability-End -->

<!-- Device-doWipeCloud-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RemoteWipe/doWipeCloud
```
<!-- Device-doWipeCloud-OmaUri-End -->

<!-- Device-doWipeCloud-Description-Begin -->
<!-- Description-Source-DDF -->
Exec on this node will perform a cloud-based remote wipe on the device. The return status code shows whether the device accepted the Exec command.
<!-- Device-doWipeCloud-Description-End -->

<!-- Device-doWipeCloud-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-doWipeCloud-Editable-End -->

<!-- Device-doWipeCloud-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec |
<!-- Device-doWipeCloud-DFProperties-End -->

<!-- Device-doWipeCloud-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-doWipeCloud-Examples-End -->

<!-- Device-doWipeCloud-End -->

<!-- Device-doWipeCloudPersistProvisionedData-Begin -->
## doWipeCloudPersistProvisionedData

<!-- Device-doWipeCloudPersistProvisionedData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-doWipeCloudPersistProvisionedData-Applicability-End -->

<!-- Device-doWipeCloudPersistProvisionedData-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RemoteWipe/doWipeCloudPersistProvisionedData
```
<!-- Device-doWipeCloudPersistProvisionedData-OmaUri-End -->

<!-- Device-doWipeCloudPersistProvisionedData-Description-Begin -->
<!-- Description-Source-DDF -->
Exec on this node will back up provisioning data to a persistent location and perform a cloud-based remote wipe on the device. The information that was backed up will be restored and applied to the device when it resumes. The return status code shows whether the device accepted the Exec command.
<!-- Device-doWipeCloudPersistProvisionedData-Description-End -->

<!-- Device-doWipeCloudPersistProvisionedData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-doWipeCloudPersistProvisionedData-Editable-End -->

<!-- Device-doWipeCloudPersistProvisionedData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec |
<!-- Device-doWipeCloudPersistProvisionedData-DFProperties-End -->

<!-- Device-doWipeCloudPersistProvisionedData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-doWipeCloudPersistProvisionedData-Examples-End -->

<!-- Device-doWipeCloudPersistProvisionedData-End -->

<!-- Device-doWipeCloudPersistUserData-Begin -->
## doWipeCloudPersistUserData

<!-- Device-doWipeCloudPersistUserData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-doWipeCloudPersistUserData-Applicability-End -->

<!-- Device-doWipeCloudPersistUserData-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RemoteWipe/doWipeCloudPersistUserData
```
<!-- Device-doWipeCloudPersistUserData-OmaUri-End -->

<!-- Device-doWipeCloudPersistUserData-Description-Begin -->
<!-- Description-Source-DDF -->
Exec on this node will perform a cloud-based remote reset on the device and persist user accounts and data. The return status code shows whether the device accepted the Exec command.
<!-- Device-doWipeCloudPersistUserData-Description-End -->

<!-- Device-doWipeCloudPersistUserData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-doWipeCloudPersistUserData-Editable-End -->

<!-- Device-doWipeCloudPersistUserData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec |
<!-- Device-doWipeCloudPersistUserData-DFProperties-End -->

<!-- Device-doWipeCloudPersistUserData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-doWipeCloudPersistUserData-Examples-End -->

<!-- Device-doWipeCloudPersistUserData-End -->

<!-- Device-doWipePersistProvisionedData-Begin -->
## doWipePersistProvisionedData

<!-- Device-doWipePersistProvisionedData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-doWipePersistProvisionedData-Applicability-End -->

<!-- Device-doWipePersistProvisionedData-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RemoteWipe/doWipePersistProvisionedData
```
<!-- Device-doWipePersistProvisionedData-OmaUri-End -->

<!-- Device-doWipePersistProvisionedData-Description-Begin -->
<!-- Description-Source-DDF -->
Exec on this node will back up provisioning data to a persistent location and perform a remote wipe on the device. The information that was backed up will be restored and applied to the device when it resumes. The return status code shows whether the device accepted the Exec command. When used with OMA Client Provisioning, a dummy value of "1" should be included for this element. The information that was backed up will be restored and applied to the device when it resumes. The return status code shows whether the device accepted the Exec command.
<!-- Device-doWipePersistProvisionedData-Description-End -->

<!-- Device-doWipePersistProvisionedData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Provisioning packages are persisted in `%SystemDrive%\ProgramData\Microsoft\Provisioning` directory.
<!-- Device-doWipePersistProvisionedData-Editable-End -->

<!-- Device-doWipePersistProvisionedData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec |
<!-- Device-doWipePersistProvisionedData-DFProperties-End -->

<!-- Device-doWipePersistProvisionedData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-doWipePersistProvisionedData-Examples-End -->

<!-- Device-doWipePersistProvisionedData-End -->

<!-- Device-doWipePersistUserData-Begin -->
## doWipePersistUserData

<!-- Device-doWipePersistUserData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-doWipePersistUserData-Applicability-End -->

<!-- Device-doWipePersistUserData-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RemoteWipe/doWipePersistUserData
```
<!-- Device-doWipePersistUserData-OmaUri-End -->

<!-- Device-doWipePersistUserData-Description-Begin -->
<!-- Description-Source-DDF -->
Exec on this node will perform a remote reset on the device and persist user accounts and data. The return status code shows whether the device accepted the Exec command.
<!-- Device-doWipePersistUserData-Description-End -->

<!-- Device-doWipePersistUserData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
 This setting is equivalent to selecting **Reset this PC** > **Keep my files** when manually starting a reset from the Settings app.
<!-- Device-doWipePersistUserData-Editable-End -->

<!-- Device-doWipePersistUserData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec |
<!-- Device-doWipePersistUserData-DFProperties-End -->

<!-- Device-doWipePersistUserData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-doWipePersistUserData-Examples-End -->

<!-- Device-doWipePersistUserData-End -->

<!-- Device-doWipeProtected-Begin -->
## doWipeProtected

<!-- Device-doWipeProtected-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-doWipeProtected-Applicability-End -->

<!-- Device-doWipeProtected-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RemoteWipe/doWipeProtected
```
<!-- Device-doWipeProtected-OmaUri-End -->

<!-- Device-doWipeProtected-Description-Begin -->
<!-- Description-Source-DDF -->
Exec on this node will perform a remote wipe on the device and fully clean the internal drive. In some device configurations, this command may leave the device unable to boot. The return status code shows whether the device accepted the Exec command. The doWipeProtected is functionally similar to doWipe. But unlike doWipe, which can be easily circumvented by simply power cycling the device, doWipeProtected will keep trying to reset the device until it's done.
<!-- Device-doWipeProtected-Description-End -->

<!-- Device-doWipeProtected-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Because doWipeProtected will clean the partitions in case of failure or interruption, use doWipeProtected in lost/stolen device scenarios.
<!-- Device-doWipeProtected-Editable-End -->

<!-- Device-doWipeProtected-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec |
<!-- Device-doWipeProtected-DFProperties-End -->

<!-- Device-doWipeProtected-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-doWipeProtected-Examples-End -->

<!-- Device-doWipeProtected-End -->

<!-- RemoteWipe-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- RemoteWipe-CspMoreInfo-End -->

<!-- RemoteWipe-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
