---
title: ADMX_FileSys Policy CSP
description: Learn more about the ADMX_FileSys Area in Policy CSP.
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

<!-- ADMX_FileSys-Begin -->
# Policy CSP - ADMX_FileSys

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_FileSys-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_FileSys-Editable-End -->

<!-- DisableCompression-Begin -->
## DisableCompression

<!-- DisableCompression-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableCompression-Applicability-End -->

<!-- DisableCompression-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_FileSys/DisableCompression
```
<!-- DisableCompression-OmaUri-End -->

<!-- DisableCompression-Description-Begin -->
<!-- Description-Source-ADMX -->
Compression can add to the processing overhead of filesystem operations. Enabling this setting will prevent access to and creation of compressed files.

A reboot is required for this setting to take effect.
<!-- DisableCompression-Description-End -->

<!-- DisableCompression-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableCompression-Editable-End -->

<!-- DisableCompression-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableCompression-DFProperties-End -->

<!-- DisableCompression-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableCompression |
| Friendly Name | Do not allow compression on all NTFS volumes |
| Location | Computer Configuration |
| Path | System > Filesystem > NTFS |
| Registry Key Name | System\CurrentControlSet\Policies |
| Registry Value Name | NtfsDisableCompression |
| ADMX File Name | FileSys.admx |
<!-- DisableCompression-AdmxBacked-End -->

<!-- DisableCompression-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableCompression-Examples-End -->

<!-- DisableCompression-End -->

<!-- DisableDeleteNotification-Begin -->
## DisableDeleteNotification

<!-- DisableDeleteNotification-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableDeleteNotification-Applicability-End -->

<!-- DisableDeleteNotification-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_FileSys/DisableDeleteNotification
```
<!-- DisableDeleteNotification-OmaUri-End -->

<!-- DisableDeleteNotification-Description-Begin -->
<!-- Description-Source-ADMX -->
Delete notification is a feature that notifies the underlying storage device of clusters that are freed due to a file delete operation.

A value of 0, the default, will enable delete notifications for all volumes.
A value of 1 will disable delete notifications for all volumes.
<!-- DisableDeleteNotification-Description-End -->

<!-- DisableDeleteNotification-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableDeleteNotification-Editable-End -->

<!-- DisableDeleteNotification-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableDeleteNotification-DFProperties-End -->

<!-- DisableDeleteNotification-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableDeleteNotification |
| Friendly Name | Disable delete notifications on all volumes |
| Location | Computer Configuration |
| Path | System > Filesystem |
| Registry Key Name | System\CurrentControlSet\Policies |
| Registry Value Name | DisableDeleteNotification |
| ADMX File Name | FileSys.admx |
<!-- DisableDeleteNotification-AdmxBacked-End -->

<!-- DisableDeleteNotification-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableDeleteNotification-Examples-End -->

<!-- DisableDeleteNotification-End -->

<!-- DisableEncryption-Begin -->
## DisableEncryption

<!-- DisableEncryption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableEncryption-Applicability-End -->

<!-- DisableEncryption-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_FileSys/DisableEncryption
```
<!-- DisableEncryption-OmaUri-End -->

<!-- DisableEncryption-Description-Begin -->
<!-- Description-Source-ADMX -->
Encryption can add to the processing overhead of filesystem operations. Enabling this setting will prevent access to and creation of encrypted files.

A reboot is required for this setting to take effect.
<!-- DisableEncryption-Description-End -->

<!-- DisableEncryption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableEncryption-Editable-End -->

<!-- DisableEncryption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableEncryption-DFProperties-End -->

<!-- DisableEncryption-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableEncryption |
| Friendly Name | Do not allow encryption on all NTFS volumes |
| Location | Computer Configuration |
| Path | System > Filesystem > NTFS |
| Registry Key Name | System\CurrentControlSet\Policies |
| Registry Value Name | NtfsDisableEncryption |
| ADMX File Name | FileSys.admx |
<!-- DisableEncryption-AdmxBacked-End -->

<!-- DisableEncryption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableEncryption-Examples-End -->

<!-- DisableEncryption-End -->

<!-- EnablePagefileEncryption-Begin -->
## EnablePagefileEncryption

<!-- EnablePagefileEncryption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnablePagefileEncryption-Applicability-End -->

<!-- EnablePagefileEncryption-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_FileSys/EnablePagefileEncryption
```
<!-- EnablePagefileEncryption-OmaUri-End -->

