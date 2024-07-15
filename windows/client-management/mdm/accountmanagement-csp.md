---
title: AccountManagement CSP
description: Learn more about the AccountManagement CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- AccountManagement-Begin -->
# AccountManagement CSP

<!-- AccountManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
AccountManagement CSP is used to configure setting in the Account Manager service in Windows Holographic for Business edition.

> [!NOTE]
> The AccountManagement CSP is only supported in Windows Holographic for Business edition.
<!-- AccountManagement-Editable-End -->

<!-- AccountManagement-Tree-Begin -->
The following list shows the AccountManagement configuration service provider nodes:

- ./Device/Vendor/MSFT/AccountManagement
  - [UserProfileManagement](#userprofilemanagement)
    - [DeletionPolicy](#userprofilemanagementdeletionpolicy)
    - [EnableProfileManager](#userprofilemanagementenableprofilemanager)
    - [ProfileInactivityThreshold](#userprofilemanagementprofileinactivitythreshold)
    - [StorageCapacityStartDeletion](#userprofilemanagementstoragecapacitystartdeletion)
    - [StorageCapacityStopDeletion](#userprofilemanagementstoragecapacitystopdeletion)
<!-- AccountManagement-Tree-End -->

<!-- Device-UserProfileManagement-Begin -->
## UserProfileManagement

<!-- Device-UserProfileManagement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-UserProfileManagement-Applicability-End -->

<!-- Device-UserProfileManagement-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/AccountManagement/UserProfileManagement
```
<!-- Device-UserProfileManagement-OmaUri-End -->

<!-- Device-UserProfileManagement-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-UserProfileManagement-Description-End -->

<!-- Device-UserProfileManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UserProfileManagement-Editable-End -->

<!-- Device-UserProfileManagement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-UserProfileManagement-DFProperties-End -->

<!-- Device-UserProfileManagement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UserProfileManagement-Examples-End -->

<!-- Device-UserProfileManagement-End -->

<!-- Device-UserProfileManagement-DeletionPolicy-Begin -->
### UserProfileManagement/DeletionPolicy

<!-- Device-UserProfileManagement-DeletionPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-UserProfileManagement-DeletionPolicy-Applicability-End -->

<!-- Device-UserProfileManagement-DeletionPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/AccountManagement/UserProfileManagement/DeletionPolicy
```
<!-- Device-UserProfileManagement-DeletionPolicy-OmaUri-End -->

<!-- Device-UserProfileManagement-DeletionPolicy-Description-Begin -->
<!-- Description-Source-DDF -->
Configures when profiles will be deleted. Allowed values: 0 (delete immediately upon device returning to a state with no currently active users); 1 (delete at storage capacity threshold); 2 (delete at both storage capacity threshold and profile inactivity threshold).
<!-- Device-UserProfileManagement-DeletionPolicy-Description-End -->

<!-- Device-UserProfileManagement-DeletionPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UserProfileManagement-DeletionPolicy-Editable-End -->

<!-- Device-UserProfileManagement-DeletionPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Device-UserProfileManagement-DeletionPolicy-DFProperties-End -->

<!-- Device-UserProfileManagement-DeletionPolicy-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Delete immediately upon device returning to a state with no currently active users). |
| 1 (Default) | Delete at storage capacity threshold. |
| 2 | Delete at both storage capacity threshold and profile inactivity threshold. |
<!-- Device-UserProfileManagement-DeletionPolicy-AllowedValues-End -->

<!-- Device-UserProfileManagement-DeletionPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UserProfileManagement-DeletionPolicy-Examples-End -->

<!-- Device-UserProfileManagement-DeletionPolicy-End -->

<!-- Device-UserProfileManagement-EnableProfileManager-Begin -->
### UserProfileManagement/EnableProfileManager

<!-- Device-UserProfileManagement-EnableProfileManager-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-UserProfileManagement-EnableProfileManager-Applicability-End -->

<!-- Device-UserProfileManagement-EnableProfileManager-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/AccountManagement/UserProfileManagement/EnableProfileManager
```
<!-- Device-UserProfileManagement-EnableProfileManager-OmaUri-End -->

<!-- Device-UserProfileManagement-EnableProfileManager-Description-Begin -->
<!-- Description-Source-DDF -->
Enable profile lifetime mangement for shared or communal device scenarios.
<!-- Device-UserProfileManagement-EnableProfileManager-Description-End -->

<!-- Device-UserProfileManagement-EnableProfileManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UserProfileManagement-EnableProfileManager-Editable-End -->

<!-- Device-UserProfileManagement-EnableProfileManager-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-UserProfileManagement-EnableProfileManager-DFProperties-End -->

<!-- Device-UserProfileManagement-EnableProfileManager-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | False. |
| true | True. |
<!-- Device-UserProfileManagement-EnableProfileManager-AllowedValues-End -->

<!-- Device-UserProfileManagement-EnableProfileManager-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UserProfileManagement-EnableProfileManager-Examples-End -->

<!-- Device-UserProfileManagement-EnableProfileManager-End -->

<!-- Device-UserProfileManagement-ProfileInactivityThreshold-Begin -->
### UserProfileManagement/ProfileInactivityThreshold

<!-- Device-UserProfileManagement-ProfileInactivityThreshold-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-UserProfileManagement-ProfileInactivityThreshold-Applicability-End -->

<!-- Device-UserProfileManagement-ProfileInactivityThreshold-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/AccountManagement/UserProfileManagement/ProfileInactivityThreshold
```
<!-- Device-UserProfileManagement-ProfileInactivityThreshold-OmaUri-End -->

<!-- Device-UserProfileManagement-ProfileInactivityThreshold-Description-Begin -->
<!-- Description-Source-DDF -->
Start deleting profiles when they haven't been logged-on during the specified period, given as number of days.
<!-- Device-UserProfileManagement-ProfileInactivityThreshold-Description-End -->

<!-- Device-UserProfileManagement-ProfileInactivityThreshold-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UserProfileManagement-ProfileInactivityThreshold-Editable-End -->

<!-- Device-UserProfileManagement-ProfileInactivityThreshold-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 30 |
<!-- Device-UserProfileManagement-ProfileInactivityThreshold-DFProperties-End -->

<!-- Device-UserProfileManagement-ProfileInactivityThreshold-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UserProfileManagement-ProfileInactivityThreshold-Examples-End -->

<!-- Device-UserProfileManagement-ProfileInactivityThreshold-End -->

<!-- Device-UserProfileManagement-StorageCapacityStartDeletion-Begin -->
### UserProfileManagement/StorageCapacityStartDeletion

<!-- Device-UserProfileManagement-StorageCapacityStartDeletion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-UserProfileManagement-StorageCapacityStartDeletion-Applicability-End -->

<!-- Device-UserProfileManagement-StorageCapacityStartDeletion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/AccountManagement/UserProfileManagement/StorageCapacityStartDeletion
```
<!-- Device-UserProfileManagement-StorageCapacityStartDeletion-OmaUri-End -->

<!-- Device-UserProfileManagement-StorageCapacityStartDeletion-Description-Begin -->
<!-- Description-Source-DDF -->
Start deleting profiles when available storage capacity falls below this threshold, given as percent of total storage available for profiles. Profiles that have been inactive the longest will be deleted first.
<!-- Device-UserProfileManagement-StorageCapacityStartDeletion-Description-End -->

<!-- Device-UserProfileManagement-StorageCapacityStartDeletion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UserProfileManagement-StorageCapacityStartDeletion-Editable-End -->

<!-- Device-UserProfileManagement-StorageCapacityStartDeletion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 25 |
<!-- Device-UserProfileManagement-StorageCapacityStartDeletion-DFProperties-End -->

<!-- Device-UserProfileManagement-StorageCapacityStartDeletion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UserProfileManagement-StorageCapacityStartDeletion-Examples-End -->

<!-- Device-UserProfileManagement-StorageCapacityStartDeletion-End -->

<!-- Device-UserProfileManagement-StorageCapacityStopDeletion-Begin -->
### UserProfileManagement/StorageCapacityStopDeletion

<!-- Device-UserProfileManagement-StorageCapacityStopDeletion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-UserProfileManagement-StorageCapacityStopDeletion-Applicability-End -->

<!-- Device-UserProfileManagement-StorageCapacityStopDeletion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/AccountManagement/UserProfileManagement/StorageCapacityStopDeletion
```
<!-- Device-UserProfileManagement-StorageCapacityStopDeletion-OmaUri-End -->

<!-- Device-UserProfileManagement-StorageCapacityStopDeletion-Description-Begin -->
<!-- Description-Source-DDF -->
Stop deleting profiles when available storage capacity is brought up to this threshold, given as percent of total storage available for profiles.
<!-- Device-UserProfileManagement-StorageCapacityStopDeletion-Description-End -->

<!-- Device-UserProfileManagement-StorageCapacityStopDeletion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UserProfileManagement-StorageCapacityStopDeletion-Editable-End -->

<!-- Device-UserProfileManagement-StorageCapacityStopDeletion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 50 |
<!-- Device-UserProfileManagement-StorageCapacityStopDeletion-DFProperties-End -->

<!-- Device-UserProfileManagement-StorageCapacityStopDeletion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UserProfileManagement-StorageCapacityStopDeletion-Examples-End -->

<!-- Device-UserProfileManagement-StorageCapacityStopDeletion-End -->

<!-- AccountManagement-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- AccountManagement-CspMoreInfo-End -->

<!-- AccountManagement-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
