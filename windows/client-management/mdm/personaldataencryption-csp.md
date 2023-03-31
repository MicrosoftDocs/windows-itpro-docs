---
title: PDE CSP
description: Learn more about the PDE CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 03/23/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- PDE-Begin -->
# PDE CSP

<!-- PDE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The Personal Data Encryption (PDE) configuration service provider (CSP) is used by the enterprise to protect data confidentiality of PCs and devices. This CSP was added in Windows 11, version 22H2.
<!-- PDE-Editable-End -->

<!-- PDE-Tree-Begin -->
The following list shows the PDE configuration service provider nodes:

- ./User/Vendor/MSFT/PDE
  - [EnablePersonalDataEncryption](#enablepersonaldataencryption)
  - [ProtectFolders](#protectfolders)
    - [ProtectDesktop](#protectfoldersprotectdesktop)
    - [ProtectDocuments](#protectfoldersprotectdocuments)
    - [ProtectPictures](#protectfoldersprotectpictures)
  - [Status](#status)
    - [FolderProtectionStatus](#statusfolderprotectionstatus)
    - [FoldersProtected](#statusfoldersprotected)
    - [PersonalDataEncryptionStatus](#statuspersonaldataencryptionstatus)
<!-- PDE-Tree-End -->

<!-- User-EnablePersonalDataEncryption-Begin -->
## EnablePersonalDataEncryption

<!-- User-EnablePersonalDataEncryption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :x: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :x: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- User-EnablePersonalDataEncryption-Applicability-End -->

<!-- User-EnablePersonalDataEncryption-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption
```
<!-- User-EnablePersonalDataEncryption-OmaUri-End -->

<!-- User-EnablePersonalDataEncryption-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the Admin to enable Personal Data Encryption. Set to '1' to set this policy.
<!-- User-EnablePersonalDataEncryption-Description-End -->

<!-- User-EnablePersonalDataEncryption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The [UserDataProtectionManager Class](/uwp/api/windows.security.dataprotection.userdataprotectionmanager) public API allows the applications running as the user to encrypt data as soon as this policy is enabled. However, prerequisites must be met for PDE to be enabled.
<!-- User-EnablePersonalDataEncryption-Editable-End -->

<!-- User-EnablePersonalDataEncryption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
<!-- User-EnablePersonalDataEncryption-DFProperties-End -->

<!-- User-EnablePersonalDataEncryption-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disable Personal Data Encryption. |
| 1 | Enable Personal Data Encryption. |
<!-- User-EnablePersonalDataEncryption-AllowedValues-End -->

<!-- User-EnablePersonalDataEncryption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-EnablePersonalDataEncryption-Examples-End -->

<!-- User-EnablePersonalDataEncryption-End -->

<!-- User-ProtectFolders-Begin -->
## ProtectFolders

<!-- User-ProtectFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :x: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :x: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- User-ProtectFolders-Applicability-End -->

<!-- User-ProtectFolders-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PDE/ProtectFolders
```
<!-- User-ProtectFolders-OmaUri-End -->

<!-- User-ProtectFolders-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-ProtectFolders-Description-End -->

<!-- User-ProtectFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-ProtectFolders-Editable-End -->

<!-- User-ProtectFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | node |
| Access Type | Get |
<!-- User-ProtectFolders-DFProperties-End -->

<!-- User-ProtectFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-ProtectFolders-Examples-End -->

<!-- User-ProtectFolders-End -->

<!-- User-ProtectFolders-ProtectDesktop-Begin -->
### ProtectFolders/ProtectDesktop

<!-- User-ProtectFolders-ProtectDesktop-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :x: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :x: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- User-ProtectFolders-ProtectDesktop-Applicability-End -->

<!-- User-ProtectFolders-ProtectDesktop-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PDE/ProtectFolders/ProtectDesktop
```
<!-- User-ProtectFolders-ProtectDesktop-OmaUri-End -->

<!-- User-ProtectFolders-ProtectDesktop-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the Admin to enable PDE on Desktop folder. Set to '1' to set this policy.
<!-- User-ProtectFolders-ProtectDesktop-Description-End -->

<!-- User-ProtectFolders-ProtectDesktop-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-ProtectFolders-ProtectDesktop-Editable-End -->

<!-- User-ProtectFolders-ProtectDesktop-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
<!-- User-ProtectFolders-ProtectDesktop-DFProperties-End -->

<!-- User-ProtectFolders-ProtectDesktop-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disable PDE on the folder. If the folder is currently protected by PDE, this will result in unprotecting the folder. |
| 1 | Enable PDE on the folder. |
<!-- User-ProtectFolders-ProtectDesktop-AllowedValues-End -->

<!-- User-ProtectFolders-ProtectDesktop-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-ProtectFolders-ProtectDesktop-Examples-End -->

<!-- User-ProtectFolders-ProtectDesktop-End -->

<!-- User-ProtectFolders-ProtectDocuments-Begin -->
### ProtectFolders/ProtectDocuments

<!-- User-ProtectFolders-ProtectDocuments-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :x: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :x: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- User-ProtectFolders-ProtectDocuments-Applicability-End -->

<!-- User-ProtectFolders-ProtectDocuments-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PDE/ProtectFolders/ProtectDocuments
```
<!-- User-ProtectFolders-ProtectDocuments-OmaUri-End -->

<!-- User-ProtectFolders-ProtectDocuments-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the Admin to enable PDE on Documents folder. Set to '1' to set this policy.
<!-- User-ProtectFolders-ProtectDocuments-Description-End -->

<!-- User-ProtectFolders-ProtectDocuments-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-ProtectFolders-ProtectDocuments-Editable-End -->

<!-- User-ProtectFolders-ProtectDocuments-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
<!-- User-ProtectFolders-ProtectDocuments-DFProperties-End -->

<!-- User-ProtectFolders-ProtectDocuments-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disable PDE on the folder. If the folder is currently protected by PDE, this will result in unprotecting the folder. |
| 1 | Enable PDE on the folder. |
<!-- User-ProtectFolders-ProtectDocuments-AllowedValues-End -->

<!-- User-ProtectFolders-ProtectDocuments-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-ProtectFolders-ProtectDocuments-Examples-End -->

<!-- User-ProtectFolders-ProtectDocuments-End -->

<!-- User-ProtectFolders-ProtectPictures-Begin -->
### ProtectFolders/ProtectPictures

<!-- User-ProtectFolders-ProtectPictures-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :x: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :x: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- User-ProtectFolders-ProtectPictures-Applicability-End -->

<!-- User-ProtectFolders-ProtectPictures-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PDE/ProtectFolders/ProtectPictures
```
<!-- User-ProtectFolders-ProtectPictures-OmaUri-End -->

<!-- User-ProtectFolders-ProtectPictures-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the Admin to enable PDE on Pictures folder. Set to '1' to set this policy.
<!-- User-ProtectFolders-ProtectPictures-Description-End -->

<!-- User-ProtectFolders-ProtectPictures-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-ProtectFolders-ProtectPictures-Editable-End -->

<!-- User-ProtectFolders-ProtectPictures-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
<!-- User-ProtectFolders-ProtectPictures-DFProperties-End -->

<!-- User-ProtectFolders-ProtectPictures-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disable PDE on the folder. If the folder is currently protected by PDE, this will result in unprotecting the folder. |
| 1 | Enable PDE on the folder. |
<!-- User-ProtectFolders-ProtectPictures-AllowedValues-End -->

<!-- User-ProtectFolders-ProtectPictures-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-ProtectFolders-ProtectPictures-Examples-End -->

<!-- User-ProtectFolders-ProtectPictures-End -->

<!-- User-Status-Begin -->
## Status

<!-- User-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :x: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :x: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- User-Status-Applicability-End -->

<!-- User-Status-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PDE/Status
```
<!-- User-Status-OmaUri-End -->

<!-- User-Status-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Status-Description-End -->

<!-- User-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Reports the current status of Personal Data Encryption (PDE) for the user.

- If prerequisites of PDE aren't met, then the status will be 0.
- If all prerequisites are met for PDE, then PDE will be enabled and status will be 1.
<!-- User-Status-Editable-End -->

<!-- User-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | node |
| Access Type | Get |
<!-- User-Status-DFProperties-End -->

<!-- User-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Status-Examples-End -->

<!-- User-Status-End -->

<!-- User-Status-FolderProtectionStatus-Begin -->
### Status/FolderProtectionStatus

<!-- User-Status-FolderProtectionStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :x: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :x: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- User-Status-FolderProtectionStatus-Applicability-End -->

<!-- User-Status-FolderProtectionStatus-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PDE/Status/FolderProtectionStatus
```
<!-- User-Status-FolderProtectionStatus-OmaUri-End -->

<!-- User-Status-FolderProtectionStatus-Description-Begin -->
<!-- Description-Source-DDF -->
This node reports folder protection status for a user.
<!-- User-Status-FolderProtectionStatus-Description-End -->

<!-- User-Status-FolderProtectionStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Status-FolderProtectionStatus-Editable-End -->

<!-- User-Status-FolderProtectionStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Get |
<!-- User-Status-FolderProtectionStatus-DFProperties-End -->

<!-- User-Status-FolderProtectionStatus-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Protection not started. |
| 1 | Protection is completed with no failures. |
| 2 | Protection in progress. |
| 3 | Protection failed. |
<!-- User-Status-FolderProtectionStatus-AllowedValues-End -->

<!-- User-Status-FolderProtectionStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Status-FolderProtectionStatus-Examples-End -->

<!-- User-Status-FolderProtectionStatus-End -->

<!-- User-Status-FoldersProtected-Begin -->
### Status/FoldersProtected

<!-- User-Status-FoldersProtected-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :x: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :x: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- User-Status-FoldersProtected-Applicability-End -->

<!-- User-Status-FoldersProtected-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PDE/Status/FoldersProtected
```
<!-- User-Status-FoldersProtected-OmaUri-End -->

<!-- User-Status-FoldersProtected-Description-Begin -->
<!-- Description-Source-DDF -->
This node reports all folders (full path to each folder) that have been protected.
<!-- User-Status-FoldersProtected-Description-End -->

<!-- User-Status-FoldersProtected-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Status-FoldersProtected-Editable-End -->

<!-- User-Status-FoldersProtected-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Get |
<!-- User-Status-FoldersProtected-DFProperties-End -->

<!-- User-Status-FoldersProtected-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Status-FoldersProtected-Examples-End -->

<!-- User-Status-FoldersProtected-End -->

<!-- User-Status-PersonalDataEncryptionStatus-Begin -->
### Status/PersonalDataEncryptionStatus

<!-- User-Status-PersonalDataEncryptionStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :x: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :x: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- User-Status-PersonalDataEncryptionStatus-Applicability-End -->

<!-- User-Status-PersonalDataEncryptionStatus-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PDE/Status/PersonalDataEncryptionStatus
```
<!-- User-Status-PersonalDataEncryptionStatus-OmaUri-End -->

<!-- User-Status-PersonalDataEncryptionStatus-Description-Begin -->
<!-- Description-Source-DDF -->
This node reports the current state of Personal Data Encryption for a user. '0' means disabled. '1' means enabled.
<!-- User-Status-PersonalDataEncryptionStatus-Description-End -->

<!-- User-Status-PersonalDataEncryptionStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Status-PersonalDataEncryptionStatus-Editable-End -->

<!-- User-Status-PersonalDataEncryptionStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Get |
<!-- User-Status-PersonalDataEncryptionStatus-DFProperties-End -->

<!-- User-Status-PersonalDataEncryptionStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Status-PersonalDataEncryptionStatus-Examples-End -->

<!-- User-Status-PersonalDataEncryptionStatus-End -->

<!-- PDE-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- PDE-CspMoreInfo-End -->

<!-- PDE-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
