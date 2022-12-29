---
title: DesktopAppInstaller Policy CSP
description: Learn more about the DesktopAppInstaller Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 12/29/2022
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- DesktopAppInstaller-Begin -->
# Policy CSP - DesktopAppInstaller

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- DesktopAppInstaller-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DesktopAppInstaller-Editable-End -->

<!-- EnableAdditionalSources-Begin -->
## EnableAdditionalSources

<!-- EnableAdditionalSources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableAdditionalSources-Applicability-End -->

<!-- EnableAdditionalSources-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableAdditionalSources
```
<!-- EnableAdditionalSources-OmaUri-End -->

<!-- EnableAdditionalSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls additional sources provided by the enterprise IT administrator.

If you do not configure this policy, no additional sources will be configured for the Windows Package Manager.

If you enable this policy, the additional sources will be added to the Windows Package Manager and cannot be removed. The representation for each additional source can be obtained from installed sources using 'winget source export'.

If you disable this policy, no additional sources can be configured for the Windows Package Manager.
<!-- EnableAdditionalSources-Description-End -->

<!-- EnableAdditionalSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableAdditionalSources-Editable-End -->

<!-- EnableAdditionalSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableAdditionalSources-DFProperties-End -->

<!-- EnableAdditionalSources-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableAdditionalSources |
| Friendly Name | Enable App Installer Additional Sources |
| Location | Computer Configuration |
| Path | Windows Components > Desktop App Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppInstaller |
| Registry Value Name | EnableAdditionalSources |
| ADMX File Name | DesktopAppInstaller.admx |
<!-- EnableAdditionalSources-AdmxBacked-End -->

<!-- EnableAdditionalSources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableAdditionalSources-Examples-End -->

<!-- EnableAdditionalSources-End -->

<!-- EnableAllowedSources-Begin -->
## EnableAllowedSources

<!-- EnableAllowedSources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableAllowedSources-Applicability-End -->

<!-- EnableAllowedSources-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableAllowedSources
```
<!-- EnableAllowedSources-OmaUri-End -->

<!-- EnableAllowedSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls additional sources allowed by the enterprise IT administrator.

If you do not configure this policy, users will be able to add or remove additional sources other than those configured by policy.

If you enable this policy, only the sources specified can be added or removed from the Windows Package Manager. The representation for each allowed source can be obtained from installed sources using 'winget source export'.

If you disable this policy, no additional sources can be configured for the Windows Package Manager.
<!-- EnableAllowedSources-Description-End -->

<!-- EnableAllowedSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableAllowedSources-Editable-End -->

<!-- EnableAllowedSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableAllowedSources-DFProperties-End -->

<!-- EnableAllowedSources-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableAllowedSources |
| Friendly Name | Enable App Installer Allowed Sources |
| Location | Computer Configuration |
| Path | Windows Components > Desktop App Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppInstaller |
| Registry Value Name | EnableAllowedSources |
| ADMX File Name | DesktopAppInstaller.admx |
<!-- EnableAllowedSources-AdmxBacked-End -->

<!-- EnableAllowedSources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableAllowedSources-Examples-End -->

<!-- EnableAllowedSources-End -->

<!-- EnableAppInstaller-Begin -->
## EnableAppInstaller

<!-- EnableAppInstaller-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableAppInstaller-Applicability-End -->

