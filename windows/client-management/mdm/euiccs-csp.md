---
title: eUICCs CSP
description: Learn more about the eUICCs CSP.
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

<!-- eUICCs-Begin -->
# eUICCs CSP

<!-- eUICCs-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The eUICCs configuration service provider is used to support eUICC enterprise use cases and enables the IT admin to manage (assign, reassign, remove) subscriptions to employees.
<!-- eUICCs-Editable-End -->

<!-- eUICCs-Tree-Begin -->
The following list shows the eUICCs configuration service provider nodes:

- ./Device/Vendor/MSFT/eUICCs
  - [{eUICC}](#euicc)
    - [Actions](#euiccactions)
      - [ResetToFactoryState](#euiccactionsresettofactorystate)
      - [Status](#euiccactionsstatus)
    - [DownloadServers](#euiccdownloadservers)
      - [{ServerName}](#euiccdownloadserversservername)
        - [AutoEnable](#euiccdownloadserversservernameautoenable)
        - [DiscoveryState](#euiccdownloadserversservernamediscoverystate)
        - [IsDiscoveryServer](#euiccdownloadserversservernameisdiscoveryserver)
    - [Identifier](#euiccidentifier)
    - [IsActive](#euiccisactive)
    - [Policies](#euiccpolicies)
      - [LocalUIEnabled](#euiccpolicieslocaluienabled)
    - [PPR1Allowed](#euiccppr1allowed)
    - [PPR1AlreadySet](#euiccppr1alreadyset)
    - [Profiles](#euiccprofiles)
      - [{ICCID}](#euiccprofilesiccid)
        - [ErrorDetail](#euiccprofilesicciderrordetail)
        - [IsEnabled](#euiccprofilesiccidisenabled)
        - [MatchingID](#euiccprofilesiccidmatchingid)
        - [PPR1Set](#euiccprofilesiccidppr1set)
        - [PPR2Set](#euiccprofilesiccidppr2set)
        - [ServerName](#euiccprofilesiccidservername)
        - [State](#euiccprofilesiccidstate)
<!-- eUICCs-Tree-End -->

<!-- Device-{eUICC}-Begin -->
## {eUICC}

<!-- Device-{eUICC}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-Applicability-End -->

<!-- Device-{eUICC}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}
```
<!-- Device-{eUICC}-OmaUri-End -->

<!-- Device-{eUICC}-Description-Begin -->
<!-- Description-Source-DDF -->
Represents information associated with an eUICC. There is one subtree for each known eUICC, created by the Local Profile Assistant (LPA) when the eUICC is first seen. The node name is the eUICC ID (EID). The node name "Default" represents the currently active eUICC.
<!-- Device-{eUICC}-Description-End -->

<!-- Device-{eUICC}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-Editable-End -->

<!-- Device-{eUICC}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Dynamic Node Naming | UniqueName: The eUICC ID (EID) associated with the device. |
<!-- Device-{eUICC}-DFProperties-End -->

<!-- Device-{eUICC}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Examples-End -->

<!-- Device-{eUICC}-End -->

<!-- Device-{eUICC}-Actions-Begin -->
### {eUICC}/Actions

<!-- Device-{eUICC}-Actions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-Actions-Applicability-End -->

<!-- Device-{eUICC}-Actions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/Actions
```
<!-- Device-{eUICC}-Actions-OmaUri-End -->

<!-- Device-{eUICC}-Actions-Description-Begin -->
<!-- Description-Source-DDF -->
Actions that can be performed on the eUICC as a whole (when it's active).
<!-- Device-{eUICC}-Actions-Description-End -->

<!-- Device-{eUICC}-Actions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-Actions-Editable-End -->

<!-- Device-{eUICC}-Actions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{eUICC}-Actions-DFProperties-End -->

<!-- Device-{eUICC}-Actions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Actions-Examples-End -->

<!-- Device-{eUICC}-Actions-End -->

<!-- Device-{eUICC}-Actions-ResetToFactoryState-Begin -->
#### {eUICC}/Actions/ResetToFactoryState

<!-- Device-{eUICC}-Actions-ResetToFactoryState-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-Actions-ResetToFactoryState-Applicability-End -->

<!-- Device-{eUICC}-Actions-ResetToFactoryState-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/Actions/ResetToFactoryState
```
<!-- Device-{eUICC}-Actions-ResetToFactoryState-OmaUri-End -->

<!-- Device-{eUICC}-Actions-ResetToFactoryState-Description-Begin -->
<!-- Description-Source-DDF -->
An EXECUTE on this node triggers the LPA to perform an eUICC Memory Reset.
<!-- Device-{eUICC}-Actions-ResetToFactoryState-Description-End -->

<!-- Device-{eUICC}-Actions-ResetToFactoryState-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-Actions-ResetToFactoryState-Editable-End -->

<!-- Device-{eUICC}-Actions-ResetToFactoryState-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec |
<!-- Device-{eUICC}-Actions-ResetToFactoryState-DFProperties-End -->

<!-- Device-{eUICC}-Actions-ResetToFactoryState-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Actions-ResetToFactoryState-Examples-End -->

<!-- Device-{eUICC}-Actions-ResetToFactoryState-End -->

<!-- Device-{eUICC}-Actions-Status-Begin -->
#### {eUICC}/Actions/Status

<!-- Device-{eUICC}-Actions-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-Actions-Status-Applicability-End -->

<!-- Device-{eUICC}-Actions-Status-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/Actions/Status
```
<!-- Device-{eUICC}-Actions-Status-OmaUri-End -->

<!-- Device-{eUICC}-Actions-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Status of most recent operation, as an HRESULT. S_OK indicates success, S_FALSE indicates operation is in progress, other values represent specific errors.
<!-- Device-{eUICC}-Actions-Status-Description-End -->

<!-- Device-{eUICC}-Actions-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-Actions-Status-Editable-End -->

<!-- Device-{eUICC}-Actions-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 0 |
<!-- Device-{eUICC}-Actions-Status-DFProperties-End -->

<!-- Device-{eUICC}-Actions-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Actions-Status-Examples-End -->

<!-- Device-{eUICC}-Actions-Status-End -->

<!-- Device-{eUICC}-DownloadServers-Begin -->
### {eUICC}/DownloadServers

<!-- Device-{eUICC}-DownloadServers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-{eUICC}-DownloadServers-Applicability-End -->

<!-- Device-{eUICC}-DownloadServers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/DownloadServers
```
<!-- Device-{eUICC}-DownloadServers-OmaUri-End -->

<!-- Device-{eUICC}-DownloadServers-Description-Begin -->
<!-- Description-Source-DDF -->
Represents default SM-DP+ discovery requests.
<!-- Device-{eUICC}-DownloadServers-Description-End -->

<!-- Device-{eUICC}-DownloadServers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-DownloadServers-Editable-End -->

<!-- Device-{eUICC}-DownloadServers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{eUICC}-DownloadServers-DFProperties-End -->

<!-- Device-{eUICC}-DownloadServers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-DownloadServers-Examples-End -->

<!-- Device-{eUICC}-DownloadServers-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-Begin -->
#### {eUICC}/DownloadServers/{ServerName}

<!-- Device-{eUICC}-DownloadServers-{ServerName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-{eUICC}-DownloadServers-{ServerName}-Applicability-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/DownloadServers/{ServerName}
```
<!-- Device-{eUICC}-DownloadServers-{ServerName}-OmaUri-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-Description-Begin -->
<!-- Description-Source-DDF -->
Node representing the discovery operation for a server name. The node name is the fully qualified domain name of the SM-DP+ server that will be used for profile discovery. Creation of this subtree triggers a discovery request.
<!-- Device-{eUICC}-DownloadServers-{ServerName}-Description-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-DownloadServers-{ServerName}-Editable-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | UniqueName: ServerName used for the discovery operation. |
<!-- Device-{eUICC}-DownloadServers-{ServerName}-DFProperties-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-DownloadServers-{ServerName}-Examples-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-Begin -->
##### {eUICC}/DownloadServers/{ServerName}/AutoEnable

<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-Applicability-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/DownloadServers/{ServerName}/AutoEnable
```
<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-OmaUri-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether the discovered profile must be enabled automatically after install. This must be set by the MDM when the ServerName subtree is created.
<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-Description-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-Editable-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Get, Replace |
<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-DFProperties-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disable. |
| true | Enable. |
<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-AllowedValues-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-Examples-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-AutoEnable-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-DiscoveryState-Begin -->
##### {eUICC}/DownloadServers/{ServerName}/DiscoveryState

<!-- Device-{eUICC}-DownloadServers-{ServerName}-DiscoveryState-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-{eUICC}-DownloadServers-{ServerName}-DiscoveryState-Applicability-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-DiscoveryState-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/DownloadServers/{ServerName}/DiscoveryState
```
<!-- Device-{eUICC}-DownloadServers-{ServerName}-DiscoveryState-OmaUri-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-DiscoveryState-Description-Begin -->
<!-- Description-Source-DDF -->
Current state of the discovery operation for the parent ServerName (Requested = 1, Executing = 2, Completed = 3, Failed = 4). Queried by the CSP and only updated by the LPA.
<!-- Device-{eUICC}-DownloadServers-{ServerName}-DiscoveryState-Description-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-DiscoveryState-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-DownloadServers-{ServerName}-DiscoveryState-Editable-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-DiscoveryState-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 1 |
<!-- Device-{eUICC}-DownloadServers-{ServerName}-DiscoveryState-DFProperties-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-DiscoveryState-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-DownloadServers-{ServerName}-DiscoveryState-Examples-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-DiscoveryState-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-Begin -->
##### {eUICC}/DownloadServers/{ServerName}/IsDiscoveryServer

<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-Applicability-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/DownloadServers/{ServerName}/IsDiscoveryServer
```
<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-OmaUri-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether the server is a discovery server. Optional, default value is false.
<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-Description-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-Editable-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Get, Replace |
| Default Value  | false |
<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-DFProperties-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Is Not Discovery Server. |
| true | Is Discovery Server. |
<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-AllowedValues-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-Examples-End -->

<!-- Device-{eUICC}-DownloadServers-{ServerName}-IsDiscoveryServer-End -->

<!-- Device-{eUICC}-Identifier-Begin -->
### {eUICC}/Identifier

<!-- Device-{eUICC}-Identifier-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-Identifier-Applicability-End -->

<!-- Device-{eUICC}-Identifier-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/Identifier
```
<!-- Device-{eUICC}-Identifier-OmaUri-End -->

<!-- Device-{eUICC}-Identifier-Description-Begin -->
<!-- Description-Source-DDF -->
The EID.
<!-- Device-{eUICC}-Identifier-Description-End -->

<!-- Device-{eUICC}-Identifier-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Identifies an eUICC in an implementation-specific manner, for example, this identification could be an SHA-256 hash of the EID.
<!-- Device-{eUICC}-Identifier-Editable-End -->

<!-- Device-{eUICC}-Identifier-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-{eUICC}-Identifier-DFProperties-End -->

<!-- Device-{eUICC}-Identifier-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Identifier-Examples-End -->

<!-- Device-{eUICC}-Identifier-End -->

<!-- Device-{eUICC}-IsActive-Begin -->
### {eUICC}/IsActive

<!-- Device-{eUICC}-IsActive-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-IsActive-Applicability-End -->

<!-- Device-{eUICC}-IsActive-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/IsActive
```
<!-- Device-{eUICC}-IsActive-OmaUri-End -->

<!-- Device-{eUICC}-IsActive-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether this eUICC is physically present and active. Updated only by the LPA.
<!-- Device-{eUICC}-IsActive-Description-End -->

<!-- Device-{eUICC}-IsActive-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-IsActive-Editable-End -->

<!-- Device-{eUICC}-IsActive-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-{eUICC}-IsActive-DFProperties-End -->

<!-- Device-{eUICC}-IsActive-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-IsActive-Examples-End -->

<!-- Device-{eUICC}-IsActive-End -->

<!-- Device-{eUICC}-Policies-Begin -->
### {eUICC}/Policies

<!-- Device-{eUICC}-Policies-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-Policies-Applicability-End -->

<!-- Device-{eUICC}-Policies-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/Policies
```
<!-- Device-{eUICC}-Policies-OmaUri-End -->

<!-- Device-{eUICC}-Policies-Description-Begin -->
<!-- Description-Source-DDF -->
Device policies associated with the eUICC as a whole (not per-profile).
<!-- Device-{eUICC}-Policies-Description-End -->

<!-- Device-{eUICC}-Policies-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-Policies-Editable-End -->

<!-- Device-{eUICC}-Policies-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{eUICC}-Policies-DFProperties-End -->

<!-- Device-{eUICC}-Policies-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Policies-Examples-End -->

<!-- Device-{eUICC}-Policies-End -->

<!-- Device-{eUICC}-Policies-LocalUIEnabled-Begin -->
#### {eUICC}/Policies/LocalUIEnabled

<!-- Device-{eUICC}-Policies-LocalUIEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-Policies-LocalUIEnabled-Applicability-End -->

<!-- Device-{eUICC}-Policies-LocalUIEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/Policies/LocalUIEnabled
```
<!-- Device-{eUICC}-Policies-LocalUIEnabled-OmaUri-End -->

<!-- Device-{eUICC}-Policies-LocalUIEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Determines whether the local user interface of the LUI is available (true if available, false otherwise). Initially populated by the LPA when the eUICC tree is created, can be queried and changed by the MDM server.
<!-- Device-{eUICC}-Policies-LocalUIEnabled-Description-End -->

<!-- Device-{eUICC}-Policies-LocalUIEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-Policies-LocalUIEnabled-Editable-End -->

<!-- Device-{eUICC}-Policies-LocalUIEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
<!-- Device-{eUICC}-Policies-LocalUIEnabled-DFProperties-End -->

<!-- Device-{eUICC}-Policies-LocalUIEnabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disabled. |
| true (Default) | Enabled. |
<!-- Device-{eUICC}-Policies-LocalUIEnabled-AllowedValues-End -->

<!-- Device-{eUICC}-Policies-LocalUIEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Policies-LocalUIEnabled-Examples-End -->

<!-- Device-{eUICC}-Policies-LocalUIEnabled-End -->

<!-- Device-{eUICC}-PPR1Allowed-Begin -->
### {eUICC}/PPR1Allowed

<!-- Device-{eUICC}-PPR1Allowed-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-PPR1Allowed-Applicability-End -->

<!-- Device-{eUICC}-PPR1Allowed-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/PPR1Allowed
```
<!-- Device-{eUICC}-PPR1Allowed-OmaUri-End -->

<!-- Device-{eUICC}-PPR1Allowed-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether the download of a profile with PPR1 is allowed. If the eUICC has already a profile (regardless of its origin and policy rules associated with it), then the download of a profile with PPR1 isn't allowed.
<!-- Device-{eUICC}-PPR1Allowed-Description-End -->

<!-- Device-{eUICC}-PPR1Allowed-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-PPR1Allowed-Editable-End -->

<!-- Device-{eUICC}-PPR1Allowed-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-{eUICC}-PPR1Allowed-DFProperties-End -->

<!-- Device-{eUICC}-PPR1Allowed-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-PPR1Allowed-Examples-End -->

<!-- Device-{eUICC}-PPR1Allowed-End -->

<!-- Device-{eUICC}-PPR1AlreadySet-Begin -->
### {eUICC}/PPR1AlreadySet

<!-- Device-{eUICC}-PPR1AlreadySet-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-PPR1AlreadySet-Applicability-End -->

<!-- Device-{eUICC}-PPR1AlreadySet-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/PPR1AlreadySet
```
<!-- Device-{eUICC}-PPR1AlreadySet-OmaUri-End -->

<!-- Device-{eUICC}-PPR1AlreadySet-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether the eUICC has already a profile with PPR1.
<!-- Device-{eUICC}-PPR1AlreadySet-Description-End -->

<!-- Device-{eUICC}-PPR1AlreadySet-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-PPR1AlreadySet-Editable-End -->

<!-- Device-{eUICC}-PPR1AlreadySet-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-{eUICC}-PPR1AlreadySet-DFProperties-End -->

<!-- Device-{eUICC}-PPR1AlreadySet-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-PPR1AlreadySet-Examples-End -->

<!-- Device-{eUICC}-PPR1AlreadySet-End -->

<!-- Device-{eUICC}-Profiles-Begin -->
### {eUICC}/Profiles

<!-- Device-{eUICC}-Profiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-Profiles-Applicability-End -->

<!-- Device-{eUICC}-Profiles-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/Profiles
```
<!-- Device-{eUICC}-Profiles-OmaUri-End -->

<!-- Device-{eUICC}-Profiles-Description-Begin -->
<!-- Description-Source-DDF -->
Represents all enterprise-owned profiles.
<!-- Device-{eUICC}-Profiles-Description-End -->

<!-- Device-{eUICC}-Profiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-Editable-End -->

<!-- Device-{eUICC}-Profiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{eUICC}-Profiles-DFProperties-End -->

<!-- Device-{eUICC}-Profiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-Examples-End -->

<!-- Device-{eUICC}-Profiles-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-Begin -->
#### {eUICC}/Profiles/{ICCID}

<!-- Device-{eUICC}-Profiles-{ICCID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-Profiles-{ICCID}-Applicability-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/Profiles/{ICCID}
```
<!-- Device-{eUICC}-Profiles-{ICCID}-OmaUri-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-Description-Begin -->
<!-- Description-Source-DDF -->
Node representing an enterprise-owned eUICC profile. The node name is the ICCID of the profile (which is a unique identifier). Creation of this subtree triggers an AddProfile request by the LPA (which installs the profile on the eUICC). Removal of this subtree triggers the LPA to delete the profile (if resident on the eUICC).
<!-- Device-{eUICC}-Profiles-{ICCID}-Description-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-Editable-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | UniqueName: ICCID of the profile. |
<!-- Device-{eUICC}-Profiles-{ICCID}-DFProperties-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-Examples-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-ErrorDetail-Begin -->
##### {eUICC}/Profiles/{ICCID}/ErrorDetail

<!-- Device-{eUICC}-Profiles-{ICCID}-ErrorDetail-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-Profiles-{ICCID}-ErrorDetail-Applicability-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-ErrorDetail-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/Profiles/{ICCID}/ErrorDetail
```
<!-- Device-{eUICC}-Profiles-{ICCID}-ErrorDetail-OmaUri-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-ErrorDetail-Description-Begin -->
<!-- Description-Source-DDF -->
Detailed error if the profile download and install procedure failed (None = 0, CardGeneralFailure = 1, ConfirmationCodeMissing = 3, ForbiddenByPolicy = 5, InvalidMatchingId = 6, NoEligibleProfileForThisDevice = 7, NotEnoughSpaceOnCard = 8, ProfileEidMismatch = 10, ProfileNotAvailableForNewBinding = 11, ProfileNotReleasedByOperator = 12, RemoteServerGeneralFailure = 13, RemoteServerUnreachable = 14).
<!-- Device-{eUICC}-Profiles-{ICCID}-ErrorDetail-Description-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-ErrorDetail-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-ErrorDetail-Editable-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-ErrorDetail-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 0 |
<!-- Device-{eUICC}-Profiles-{ICCID}-ErrorDetail-DFProperties-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-ErrorDetail-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-ErrorDetail-Examples-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-ErrorDetail-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-Begin -->
##### {eUICC}/Profiles/{ICCID}/IsEnabled

<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-Applicability-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/Profiles/{ICCID}/IsEnabled
```
<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-OmaUri-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether this profile is enabled. Can be set by the MDM when the ICCID subtree is created. Can also be queried and updated by the CSP.
<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-Description-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-Editable-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Get, Replace |
<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-DFProperties-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disabled. |
| true | Enabled. |
<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-AllowedValues-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-Examples-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-IsEnabled-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-MatchingID-Begin -->
##### {eUICC}/Profiles/{ICCID}/MatchingID

<!-- Device-{eUICC}-Profiles-{ICCID}-MatchingID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-Profiles-{ICCID}-MatchingID-Applicability-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-MatchingID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/Profiles/{ICCID}/MatchingID
```
<!-- Device-{eUICC}-Profiles-{ICCID}-MatchingID-OmaUri-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-MatchingID-Description-Begin -->
<!-- Description-Source-DDF -->
Matching ID (activation code token) for profile download. Must be set by the MDM when the ICCID subtree is created.
<!-- Device-{eUICC}-Profiles-{ICCID}-MatchingID-Description-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-MatchingID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-MatchingID-Editable-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-MatchingID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
| Allowed Values | Regular Expression: `^([0-9a-fA-F]{5}-){3}[0-9a-fA-F]{5}$` |
<!-- Device-{eUICC}-Profiles-{ICCID}-MatchingID-DFProperties-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-MatchingID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-MatchingID-Examples-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-MatchingID-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR1Set-Begin -->
##### {eUICC}/Profiles/{ICCID}/PPR1Set

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR1Set-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-Profiles-{ICCID}-PPR1Set-Applicability-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR1Set-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/Profiles/{ICCID}/PPR1Set
```
<!-- Device-{eUICC}-Profiles-{ICCID}-PPR1Set-OmaUri-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR1Set-Description-Begin -->
<!-- Description-Source-DDF -->
This profile policy rule indicates whether disabling of this profile isn't allowed (true if not allowed, false otherwise).
<!-- Device-{eUICC}-Profiles-{ICCID}-PPR1Set-Description-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR1Set-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-PPR1Set-Editable-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR1Set-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-{eUICC}-Profiles-{ICCID}-PPR1Set-DFProperties-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR1Set-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-PPR1Set-Examples-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR1Set-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR2Set-Begin -->
##### {eUICC}/Profiles/{ICCID}/PPR2Set

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR2Set-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-Profiles-{ICCID}-PPR2Set-Applicability-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR2Set-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/Profiles/{ICCID}/PPR2Set
```
<!-- Device-{eUICC}-Profiles-{ICCID}-PPR2Set-OmaUri-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR2Set-Description-Begin -->
<!-- Description-Source-DDF -->
This profile policy rule indicates whether deletion of this profile isn't allowed (true if not allowed, false otherwise).
<!-- Device-{eUICC}-Profiles-{ICCID}-PPR2Set-Description-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR2Set-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-PPR2Set-Editable-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR2Set-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-{eUICC}-Profiles-{ICCID}-PPR2Set-DFProperties-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR2Set-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-PPR2Set-Examples-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-PPR2Set-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-ServerName-Begin -->
##### {eUICC}/Profiles/{ICCID}/ServerName

<!-- Device-{eUICC}-Profiles-{ICCID}-ServerName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-Profiles-{ICCID}-ServerName-Applicability-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-ServerName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/Profiles/{ICCID}/ServerName
```
<!-- Device-{eUICC}-Profiles-{ICCID}-ServerName-OmaUri-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-ServerName-Description-Begin -->
<!-- Description-Source-DDF -->
Fully qualified domain name of the SM-DP+ that can download this profile. Must be set by the MDM when the ICCID subtree is created.
<!-- Device-{eUICC}-Profiles-{ICCID}-ServerName-Description-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-ServerName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-ServerName-Editable-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-ServerName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-{eUICC}-Profiles-{ICCID}-ServerName-DFProperties-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-ServerName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-ServerName-Examples-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-ServerName-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-State-Begin -->
##### {eUICC}/Profiles/{ICCID}/State

<!-- Device-{eUICC}-Profiles-{ICCID}-State-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-{eUICC}-Profiles-{ICCID}-State-Applicability-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-State-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/eUICCs/{eUICC}/Profiles/{ICCID}/State
```
<!-- Device-{eUICC}-Profiles-{ICCID}-State-OmaUri-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-State-Description-Begin -->
<!-- Description-Source-DDF -->
Current state of the profile (Installing = 1, Installed = 2, Deleting = 3, Error = 4). Queried by the CSP and only updated by the LPA.
<!-- Device-{eUICC}-Profiles-{ICCID}-State-Description-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-State-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-State-Editable-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-State-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 1 |
<!-- Device-{eUICC}-Profiles-{ICCID}-State-DFProperties-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-State-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{eUICC}-Profiles-{ICCID}-State-Examples-End -->

<!-- Device-{eUICC}-Profiles-{ICCID}-State-End -->

<!-- eUICCs-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- eUICCs-CspMoreInfo-End -->

<!-- eUICCs-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
