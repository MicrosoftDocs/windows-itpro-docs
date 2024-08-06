---
title: WindowsLicensing CSP
description: Learn more about the WindowsLicensing CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- WindowsLicensing-Begin -->
# WindowsLicensing CSP

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- WindowsLicensing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The WindowsLicensing configuration service provider is designed for licensing related management scenarios.
<!-- WindowsLicensing-Editable-End -->

<!-- WindowsLicensing-Tree-Begin -->
The following list shows the WindowsLicensing configuration service provider nodes:

- ./Vendor/MSFT/WindowsLicensing
  - [ChangeProductKey](#changeproductkey)
  - [CheckApplicability](#checkapplicability)
  - [DeviceLicensingService](#devicelicensingservice)
    - [DeviceLicensingLastError](#devicelicensingservicedevicelicensinglasterror)
    - [DeviceLicensingLastErrorDescription](#devicelicensingservicedevicelicensinglasterrordescription)
    - [DeviceLicensingStatus](#devicelicensingservicedevicelicensingstatus)
    - [LicenseType](#devicelicensingservicelicensetype)
  - [Edition](#edition)
  - [LicenseKeyType](#licensekeytype)
  - [SMode](#smode)
    - [Status](#smodestatus)
    - [SwitchFromSMode](#smodeswitchfromsmode)
    - [SwitchingPolicy](#smodeswitchingpolicy)
  - [Status](#status)
  - [Subscriptions](#subscriptions)
    - [{SubscriptionId}](#subscriptionssubscriptionid)
      - [Name](#subscriptionssubscriptionidname)
      - [Status](#subscriptionssubscriptionidstatus)
    - [DisableSubscription](#subscriptionsdisablesubscription)
    - [RemoveSubscription](#subscriptionsremovesubscription)
    - [SubscriptionLastError](#subscriptionssubscriptionlasterror)
    - [SubscriptionLastErrorDescription](#subscriptionssubscriptionlasterrordescription)
    - [SubscriptionStatus](#subscriptionssubscriptionstatus)
    - [SubscriptionType](#subscriptionssubscriptiontype)
  - [UpgradeEditionWithLicense](#upgradeeditionwithlicense)
  - [UpgradeEditionWithProductKey](#upgradeeditionwithproductkey)
<!-- WindowsLicensing-Tree-End -->

<!-- Device-ChangeProductKey-Begin -->
## ChangeProductKey

<!-- Device-ChangeProductKey-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-ChangeProductKey-Applicability-End -->

<!-- Device-ChangeProductKey-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/ChangeProductKey
```
<!-- Device-ChangeProductKey-OmaUri-End -->

<!-- Device-ChangeProductKey-Description-Begin -->
<!-- Description-Source-DDF -->
Installs a product key for Windows 10 desktop devices. Does not reboot.
<!-- Device-ChangeProductKey-Description-End -->

<!-- Device-ChangeProductKey-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ChangeProductKey-Editable-End -->

<!-- Device-ChangeProductKey-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec |
<!-- Device-ChangeProductKey-DFProperties-End -->

<!-- Device-ChangeProductKey-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ChangeProductKey-Examples-End -->

<!-- Device-ChangeProductKey-End -->

<!-- Device-CheckApplicability-Begin -->
## CheckApplicability

<!-- Device-CheckApplicability-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CheckApplicability-Applicability-End -->

<!-- Device-CheckApplicability-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/CheckApplicability
```
<!-- Device-CheckApplicability-OmaUri-End -->

<!-- Device-CheckApplicability-Description-Begin -->
<!-- Description-Source-DDF -->
Returns TRUE if the entered product key can be used for an edition upgrade of Windows 10 desktop devices.
<!-- Device-CheckApplicability-Description-End -->

<!-- Device-CheckApplicability-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CheckApplicability-Editable-End -->

<!-- Device-CheckApplicability-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec |
<!-- Device-CheckApplicability-DFProperties-End -->

<!-- Device-CheckApplicability-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Exec>
    <CmdID>$CmdID$</CmdID>
    <Item>
      <Target>
        <LocURI>./Device/Vendor/MSFT/WindowsLicensing/CheckApplicability</LocURI>
      </Target>
      <Meta>
        <Format xmlns="syncml:metinf">chr</Format>
      </Meta>
      <Data>XXXXX-XXXXX-XXXXX-XXXXX-XXXXX</Data>
    </Item>
   </Exec>
   <Final/>
  </SyncBody>
</SyncML>
```

> [!NOTE]
> `XXXXX-XXXXX-XXXXX-XXXXX-XXXXX` in the Data tag should be replaced with your product key.
<!-- Device-CheckApplicability-Examples-End -->

<!-- Device-CheckApplicability-End -->

<!-- Device-DeviceLicensingService-Begin -->
## DeviceLicensingService

<!-- Device-DeviceLicensingService-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 with [KB5018483](https://support.microsoft.com/help/5018483) [10.0.22000.1165] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-DeviceLicensingService-Applicability-End -->

<!-- Device-DeviceLicensingService-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/DeviceLicensingService
```
<!-- Device-DeviceLicensingService-OmaUri-End -->

<!-- Device-DeviceLicensingService-Description-Begin -->
<!-- Description-Source-DDF -->
Device Based Subscription.
<!-- Device-DeviceLicensingService-Description-End -->

<!-- Device-DeviceLicensingService-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceLicensingService-Editable-End -->

<!-- Device-DeviceLicensingService-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-DeviceLicensingService-DFProperties-End -->

<!-- Device-DeviceLicensingService-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceLicensingService-Examples-End -->

<!-- Device-DeviceLicensingService-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingLastError-Begin -->
### DeviceLicensingService/DeviceLicensingLastError

<!-- Device-DeviceLicensingService-DeviceLicensingLastError-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 with [KB5018483](https://support.microsoft.com/help/5018483) [10.0.22000.1165] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-DeviceLicensingService-DeviceLicensingLastError-Applicability-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingLastError-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/DeviceLicensingService/DeviceLicensingLastError
```
<!-- Device-DeviceLicensingService-DeviceLicensingLastError-OmaUri-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingLastError-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the last error code of Refresh/Remove Device License operation. Value would be empty(0) in absence of error.
<!-- Device-DeviceLicensingService-DeviceLicensingLastError-Description-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingLastError-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceLicensingService-DeviceLicensingLastError-Editable-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingLastError-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-DeviceLicensingService-DeviceLicensingLastError-DFProperties-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingLastError-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceLicensingService-DeviceLicensingLastError-Examples-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingLastError-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingLastErrorDescription-Begin -->
### DeviceLicensingService/DeviceLicensingLastErrorDescription

<!-- Device-DeviceLicensingService-DeviceLicensingLastErrorDescription-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 with [KB5018483](https://support.microsoft.com/help/5018483) [10.0.22000.1165] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-DeviceLicensingService-DeviceLicensingLastErrorDescription-Applicability-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingLastErrorDescription-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/DeviceLicensingService/DeviceLicensingLastErrorDescription
```
<!-- Device-DeviceLicensingService-DeviceLicensingLastErrorDescription-OmaUri-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingLastErrorDescription-Description-Begin -->
<!-- Description-Source-DDF -->
Returns last error description from Device Licensing. Value would be empty, if error decription can't be evaluated.
<!-- Device-DeviceLicensingService-DeviceLicensingLastErrorDescription-Description-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingLastErrorDescription-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceLicensingService-DeviceLicensingLastErrorDescription-Editable-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingLastErrorDescription-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-DeviceLicensingService-DeviceLicensingLastErrorDescription-DFProperties-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingLastErrorDescription-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceLicensingService-DeviceLicensingLastErrorDescription-Examples-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingLastErrorDescription-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingStatus-Begin -->
### DeviceLicensingService/DeviceLicensingStatus

<!-- Device-DeviceLicensingService-DeviceLicensingStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 with [KB5018483](https://support.microsoft.com/help/5018483) [10.0.22000.1165] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-DeviceLicensingService-DeviceLicensingStatus-Applicability-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingStatus-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/DeviceLicensingService/DeviceLicensingStatus
```
<!-- Device-DeviceLicensingService-DeviceLicensingStatus-OmaUri-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the status of Refresh/Remove Device License operation.
<!-- Device-DeviceLicensingService-DeviceLicensingStatus-Description-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceLicensingService-DeviceLicensingStatus-Editable-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-DeviceLicensingService-DeviceLicensingStatus-DFProperties-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceLicensingService-DeviceLicensingStatus-Examples-End -->

<!-- Device-DeviceLicensingService-DeviceLicensingStatus-End -->

<!-- Device-DeviceLicensingService-LicenseType-Begin -->
### DeviceLicensingService/LicenseType

<!-- Device-DeviceLicensingService-LicenseType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 with [KB5018483](https://support.microsoft.com/help/5018483) [10.0.22000.1165] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-DeviceLicensingService-LicenseType-Applicability-End -->

<!-- Device-DeviceLicensingService-LicenseType-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/DeviceLicensingService/LicenseType
```
<!-- Device-DeviceLicensingService-LicenseType-OmaUri-End -->

<!-- Device-DeviceLicensingService-LicenseType-Description-Begin -->
<!-- Description-Source-DDF -->
License Type: User Based Subscription or Device Based Subscription.
<!-- Device-DeviceLicensingService-LicenseType-Description-End -->

<!-- Device-DeviceLicensingService-LicenseType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceLicensingService-LicenseType-Editable-End -->

<!-- Device-DeviceLicensingService-LicenseType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
<!-- Device-DeviceLicensingService-LicenseType-DFProperties-End -->

<!-- Device-DeviceLicensingService-LicenseType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | User Based Subscription. |
| 1 | Device Based Subscription. |
<!-- Device-DeviceLicensingService-LicenseType-AllowedValues-End -->

<!-- Device-DeviceLicensingService-LicenseType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceLicensingService-LicenseType-Examples-End -->

<!-- Device-DeviceLicensingService-LicenseType-End -->

<!-- Device-Edition-Begin -->
## Edition

<!-- Device-Edition-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Edition-Applicability-End -->

<!-- Device-Edition-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/Edition
```
<!-- Device-Edition-OmaUri-End -->

<!-- Device-Edition-Description-Begin -->
<!-- Description-Source-DDF -->
Returns a value that maps to the Windows 10 edition running on desktop or mobile devices. Take the value, convert it into its hexadecimal equivalent and search the GetProductInfo function page on MSDN for edition information.
<!-- Device-Edition-Description-End -->

<!-- Device-Edition-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Edition-Editable-End -->

<!-- Device-Edition-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Edition-DFProperties-End -->

<!-- Device-Edition-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Get>
      <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Device/Vendor/MSFT/WindowsLicensing/Edition</LocURI>
          </Target>
        </Item>
    </Get>
    <Final/>
  </SyncBody>
</SyncML>
```
<!-- Device-Edition-Examples-End -->

<!-- Device-Edition-End -->

<!-- Device-LicenseKeyType-Begin -->
## LicenseKeyType

<!-- Device-LicenseKeyType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-LicenseKeyType-Applicability-End -->

<!-- Device-LicenseKeyType-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/LicenseKeyType
```
<!-- Device-LicenseKeyType-OmaUri-End -->

<!-- Device-LicenseKeyType-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the parameter type used by Windows 10 devices for an edition upgrade. Windows 10 desktop devices require a product key for an edition upgrade. Windows 10 mobile devices require a license for an edition upgrade.
<!-- Device-LicenseKeyType-Description-End -->

<!-- Device-LicenseKeyType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-LicenseKeyType-Editable-End -->

<!-- Device-LicenseKeyType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-LicenseKeyType-DFProperties-End -->

<!-- Device-LicenseKeyType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Get>
      <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Device/Vendor/MSFT/WindowsLicensing/LicenseKeyType</LocURI>
          </Target>
        </Item>
    </Get>
    <Final/>
  </SyncBody>
</SyncML>
```
<!-- Device-LicenseKeyType-Examples-End -->

<!-- Device-LicenseKeyType-End -->

<!-- Device-SMode-Begin -->
## SMode

<!-- Device-SMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-SMode-Applicability-End -->

<!-- Device-SMode-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/SMode
```
<!-- Device-SMode-OmaUri-End -->

<!-- Device-SMode-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node for managing S mode.
<!-- Device-SMode-Description-End -->

<!-- Device-SMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SMode-Editable-End -->

<!-- Device-SMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-SMode-DFProperties-End -->

<!-- Device-SMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SMode-Examples-End -->

<!-- Device-SMode-End -->

<!-- Device-SMode-Status-Begin -->
### SMode/Status

<!-- Device-SMode-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-SMode-Status-Applicability-End -->

<!-- Device-SMode-Status-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/SMode/Status
```
<!-- Device-SMode-Status-OmaUri-End -->

<!-- Device-SMode-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the status of the latest SwitchFromSMode or SwitchingPolicy set request.
<!-- Device-SMode-Status-Description-End -->

<!-- Device-SMode-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Possible values:

- Request fails with error code 404: no SwitchFromSMode request has been made.
- 0: The device successfully switched out of S mode.
- 1: The device is processing the request to switch out of S mode.
- 3: The device was already switched out of S mode.
- 4: The device failed to switch out of S mode.
<!-- Device-SMode-Status-Editable-End -->

<!-- Device-SMode-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-SMode-Status-DFProperties-End -->

<!-- Device-SMode-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Get>
      <CmdID>6</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Vendor/MSFT/WindowsLicensing/SMode/Status
          </LocURI>
        </Target>
      </Item>
    </Get>
    <Final/>
  </SyncBody>
</SyncML>
```
<!-- Device-SMode-Status-Examples-End -->

<!-- Device-SMode-Status-End -->

<!-- Device-SMode-SwitchFromSMode-Begin -->
### SMode/SwitchFromSMode

<!-- Device-SMode-SwitchFromSMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-SMode-SwitchFromSMode-Applicability-End -->

<!-- Device-SMode-SwitchFromSMode-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/SMode/SwitchFromSMode
```
<!-- Device-SMode-SwitchFromSMode-OmaUri-End -->

<!-- Device-SMode-SwitchFromSMode-Description-Begin -->
<!-- Description-Source-DDF -->
Switches a device out of S mode if possible. Does not reboot.
<!-- Device-SMode-SwitchFromSMode-Description-End -->

<!-- Device-SMode-SwitchFromSMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SMode-SwitchFromSMode-Editable-End -->

<!-- Device-SMode-SwitchFromSMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec |
<!-- Device-SMode-SwitchFromSMode-DFProperties-End -->

<!-- Device-SMode-SwitchFromSMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Exec>
      <CmdID>5</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Vendor/MSFT/WindowsLicensing/SMode/SwitchFromSMode
          </LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">null</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data></Data>
      </Item>
    </Exec>
    <Final/>
  </SyncBody>
</SyncML>
```
<!-- Device-SMode-SwitchFromSMode-Examples-End -->

<!-- Device-SMode-SwitchFromSMode-End -->

<!-- Device-SMode-SwitchingPolicy-Begin -->
### SMode/SwitchingPolicy

<!-- Device-SMode-SwitchingPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-SMode-SwitchingPolicy-Applicability-End -->

<!-- Device-SMode-SwitchingPolicy-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/SMode/SwitchingPolicy
```
<!-- Device-SMode-SwitchingPolicy-OmaUri-End -->

<!-- Device-SMode-SwitchingPolicy-Description-Begin -->
<!-- Description-Source-DDF -->
Policy that determines whether a consumer can switch the device out of S mode.
<!-- Device-SMode-SwitchingPolicy-Description-End -->

<!-- Device-SMode-SwitchingPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This setting is only applicable to devices available in S mode.
<!-- Device-SMode-SwitchingPolicy-Editable-End -->

<!-- Device-SMode-SwitchingPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SMode-SwitchingPolicy-DFProperties-End -->

<!-- Device-SMode-SwitchingPolicy-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | No Restriction: The user is allowed to switch the device out of S mode. |
| 1 | User Blocked: The admin has blocked the user from switching their device out of S mode. Only the admin can switch the device out of S mode through the SMode/SwitchFromSMode node. |
<!-- Device-SMode-SwitchingPolicy-AllowedValues-End -->

<!-- Device-SMode-SwitchingPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

- Add S Mode SwitchingPolicy

    ```xml
    <SyncML xmlns="SYNCML:SYNCML1.2">
      <SyncBody>
        <Add>
          <CmdID>4</CmdID>
          <Item>
            <Target>
              <LocURI>
                ./Vendor/MSFT/WindowsLicensing/SMode/SwitchingPolicy
              </LocURI>
            </Target>
            <Meta>
              <Format xmlns="syncml:metinf">int</Format>
              <Type>text/plain</Type>
            </Meta>
            <Data>1</Data>
          </Item>
        </Add>
        <Final/>
      </SyncBody>
    </SyncML>
    ```

- Get S Mode Switching Policy

    ```xml
    <SyncML xmlns="SYNCML:SYNCML1.2">
      <SyncBody>
        <Get>
          <CmdID>2</CmdID>
          <Item>
            <Target>
              <LocURI>
                ./Vendor/MSFT/WindowsLicensing/SMode/SwitchingPolicy
              </LocURI>
            </Target>
          </Item>
        </Get>
        <Final/>
      </SyncBody>
    </SyncML>
    ```

- Replace S mode SwitchingPolicy

    ```xml
    <SyncML xmlns="SYNCML:SYNCML1.2">
      <SyncBody>
        <Replace>
          <CmdID>1</CmdID>
          <Item>
            <Target>
              <LocURI>
                ./Vendor/MSFT/WindowsLicensing/SMode/SwitchingPolicy
              </LocURI>
            </Target>
            <Meta>
              <Format xmlns="syncml:metinf">int</Format>
              <Type>text/plain</Type>
            </Meta>
            <Data>1</Data>
          </Item>
        </Replace>
        <Final/>
      </SyncBody>
    </SyncML>
    ```

- Delete S mode SwitchingPolicy

    ```xml
    <SyncML xmlns="SYNCML:SYNCML1.2">
      <SyncBody>
        <Delete>
          <CmdID>3</CmdID>
          <Item>
            <Target>
              <LocURI>
                ./Vendor/MSFT/WindowsLicensing/SMode/SwitchingPolicy
              </LocURI>
            </Target>
          </Item>
        </Delete>
        <Final/>
      </SyncBody>
    </SyncML>
    ```
<!-- Device-SMode-SwitchingPolicy-Examples-End -->

<!-- Device-SMode-SwitchingPolicy-End -->

<!-- Device-Status-Begin -->
## Status

<!-- Device-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Status-Applicability-End -->

<!-- Device-Status-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/Status
```
<!-- Device-Status-OmaUri-End -->

<!-- Device-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the status of an edition upgrade on Windows 10 desktop and mobile devices.	 Status: 0 = Failed, 1 = Pending, 2 = In progress, 3 = Completed, 4 = Unknown.
<!-- Device-Status-Description-End -->

<!-- Device-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Status-Editable-End -->

<!-- Device-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Status-DFProperties-End -->

<!-- Device-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Get>
      <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Device/Vendor/MSFT/WindowsLicensing/Status</LocURI>
          </Target>
        </Item>
    </Get>
    <Final/>
  </SyncBody>
</SyncML>
```
<!-- Device-Status-Examples-End -->

<!-- Device-Status-End -->

<!-- Device-Subscriptions-Begin -->
## Subscriptions

<!-- Device-Subscriptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Subscriptions-Applicability-End -->

<!-- Device-Subscriptions-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/Subscriptions
```
<!-- Device-Subscriptions-OmaUri-End -->

<!-- Device-Subscriptions-Description-Begin -->
<!-- Description-Source-DDF -->
Node for subscriptions.
<!-- Device-Subscriptions-Description-End -->

<!-- Device-Subscriptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Subscriptions-Editable-End -->

<!-- Device-Subscriptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Subscriptions-DFProperties-End -->

<!-- Device-Subscriptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Subscriptions-Examples-End -->

<!-- Device-Subscriptions-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Begin -->
### Subscriptions/{SubscriptionId}

<!-- Device-Subscriptions-{SubscriptionId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Subscriptions-{SubscriptionId}-Applicability-End -->

<!-- Device-Subscriptions-{SubscriptionId}-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/Subscriptions/{SubscriptionId}
```
<!-- Device-Subscriptions-{SubscriptionId}-OmaUri-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Description-Begin -->
<!-- Description-Source-DDF -->
Node for subscription IDs.
<!-- Device-Subscriptions-{SubscriptionId}-Description-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Subscriptions-{SubscriptionId}-Editable-End -->

<!-- Device-Subscriptions-{SubscriptionId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-Subscriptions-{SubscriptionId}-DFProperties-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Subscriptions-{SubscriptionId}-Examples-End -->

<!-- Device-Subscriptions-{SubscriptionId}-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Name-Begin -->
#### Subscriptions/{SubscriptionId}/Name

<!-- Device-Subscriptions-{SubscriptionId}-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Subscriptions-{SubscriptionId}-Name-Applicability-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Name-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/Subscriptions/{SubscriptionId}/Name
```
<!-- Device-Subscriptions-{SubscriptionId}-Name-OmaUri-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the subscription.
<!-- Device-Subscriptions-{SubscriptionId}-Name-Description-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Subscriptions-{SubscriptionId}-Name-Editable-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Subscriptions-{SubscriptionId}-Name-DFProperties-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Subscriptions-{SubscriptionId}-Name-Examples-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Name-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Status-Begin -->
#### Subscriptions/{SubscriptionId}/Status

<!-- Device-Subscriptions-{SubscriptionId}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Subscriptions-{SubscriptionId}-Status-Applicability-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Status-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/Subscriptions/{SubscriptionId}/Status
```
<!-- Device-Subscriptions-{SubscriptionId}-Status-OmaUri-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the status of the subscription.
<!-- Device-Subscriptions-{SubscriptionId}-Status-Description-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Subscriptions-{SubscriptionId}-Status-Editable-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Subscriptions-{SubscriptionId}-Status-DFProperties-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Subscriptions-{SubscriptionId}-Status-Examples-End -->

<!-- Device-Subscriptions-{SubscriptionId}-Status-End -->

<!-- Device-Subscriptions-DisableSubscription-Begin -->
### Subscriptions/DisableSubscription

<!-- Device-Subscriptions-DisableSubscription-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Subscriptions-DisableSubscription-Applicability-End -->

<!-- Device-Subscriptions-DisableSubscription-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/Subscriptions/DisableSubscription
```
<!-- Device-Subscriptions-DisableSubscription-OmaUri-End -->

<!-- Device-Subscriptions-DisableSubscription-Description-Begin -->
<!-- Description-Source-DDF -->
Disable or Enable subscription activation on a device.
<!-- Device-Subscriptions-DisableSubscription-Description-End -->

<!-- Device-Subscriptions-DisableSubscription-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Subscriptions-DisableSubscription-Editable-End -->

<!-- Device-Subscriptions-DisableSubscription-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Replace |
<!-- Device-Subscriptions-DisableSubscription-DFProperties-End -->

<!-- Device-Subscriptions-DisableSubscription-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Enable Subscription. |
| 1 | Disable Subscription. It also removes any existing subscription on the device. |
<!-- Device-Subscriptions-DisableSubscription-AllowedValues-End -->

<!-- Device-Subscriptions-DisableSubscription-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Subscriptions-DisableSubscription-Examples-End -->

<!-- Device-Subscriptions-DisableSubscription-End -->

<!-- Device-Subscriptions-RemoveSubscription-Begin -->
### Subscriptions/RemoveSubscription

<!-- Device-Subscriptions-RemoveSubscription-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Subscriptions-RemoveSubscription-Applicability-End -->

<!-- Device-Subscriptions-RemoveSubscription-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/Subscriptions/RemoveSubscription
```
<!-- Device-Subscriptions-RemoveSubscription-OmaUri-End -->

<!-- Device-Subscriptions-RemoveSubscription-Description-Begin -->
<!-- Description-Source-DDF -->
Remove subscription uninstall subscription license. It also reset subscription type to User Based Subscription.
<!-- Device-Subscriptions-RemoveSubscription-Description-End -->

<!-- Device-Subscriptions-RemoveSubscription-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Subscriptions-RemoveSubscription-Editable-End -->

<!-- Device-Subscriptions-RemoveSubscription-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec |
<!-- Device-Subscriptions-RemoveSubscription-DFProperties-End -->

<!-- Device-Subscriptions-RemoveSubscription-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Subscriptions-RemoveSubscription-Examples-End -->

<!-- Device-Subscriptions-RemoveSubscription-End -->

<!-- Device-Subscriptions-SubscriptionLastError-Begin -->
### Subscriptions/SubscriptionLastError

<!-- Device-Subscriptions-SubscriptionLastError-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Subscriptions-SubscriptionLastError-Applicability-End -->

<!-- Device-Subscriptions-SubscriptionLastError-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/Subscriptions/SubscriptionLastError
```
<!-- Device-Subscriptions-SubscriptionLastError-OmaUri-End -->

<!-- Device-Subscriptions-SubscriptionLastError-Description-Begin -->
<!-- Description-Source-DDF -->
Error code of last subscription operation. Value would be empty(0) in absence of error.
<!-- Device-Subscriptions-SubscriptionLastError-Description-End -->

<!-- Device-Subscriptions-SubscriptionLastError-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Subscriptions-SubscriptionLastError-Editable-End -->

<!-- Device-Subscriptions-SubscriptionLastError-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Subscriptions-SubscriptionLastError-DFProperties-End -->

<!-- Device-Subscriptions-SubscriptionLastError-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Subscriptions-SubscriptionLastError-Examples-End -->

<!-- Device-Subscriptions-SubscriptionLastError-End -->

<!-- Device-Subscriptions-SubscriptionLastErrorDescription-Begin -->
### Subscriptions/SubscriptionLastErrorDescription

<!-- Device-Subscriptions-SubscriptionLastErrorDescription-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Subscriptions-SubscriptionLastErrorDescription-Applicability-End -->

<!-- Device-Subscriptions-SubscriptionLastErrorDescription-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/Subscriptions/SubscriptionLastErrorDescription
```
<!-- Device-Subscriptions-SubscriptionLastErrorDescription-OmaUri-End -->

<!-- Device-Subscriptions-SubscriptionLastErrorDescription-Description-Begin -->
<!-- Description-Source-DDF -->
Error description of last subscription operation. Value would be empty, if error description can't be evaluated.
<!-- Device-Subscriptions-SubscriptionLastErrorDescription-Description-End -->

<!-- Device-Subscriptions-SubscriptionLastErrorDescription-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Subscriptions-SubscriptionLastErrorDescription-Editable-End -->

<!-- Device-Subscriptions-SubscriptionLastErrorDescription-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Subscriptions-SubscriptionLastErrorDescription-DFProperties-End -->

<!-- Device-Subscriptions-SubscriptionLastErrorDescription-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Subscriptions-SubscriptionLastErrorDescription-Examples-End -->

<!-- Device-Subscriptions-SubscriptionLastErrorDescription-End -->

<!-- Device-Subscriptions-SubscriptionStatus-Begin -->
### Subscriptions/SubscriptionStatus

<!-- Device-Subscriptions-SubscriptionStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Subscriptions-SubscriptionStatus-Applicability-End -->

<!-- Device-Subscriptions-SubscriptionStatus-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/Subscriptions/SubscriptionStatus
```
<!-- Device-Subscriptions-SubscriptionStatus-OmaUri-End -->

<!-- Device-Subscriptions-SubscriptionStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Status of last subscription operation.
<!-- Device-Subscriptions-SubscriptionStatus-Description-End -->

<!-- Device-Subscriptions-SubscriptionStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Subscriptions-SubscriptionStatus-Editable-End -->

<!-- Device-Subscriptions-SubscriptionStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Subscriptions-SubscriptionStatus-DFProperties-End -->

<!-- Device-Subscriptions-SubscriptionStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Subscriptions-SubscriptionStatus-Examples-End -->

<!-- Device-Subscriptions-SubscriptionStatus-End -->

<!-- Device-Subscriptions-SubscriptionType-Begin -->
### Subscriptions/SubscriptionType

<!-- Device-Subscriptions-SubscriptionType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Subscriptions-SubscriptionType-Applicability-End -->

<!-- Device-Subscriptions-SubscriptionType-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/Subscriptions/SubscriptionType
```
<!-- Device-Subscriptions-SubscriptionType-OmaUri-End -->

<!-- Device-Subscriptions-SubscriptionType-Description-Begin -->
<!-- Description-Source-DDF -->
Set device to Device Based Subscription or User Based Subscription. For Device Based Subscription this action will automatically acquire the subscription on the device. For User Based Subscription the existing process of user logon will be required.
<!-- Device-Subscriptions-SubscriptionType-Description-End -->

<!-- Device-Subscriptions-SubscriptionType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Subscriptions-SubscriptionType-Editable-End -->

<!-- Device-Subscriptions-SubscriptionType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
<!-- Device-Subscriptions-SubscriptionType-DFProperties-End -->

<!-- Device-Subscriptions-SubscriptionType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | User Based Subscription. |
| 1 | Device Based Subscription. |
<!-- Device-Subscriptions-SubscriptionType-AllowedValues-End -->

<!-- Device-Subscriptions-SubscriptionType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Subscriptions-SubscriptionType-Examples-End -->

<!-- Device-Subscriptions-SubscriptionType-End -->

<!-- Device-UpgradeEditionWithLicense-Begin -->
## UpgradeEditionWithLicense

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- Device-UpgradeEditionWithLicense-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-UpgradeEditionWithLicense-Applicability-End -->

<!-- Device-UpgradeEditionWithLicense-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/UpgradeEditionWithLicense
```
<!-- Device-UpgradeEditionWithLicense-OmaUri-End -->

<!-- Device-UpgradeEditionWithLicense-Description-Begin -->
<!-- Description-Source-DDF -->
Provide a license for an edition upgrade of Windows 10 mobile devices. Does not require reboot.
<!-- Device-UpgradeEditionWithLicense-Description-End -->

<!-- Device-UpgradeEditionWithLicense-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UpgradeEditionWithLicense-Editable-End -->

<!-- Device-UpgradeEditionWithLicense-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Exec |
<!-- Device-UpgradeEditionWithLicense-DFProperties-End -->

<!-- Device-UpgradeEditionWithLicense-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UpgradeEditionWithLicense-Examples-End -->

<!-- Device-UpgradeEditionWithLicense-End -->

<!-- Device-UpgradeEditionWithProductKey-Begin -->
## UpgradeEditionWithProductKey

<!-- Device-UpgradeEditionWithProductKey-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-UpgradeEditionWithProductKey-Applicability-End -->

<!-- Device-UpgradeEditionWithProductKey-OmaUri-Begin -->
```Device
./Vendor/MSFT/WindowsLicensing/UpgradeEditionWithProductKey
```
<!-- Device-UpgradeEditionWithProductKey-OmaUri-End -->

<!-- Device-UpgradeEditionWithProductKey-Description-Begin -->
<!-- Description-Source-DDF -->
Enter a product key for an edition upgrade of Windows 10 desktop devices. Requires reboot.
<!-- Device-UpgradeEditionWithProductKey-Description-End -->

<!-- Device-UpgradeEditionWithProductKey-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
When a product key is pushed from an MDM server to a user's device, `changepk.exe` runs using the product key. After it completes, a notification is shown to the user that a new edition of Windows is available. The user can then restart their system manually or after two hours, the device will restart automatically to complete the upgrade. The user will receive a reminder notification 10 minutes before the automatic restart.

After the device restarts, the edition upgrade process completes. The user will receive a notification of the successful upgrade.

> [!NOTE]
> If another policy requires a system reboot that occurs when `changepk.exe` is running, the edition upgrade will fail.

If a product key is entered in a provisioning package and the user begins installation of the package, a notification is shown to the user that their system will restart to complete the package installation. Upon explicit consent from the user to proceed, the package continues installation and `changepk.exe` runs using the product key. The user will receive a reminder notification 30 seconds before the automatic restart.

After the device restarts, the edition upgrade process completes. The user will receive a notification of the successful upgrade.

This node can also be used to activate or change a product key on a particular edition of Windows 10 desktop device by entering a product key. Activation or changing a product key doesn't require a reboot and is a silent process for the user.

> [!IMPORTANT]
> The product key entered must be 29 characters (that is, it should include dashes), otherwise the activation, edition upgrade, or product key change on Windows 10 desktop devices will fail. The product key is acquired from Microsoft Volume Licensing Service Center. Your organization must have a Volume Licensing contract with Microsoft to access the portal.

The following are valid edition upgrade paths when using this node through an MDM:

- Windows 10/11 Enterprise to Windows 10/11 Education
- Windows 10/11 Home to Windows 10/11 Education
- Windows 10/11 Pro to Windows 10/11 Education
- Windows 10/11 Pro to Windows 10/11 Enterprise

Activation or changing a product key can be carried out on the following editions:

- Windows 10/11 Education
- Windows 10/11 Enterprise
- Windows 10/11 Home
- Windows 10/11 Pro
<!-- Device-UpgradeEditionWithProductKey-Editable-End -->

<!-- Device-UpgradeEditionWithProductKey-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec |
| Reboot Behavior | Automatic |
<!-- Device-UpgradeEditionWithProductKey-DFProperties-End -->

<!-- Device-UpgradeEditionWithProductKey-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Exec>
    <CmdID>$CmdID$</CmdID>
    <Item>
      <Target>
        <LocURI>./Device/Vendor/MSFT/WindowsLicensing/UpgradeEditionWithProductKey</LocURI>
      </Target>
      <Meta>
        <Format xmlns="syncml:metinf">chr</Format>
      </Meta>
      <Data>XXXXX-XXXXX-XXXXX-XXXXX-XXXXX</Data>
    </Item>
   </Exec>
   <Final/>
  </SyncBody>
</SyncML>
```

> [!NOTE]
> `XXXXX-XXXXX-XXXXX-XXXXX-XXXXX` in the Data tag should be replaced with your product key.
<!-- Device-UpgradeEditionWithProductKey-Examples-End -->

<!-- Device-UpgradeEditionWithProductKey-End -->

<!-- WindowsLicensing-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- WindowsLicensing-CspMoreInfo-End -->

<!-- WindowsLicensing-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