<!-- EnablePagefileEncryption-Description-Begin -->
<!-- Description-Source-ADMX -->
Encrypting the page file prevents malicious users from reading data that has been paged to disk, but also adds processing overhead for filesystem operations. Enabling this setting will cause the page files to be encrypted.
<!-- EnablePagefileEncryption-Description-End -->

<!-- EnablePagefileEncryption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnablePagefileEncryption-Editable-End -->

<!-- EnablePagefileEncryption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnablePagefileEncryption-DFProperties-End -->

<!-- EnablePagefileEncryption-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnablePagefileEncryption |
| Friendly Name | Enable NTFS pagefile encryption |
| Location | Computer Configuration |
| Path | System > Filesystem > NTFS |
| Registry Key Name | System\CurrentControlSet\Policies |
| Registry Value Name | NtfsEncryptPagingFile |
| ADMX File Name | FileSys.admx |
<!-- EnablePagefileEncryption-AdmxBacked-End -->

<!-- EnablePagefileEncryption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnablePagefileEncryption-Examples-End -->

<!-- EnablePagefileEncryption-End -->

<!-- LongPathsEnabled-Begin -->
## LongPathsEnabled

<!-- LongPathsEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- LongPathsEnabled-Applicability-End -->

<!-- LongPathsEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_FileSys/LongPathsEnabled
```
<!-- LongPathsEnabled-OmaUri-End -->

<!-- LongPathsEnabled-Description-Begin -->
<!-- Description-Source-ADMX -->
Enabling Win32 long paths will allow manifested win32 applications and Windows Store applications to access paths beyond the normal 260 character limit. Enabling this setting will cause the long paths to be accessible within the process.
<!-- LongPathsEnabled-Description-End -->

<!-- LongPathsEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LongPathsEnabled-Editable-End -->

<!-- LongPathsEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LongPathsEnabled-DFProperties-End -->

<!-- LongPathsEnabled-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LongPathsEnabled |
| Friendly Name | Enable Win32 long paths |
| Location | Computer Configuration |
| Path | System > Filesystem |
| Registry Key Name | System\CurrentControlSet\Control\FileSystem |
| Registry Value Name | LongPathsEnabled |
| ADMX File Name | FileSys.admx |
<!-- LongPathsEnabled-AdmxBacked-End -->

<!-- LongPathsEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LongPathsEnabled-Examples-End -->

<!-- LongPathsEnabled-End -->

<!-- ShortNameCreationSettings-Begin -->
## ShortNameCreationSettings

<!-- ShortNameCreationSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShortNameCreationSettings-Applicability-End -->

<!-- ShortNameCreationSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_FileSys/ShortNameCreationSettings
```
<!-- ShortNameCreationSettings-OmaUri-End -->

<!-- ShortNameCreationSettings-Description-Begin -->
<!-- Description-Source-ADMX -->
These settings provide control over whether or not short names are generated during file creation. Some applications require short names for compatibility, but short names have a negative performance impact on the system.

If you enable short names on all volumes then short names will always be generated. If you disable them on all volumes then they will never be generated. If you set short name creation to be configurable on a per volume basis then an on-disk flag will determine whether or not short names are created on a given volume. If you disable short name creation on all data volumes then short names will only be generated for files created on the system volume.
<!-- ShortNameCreationSettings-Description-End -->

<!-- ShortNameCreationSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShortNameCreationSettings-Editable-End -->

