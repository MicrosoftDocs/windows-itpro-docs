---
title: ApplicationControl CSP
description: Learn more about the ApplicationControl CSP.
ms.date: 01/31/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ApplicationControl-Begin -->
# ApplicationControl CSP

<!-- ApplicationControl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
App Control for Business policies can be managed from an MDM server, or locally by using PowerShell via the WMI Bridge through the ApplicationControl configuration service provider (CSP). The ApplicationControl CSP was added in Windows 10, version 1903. This CSP provides expanded diagnostic capabilities and support for [multiple policies](/windows/security/application-security/application-control/app-control-for-business/design/deploy-multiple-appcontrol-policies) (introduced in Windows 10, version 1903). It also provides support for policy deployment (introduced in Windows 10, version 1709) without reboot. Unlike the [AppLocker CSP](applocker-csp.md), the ApplicationControl CSP correctly detects the presence of no-reboot option and consequently doesn't schedule a reboot.

Existing App Control for Business policies deployed using the AppLocker CSP's CodeIntegrity node can now be deployed using the ApplicationControl CSP URI. Although App Control policy deployment using the AppLocker CSP will continue to be supported, all new feature work will be done in the ApplicationControl CSP only.
<!-- ApplicationControl-Editable-End -->

<!-- ApplicationControl-Tree-Begin -->
The following list shows the ApplicationControl configuration service provider nodes:

