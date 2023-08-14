---
title: SystemServices Policy CSP
description: Learn more about the SystemServices Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- SystemServices-Begin -->
# Policy CSP - SystemServices

<!-- SystemServices-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SystemServices-Editable-End -->

<!-- ConfigureHomeGroupListenerServiceStartupMode-Begin -->
## ConfigureHomeGroupListenerServiceStartupMode

<!-- ConfigureHomeGroupListenerServiceStartupMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ConfigureHomeGroupListenerServiceStartupMode-Applicability-End -->

<!-- ConfigureHomeGroupListenerServiceStartupMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/SystemServices/ConfigureHomeGroupListenerServiceStartupMode
```
<!-- ConfigureHomeGroupListenerServiceStartupMode-OmaUri-End -->

<!-- ConfigureHomeGroupListenerServiceStartupMode-Description-Begin -->
<!-- Description-Source-DDF -->
This setting determines whether the service's start type is Automatic(2), Manual(3), Disabled(4). Default: Manual.
<!-- ConfigureHomeGroupListenerServiceStartupMode-Description-End -->

<!-- ConfigureHomeGroupListenerServiceStartupMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureHomeGroupListenerServiceStartupMode-Editable-End -->

<!-- ConfigureHomeGroupListenerServiceStartupMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[2-4]` |
| Default Value  | 3 |
<!-- ConfigureHomeGroupListenerServiceStartupMode-DFProperties-End -->

<!-- ConfigureHomeGroupListenerServiceStartupMode-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | HomeGroup Listener |
| Path | Windows Settings > Security Settings > System Services |
<!-- ConfigureHomeGroupListenerServiceStartupMode-GpMapping-End -->

<!-- ConfigureHomeGroupListenerServiceStartupMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureHomeGroupListenerServiceStartupMode-Examples-End -->

<!-- ConfigureHomeGroupListenerServiceStartupMode-End -->

<!-- ConfigureHomeGroupProviderServiceStartupMode-Begin -->
## ConfigureHomeGroupProviderServiceStartupMode

<!-- ConfigureHomeGroupProviderServiceStartupMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ConfigureHomeGroupProviderServiceStartupMode-Applicability-End -->

<!-- ConfigureHomeGroupProviderServiceStartupMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/SystemServices/ConfigureHomeGroupProviderServiceStartupMode
```
<!-- ConfigureHomeGroupProviderServiceStartupMode-OmaUri-End -->

<!-- ConfigureHomeGroupProviderServiceStartupMode-Description-Begin -->
<!-- Description-Source-DDF -->
This setting determines whether the service's start type is Automatic(2), Manual(3), Disabled(4). Default: Manual.
<!-- ConfigureHomeGroupProviderServiceStartupMode-Description-End -->

<!-- ConfigureHomeGroupProviderServiceStartupMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureHomeGroupProviderServiceStartupMode-Editable-End -->

<!-- ConfigureHomeGroupProviderServiceStartupMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[2-4]` |
| Default Value  | 3 |
<!-- ConfigureHomeGroupProviderServiceStartupMode-DFProperties-End -->

<!-- ConfigureHomeGroupProviderServiceStartupMode-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | HomeGroup Provider |
| Path | Windows Settings > Security Settings > System Services |
<!-- ConfigureHomeGroupProviderServiceStartupMode-GpMapping-End -->

<!-- ConfigureHomeGroupProviderServiceStartupMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureHomeGroupProviderServiceStartupMode-Examples-End -->

<!-- ConfigureHomeGroupProviderServiceStartupMode-End -->

<!-- ConfigureXboxAccessoryManagementServiceStartupMode-Begin -->
## ConfigureXboxAccessoryManagementServiceStartupMode

<!-- ConfigureXboxAccessoryManagementServiceStartupMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ConfigureXboxAccessoryManagementServiceStartupMode-Applicability-End -->

<!-- ConfigureXboxAccessoryManagementServiceStartupMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/SystemServices/ConfigureXboxAccessoryManagementServiceStartupMode
```
<!-- ConfigureXboxAccessoryManagementServiceStartupMode-OmaUri-End -->

<!-- ConfigureXboxAccessoryManagementServiceStartupMode-Description-Begin -->
<!-- Description-Source-DDF -->
This setting determines whether the service's start type is Automatic(2), Manual(3), Disabled(4). Default: Manual.
<!-- ConfigureXboxAccessoryManagementServiceStartupMode-Description-End -->

<!-- ConfigureXboxAccessoryManagementServiceStartupMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureXboxAccessoryManagementServiceStartupMode-Editable-End -->

<!-- ConfigureXboxAccessoryManagementServiceStartupMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 3 |
<!-- ConfigureXboxAccessoryManagementServiceStartupMode-DFProperties-End -->

<!-- ConfigureXboxAccessoryManagementServiceStartupMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 2 | Automatic. |
| 3 (Default) | Manual. |
| 4 | Disabled. |
<!-- ConfigureXboxAccessoryManagementServiceStartupMode-AllowedValues-End -->

<!-- ConfigureXboxAccessoryManagementServiceStartupMode-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Xbox Accessory Management Service |
| Path | Windows Settings > Security Settings > System Services |
<!-- ConfigureXboxAccessoryManagementServiceStartupMode-GpMapping-End -->

<!-- ConfigureXboxAccessoryManagementServiceStartupMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureXboxAccessoryManagementServiceStartupMode-Examples-End -->

<!-- ConfigureXboxAccessoryManagementServiceStartupMode-End -->

<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-Begin -->
## ConfigureXboxLiveAuthManagerServiceStartupMode

<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-Applicability-End -->

<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/SystemServices/ConfigureXboxLiveAuthManagerServiceStartupMode
```
<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-OmaUri-End -->

