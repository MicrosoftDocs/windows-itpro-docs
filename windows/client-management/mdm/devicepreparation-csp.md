---
title: DevicePreparation CSP
description: Learn more about the DevicePreparation CSP.
ms.date: 01/31/2024
---

<!-- Auto-Generated CSP Document -->

<!-- DevicePreparation-Begin -->
# DevicePreparation CSP

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- DevicePreparation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DevicePreparation-Editable-End -->

<!-- DevicePreparation-Tree-Begin -->
The following list shows the DevicePreparation configuration service provider nodes:

- ./Device/Vendor/MSFT/DevicePreparation
  - [BootstrapperAgent](#bootstrapperagent)
    - [ExecutionContext](#bootstrapperagentexecutioncontext)
  - [MDMProvider](#mdmprovider)
    - [MdmAgentInstalled](#mdmprovidermdmagentinstalled)
    - [Progress](#mdmproviderprogress)
    - [RebootRequired](#mdmproviderrebootrequired)
  - [PageEnabled](#pageenabled)
  - [PageErrorCode](#pageerrorcode)
  - [PageErrorDetails](#pageerrordetails)
  - [PageErrorPhase](#pageerrorphase)
  - [PageSettings](#pagesettings)
  - [PageStatus](#pagestatus)
<!-- DevicePreparation-Tree-End -->

<!-- Device-BootstrapperAgent-Begin -->
## BootstrapperAgent

<!-- Device-BootstrapperAgent-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-BootstrapperAgent-Applicability-End -->

<!-- Device-BootstrapperAgent-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/BootstrapperAgent
```
<!-- Device-BootstrapperAgent-OmaUri-End -->

<!-- Device-BootstrapperAgent-Description-Begin -->
<!-- Description-Source-DDF -->
Parent node for configuring agent that orchestrates provisioning and communicate status to Device Preparation page.
<!-- Device-BootstrapperAgent-Description-End -->

<!-- Device-BootstrapperAgent-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-BootstrapperAgent-Editable-End -->

<!-- Device-BootstrapperAgent-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-BootstrapperAgent-DFProperties-End -->

<!-- Device-BootstrapperAgent-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-BootstrapperAgent-Examples-End -->

<!-- Device-BootstrapperAgent-End -->

<!-- Device-BootstrapperAgent-ExecutionContext-Begin -->
### BootstrapperAgent/ExecutionContext

<!-- Device-BootstrapperAgent-ExecutionContext-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-BootstrapperAgent-ExecutionContext-Applicability-End -->

<!-- Device-BootstrapperAgent-ExecutionContext-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/BootstrapperAgent/ExecutionContext
```
<!-- Device-BootstrapperAgent-ExecutionContext-OmaUri-End -->

<!-- Device-BootstrapperAgent-ExecutionContext-Description-Begin -->
<!-- Description-Source-DDF -->
This node holds opaque data that will be passed to the Bootstrapper Agent as a parameter when it's invoked to execute.
<!-- Device-BootstrapperAgent-ExecutionContext-Description-End -->

<!-- Device-BootstrapperAgent-ExecutionContext-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-BootstrapperAgent-ExecutionContext-Editable-End -->

<!-- Device-BootstrapperAgent-ExecutionContext-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-BootstrapperAgent-ExecutionContext-DFProperties-End -->

<!-- Device-BootstrapperAgent-ExecutionContext-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-BootstrapperAgent-ExecutionContext-Examples-End -->

<!-- Device-BootstrapperAgent-ExecutionContext-End -->

<!-- Device-MDMProvider-Begin -->
## MDMProvider

<!-- Device-MDMProvider-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-MDMProvider-Applicability-End -->

<!-- Device-MDMProvider-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/MDMProvider
```
<!-- Device-MDMProvider-OmaUri-End -->

<!-- Device-MDMProvider-Description-Begin -->
<!-- Description-Source-DDF -->
Parent node for configuring the MDM provider that interacts with the BootstrapperAgent.
<!-- Device-MDMProvider-Description-End -->

<!-- Device-MDMProvider-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MDMProvider-Editable-End -->

<!-- Device-MDMProvider-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MDMProvider-DFProperties-End -->

<!-- Device-MDMProvider-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MDMProvider-Examples-End -->

<!-- Device-MDMProvider-End -->

<!-- Device-MDMProvider-MdmAgentInstalled-Begin -->
### MDMProvider/MdmAgentInstalled

<!-- Device-MDMProvider-MdmAgentInstalled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-MDMProvider-MdmAgentInstalled-Applicability-End -->

<!-- Device-MDMProvider-MdmAgentInstalled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/MDMProvider/MdmAgentInstalled
```
<!-- Device-MDMProvider-MdmAgentInstalled-OmaUri-End -->

<!-- Device-MDMProvider-MdmAgentInstalled-Description-Begin -->
<!-- Description-Source-DDF -->
This node indicates whether the MDM agent was installed or not. When set to true sets the AUTOPILOT_MDM_AGENT_REGISTERED WNF event.
<!-- Device-MDMProvider-MdmAgentInstalled-Description-End -->

<!-- Device-MDMProvider-MdmAgentInstalled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MDMProvider-MdmAgentInstalled-Editable-End -->

<!-- Device-MDMProvider-MdmAgentInstalled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | False |
<!-- Device-MDMProvider-MdmAgentInstalled-DFProperties-End -->

<!-- Device-MDMProvider-MdmAgentInstalled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MDMProvider-MdmAgentInstalled-Examples-End -->

<!-- Device-MDMProvider-MdmAgentInstalled-End -->

<!-- Device-MDMProvider-Progress-Begin -->
### MDMProvider/Progress

<!-- Device-MDMProvider-Progress-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-MDMProvider-Progress-Applicability-End -->

<!-- Device-MDMProvider-Progress-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/MDMProvider/Progress
```
<!-- Device-MDMProvider-Progress-OmaUri-End -->

<!-- Device-MDMProvider-Progress-Description-Begin -->
<!-- Description-Source-DDF -->
Node for reporting progress status as opaque data. Contract for data is between the server and EMM agent that reads the data.
<!-- Device-MDMProvider-Progress-Description-End -->

<!-- Device-MDMProvider-Progress-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MDMProvider-Progress-Editable-End -->

<!-- Device-MDMProvider-Progress-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-MDMProvider-Progress-DFProperties-End -->

<!-- Device-MDMProvider-Progress-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MDMProvider-Progress-Examples-End -->

<!-- Device-MDMProvider-Progress-End -->

<!-- Device-MDMProvider-RebootRequired-Begin -->
### MDMProvider/RebootRequired

<!-- Device-MDMProvider-RebootRequired-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-MDMProvider-RebootRequired-Applicability-End -->

<!-- Device-MDMProvider-RebootRequired-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/MDMProvider/RebootRequired
```
<!-- Device-MDMProvider-RebootRequired-OmaUri-End -->

<!-- Device-MDMProvider-RebootRequired-Description-Begin -->
<!-- Description-Source-DDF -->
This node indicates whether an MDM policy was provisioned that requires a reboot.
<!-- Device-MDMProvider-RebootRequired-Description-End -->

<!-- Device-MDMProvider-RebootRequired-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MDMProvider-RebootRequired-Editable-End -->

<!-- Device-MDMProvider-RebootRequired-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
| Default Value  | False |
<!-- Device-MDMProvider-RebootRequired-DFProperties-End -->

<!-- Device-MDMProvider-RebootRequired-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MDMProvider-RebootRequired-Examples-End -->

<!-- Device-MDMProvider-RebootRequired-End -->

<!-- Device-PageEnabled-Begin -->
## PageEnabled

<!-- Device-PageEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-PageEnabled-Applicability-End -->

<!-- Device-PageEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/PageEnabled
```
<!-- Device-PageEnabled-OmaUri-End -->

<!-- Device-PageEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
This node determines whether to show the Device Preparation page during OOBE.
<!-- Device-PageEnabled-Description-End -->

<!-- Device-PageEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PageEnabled-Editable-End -->

<!-- Device-PageEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
<!-- Device-PageEnabled-DFProperties-End -->

<!-- Device-PageEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PageEnabled-Examples-End -->

<!-- Device-PageEnabled-End -->

<!-- Device-PageErrorCode-Begin -->
## PageErrorCode

<!-- Device-PageErrorCode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-PageErrorCode-Applicability-End -->

<!-- Device-PageErrorCode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/PageErrorCode
```
<!-- Device-PageErrorCode-OmaUri-End -->

<!-- Device-PageErrorCode-Description-Begin -->
<!-- Description-Source-DDF -->
This node provides specific overall HRESULT causing a fatal error on the Device Preparation page. This node is valid only if the PageErrorPhase node's value isn't Unknown.
<!-- Device-PageErrorCode-Description-End -->

<!-- Device-PageErrorCode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PageErrorCode-Editable-End -->

<!-- Device-PageErrorCode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-PageErrorCode-DFProperties-End -->

<!-- Device-PageErrorCode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PageErrorCode-Examples-End -->

<!-- Device-PageErrorCode-End -->

<!-- Device-PageErrorDetails-Begin -->
## PageErrorDetails

<!-- Device-PageErrorDetails-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-PageErrorDetails-Applicability-End -->

<!-- Device-PageErrorDetails-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/PageErrorDetails
```
<!-- Device-PageErrorDetails-OmaUri-End -->

<!-- Device-PageErrorDetails-Description-Begin -->
<!-- Description-Source-DDF -->
This node provides optional details for any fatal error on the Device Preparation page. This node is valid only if the PageErrorPhase node's value isn't Unknown, but not all errors will have details.
<!-- Device-PageErrorDetails-Description-End -->

<!-- Device-PageErrorDetails-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PageErrorDetails-Editable-End -->

<!-- Device-PageErrorDetails-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-PageErrorDetails-DFProperties-End -->

<!-- Device-PageErrorDetails-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PageErrorDetails-Examples-End -->

<!-- Device-PageErrorDetails-End -->

<!-- Device-PageErrorPhase-Begin -->
## PageErrorPhase

<!-- Device-PageErrorPhase-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-PageErrorPhase-Applicability-End -->

<!-- Device-PageErrorPhase-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/PageErrorPhase
```
<!-- Device-PageErrorPhase-OmaUri-End -->

<!-- Device-PageErrorPhase-Description-Begin -->
<!-- Description-Source-DDF -->
This node provides the specific phase that failed during the Device Preparation page. Values are an enum: 0 = Unknown; 1 = AgentDownload; 2 = AgentProgress.
<!-- Device-PageErrorPhase-Description-End -->

<!-- Device-PageErrorPhase-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PageErrorPhase-Editable-End -->

<!-- Device-PageErrorPhase-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-PageErrorPhase-DFProperties-End -->

<!-- Device-PageErrorPhase-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Unknown. |
| 1 | AgentDownload. |
| 2 | AgentProgress. |
<!-- Device-PageErrorPhase-AllowedValues-End -->

<!-- Device-PageErrorPhase-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PageErrorPhase-Examples-End -->

<!-- Device-PageErrorPhase-End -->

<!-- Device-PageSettings-Begin -->
## PageSettings

<!-- Device-PageSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-PageSettings-Applicability-End -->

<!-- Device-PageSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/PageSettings
```
<!-- Device-PageSettings-OmaUri-End -->

<!-- Device-PageSettings-Description-Begin -->
<!-- Description-Source-DDF -->
This node configures the Device Preparation page settings.
<!-- Device-PageSettings-Description-End -->

<!-- Device-PageSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PageSettings-Editable-End -->

<!-- Device-PageSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-PageSettings-DFProperties-End -->

<!-- Device-PageSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PageSettings-Examples-End -->

<!-- Device-PageSettings-End -->

<!-- Device-PageStatus-Begin -->
## PageStatus

<!-- Device-PageStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-PageStatus-Applicability-End -->

<!-- Device-PageStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/PageStatus
```
<!-- Device-PageStatus-OmaUri-End -->

<!-- Device-PageStatus-Description-Begin -->
<!-- Description-Source-DDF -->
This node provides status of the Device Preparation page.
<!-- Device-PageStatus-Description-End -->

<!-- Device-PageStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PageStatus-Editable-End -->

<!-- Device-PageStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
<!-- Device-PageStatus-DFProperties-End -->

<!-- Device-PageStatus-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 | Enabled. |
| 2 | InProgress. |
| 3 | ExitOnSuccess. |
| 4 | ExitOnFailure. |
<!-- Device-PageStatus-AllowedValues-End -->

<!-- Device-PageStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PageStatus-Examples-End -->

<!-- Device-PageStatus-End -->

<!-- DevicePreparation-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DevicePreparation-CspMoreInfo-End -->

<!-- DevicePreparation-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