<!-- ShortNameCreationSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShortNameCreationSettings-DFProperties-End -->

<!-- ShortNameCreationSettings-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShortNameCreationSettings |
| Friendly Name | Short name creation options |
| Location | Computer Configuration |
| Path | System > Filesystem > NTFS |
| Registry Key Name | System\CurrentControlSet\Policies |
| ADMX File Name | FileSys.admx |
<!-- ShortNameCreationSettings-AdmxBacked-End -->

<!-- ShortNameCreationSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShortNameCreationSettings-Examples-End -->

<!-- ShortNameCreationSettings-End -->

<!-- SymlinkEvaluation-Begin -->
## SymlinkEvaluation

<!-- SymlinkEvaluation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- SymlinkEvaluation-Applicability-End -->

<!-- SymlinkEvaluation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_FileSys/SymlinkEvaluation
```
<!-- SymlinkEvaluation-OmaUri-End -->

<!-- SymlinkEvaluation-Description-Begin -->
<!-- Description-Source-ADMX -->
Symbolic links can introduce vulnerabilities in certain applications. To mitigate this issue, you can selectively enable or disable the evaluation of these types of symbolic links:

Local Link to a Local Target
Local Link to a Remote Target
Remote Link to Remote Target
Remote Link to Local Target

For further information please refer to the Windows Help section

> [!NOTE]
> If this policy is Disabled or Not Configured, local administrators may select the types of symbolic links to be evaluated.
<!-- SymlinkEvaluation-Description-End -->

<!-- SymlinkEvaluation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SymlinkEvaluation-Editable-End -->

<!-- SymlinkEvaluation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SymlinkEvaluation-DFProperties-End -->

<!-- SymlinkEvaluation-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SymlinkEvaluation |
| Friendly Name | Selectively allow the evaluation of a symbolic link |
| Location | Computer Configuration |
| Path | System > Filesystem |
| Registry Key Name | Software\Policies\Microsoft\Windows\Filesystems\NTFS |
| Registry Value Name | SymLinkState |
| ADMX File Name | FileSys.admx |
<!-- SymlinkEvaluation-AdmxBacked-End -->

<!-- SymlinkEvaluation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SymlinkEvaluation-Examples-End -->

<!-- SymlinkEvaluation-End -->

<!-- TxfDeprecatedFunctionality-Begin -->
## TxfDeprecatedFunctionality

<!-- TxfDeprecatedFunctionality-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- TxfDeprecatedFunctionality-Applicability-End -->

<!-- TxfDeprecatedFunctionality-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_FileSys/TxfDeprecatedFunctionality
```
<!-- TxfDeprecatedFunctionality-OmaUri-End -->

<!-- TxfDeprecatedFunctionality-Description-Begin -->
<!-- Description-Source-ADMX -->
TXF deprecated features included savepoints, secondary RM, miniversion and roll forward. Please enable it if you want to use these APIs.
<!-- TxfDeprecatedFunctionality-Description-End -->

<!-- TxfDeprecatedFunctionality-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TxfDeprecatedFunctionality-Editable-End -->

<!-- TxfDeprecatedFunctionality-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TxfDeprecatedFunctionality-DFProperties-End -->

<!-- TxfDeprecatedFunctionality-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TxfDeprecatedFunctionality |
| Friendly Name | Enable / disable TXF deprecated features |
| Location | Computer Configuration |
| Path | System > Filesystem > NTFS |
| Registry Key Name | System\CurrentControlSet\Policies |
| Registry Value Name | NtfsEnableTxfDeprecatedFunctionality |
| ADMX File Name | FileSys.admx |
<!-- TxfDeprecatedFunctionality-AdmxBacked-End -->

<!-- TxfDeprecatedFunctionality-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TxfDeprecatedFunctionality-Examples-End -->

<!-- TxfDeprecatedFunctionality-End -->

<!-- ADMX_FileSys-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_FileSys-CspMoreInfo-End -->

<!-- ADMX_FileSys-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
