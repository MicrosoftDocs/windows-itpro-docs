---
title: DeviceManageability CSP
description: Learn more about the DeviceManageability CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- DeviceManageability-Begin -->
# DeviceManageability CSP

<!-- DeviceManageability-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The DeviceManageability configuration service provider (CSP) is used to retrieve the general information about MDM configuration capabilities on the device. This CSP was added in Windows 10, version 1607.

For performance reasons, DeviceManageability CSP directly reads the CSP version from the registry. Specifically, the value `csp_version` is used to determine each of the CSP versions. The `csp_version` is a value under each of the CSP registration keys. To have consistency on the CSP version, the CSP GetProperty implementation for `CFGMGR_PROPERTY_SEMANTICTYPE` has to be updated to read from the registry as well, so that both the paths return the same information.
<!-- DeviceManageability-Editable-End -->

<!-- DeviceManageability-Tree-Begin -->
The following list shows the DeviceManageability configuration service provider nodes:

- ./Device/Vendor/MSFT/DeviceManageability
  - [Capabilities](#capabilities)
    - [CSPVersions](#capabilitiescspversions)
  - [Provider](#provider)
    - [{ProviderID}](#providerproviderid)
      - [ConfigInfo](#providerprovideridconfiginfo)
      - [EnrollmentInfo](#providerprovideridenrollmentinfo)
      - [PayloadTransfer](#providerprovideridpayloadtransfer)
<!-- DeviceManageability-Tree-End -->

<!-- Device-Capabilities-Begin -->
## Capabilities

<!-- Device-Capabilities-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Capabilities-Applicability-End -->

<!-- Device-Capabilities-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeviceManageability/Capabilities
```
<!-- Device-Capabilities-OmaUri-End -->

<!-- Device-Capabilities-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Capabilities-Description-End -->

<!-- Device-Capabilities-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Capabilities-Editable-End -->

<!-- Device-Capabilities-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Capabilities-DFProperties-End -->

<!-- Device-Capabilities-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Capabilities-Examples-End -->

<!-- Device-Capabilities-End -->

<!-- Device-Capabilities-CSPVersions-Begin -->
### Capabilities/CSPVersions

<!-- Device-Capabilities-CSPVersions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Capabilities-CSPVersions-Applicability-End -->

<!-- Device-Capabilities-CSPVersions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeviceManageability/Capabilities/CSPVersions
```
<!-- Device-Capabilities-CSPVersions-OmaUri-End -->

<!-- Device-Capabilities-CSPVersions-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the versions of all configuration service providers (CSP) for MDM.
<!-- Device-Capabilities-CSPVersions-Description-End -->

<!-- Device-Capabilities-CSPVersions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Capabilities-CSPVersions-Editable-End -->

<!-- Device-Capabilities-CSPVersions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Get |
<!-- Device-Capabilities-CSPVersions-DFProperties-End -->

<!-- Device-Capabilities-CSPVersions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Capabilities-CSPVersions-Examples-End -->

<!-- Device-Capabilities-CSPVersions-End -->

<!-- Device-Provider-Begin -->
## Provider

<!-- Device-Provider-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Provider-Applicability-End -->

<!-- Device-Provider-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeviceManageability/Provider
```
<!-- Device-Provider-OmaUri-End -->

<!-- Device-Provider-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Provider-Description-End -->

<!-- Device-Provider-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-Editable-End -->

<!-- Device-Provider-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Provider-DFProperties-End -->

<!-- Device-Provider-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-Examples-End -->

<!-- Device-Provider-End -->

<!-- Device-Provider-{ProviderID}-Begin -->
### Provider/{ProviderID}

<!-- Device-Provider-{ProviderID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Provider-{ProviderID}-Applicability-End -->

<!-- Device-Provider-{ProviderID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeviceManageability/Provider/{ProviderID}
```
<!-- Device-Provider-{ProviderID}-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-Description-Begin -->
<!-- Description-Source-DDF -->
Provider ID String of the Configuration Source.
<!-- Device-Provider-{ProviderID}-Description-End -->

<!-- Device-Provider-{ProviderID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Provider ID should be unique among the different config sources.
<!-- Device-Provider-{ProviderID}-Editable-End -->

<!-- Device-Provider-{ProviderID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: Provider ID String of the Configuration Source |
<!-- Device-Provider-{ProviderID}-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-Examples-End -->

<!-- Device-Provider-{ProviderID}-End -->

<!-- Device-Provider-{ProviderID}-ConfigInfo-Begin -->
#### Provider/{ProviderID}/ConfigInfo

<!-- Device-Provider-{ProviderID}-ConfigInfo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Provider-{ProviderID}-ConfigInfo-Applicability-End -->

<!-- Device-Provider-{ProviderID}-ConfigInfo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeviceManageability/Provider/{ProviderID}/ConfigInfo
```
<!-- Device-Provider-{ProviderID}-ConfigInfo-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-ConfigInfo-Description-Begin -->
<!-- Description-Source-DDF -->
Configuration Info string value set by the config source. Recommended to be used during sync session.
<!-- Device-Provider-{ProviderID}-ConfigInfo-Description-End -->

<!-- Device-Provider-{ProviderID}-ConfigInfo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigInfo-Editable-End -->

<!-- Device-Provider-{ProviderID}-ConfigInfo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-ConfigInfo-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-ConfigInfo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-ConfigInfo-Examples-End -->

<!-- Device-Provider-{ProviderID}-ConfigInfo-End -->

<!-- Device-Provider-{ProviderID}-EnrollmentInfo-Begin -->
#### Provider/{ProviderID}/EnrollmentInfo

<!-- Device-Provider-{ProviderID}-EnrollmentInfo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Provider-{ProviderID}-EnrollmentInfo-Applicability-End -->

<!-- Device-Provider-{ProviderID}-EnrollmentInfo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeviceManageability/Provider/{ProviderID}/EnrollmentInfo
```
<!-- Device-Provider-{ProviderID}-EnrollmentInfo-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-EnrollmentInfo-Description-Begin -->
<!-- Description-Source-DDF -->
Enrollment Info string value set by the config source. Recommended to sent to server during MDM enrollment.
<!-- Device-Provider-{ProviderID}-EnrollmentInfo-Description-End -->

<!-- Device-Provider-{ProviderID}-EnrollmentInfo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EnrollmentInfo-Editable-End -->

<!-- Device-Provider-{ProviderID}-EnrollmentInfo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-EnrollmentInfo-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-EnrollmentInfo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-EnrollmentInfo-Examples-End -->

<!-- Device-Provider-{ProviderID}-EnrollmentInfo-End -->

<!-- Device-Provider-{ProviderID}-PayloadTransfer-Begin -->
#### Provider/{ProviderID}/PayloadTransfer

<!-- Device-Provider-{ProviderID}-PayloadTransfer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 with [KB5018482](https://support.microsoft.com/help/5018482) [10.0.19042.2193] and later <br> ✅ Windows 10, version 21H1 with [KB5018482](https://support.microsoft.com/help/5018482) [10.0.19043.2193] and later <br> ✅ Windows 10, version 21H2 with [KB5018482](https://support.microsoft.com/help/5018482) [10.0.19044.2193] and later <br> ✅ Windows 11, version 21H2 with [KB5016691](https://support.microsoft.com/help/5016691) [10.0.22000.918] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-Provider-{ProviderID}-PayloadTransfer-Applicability-End -->

<!-- Device-Provider-{ProviderID}-PayloadTransfer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeviceManageability/Provider/{ProviderID}/PayloadTransfer
```
<!-- Device-Provider-{ProviderID}-PayloadTransfer-OmaUri-End -->

<!-- Device-Provider-{ProviderID}-PayloadTransfer-Description-Begin -->
<!-- Description-Source-DDF -->
Payload Transfer string value set by the config source. Recommended to be used during sync session.
<!-- Device-Provider-{ProviderID}-PayloadTransfer-Description-End -->

<!-- Device-Provider-{ProviderID}-PayloadTransfer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-PayloadTransfer-Editable-End -->

<!-- Device-Provider-{ProviderID}-PayloadTransfer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Provider-{ProviderID}-PayloadTransfer-DFProperties-End -->

<!-- Device-Provider-{ProviderID}-PayloadTransfer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Provider-{ProviderID}-PayloadTransfer-Examples-End -->

<!-- Device-Provider-{ProviderID}-PayloadTransfer-End -->

<!-- DeviceManageability-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DeviceManageability-CspMoreInfo-End -->

<!-- DeviceManageability-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
