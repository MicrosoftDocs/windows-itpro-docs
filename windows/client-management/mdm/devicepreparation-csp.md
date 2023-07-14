---
title: DevicePreparation CSP
description: Learn more about the DevicePreparation CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
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
    - [ClassID](#bootstrapperagentclassid)
    - [ExecutionContext](#bootstrapperagentexecutioncontext)
    - [InstallationStatusUri](#bootstrapperagentinstallationstatusuri)
  - [MdmAgentInstalled](#mdmagentinstalled)
  - [MDMProvider](#mdmprovider)
    - [Progress](#mdmproviderprogress)
  - [PageEnabled](#pageenabled)
  - [PageSettings](#pagesettings)
  - [PageStatus](#pagestatus)
<!-- DevicePreparation-Tree-End -->

<!-- Device-BootstrapperAgent-Begin -->
## BootstrapperAgent

<!-- Device-BootstrapperAgent-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows Insider Preview |
<!-- Device-BootstrapperAgent-Applicability-End -->

<!-- Device-BootstrapperAgent-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/BootstrapperAgent
```
<!-- Device-BootstrapperAgent-OmaUri-End -->

<!-- Device-BootstrapperAgent-Description-Begin -->
<!-- Description-Source-DDF -->
The subnodes configure settings for the Bootstrapper Agent.
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

<!-- Device-BootstrapperAgent-ClassID-Begin -->
### BootstrapperAgent/ClassID

<!-- Device-BootstrapperAgent-ClassID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows Insider Preview |
<!-- Device-BootstrapperAgent-ClassID-Applicability-End -->

<!-- Device-BootstrapperAgent-ClassID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/BootstrapperAgent/ClassID
```
<!-- Device-BootstrapperAgent-ClassID-OmaUri-End -->

<!-- Device-BootstrapperAgent-ClassID-Description-Begin -->
<!-- Description-Source-DDF -->
This node stores the class ID for the Bootstrapper Agent WinRT object.
<!-- Device-BootstrapperAgent-ClassID-Description-End -->

<!-- Device-BootstrapperAgent-ClassID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-BootstrapperAgent-ClassID-Editable-End -->

<!-- Device-BootstrapperAgent-ClassID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-BootstrapperAgent-ClassID-DFProperties-End -->

<!-- Device-BootstrapperAgent-ClassID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-BootstrapperAgent-ClassID-Examples-End -->

<!-- Device-BootstrapperAgent-ClassID-End -->

<!-- Device-BootstrapperAgent-ExecutionContext-Begin -->
### BootstrapperAgent/ExecutionContext

<!-- Device-BootstrapperAgent-ExecutionContext-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows Insider Preview |
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

<!-- Device-BootstrapperAgent-InstallationStatusUri-Begin -->
### BootstrapperAgent/InstallationStatusUri

<!-- Device-BootstrapperAgent-InstallationStatusUri-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows Insider Preview |
<!-- Device-BootstrapperAgent-InstallationStatusUri-Applicability-End -->

<!-- Device-BootstrapperAgent-InstallationStatusUri-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/BootstrapperAgent/InstallationStatusUri
```
<!-- Device-BootstrapperAgent-InstallationStatusUri-OmaUri-End -->

<!-- Device-BootstrapperAgent-InstallationStatusUri-Description-Begin -->
<!-- Description-Source-DDF -->
This node holds a URI that can be queried for the status of the Bootstrapper Agent installation.
<!-- Device-BootstrapperAgent-InstallationStatusUri-Description-End -->

<!-- Device-BootstrapperAgent-InstallationStatusUri-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-BootstrapperAgent-InstallationStatusUri-Editable-End -->

<!-- Device-BootstrapperAgent-InstallationStatusUri-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-BootstrapperAgent-InstallationStatusUri-DFProperties-End -->

<!-- Device-BootstrapperAgent-InstallationStatusUri-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-BootstrapperAgent-InstallationStatusUri-Examples-End -->

<!-- Device-BootstrapperAgent-InstallationStatusUri-End -->

<!-- Device-MdmAgentInstalled-Begin -->
## MdmAgentInstalled

<!-- Device-MdmAgentInstalled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows Insider Preview |
<!-- Device-MdmAgentInstalled-Applicability-End -->

<!-- Device-MdmAgentInstalled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/MdmAgentInstalled
```
<!-- Device-MdmAgentInstalled-OmaUri-End -->

<!-- Device-MdmAgentInstalled-Description-Begin -->
<!-- Description-Source-DDF -->
This node indicates whether the MDM agent was installed or not. When set to true sets the AUTOPILOT_MDM_AGENT_REGISTERED WNF event.
<!-- Device-MdmAgentInstalled-Description-End -->

<!-- Device-MdmAgentInstalled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MdmAgentInstalled-Editable-End -->

<!-- Device-MdmAgentInstalled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | false |
<!-- Device-MdmAgentInstalled-DFProperties-End -->

<!-- Device-MdmAgentInstalled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MdmAgentInstalled-Examples-End -->

<!-- Device-MdmAgentInstalled-End -->

<!-- Device-MDMProvider-Begin -->
## MDMProvider

<!-- Device-MDMProvider-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows Insider Preview |
<!-- Device-MDMProvider-Applicability-End -->

<!-- Device-MDMProvider-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/MDMProvider
```
<!-- Device-MDMProvider-OmaUri-End -->

<!-- Device-MDMProvider-Description-Begin -->
<!-- Description-Source-DDF -->
The subnode configures the settings for the MDMProvider.
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

<!-- Device-MDMProvider-Progress-Begin -->
### MDMProvider/Progress

<!-- Device-MDMProvider-Progress-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows Insider Preview |
<!-- Device-MDMProvider-Progress-Applicability-End -->

<!-- Device-MDMProvider-Progress-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/MDMProvider/Progress
```
<!-- Device-MDMProvider-Progress-OmaUri-End -->

<!-- Device-MDMProvider-Progress-Description-Begin -->
<!-- Description-Source-DDF -->
Node for reporting progress status as opaque data.
<!-- Device-MDMProvider-Progress-Description-End -->

<!-- Device-MDMProvider-Progress-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MDMProvider-Progress-Editable-End -->

<!-- Device-MDMProvider-Progress-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-MDMProvider-Progress-DFProperties-End -->

<!-- Device-MDMProvider-Progress-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MDMProvider-Progress-Examples-End -->

<!-- Device-MDMProvider-Progress-End -->

<!-- Device-PageEnabled-Begin -->
## PageEnabled

<!-- Device-PageEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows Insider Preview |
<!-- Device-PageEnabled-Applicability-End -->

<!-- Device-PageEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/PageEnabled
```
<!-- Device-PageEnabled-OmaUri-End -->

<!-- Device-PageEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
This node determines whether to enable or show the Device Preparation page.
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

<!-- Device-PageEnabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | The page isn't enabled. |
| true | The page is enabled. |
<!-- Device-PageEnabled-AllowedValues-End -->

<!-- Device-PageEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PageEnabled-Examples-End -->

<!-- Device-PageEnabled-End -->

<!-- Device-PageSettings-Begin -->
## PageSettings

<!-- Device-PageSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows Insider Preview |
<!-- Device-PageSettings-Applicability-End -->

<!-- Device-PageSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/PageSettings
```
<!-- Device-PageSettings-OmaUri-End -->

<!-- Device-PageSettings-Description-Begin -->
<!-- Description-Source-DDF -->
This node configures specific settings for the Device Preparation page.
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
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows Insider Preview |
<!-- Device-PageStatus-Applicability-End -->

<!-- Device-PageStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DevicePreparation/PageStatus
```
<!-- Device-PageStatus-OmaUri-End -->

<!-- Device-PageStatus-Description-Begin -->
<!-- Description-Source-DDF -->
This node provides status of the Device Preparation page. Values are an enum: 0 = Disabled; 1 = Enabled; 2 = InProgress; 3 = ExitedOnSuccess; 4 = ExitedOnFailure.
<!-- Device-PageStatus-Description-End -->

<!-- Device-PageStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PageStatus-Editable-End -->

<!-- Device-PageStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-PageStatus-DFProperties-End -->

<!-- Device-PageStatus-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 | Enabled. |
| 2 | InProgress. |
| 3 | Succeeded. |
| 4 | Failed. |
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