<!-- EnableAppInstaller-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableAppInstaller
```
<!-- EnableAppInstaller-OmaUri-End -->

<!-- EnableAppInstaller-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether the Windows Package Manager can be used by users.

If you enable or do not configure this setting, users will be able to use the Windows Package Manager.

If you disable this setting, users will not be able to use the Windows Package Manager.
<!-- EnableAppInstaller-Description-End -->

<!-- EnableAppInstaller-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Users will still be able to execute the *winget* command. The default help will be displayed, and users will still be able to execute *winget -?* to display the help as well. Any other command will result in the user being informed the operation is disabled by Group Policy.
<!-- EnableAppInstaller-Editable-End -->

<!-- EnableAppInstaller-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableAppInstaller-DFProperties-End -->

<!-- EnableAppInstaller-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableAppInstaller |
| Friendly Name | Enable App Installer |
| Location | Computer Configuration |
| Path | Windows Components > Desktop App Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppInstaller |
| Registry Value Name | EnableAppInstaller |
| ADMX File Name | DesktopAppInstaller.admx |
<!-- EnableAppInstaller-AdmxBacked-End -->

<!-- EnableAppInstaller-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableAppInstaller-Examples-End -->

<!-- EnableAppInstaller-End -->

<!-- EnableDefaultSource-Begin -->
## EnableDefaultSource

<!-- EnableDefaultSource-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableDefaultSource-Applicability-End -->

<!-- EnableDefaultSource-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableDefaultSource
```
<!-- EnableDefaultSource-OmaUri-End -->

<!-- EnableDefaultSource-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the default source included with the Windows Package Manager.

If you do not configure this setting, the default source for the Windows Package Manager will be available and can be removed.

If you enable this setting, the default source for the Windows Package Manager will be available and cannot be removed.

If you disable this setting the default source for the Windows Package Manager will not be available.
<!-- EnableDefaultSource-Description-End -->

<!-- EnableDefaultSource-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableDefaultSource-Editable-End -->

<!-- EnableDefaultSource-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableDefaultSource-DFProperties-End -->

<!-- EnableDefaultSource-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableDefaultSource |
| Friendly Name | Enable App Installer Default Source |
| Location | Computer Configuration |
| Path | Windows Components > Desktop App Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppInstaller |
| Registry Value Name | EnableDefaultSource |
| ADMX File Name | DesktopAppInstaller.admx |
<!-- EnableDefaultSource-AdmxBacked-End -->

<!-- EnableDefaultSource-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableDefaultSource-Examples-End -->

<!-- EnableDefaultSource-End -->

<!-- EnableExperimentalFeatures-Begin -->
## EnableExperimentalFeatures

<!-- EnableExperimentalFeatures-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableExperimentalFeatures-Applicability-End -->

<!-- EnableExperimentalFeatures-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableExperimentalFeatures
```
<!-- EnableExperimentalFeatures-OmaUri-End -->

<!-- EnableExperimentalFeatures-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether users can enable experimental features in the Windows Package Manager.

If you enable or do not configure this setting, users will be able to enable experimental features for the Windows Package Manager.

If you disable this setting, users will not be able to enable experimental features for the Windows Package Manager.
<!-- EnableExperimentalFeatures-Description-End -->

<!-- EnableExperimentalFeatures-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Experimental features are used during Windows Package Manager development cycle to provide previews for new behaviors. Some of these experimental features may be implemented prior to the Group Policy settings designed to control their behavior.
<!-- EnableExperimentalFeatures-Editable-End -->

<!-- EnableExperimentalFeatures-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableExperimentalFeatures-DFProperties-End -->

<!-- EnableExperimentalFeatures-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableExperimentalFeatures |
| Friendly Name | Enable App Installer Experimental Features |
| Location | Computer Configuration |
| Path | Windows Components > Desktop App Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppInstaller |
| Registry Value Name | EnableExperimentalFeatures |
| ADMX File Name | DesktopAppInstaller.admx |
<!-- EnableExperimentalFeatures-AdmxBacked-End -->

<!-- EnableExperimentalFeatures-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableExperimentalFeatures-Examples-End -->

<!-- EnableExperimentalFeatures-End -->

<!-- EnableHashOverride-Begin -->
## EnableHashOverride

<!-- EnableHashOverride-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableHashOverride-Applicability-End -->

<!-- EnableHashOverride-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableHashOverride
```
<!-- EnableHashOverride-OmaUri-End -->

<!-- EnableHashOverride-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether or not the Windows Package Manager can be configured to enable the ability override the SHA256 security validation in settings.

If you enable or do not configure this policy, users will be able to enable the ability override the SHA256 security validation in the Windows Package Manager settings.

If you disable this policy, users will not be able to enable the ability override the SHA256 security validation in the Windows Package Manager settings.
<!-- EnableHashOverride-Description-End -->