<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-Description-Begin -->
<!-- Description-Source-DDF -->
This setting determines whether the service's start type is Automatic(2), Manual(3), Disabled(4). Default: Manual.
<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-Description-End -->

<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-Editable-End -->

<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 3 |
<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-DFProperties-End -->

<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 2 | Automatic. |
| 3 (Default) | Manual. |
| 4 | Disabled. |
<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-AllowedValues-End -->

<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Xbox Live Auth Manager |
| Path | Windows Settings > Security Settings > System Services |
<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-GpMapping-End -->

<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-Examples-End -->

<!-- ConfigureXboxLiveAuthManagerServiceStartupMode-End -->

<!-- ConfigureXboxLiveGameSaveServiceStartupMode-Begin -->
## ConfigureXboxLiveGameSaveServiceStartupMode

<!-- ConfigureXboxLiveGameSaveServiceStartupMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ConfigureXboxLiveGameSaveServiceStartupMode-Applicability-End -->

<!-- ConfigureXboxLiveGameSaveServiceStartupMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/SystemServices/ConfigureXboxLiveGameSaveServiceStartupMode
```
<!-- ConfigureXboxLiveGameSaveServiceStartupMode-OmaUri-End -->

<!-- ConfigureXboxLiveGameSaveServiceStartupMode-Description-Begin -->
<!-- Description-Source-DDF -->
This setting determines whether the service's start type is Automatic(2), Manual(3), Disabled(4). Default: Manual.
<!-- ConfigureXboxLiveGameSaveServiceStartupMode-Description-End -->

<!-- ConfigureXboxLiveGameSaveServiceStartupMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureXboxLiveGameSaveServiceStartupMode-Editable-End -->

<!-- ConfigureXboxLiveGameSaveServiceStartupMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 3 |
<!-- ConfigureXboxLiveGameSaveServiceStartupMode-DFProperties-End -->

<!-- ConfigureXboxLiveGameSaveServiceStartupMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 2 | Automatic. |
| 3 (Default) | Manual. |
| 4 | Disabled. |
<!-- ConfigureXboxLiveGameSaveServiceStartupMode-AllowedValues-End -->

<!-- ConfigureXboxLiveGameSaveServiceStartupMode-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Xbox Live Game Save |
| Path | Windows Settings > Security Settings > System Services |
<!-- ConfigureXboxLiveGameSaveServiceStartupMode-GpMapping-End -->

<!-- ConfigureXboxLiveGameSaveServiceStartupMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureXboxLiveGameSaveServiceStartupMode-Examples-End -->

<!-- ConfigureXboxLiveGameSaveServiceStartupMode-End -->

<!-- ConfigureXboxLiveNetworkingServiceStartupMode-Begin -->
## ConfigureXboxLiveNetworkingServiceStartupMode

<!-- ConfigureXboxLiveNetworkingServiceStartupMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ConfigureXboxLiveNetworkingServiceStartupMode-Applicability-End -->

<!-- ConfigureXboxLiveNetworkingServiceStartupMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/SystemServices/ConfigureXboxLiveNetworkingServiceStartupMode
```
<!-- ConfigureXboxLiveNetworkingServiceStartupMode-OmaUri-End -->

<!-- ConfigureXboxLiveNetworkingServiceStartupMode-Description-Begin -->
<!-- Description-Source-DDF -->
This setting determines whether the service's start type is Automatic(2), Manual(3), Disabled(4). Default: Manual.
<!-- ConfigureXboxLiveNetworkingServiceStartupMode-Description-End -->

<!-- ConfigureXboxLiveNetworkingServiceStartupMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureXboxLiveNetworkingServiceStartupMode-Editable-End -->

<!-- ConfigureXboxLiveNetworkingServiceStartupMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 3 |
<!-- ConfigureXboxLiveNetworkingServiceStartupMode-DFProperties-End -->

<!-- ConfigureXboxLiveNetworkingServiceStartupMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 2 | Automatic. |
| 3 (Default) | Manual. |
| 4 | Disabled. |
<!-- ConfigureXboxLiveNetworkingServiceStartupMode-AllowedValues-End -->

<!-- ConfigureXboxLiveNetworkingServiceStartupMode-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Xbox Live Networking Service |
| Path | Windows Settings > Security Settings > System Services |
<!-- ConfigureXboxLiveNetworkingServiceStartupMode-GpMapping-End -->

<!-- ConfigureXboxLiveNetworkingServiceStartupMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureXboxLiveNetworkingServiceStartupMode-Examples-End -->

<!-- ConfigureXboxLiveNetworkingServiceStartupMode-End -->

<!-- SystemServices-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- SystemServices-CspMoreInfo-End -->

<!-- SystemServices-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
