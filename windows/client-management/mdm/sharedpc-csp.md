---
title: SharedPC CSP
description: Learn more about the SharedPC CSP.
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

<!-- SharedPC-Begin -->
# SharedPC CSP

<!-- SharedPC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The SharedPC configuration service provider is used to configure settings for Shared PC usage.
<!-- SharedPC-Editable-End -->

<!-- SharedPC-Tree-Begin -->
The following list shows the SharedPC configuration service provider nodes:

- ./Vendor/MSFT/SharedPC
  - [AccountModel](#accountmodel)
  - [DeletionPolicy](#deletionpolicy)
  - [DiskLevelCaching](#disklevelcaching)
  - [DiskLevelDeletion](#diskleveldeletion)
  - [EnableAccountManager](#enableaccountmanager)
  - [EnableSharedPCMode](#enablesharedpcmode)
  - [EnableSharedPCModeWithOneDriveSync](#enablesharedpcmodewithonedrivesync)
  - [EnableWindowsInsiderPreviewFlighting](#enablewindowsinsiderpreviewflighting)
  - [InactiveThreshold](#inactivethreshold)
  - [KioskModeAUMID](#kioskmodeaumid)
  - [KioskModeUserTileDisplayText](#kioskmodeusertiledisplaytext)
  - [MaintenanceStartTime](#maintenancestarttime)
  - [MaxPageFileSizeMB](#maxpagefilesizemb)
  - [RestrictLocalStorage](#restrictlocalstorage)
  - [SetEduPolicies](#setedupolicies)
  - [SetPowerPolicies](#setpowerpolicies)
  - [SignInOnResume](#signinonresume)
  - [SleepTimeout](#sleeptimeout)
<!-- SharedPC-Tree-End -->

<!-- Device-AccountModel-Begin -->
## AccountModel

<!-- Device-AccountModel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-AccountModel-Applicability-End -->

<!-- Device-AccountModel-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/AccountModel
```
<!-- Device-AccountModel-OmaUri-End -->

<!-- Device-AccountModel-Description-Begin -->
<!-- Description-Source-DDF -->
Configures which type of accounts are allowed to use the PC. Allowed values: 0 (only guest), 1 (domain-joined only), 2 (domain-joined and guest). If used, this value must be set before the action on the EnableSharedPCMode node is taken.
<!-- Device-AccountModel-Description-End -->

<!-- Device-AccountModel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AccountModel-Editable-End -->

<!-- Device-AccountModel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-AccountModel-DFProperties-End -->

<!-- Device-AccountModel-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Only guest accounts are allowed. |
| 1 | Only domain-joined accounts are allowed. |
| 2 | Domain-joined and guest accounts are allowed. |
<!-- Device-AccountModel-AllowedValues-End -->

<!-- Device-AccountModel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AccountModel-Examples-End -->

<!-- Device-AccountModel-End -->

<!-- Device-DeletionPolicy-Begin -->
## DeletionPolicy

<!-- Device-DeletionPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-DeletionPolicy-Applicability-End -->

<!-- Device-DeletionPolicy-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/DeletionPolicy
```
<!-- Device-DeletionPolicy-OmaUri-End -->

<!-- Device-DeletionPolicy-Description-Begin -->
<!-- Description-Source-DDF -->
Configures when accounts will be deleted. Allowed values: 0 (delete immediately), 1 (delete at disk space threshold), 2 (Delete at disk space threshold and inactive threshold). If used, this value must be set before the action on the EnableSharedPCMode node is taken.
<!-- Device-DeletionPolicy-Description-End -->

<!-- Device-DeletionPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeletionPolicy-Editable-End -->

<!-- Device-DeletionPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Device-DeletionPolicy-DFProperties-End -->

<!-- Device-DeletionPolicy-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Delete immediately. |
| 1 (Default) | Delete at disk space threshold. |
| 2 | Delete at disk space threshold and inactive threshold. |
<!-- Device-DeletionPolicy-AllowedValues-End -->

<!-- Device-DeletionPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeletionPolicy-Examples-End -->

<!-- Device-DeletionPolicy-End -->

<!-- Device-DiskLevelCaching-Begin -->
## DiskLevelCaching

<!-- Device-DiskLevelCaching-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-DiskLevelCaching-Applicability-End -->

<!-- Device-DiskLevelCaching-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/DiskLevelCaching
```
<!-- Device-DiskLevelCaching-OmaUri-End -->

<!-- Device-DiskLevelCaching-Description-Begin -->
<!-- Description-Source-DDF -->
Stop deleting accounts when available disk space reaches this threshold, given as percent of total disk capacity. If used, this value must be set before the action on the EnableSharedPCMode node is taken.
<!-- Device-DiskLevelCaching-Description-End -->

<!-- Device-DiskLevelCaching-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DiskLevelCaching-Editable-End -->

<!-- Device-DiskLevelCaching-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-100]` |
| Default Value  | 50 |
<!-- Device-DiskLevelCaching-DFProperties-End -->

<!-- Device-DiskLevelCaching-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DiskLevelCaching-Examples-End -->

<!-- Device-DiskLevelCaching-End -->

<!-- Device-DiskLevelDeletion-Begin -->
## DiskLevelDeletion

<!-- Device-DiskLevelDeletion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-DiskLevelDeletion-Applicability-End -->

<!-- Device-DiskLevelDeletion-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/DiskLevelDeletion
```
<!-- Device-DiskLevelDeletion-OmaUri-End -->

<!-- Device-DiskLevelDeletion-Description-Begin -->
<!-- Description-Source-DDF -->
Accounts will start being deleted when available disk space falls below this threshold, given as percent of total disk capacity. Accounts that have been inactive the longest will be deleted first. If used, this value must be set before the action on the EnableSharedPCMode node is taken.
<!-- Device-DiskLevelDeletion-Description-End -->

<!-- Device-DiskLevelDeletion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
For example, if the DiskLevelCaching is set to 50 and the DiskLevelDeletion is set to 25 (both default values). Accounts will be cached while the free disk space is above 25%. When the free disk space is less than 25% (the deletion number) during a daily maintenance period, accounts will be deleted (oldest last used first) when the system is idle until the free disk space is above 50% (the caching number). Accounts will be deleted immediately on signing out from an account if free space is under half of the deletion threshold and disk space is low, regardless of whether the PC is actively in use or not.
<!-- Device-DiskLevelDeletion-Editable-End -->

<!-- Device-DiskLevelDeletion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-100]` |
| Default Value  | 25 |
<!-- Device-DiskLevelDeletion-DFProperties-End -->

<!-- Device-DiskLevelDeletion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DiskLevelDeletion-Examples-End -->

<!-- Device-DiskLevelDeletion-End -->

<!-- Device-EnableAccountManager-Begin -->
## EnableAccountManager

<!-- Device-EnableAccountManager-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-EnableAccountManager-Applicability-End -->

<!-- Device-EnableAccountManager-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/EnableAccountManager
```
<!-- Device-EnableAccountManager-OmaUri-End -->

<!-- Device-EnableAccountManager-Description-Begin -->
<!-- Description-Source-DDF -->
Enable the account manager for shared PC mode. If used, this value must be set before the action on the EnableSharedPCMode node is taken.
<!-- Device-EnableAccountManager-Description-End -->

<!-- Device-EnableAccountManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EnableAccountManager-Editable-End -->

<!-- Device-EnableAccountManager-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-EnableAccountManager-DFProperties-End -->

<!-- Device-EnableAccountManager-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | False. |
| true | True. |
<!-- Device-EnableAccountManager-AllowedValues-End -->

<!-- Device-EnableAccountManager-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-EnableAccountManager-Examples-End -->

<!-- Device-EnableAccountManager-End -->

<!-- Device-EnableSharedPCMode-Begin -->
## EnableSharedPCMode

<!-- Device-EnableSharedPCMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-EnableSharedPCMode-Applicability-End -->

<!-- Device-EnableSharedPCMode-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/EnableSharedPCMode
```
<!-- Device-EnableSharedPCMode-OmaUri-End -->

<!-- Device-EnableSharedPCMode-Description-Begin -->
<!-- Description-Source-DDF -->
Setting this node to "true" triggers the action to configure a device to Shared PC mode.
<!-- Device-EnableSharedPCMode-Description-End -->

<!-- Device-EnableSharedPCMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EnableSharedPCMode-Editable-End -->

<!-- Device-EnableSharedPCMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-EnableSharedPCMode-DFProperties-End -->

<!-- Device-EnableSharedPCMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Not configured. |
| true | Enabled. |
<!-- Device-EnableSharedPCMode-AllowedValues-End -->

<!-- Device-EnableSharedPCMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-EnableSharedPCMode-Examples-End -->

<!-- Device-EnableSharedPCMode-End -->

<!-- Device-EnableSharedPCModeWithOneDriveSync-Begin -->
## EnableSharedPCModeWithOneDriveSync

<!-- Device-EnableSharedPCModeWithOneDriveSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-EnableSharedPCModeWithOneDriveSync-Applicability-End -->

<!-- Device-EnableSharedPCModeWithOneDriveSync-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/EnableSharedPCModeWithOneDriveSync
```
<!-- Device-EnableSharedPCModeWithOneDriveSync-OmaUri-End -->

<!-- Device-EnableSharedPCModeWithOneDriveSync-Description-Begin -->
<!-- Description-Source-DDF -->
Setting this node to "1" triggers the action to configure a device to Shared PC mode with OneDrive sync turned on.
<!-- Device-EnableSharedPCModeWithOneDriveSync-Description-End -->

<!-- Device-EnableSharedPCModeWithOneDriveSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EnableSharedPCModeWithOneDriveSync-Editable-End -->

<!-- Device-EnableSharedPCModeWithOneDriveSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-EnableSharedPCModeWithOneDriveSync-DFProperties-End -->

<!-- Device-EnableSharedPCModeWithOneDriveSync-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Not configured. |
| true | Enabled. |
<!-- Device-EnableSharedPCModeWithOneDriveSync-AllowedValues-End -->

<!-- Device-EnableSharedPCModeWithOneDriveSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-EnableSharedPCModeWithOneDriveSync-Examples-End -->

<!-- Device-EnableSharedPCModeWithOneDriveSync-End -->

<!-- Device-EnableWindowsInsiderPreviewFlighting-Begin -->
## EnableWindowsInsiderPreviewFlighting

<!-- Device-EnableWindowsInsiderPreviewFlighting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-EnableWindowsInsiderPreviewFlighting-Applicability-End -->

<!-- Device-EnableWindowsInsiderPreviewFlighting-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/EnableWindowsInsiderPreviewFlighting
```
<!-- Device-EnableWindowsInsiderPreviewFlighting-OmaUri-End -->

<!-- Device-EnableWindowsInsiderPreviewFlighting-Description-Begin -->
<!-- Description-Source-DDF -->
Setting this node to "1" enables Windows Insider Preview flighting and the ability to receive insider preview builds.
<!-- Device-EnableWindowsInsiderPreviewFlighting-Description-End -->

<!-- Device-EnableWindowsInsiderPreviewFlighting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EnableWindowsInsiderPreviewFlighting-Editable-End -->

<!-- Device-EnableWindowsInsiderPreviewFlighting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-EnableWindowsInsiderPreviewFlighting-DFProperties-End -->

<!-- Device-EnableWindowsInsiderPreviewFlighting-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Not configured. |
| true | WIP builds are Enabled. |
<!-- Device-EnableWindowsInsiderPreviewFlighting-AllowedValues-End -->

<!-- Device-EnableWindowsInsiderPreviewFlighting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-EnableWindowsInsiderPreviewFlighting-Examples-End -->

<!-- Device-EnableWindowsInsiderPreviewFlighting-End -->

<!-- Device-InactiveThreshold-Begin -->
## InactiveThreshold

<!-- Device-InactiveThreshold-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-InactiveThreshold-Applicability-End -->

<!-- Device-InactiveThreshold-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/InactiveThreshold
```
<!-- Device-InactiveThreshold-OmaUri-End -->

<!-- Device-InactiveThreshold-Description-Begin -->
<!-- Description-Source-DDF -->
Accounts will start being deleted when they haven't been logged-on during the specified period, given as number of days.
<!-- Device-InactiveThreshold-Description-End -->

<!-- Device-InactiveThreshold-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InactiveThreshold-Editable-End -->

<!-- Device-InactiveThreshold-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 30 |
<!-- Device-InactiveThreshold-DFProperties-End -->

<!-- Device-InactiveThreshold-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InactiveThreshold-Examples-End -->

<!-- Device-InactiveThreshold-End -->

<!-- Device-KioskModeAUMID-Begin -->
## KioskModeAUMID

<!-- Device-KioskModeAUMID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-KioskModeAUMID-Applicability-End -->

<!-- Device-KioskModeAUMID-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/KioskModeAUMID
```
<!-- Device-KioskModeAUMID-OmaUri-End -->

<!-- Device-KioskModeAUMID-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the AUMID of the app to use with assigned access. If used, this value must be set before the action on the EnableSharedPCMode node is taken.
<!-- Device-KioskModeAUMID-Description-End -->

<!-- Device-KioskModeAUMID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-KioskModeAUMID-Editable-End -->

<!-- Device-KioskModeAUMID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-KioskModeAUMID-DFProperties-End -->

<!-- Device-KioskModeAUMID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-KioskModeAUMID-Examples-End -->

<!-- Device-KioskModeAUMID-End -->

<!-- Device-KioskModeUserTileDisplayText-Begin -->
## KioskModeUserTileDisplayText

<!-- Device-KioskModeUserTileDisplayText-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-KioskModeUserTileDisplayText-Applicability-End -->

<!-- Device-KioskModeUserTileDisplayText-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/KioskModeUserTileDisplayText
```
<!-- Device-KioskModeUserTileDisplayText-OmaUri-End -->

<!-- Device-KioskModeUserTileDisplayText-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the display text for the account shown on the sign-in screen which launches the app specified by KioskModeAUMID. If used, this value must be set before the action on the EnableSharedPCMode node is taken.
<!-- Device-KioskModeUserTileDisplayText-Description-End -->

<!-- Device-KioskModeUserTileDisplayText-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-KioskModeUserTileDisplayText-Editable-End -->

<!-- Device-KioskModeUserTileDisplayText-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-KioskModeUserTileDisplayText-DFProperties-End -->

<!-- Device-KioskModeUserTileDisplayText-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-KioskModeUserTileDisplayText-Examples-End -->

<!-- Device-KioskModeUserTileDisplayText-End -->

<!-- Device-MaintenanceStartTime-Begin -->
## MaintenanceStartTime

<!-- Device-MaintenanceStartTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-MaintenanceStartTime-Applicability-End -->

<!-- Device-MaintenanceStartTime-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/MaintenanceStartTime
```
<!-- Device-MaintenanceStartTime-OmaUri-End -->

<!-- Device-MaintenanceStartTime-Description-Begin -->
<!-- Description-Source-DDF -->
Daily start time of maintenance hour. Given in minutes from midnight. Default is 0 (12am). If used, this value must be set before the action on the EnableSharedPCMode node is taken.
<!-- Device-MaintenanceStartTime-Description-End -->

<!-- Device-MaintenanceStartTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MaintenanceStartTime-Editable-End -->

<!-- Device-MaintenanceStartTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1440]` |
| Default Value  | 0 |
<!-- Device-MaintenanceStartTime-DFProperties-End -->

<!-- Device-MaintenanceStartTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MaintenanceStartTime-Examples-End -->

<!-- Device-MaintenanceStartTime-End -->

<!-- Device-MaxPageFileSizeMB-Begin -->
## MaxPageFileSizeMB

<!-- Device-MaxPageFileSizeMB-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-MaxPageFileSizeMB-Applicability-End -->

<!-- Device-MaxPageFileSizeMB-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/MaxPageFileSizeMB
```
<!-- Device-MaxPageFileSizeMB-OmaUri-End -->

<!-- Device-MaxPageFileSizeMB-Description-Begin -->
<!-- Description-Source-DDF -->
Maximum size of the paging file in MB. Applies only to systems with less than 32 GB storage and at least 3 GB of RAM. If used, this value must be set before the action on the EnableSharedPCMode node is taken.
<!-- Device-MaxPageFileSizeMB-Description-End -->

<!-- Device-MaxPageFileSizeMB-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MaxPageFileSizeMB-Editable-End -->

<!-- Device-MaxPageFileSizeMB-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-32768]` |
| Default Value  | 1024 |
<!-- Device-MaxPageFileSizeMB-DFProperties-End -->

<!-- Device-MaxPageFileSizeMB-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MaxPageFileSizeMB-Examples-End -->

<!-- Device-MaxPageFileSizeMB-End -->

<!-- Device-RestrictLocalStorage-Begin -->
## RestrictLocalStorage

<!-- Device-RestrictLocalStorage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-RestrictLocalStorage-Applicability-End -->

<!-- Device-RestrictLocalStorage-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/RestrictLocalStorage
```
<!-- Device-RestrictLocalStorage-OmaUri-End -->

<!-- Device-RestrictLocalStorage-Description-Begin -->
<!-- Description-Source-DDF -->
Restricts the user from using local storage. This node is optional. If used, this value must be set before the action on the EnableSharedPCMode node is taken.
<!-- Device-RestrictLocalStorage-Description-End -->

<!-- Device-RestrictLocalStorage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-RestrictLocalStorage-Editable-End -->

<!-- Device-RestrictLocalStorage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-RestrictLocalStorage-DFProperties-End -->

<!-- Device-RestrictLocalStorage-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | False. |
| true | True. |
<!-- Device-RestrictLocalStorage-AllowedValues-End -->

<!-- Device-RestrictLocalStorage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-RestrictLocalStorage-Examples-End -->

<!-- Device-RestrictLocalStorage-End -->

<!-- Device-SetEduPolicies-Begin -->
## SetEduPolicies

<!-- Device-SetEduPolicies-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-SetEduPolicies-Applicability-End -->

<!-- Device-SetEduPolicies-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/SetEduPolicies
```
<!-- Device-SetEduPolicies-OmaUri-End -->

<!-- Device-SetEduPolicies-Description-Begin -->
<!-- Description-Source-DDF -->
Set a list of EDU policies.
<!-- Device-SetEduPolicies-Description-End -->

<!-- Device-SetEduPolicies-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
A boolean value that specifies whether the policies for education environment are enabled. Setting this value to true triggers the action to configure a device as education environment.
<!-- Device-SetEduPolicies-Editable-End -->

<!-- Device-SetEduPolicies-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-SetEduPolicies-DFProperties-End -->

<!-- Device-SetEduPolicies-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Not configured. |
| true | Enabled. |
<!-- Device-SetEduPolicies-AllowedValues-End -->

<!-- Device-SetEduPolicies-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SetEduPolicies-Examples-End -->

<!-- Device-SetEduPolicies-End -->

<!-- Device-SetPowerPolicies-Begin -->
## SetPowerPolicies

<!-- Device-SetPowerPolicies-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-SetPowerPolicies-Applicability-End -->

<!-- Device-SetPowerPolicies-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/SetPowerPolicies
```
<!-- Device-SetPowerPolicies-OmaUri-End -->

<!-- Device-SetPowerPolicies-Description-Begin -->
<!-- Description-Source-DDF -->
Set a list of power policies. If used, this value must be set before the action on the EnableSharedPCMode node is taken.
<!-- Device-SetPowerPolicies-Description-End -->

<!-- Device-SetPowerPolicies-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The default value is Not Configured and the effective power settings are determined by the OS's default power settings.
<!-- Device-SetPowerPolicies-Editable-End -->

<!-- Device-SetPowerPolicies-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-SetPowerPolicies-DFProperties-End -->

<!-- Device-SetPowerPolicies-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Not configured. |
| true | Enabled. |
<!-- Device-SetPowerPolicies-AllowedValues-End -->

<!-- Device-SetPowerPolicies-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SetPowerPolicies-Examples-End -->

<!-- Device-SetPowerPolicies-End -->

<!-- Device-SignInOnResume-Begin -->
## SignInOnResume

<!-- Device-SignInOnResume-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-SignInOnResume-Applicability-End -->

<!-- Device-SignInOnResume-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/SignInOnResume
```
<!-- Device-SignInOnResume-OmaUri-End -->

<!-- Device-SignInOnResume-Description-Begin -->
<!-- Description-Source-DDF -->
Require signing in on waking up from sleep. If used, this value must be set before the action on the EnableSharedPCMode node is taken.
<!-- Device-SignInOnResume-Description-End -->

<!-- Device-SignInOnResume-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SignInOnResume-Editable-End -->

<!-- Device-SignInOnResume-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-SignInOnResume-DFProperties-End -->

<!-- Device-SignInOnResume-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | False. |
| true | True. |
<!-- Device-SignInOnResume-AllowedValues-End -->

<!-- Device-SignInOnResume-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SignInOnResume-Examples-End -->

<!-- Device-SignInOnResume-End -->

<!-- Device-SleepTimeout-Begin -->
## SleepTimeout

<!-- Device-SleepTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-SleepTimeout-Applicability-End -->

<!-- Device-SleepTimeout-OmaUri-Begin -->
```Device
./Vendor/MSFT/SharedPC/SleepTimeout
```
<!-- Device-SleepTimeout-OmaUri-End -->

<!-- Device-SleepTimeout-Description-Begin -->
<!-- Description-Source-DDF -->
The amount of time before the PC sleeps, giving in seconds. 0 means the PC never sleeps. Default is 5 minutes. If used, this value must be set before the action on the EnableSharedPCMode node is taken.
<!-- Device-SleepTimeout-Description-End -->

<!-- Device-SleepTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SleepTimeout-Editable-End -->

<!-- Device-SleepTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 300 |
<!-- Device-SleepTimeout-DFProperties-End -->

<!-- Device-SleepTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SleepTimeout-Examples-End -->

<!-- Device-SleepTimeout-End -->

<!-- SharedPC-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- SharedPC-CspMoreInfo-End -->

<!-- SharedPC-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