<!-- EnableHashOverride-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableHashOverride-Editable-End -->

<!-- EnableHashOverride-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableHashOverride-DFProperties-End -->

<!-- EnableHashOverride-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableHashOverride |
| Friendly Name | Enable App Installer Hash Override |
| Location | Computer Configuration |
| Path | Windows Components > Desktop App Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppInstaller |
| Registry Value Name | EnableHashOverride |
| ADMX File Name | DesktopAppInstaller.admx |
<!-- EnableHashOverride-AdmxBacked-End -->

<!-- EnableHashOverride-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableHashOverride-Examples-End -->

<!-- EnableHashOverride-End -->

<!-- EnableLocalManifestFiles-Begin -->
## EnableLocalManifestFiles

<!-- EnableLocalManifestFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableLocalManifestFiles-Applicability-End -->

<!-- EnableLocalManifestFiles-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableLocalManifestFiles
```
<!-- EnableLocalManifestFiles-OmaUri-End -->

<!-- EnableLocalManifestFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether users can install packages with local manifest files.

If you enable or do not configure this setting, users will be able to install packages with local manifests using the Windows Package Manager.

If you disable this setting, users will not be able to install packages with local manifests using the Windows Package Manager.
<!-- EnableLocalManifestFiles-Description-End -->

<!-- EnableLocalManifestFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableLocalManifestFiles-Editable-End -->

<!-- EnableLocalManifestFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableLocalManifestFiles-DFProperties-End -->

<!-- EnableLocalManifestFiles-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableLocalManifestFiles |
| Friendly Name | Enable App Installer Local Manifest Files |
| Location | Computer Configuration |
| Path | Windows Components > Desktop App Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppInstaller |
| Registry Value Name | EnableLocalManifestFiles |
| ADMX File Name | DesktopAppInstaller.admx |
<!-- EnableLocalManifestFiles-AdmxBacked-End -->

<!-- EnableLocalManifestFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableLocalManifestFiles-Examples-End -->

<!-- EnableLocalManifestFiles-End -->

<!-- EnableMicrosoftStoreSource-Begin -->
## EnableMicrosoftStoreSource

<!-- EnableMicrosoftStoreSource-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableMicrosoftStoreSource-Applicability-End -->

<!-- EnableMicrosoftStoreSource-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableMicrosoftStoreSource
```
<!-- EnableMicrosoftStoreSource-OmaUri-End -->

<!-- EnableMicrosoftStoreSource-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the Microsoft Store source included with the Windows Package Manager.

If you do not configure this setting, the Microsoft Store source for the Windows Package manager will be available and can be removed.

If you enable this setting, the Microsoft Store source for the Windows Package Manager will be available and cannot be removed.

If you disable this setting the Microsoft Store source for the Windows Package Manager will not be available.
<!-- EnableMicrosoftStoreSource-Description-End -->

<!-- EnableMicrosoftStoreSource-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableMicrosoftStoreSource-Editable-End -->

<!-- EnableMicrosoftStoreSource-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableMicrosoftStoreSource-DFProperties-End -->

<!-- EnableMicrosoftStoreSource-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableMicrosoftStoreSource |
| Friendly Name | Enable App Installer Microsoft Store Source |
| Location | Computer Configuration |
| Path | Windows Components > Desktop App Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppInstaller |
| Registry Value Name | EnableMicrosoftStoreSource |
| ADMX File Name | DesktopAppInstaller.admx |
<!-- EnableMicrosoftStoreSource-AdmxBacked-End -->

<!-- EnableMicrosoftStoreSource-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableMicrosoftStoreSource-Examples-End -->

<!-- EnableMicrosoftStoreSource-End -->

<!-- EnableMSAppInstallerProtocol-Begin -->
## EnableMSAppInstallerProtocol

<!-- EnableMSAppInstallerProtocol-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableMSAppInstallerProtocol-Applicability-End -->