- ./Vendor/MSFT/ApplicationControl
  - [Policies](#policies)
    - [{Policy GUID}](#policiespolicy-guid)
      - [Policy](#policiespolicy-guidpolicy)
      - [PolicyInfo](#policiespolicy-guidpolicyinfo)
        - [BasePolicyId](#policiespolicy-guidpolicyinfobasepolicyid)
        - [FriendlyName](#policiespolicy-guidpolicyinfofriendlyname)
        - [IsAuthorized](#policiespolicy-guidpolicyinfoisauthorized)
        - [IsBasePolicy](#policiespolicy-guidpolicyinfoisbasepolicy)
        - [IsDeployed](#policiespolicy-guidpolicyinfoisdeployed)
        - [IsEffective](#policiespolicy-guidpolicyinfoiseffective)
        - [IsSystemPolicy](#policiespolicy-guidpolicyinfoissystempolicy)
        - [PolicyOptions](#policiespolicy-guidpolicyinfopolicyoptions)
        - [Status](#policiespolicy-guidpolicyinfostatus)
        - [Version](#policiespolicy-guidpolicyinfoversion)
  - [Tokens](#tokens)
    - [{ID}](#tokensid)
      - [Token](#tokensidtoken)
      - [TokenInfo](#tokensidtokeninfo)
        - [Status](#tokensidtokeninfostatus)
        - [Type](#tokensidtokeninfotype)
<!-- ApplicationControl-Tree-End -->

<!-- Device-Policies-Begin -->
## Policies

<!-- Device-Policies-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policies-Applicability-End -->

<!-- Device-Policies-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Policies
```
<!-- Device-Policies-OmaUri-End -->

<!-- Device-Policies-Description-Begin -->
<!-- Description-Source-DDF -->
Beginning of a Subtree that contains all policies.
<!-- Device-Policies-Description-End -->

<!-- Device-Policies-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Each policy is identified by their globally unique identifier (GUID).
<!-- Device-Policies-Editable-End -->

<!-- Device-Policies-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Policies-DFProperties-End -->

<!-- Device-Policies-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-Examples-End -->

<!-- Device-Policies-End -->

<!-- Device-Policies-{Policy GUID}-Begin -->
### Policies/{Policy GUID}

<!-- Device-Policies-{Policy GUID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policies-{Policy GUID}-Applicability-End -->

<!-- Device-Policies-{Policy GUID}-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Policies/{Policy GUID}
```
<!-- Device-Policies-{Policy GUID}-OmaUri-End -->

<!-- Device-Policies-{Policy GUID}-Description-Begin -->
<!-- Description-Source-DDF -->
The GUID of the Policy.
<!-- Device-Policies-{Policy GUID}-Description-End -->

<!-- Device-Policies-{Policy GUID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Each Policy GUID node contains a Policy node and a corresponding PolicyInfo node.
<!-- Device-Policies-{Policy GUID}-Editable-End -->

<!-- Device-Policies-{Policy GUID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Dynamic Node Naming | UniqueName: The ApplicationControl CSP enforces that the "ID" segment of a given policy URI is the same GUID as the policy ID in the policy blob. |
<!-- Device-Policies-{Policy GUID}-DFProperties-End -->

<!-- Device-Policies-{Policy GUID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-Examples-End -->

<!-- Device-Policies-{Policy GUID}-End -->

<!-- Device-Policies-{Policy GUID}-Policy-Begin -->
#### Policies/{Policy GUID}/Policy

<!-- Device-Policies-{Policy GUID}-Policy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policies-{Policy GUID}-Policy-Applicability-End -->

<!-- Device-Policies-{Policy GUID}-Policy-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Policies/{Policy GUID}/Policy
```
<!-- Device-Policies-{Policy GUID}-Policy-OmaUri-End -->

<!-- Device-Policies-{Policy GUID}-Policy-Description-Begin -->
<!-- Description-Source-DDF -->
The policy binary encoded as base64. Supported value is a binary file, converted from the policy XML file by the ConvertFrom-CIPolicy cmdlet.
<!-- Device-Policies-{Policy GUID}-Policy-Description-End -->

<!-- Device-Policies-{Policy GUID}-Policy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Default value is empty.
<!-- Device-Policies-{Policy GUID}-Policy-Editable-End -->

<!-- Device-Policies-{Policy GUID}-Policy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Policies-{Policy GUID}-Policy-DFProperties-End -->

<!-- Device-Policies-{Policy GUID}-Policy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-Policy-Examples-End -->

<!-- Device-Policies-{Policy GUID}-Policy-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Begin -->
#### Policies/{Policy GUID}/PolicyInfo

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Applicability-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Policies/{Policy GUID}/PolicyInfo
```
<!-- Device-Policies-{Policy GUID}-PolicyInfo-OmaUri-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Description-Begin -->
<!-- Description-Source-DDF -->
Information Describing the Policy indicated by the GUID.
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Description-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Editable-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-DFProperties-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Examples-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-BasePolicyId-Begin -->
##### Policies/{Policy GUID}/PolicyInfo/BasePolicyId

<!-- Device-Policies-{Policy GUID}-PolicyInfo-BasePolicyId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-BasePolicyId-Applicability-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-BasePolicyId-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Policies/{Policy GUID}/PolicyInfo/BasePolicyId
```
<!-- Device-Policies-{Policy GUID}-PolicyInfo-BasePolicyId-OmaUri-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-BasePolicyId-Description-Begin -->
<!-- Description-Source-DDF -->
The BasePolicyId of the Policy Indicated by the Policy GUID.
<!-- Device-Policies-{Policy GUID}-PolicyInfo-BasePolicyId-Description-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-BasePolicyId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-BasePolicyId-Editable-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-BasePolicyId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-BasePolicyId-DFProperties-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-BasePolicyId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-BasePolicyId-Examples-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-BasePolicyId-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-FriendlyName-Begin -->
##### Policies/{Policy GUID}/PolicyInfo/FriendlyName

<!-- Device-Policies-{Policy GUID}-PolicyInfo-FriendlyName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-FriendlyName-Applicability-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-FriendlyName-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Policies/{Policy GUID}/PolicyInfo/FriendlyName
```
<!-- Device-Policies-{Policy GUID}-PolicyInfo-FriendlyName-OmaUri-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-FriendlyName-Description-Begin -->
<!-- Description-Source-DDF -->
The FriendlyName of the Policy Indicated by the Policy GUID.
<!-- Device-Policies-{Policy GUID}-PolicyInfo-FriendlyName-Description-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-FriendlyName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-FriendlyName-Editable-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-FriendlyName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-FriendlyName-DFProperties-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-FriendlyName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-FriendlyName-Examples-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-FriendlyName-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsAuthorized-Begin -->
##### Policies/{Policy GUID}/PolicyInfo/IsAuthorized

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsAuthorized-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsAuthorized-Applicability-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsAuthorized-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Policies/{Policy GUID}/PolicyInfo/IsAuthorized
```
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsAuthorized-OmaUri-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsAuthorized-Description-Begin -->
<!-- Description-Source-DDF -->
Whether the Policy indicated by the GUID is authorized to be loaded by the enforcement engine on the system.
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsAuthorized-Description-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsAuthorized-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Supported values are as follows:

- True: Indicates that the policy is authorized to be loaded by the enforcement engine on the system.
- False: Indicates that the policy isn't authorized to be loaded by the enforcement engine on the system. This value is the default value.
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsAuthorized-Editable-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsAuthorized-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsAuthorized-DFProperties-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsAuthorized-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsAuthorized-Examples-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsAuthorized-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsBasePolicy-Begin -->
##### Policies/{Policy GUID}/PolicyInfo/IsBasePolicy

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsBasePolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsBasePolicy-Applicability-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsBasePolicy-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Policies/{Policy GUID}/PolicyInfo/IsBasePolicy
```
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsBasePolicy-OmaUri-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsBasePolicy-Description-Begin -->
<!-- Description-Source-DDF -->
TRUE/FALSE if the Policy is a Base Policy versus a Supplemental Policy.
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsBasePolicy-Description-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsBasePolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsBasePolicy-Editable-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsBasePolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsBasePolicy-DFProperties-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsBasePolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsBasePolicy-Examples-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsBasePolicy-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsDeployed-Begin -->
##### Policies/{Policy GUID}/PolicyInfo/IsDeployed

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsDeployed-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsDeployed-Applicability-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsDeployed-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Policies/{Policy GUID}/PolicyInfo/IsDeployed
```
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsDeployed-OmaUri-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsDeployed-Description-Begin -->
<!-- Description-Source-DDF -->
Whether the Policy indicated by the GUID is deployed on the system (on the physical machine)
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsDeployed-Description-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsDeployed-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Supported values are as follows:

- True: Indicates that the policy is deployed on the system and is present on the physical machine.
- False: Indicates that the policy isn't deployed on the system and isn't present on the physical machine. This value is the default value.
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsDeployed-Editable-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsDeployed-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsDeployed-DFProperties-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsDeployed-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsDeployed-Examples-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsDeployed-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsEffective-Begin -->
##### Policies/{Policy GUID}/PolicyInfo/IsEffective

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsEffective-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsEffective-Applicability-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsEffective-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Policies/{Policy GUID}/PolicyInfo/IsEffective
```
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsEffective-OmaUri-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsEffective-Description-Begin -->
<!-- Description-Source-DDF -->
Whether the Policy indicated by the GUID is Effective on the system (loaded by the enforcement engine and in effect)
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsEffective-Description-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsEffective-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Supported values are as follows:

- True: Indicates that the policy is loaded by the enforcement engine and is in effect on a system.
- False: Indicates that the policy isn't loaded by the enforcement engine and isn't in effect on a system. This value is the default value.
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsEffective-Editable-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsEffective-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsEffective-DFProperties-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsEffective-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsEffective-Examples-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsEffective-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsSystemPolicy-Begin -->
##### Policies/{Policy GUID}/PolicyInfo/IsSystemPolicy

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsSystemPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsSystemPolicy-Applicability-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsSystemPolicy-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Policies/{Policy GUID}/PolicyInfo/IsSystemPolicy
```
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsSystemPolicy-OmaUri-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsSystemPolicy-Description-Begin -->
<!-- Description-Source-DDF -->
TRUE/FALSE if the Policy is a System Policy, that's a policy managed by Microsoft as part of the OS.
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsSystemPolicy-Description-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsSystemPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsSystemPolicy-Editable-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsSystemPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsSystemPolicy-DFProperties-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsSystemPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsSystemPolicy-Examples-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-IsSystemPolicy-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-PolicyOptions-Begin -->
##### Policies/{Policy GUID}/PolicyInfo/PolicyOptions

<!-- Device-Policies-{Policy GUID}-PolicyInfo-PolicyOptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-PolicyOptions-Applicability-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-PolicyOptions-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Policies/{Policy GUID}/PolicyInfo/PolicyOptions
```
<!-- Device-Policies-{Policy GUID}-PolicyInfo-PolicyOptions-OmaUri-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-PolicyOptions-Description-Begin -->
<!-- Description-Source-DDF -->
The PolicyOptions of the Policy Indicated by the Policy GUID.
<!-- Device-Policies-{Policy GUID}-PolicyInfo-PolicyOptions-Description-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-PolicyOptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-PolicyOptions-Editable-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-PolicyOptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-PolicyOptions-DFProperties-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-PolicyOptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-PolicyOptions-Examples-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-PolicyOptions-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Status-Begin -->
##### Policies/{Policy GUID}/PolicyInfo/Status

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Status-Applicability-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Status-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Policies/{Policy GUID}/PolicyInfo/Status
```
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Status-OmaUri-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Status-Description-Begin -->
<!-- Description-Source-DDF -->
The Current Status of the Policy Indicated by the Policy GUID.
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Status-Description-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Default value is 0, which indicates that the policy status is `OK`.
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Status-Editable-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Status-DFProperties-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Status-Examples-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Status-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Version-Begin -->
##### Policies/{Policy GUID}/PolicyInfo/Version

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Version-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Version-Applicability-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Version-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Policies/{Policy GUID}/PolicyInfo/Version
```
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Version-OmaUri-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Version-Description-Begin -->
<!-- Description-Source-DDF -->
Version of the Policy indicated by the GUID, as a string. When parsing use a uint64 as the containing data type.
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Version-Description-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Version-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Version-Editable-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Version-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Version-DFProperties-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Version-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-{Policy GUID}-PolicyInfo-Version-Examples-End -->

<!-- Device-Policies-{Policy GUID}-PolicyInfo-Version-End -->

<!-- Device-Tokens-Begin -->
## Tokens

<!-- Device-Tokens-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Tokens-Applicability-End -->

<!-- Device-Tokens-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Tokens
```
<!-- Device-Tokens-OmaUri-End -->

<!-- Device-Tokens-Description-Begin -->
<!-- Description-Source-DDF -->
Beginning of a Subtree that contains all tokens.
<!-- Device-Tokens-Description-End -->

<!-- Device-Tokens-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Tokens-Editable-End -->

<!-- Device-Tokens-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Tokens-DFProperties-End -->

<!-- Device-Tokens-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Tokens-Examples-End -->

<!-- Device-Tokens-End -->

<!-- Device-Tokens-{ID}-Begin -->
### Tokens/{ID}

<!-- Device-Tokens-{ID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Tokens-{ID}-Applicability-End -->

<!-- Device-Tokens-{ID}-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Tokens/{ID}
```
<!-- Device-Tokens-{ID}-OmaUri-End -->

<!-- Device-Tokens-{ID}-Description-Begin -->
<!-- Description-Source-DDF -->
Arbitrary ID used to differentiate tokens.
<!-- Device-Tokens-{ID}-Description-End -->

<!-- Device-Tokens-{ID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Tokens-{ID}-Editable-End -->

<!-- Device-Tokens-{ID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Dynamic Node Naming | UniqueName: The ApplicationControl CSP enforces that the "ID" segment of a given token URI is unique. |
<!-- Device-Tokens-{ID}-DFProperties-End -->

<!-- Device-Tokens-{ID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Tokens-{ID}-Examples-End -->

<!-- Device-Tokens-{ID}-End -->

<!-- Device-Tokens-{ID}-Token-Begin -->
#### Tokens/{ID}/Token

<!-- Device-Tokens-{ID}-Token-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Tokens-{ID}-Token-Applicability-End -->

<!-- Device-Tokens-{ID}-Token-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Tokens/{ID}/Token
```
<!-- Device-Tokens-{ID}-Token-OmaUri-End -->

<!-- Device-Tokens-{ID}-Token-Description-Begin -->
<!-- Description-Source-DDF -->
The token binary encoded as base64. Supported value is a binary file, obtained from the OneCoreDeviceUnlockService.
<!-- Device-Tokens-{ID}-Token-Description-End -->

<!-- Device-Tokens-{ID}-Token-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Tokens-{ID}-Token-Editable-End -->

<!-- Device-Tokens-{ID}-Token-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Tokens-{ID}-Token-DFProperties-End -->

<!-- Device-Tokens-{ID}-Token-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Tokens-{ID}-Token-Examples-End -->

<!-- Device-Tokens-{ID}-Token-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Begin -->
#### Tokens/{ID}/TokenInfo

<!-- Device-Tokens-{ID}-TokenInfo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Tokens-{ID}-TokenInfo-Applicability-End -->

<!-- Device-Tokens-{ID}-TokenInfo-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Tokens/{ID}/TokenInfo
```
<!-- Device-Tokens-{ID}-TokenInfo-OmaUri-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Description-Begin -->
<!-- Description-Source-DDF -->
Information Describing the Token indicated by the corresponding ID.
<!-- Device-Tokens-{ID}-TokenInfo-Description-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Tokens-{ID}-TokenInfo-Editable-End -->

<!-- Device-Tokens-{ID}-TokenInfo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Tokens-{ID}-TokenInfo-DFProperties-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Tokens-{ID}-TokenInfo-Examples-End -->

<!-- Device-Tokens-{ID}-TokenInfo-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Status-Begin -->
##### Tokens/{ID}/TokenInfo/Status

<!-- Device-Tokens-{ID}-TokenInfo-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Tokens-{ID}-TokenInfo-Status-Applicability-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Status-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Tokens/{ID}/TokenInfo/Status
```
<!-- Device-Tokens-{ID}-TokenInfo-Status-OmaUri-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Status-Description-Begin -->
<!-- Description-Source-DDF -->
The Current Status of the Token Indicated by the Token ID.
<!-- Device-Tokens-{ID}-TokenInfo-Status-Description-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Tokens-{ID}-TokenInfo-Status-Editable-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Tokens-{ID}-TokenInfo-Status-DFProperties-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Tokens-{ID}-TokenInfo-Status-Examples-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Status-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Type-Begin -->
##### Tokens/{ID}/TokenInfo/Type

<!-- Device-Tokens-{ID}-TokenInfo-Type-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Tokens-{ID}-TokenInfo-Type-Applicability-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Type-OmaUri-Begin -->
```Device
./Vendor/MSFT/ApplicationControl/Tokens/{ID}/TokenInfo/Type
```
<!-- Device-Tokens-{ID}-TokenInfo-Type-OmaUri-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Type-Description-Begin -->
<!-- Description-Source-DDF -->
The Type of Token Indicated by the Token ID.
<!-- Device-Tokens-{ID}-TokenInfo-Type-Description-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Type-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Tokens-{ID}-TokenInfo-Type-Editable-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Type-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Tokens-{ID}-TokenInfo-Type-DFProperties-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Type-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Tokens-{ID}-TokenInfo-Type-Examples-End -->

<!-- Device-Tokens-{ID}-TokenInfo-Type-End -->

<!-- ApplicationControl-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## IsAuthorized, IsDeployed, and IsEffective values

The following table provides the result of this policy based on different values of IsAuthorized, IsDeployed, and IsEffective nodes:

| IsAuthorized | IsDeployed | IsEffective | Resultant                                     |
|--------------|------------|-------------|-----------------------------------------------|
| True         | True       | True        | Policy is currently running and is in effect. |
| True         | True       | False       | Policy requires a reboot to take effect.      |
| True         | False      | True        | Policy requires a reboot to unload from CI.   |
| False        | True       | True        | Not Reachable.                                |
| True         | False      | False       | *Not Reachable.                               |
| False        | True       | False       | *Not Reachable.                               |
| False        | False      | True        | Not Reachable.                                |
| False        | False      | False       | *Not Reachable.                               |

\* denotes a valid intermediary state; however, if an MDM transaction results in this state configuration, the `END_COMMAND_PROCESSING` will result in a fail.

## Microsoft Intune Usage Guidance

For customers using Intune standalone or hybrid management with Configuration Manager to deploy custom policies via the ApplicationControl CSP, refer to [Deploy App Control for Business policies by using Microsoft Intune](/windows/security/application-security/application-control/app-control-for-business/deployment/deploy-appcontrol-policies-using-intune).

## Generic MDM Server Usage Guidance

In order to use the ApplicationControl CSP without using Intune, you must:

1. Know a generated policy's GUID, which can be found in the policy xml as `<PolicyID>` or `<PolicyTypeID>` for pre-1903 systems.
2. Convert the policies to binary format using the `ConvertFrom-CIPolicy` cmdlet in order to be deployed. The binary policy may be signed or unsigned.
3. Create a policy node (a Base64-encoded blob of the binary policy representation) using the `certutil -encode` command-line tool.

Below is a sample certutil invocation:

```cmd
certutil  -encode WinSiPolicy.p7b WinSiPolicy.cer
```

An alternative to using certutil would be to use the following PowerShell invocation:

```powershell
[Convert]::toBase64String($(Get-Content -Encoding Byte -ReadCount 0 -Path <bin file>))
```

### Deploy Policies

To deploy a new base policy using the CSP, perform an ADD on **./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/Policy** using the Base64-encoded policy node as {Data}. Refer to the Format section in the Example 1 below.

To deploy base policy and supplemental policies:

1. Perform an ADD on **./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/Policy** using the Base64-encoded policy node as {Data} with the GUID and policy data for the base policy.
2. Repeat for each base or supplemental policy (with its own GUID and data).

The following example shows the deployment of two base policies and a supplemental policy (which already specifies the base policy it supplements and doesn't need that reflected in the ADD).

#### Example 1: Add first base policy

```xml
<Add>
    <CmdID>1</CmdID>
    <Item>
        <Target>
            <LocURI>./Vendor/MSFT/ApplicationControl/Policies/{Base1GUID}/Policy</LocURI>
        </Target>
        <Meta>
             <Format xmlns="syncml:metinf">b64</Format>
        </Meta>
        <Data> {Base1Data} </Data>
    </Item>
</Add>
```

#### Example 2: Add second base policy

```xml
<Add>
    <CmdID>1</CmdID>
    <Item>
        <Target>
            <LocURI>./Vendor/MSFT/ApplicationControl/Policies/{Base2GUID}/Policy</LocURI>
        </Target>
        <Meta>
            <Format xmlns="syncml:metinf">b64</Format>
        </Meta>
        <Data> {Base2Data} </Data>
    </Item>
</Add>
```

#### Example 3: Add supplemental policy

```xml
<Add>
    <CmdID>1</CmdID>
    <Item>
        <Target>
            <LocURI>./Vendor/MSFT/ApplicationControl/Policies/{Supplemental1GUID}/Policy</LocURI>
        </Target>
        <Meta>
            <Format xmlns="syncml:metinf">b64</Format>
        </Meta>
        <Data> {Supplemental1Data} </Data>
    </Item>
</Add>
```

### Get policies

Perform a GET using a deployed policy's GUID to interrogate/inspect the policy itself or information about it.

The following table displays the result of Get operation on different nodes:

| Nodes                                                                           | Get Results                            |
|---------------------------------------------------------------------------------|----------------------------------------|
| ./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/Policy                  | raw p7b                                |
| ./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/PolicyInfo/Version      | Policy version                         |
| ./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/PolicyInfo/IsEffective  | Is the policy in effect                |
| ./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/PolicyInfo/IsDeployed   | Is the policy on the system            |
| ./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/PolicyInfo/IsAuthorized | Is the policy authorized on the system |
| ./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/PolicyInfo/Status       | Was the deployment successful          |
| ./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/PolicyInfo/FriendlyName | Friendly name per the policy           |

An example of Get command is:

```xml
 <Get>
    <CmdID>1</CmdID>
        <Item>
            <Target>
                <LocURI>./Vendor/MSFT/ApplicationControl/Policies/{PolicyGUID}/Policy</LocURI>
            </Target>
        </Item>
 </Get>
```

### Delete policies

#### Rebootless Deletion

Upon deletion, policies deployed via the ApplicationControl CSP are removed from the system but stay in effect until the next reboot. In order to functionally do a rebootless delete, first replace the existing policy with an Allow All policy (found at C:\Windows\schemas\CodeIntegrity\ExamplePolicies\AllowAll.xml) and then delete the updated policy. This sequence will immediately prevent anything from being blocked and fully deactive the policy on the next reboot.

#### Unsigned Policies

To delete an unsigned policy, perform a DELETE on **./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/Policy**.

#### Signed Policies

> [!NOTE]
> A signed policy by default can only be replaced by another signed policy. Hence, performing a DELETE on **./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/Policy** isn't sufficient to delete a signed policy.

To delete a signed policy:

1. Replace it with a signed update allowing unsigned policy.
2. Deploy another update with unsigned Allow All policy.
3. Perform delete.

An example of Delete command is:

```xml
   <Delete>
     <CmdID>1</CmdID>
        <Item>
            <Target>
                  <LocURI>./Vendor/MSFT/ApplicationControl/Policies/{PolicyGUID}/Policy</LocURI>
            </Target>
        </Item>
   </Delete>
```

## PowerShell and WMI Bridge Usage Guidance

The ApplicationControl CSP can also be managed locally from PowerShell or via Configuration Manager's task sequence scripting by using the [WMI Bridge Provider](../using-powershell-scripting-with-the-wmi-bridge-provider.md).

### Setup for using the WMI Bridge

1. Convert your App Control policy to Base64.
2. Open PowerShell in Local System context (through PSExec or something similar).
3. Use WMI Interface:

    ```powershell
    $namespace = "root\cimv2\mdm\dmmap"
    $policyClassName = "MDM_ApplicationControl_Policies01_01"
    $policyBase64 = "<base64policy>"
    ```

### Deploying a policy via WMI Bridge

Run the following command. PolicyID is a GUID that can be found in the policy xml, and should be used here without braces.

```powershell
New-CimInstance -Namespace $namespace -ClassName $policyClassName -Property @{ParentID="./Vendor/MSFT/ApplicationControl/Policies";InstanceID="<PolicyID>";Policy=$policyBase64}
```

### Querying all policies via WMI Bridge

```powershell
Get-CimInstance -Namespace $namespace -ClassName $policyClassName
```
<!-- ApplicationControl-CspMoreInfo-End -->

<!-- ApplicationControl-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