<!-- EnableMSAppInstallerProtocol-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableMSAppInstallerProtocol
```
<!-- EnableMSAppInstallerProtocol-OmaUri-End -->

<!-- EnableMSAppInstallerProtocol-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether users can install packages from a website that is using the ms-appinstaller protocol.

If you enable or do not configure this setting, users will be able to install packages from websites that use this protocol.

If you disable this setting, users will not be able to install packages from websites that use this protocol.
<!-- EnableMSAppInstallerProtocol-Description-End -->

<!-- EnableMSAppInstallerProtocol-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableMSAppInstallerProtocol-Editable-End -->

<!-- EnableMSAppInstallerProtocol-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableMSAppInstallerProtocol-DFProperties-End -->

<!-- EnableMSAppInstallerProtocol-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableMSAppInstallerProtocol |
| Friendly Name | Enable App Installer ms-appinstaller protocol |
| Location | Computer Configuration |
| Path | Windows Components > Desktop App Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppInstaller |
| Registry Value Name | EnableMSAppInstallerProtocol |
| ADMX File Name | DesktopAppInstaller.admx |
<!-- EnableMSAppInstallerProtocol-AdmxBacked-End -->

<!-- EnableMSAppInstallerProtocol-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableMSAppInstallerProtocol-Examples-End -->

<!-- EnableMSAppInstallerProtocol-End -->

<!-- EnableSettings-Begin -->
## EnableSettings

<!-- EnableSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableSettings-Applicability-End -->

<!-- EnableSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableSettings
```
<!-- EnableSettings-OmaUri-End -->

<!-- EnableSettings-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether users can change their settings.

If you enable or do not configure this setting, users will be able to change settings for the Windows Package Manager.

If you disable this setting, users will not be able to change settings for the Windows Package Manager.
<!-- EnableSettings-Description-End -->

<!-- EnableSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The settings are stored inside of a .json file on the user’s system. It may be possible for users to gain access to the file using elevated credentials. This won't override any policy settings that have been configured by this policy.
<!-- EnableSettings-Editable-End -->

<!-- EnableSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableSettings-DFProperties-End -->

<!-- EnableSettings-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableSettings |
| Friendly Name | Enable App Installer Settings |
| Location | Computer Configuration |
| Path | Windows Components > Desktop App Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppInstaller |
| Registry Value Name | EnableSettings |
| ADMX File Name | DesktopAppInstaller.admx |
<!-- EnableSettings-AdmxBacked-End -->

<!-- EnableSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableSettings-Examples-End -->

<!-- EnableSettings-End -->

<!-- SourceAutoUpdateInterval-Begin -->
## SourceAutoUpdateInterval

<!-- SourceAutoUpdateInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- SourceAutoUpdateInterval-Applicability-End -->

<!-- SourceAutoUpdateInterval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/SourceAutoUpdateInterval
```
<!-- SourceAutoUpdateInterval-OmaUri-End -->

<!-- SourceAutoUpdateInterval-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the auto update interval for package-based sources.

If you disable or do not configure this setting, the default interval or the value specified in settings will be used by the Windows Package Manager.

If you enable this setting, the number of minutes specified will be used by the Windows Package Manager.
<!-- SourceAutoUpdateInterval-Description-End -->

<!-- SourceAutoUpdateInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SourceAutoUpdateInterval-Editable-End -->

<!-- SourceAutoUpdateInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SourceAutoUpdateInterval-DFProperties-End -->

<!-- SourceAutoUpdateInterval-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SourceAutoUpdateInterval |
| Friendly Name | Set App Installer Source Auto Update Interval In Minutes |
| Location | Computer Configuration |
| Path | Windows Components > Desktop App Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppInstaller |
| ADMX File Name | DesktopAppInstaller.admx |
<!-- SourceAutoUpdateInterval-AdmxBacked-End -->

<!-- SourceAutoUpdateInterval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SourceAutoUpdateInterval-Examples-End -->

<!-- SourceAutoUpdateInterval-End -->

<!-- DesktopAppInstaller-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DesktopAppInstaller-CspMoreInfo-End -->

<!-- DesktopAppInstaller-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
