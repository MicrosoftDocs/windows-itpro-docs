---
title: DesktopAppInstaller Policy CSP
description: Learn more about the DesktopAppInstaller Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- DesktopAppInstaller-Begin -->
# Policy CSP - DesktopAppInstaller

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- DesktopAppInstaller-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DesktopAppInstaller-Editable-End -->

<!-- EnableAdditionalSources-Begin -->
## EnableAdditionalSources

<!-- EnableAdditionalSources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableAdditionalSources-Applicability-End -->

<!-- EnableAdditionalSources-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableAdditionalSources
```
<!-- EnableAdditionalSources-OmaUri-End -->

<!-- EnableAdditionalSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls additional sources provided by the enterprise IT administrator.

- If you don't configure this policy, no additional sources will be configured for the [Windows Package Manager](/windows/package-manager/).

- If you enable this policy, the additional sources will be added to the [Windows Package Manager](/windows/package-manager/) and can't be removed. The representation for each additional source can be obtained from installed sources using '[winget source export](/windows/package-manager/winget)'.

- If you disable this policy, no additional sources can be configured for the [Windows Package Manager](/windows/package-manager/).
<!-- EnableAdditionalSources-Description-End -->

<!-- EnableAdditionalSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableAdditionalSources-Editable-End -->

<!-- EnableAdditionalSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableAdditionalSources-DFProperties-End -->

<!-- EnableAdditionalSources-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableAllowedSources-Applicability-End -->

<!-- EnableAllowedSources-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableAllowedSources
```
<!-- EnableAllowedSources-OmaUri-End -->

<!-- EnableAllowedSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls additional sources allowed by the enterprise IT administrator.

- If you don't configure this policy, users will be able to add or remove additional sources other than those configured by policy.

- If you enable this policy, only the sources specified can be added or removed from the [Windows Package Manager](/windows/package-manager/). The representation for each allowed source can be obtained from installed sources using '[winget source export](/windows/package-manager/winget)'.

- If you disable this policy, no additional sources can be configured for the [Windows Package Manager](/windows/package-manager/).
<!-- EnableAllowedSources-Description-End -->

<!-- EnableAllowedSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableAllowedSources-Editable-End -->

<!-- EnableAllowedSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableAllowedSources-DFProperties-End -->

<!-- EnableAllowedSources-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableAppInstaller-Applicability-End -->

<!-- EnableAppInstaller-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableAppInstaller
```
<!-- EnableAppInstaller-OmaUri-End -->

<!-- EnableAppInstaller-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether the [Windows Package Manager](/windows/package-manager/) can be used by users.

- If you enable or don't configure this setting, users will be able to use the [Windows Package Manager](/windows/package-manager/).

- If you disable this setting, users won't be able to use the [Windows Package Manager](/windows/package-manager/).
<!-- EnableAppInstaller-Description-End -->

<!-- EnableAppInstaller-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Users will still be able to execute the *winget* command. The default help will be displayed, and users will still be able to execute *winget -?* to display the help as well. Any other command will result in the user being informed the operation is disabled by Group Policy.
<!-- EnableAppInstaller-Editable-End -->

<!-- EnableAppInstaller-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableAppInstaller-DFProperties-End -->

<!-- EnableAppInstaller-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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

<!-- EnableBypassCertificatePinningForMicrosoftStore-Begin -->
## EnableBypassCertificatePinningForMicrosoftStore

<!-- EnableBypassCertificatePinningForMicrosoftStore-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableBypassCertificatePinningForMicrosoftStore-Applicability-End -->

<!-- EnableBypassCertificatePinningForMicrosoftStore-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableBypassCertificatePinningForMicrosoftStore
```
<!-- EnableBypassCertificatePinningForMicrosoftStore-OmaUri-End -->

<!-- EnableBypassCertificatePinningForMicrosoftStore-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether the [Windows Package Manager](/windows/package-manager/) will validate the Microsoft Store certificate hash matches to a known Microsoft Store certificate when initiating a connection to the Microsoft Store Source.

- If you enable this policy, the [Windows Package Manager](/windows/package-manager/) will bypass the Microsoft Store certificate validation.

- If you disable this policy, the [Windows Package Manager](/windows/package-manager/) will validate the Microsoft Store certificate used is valid and belongs to the Microsoft Store before communicating with the Microsoft Store source.

- If you don't configure this policy, the [Windows Package Manager](/windows/package-manager/) administrator settings will be adhered to.
<!-- EnableBypassCertificatePinningForMicrosoftStore-Description-End -->

<!-- EnableBypassCertificatePinningForMicrosoftStore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableBypassCertificatePinningForMicrosoftStore-Editable-End -->

<!-- EnableBypassCertificatePinningForMicrosoftStore-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableBypassCertificatePinningForMicrosoftStore-DFProperties-End -->

<!-- EnableBypassCertificatePinningForMicrosoftStore-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableBypassCertificatePinningForMicrosoftStore |
| Friendly Name | Enable App Installer Microsoft Store Source Certificate Validation Bypass |
| Location | Computer Configuration |
| Path | Windows Components > Desktop App Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppInstaller |
| Registry Value Name | EnableBypassCertificatePinningForMicrosoftStore |
| ADMX File Name | DesktopAppInstaller.admx |
<!-- EnableBypassCertificatePinningForMicrosoftStore-AdmxBacked-End -->

<!-- EnableBypassCertificatePinningForMicrosoftStore-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableBypassCertificatePinningForMicrosoftStore-Examples-End -->

<!-- EnableBypassCertificatePinningForMicrosoftStore-End -->

<!-- EnableDefaultSource-Begin -->
## EnableDefaultSource

<!-- EnableDefaultSource-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableDefaultSource-Applicability-End -->

<!-- EnableDefaultSource-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableDefaultSource
```
<!-- EnableDefaultSource-OmaUri-End -->

<!-- EnableDefaultSource-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the default source included with the [Windows Package Manager](/windows/package-manager/).

- If you don't configure this setting, the default source for the [Windows Package Manager](/windows/package-manager/) will be available and can be removed.

- If you enable this setting, the default source for the [Windows Package Manager](/windows/package-manager/) will be available and can't be removed.

- If you disable this setting the default source for the [Windows Package Manager](/windows/package-manager/) won't be available.
<!-- EnableDefaultSource-Description-End -->

<!-- EnableDefaultSource-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableDefaultSource-Editable-End -->

<!-- EnableDefaultSource-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableDefaultSource-DFProperties-End -->

<!-- EnableDefaultSource-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableExperimentalFeatures-Applicability-End -->

<!-- EnableExperimentalFeatures-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableExperimentalFeatures
```
<!-- EnableExperimentalFeatures-OmaUri-End -->

<!-- EnableExperimentalFeatures-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether users can enable experimental features in the [Windows Package Manager](/windows/package-manager/).

- If you enable or don't configure this setting, users will be able to enable experimental features for the [Windows Package Manager](/windows/package-manager/).

- If you disable this setting, users won't be able to enable experimental features for the [Windows Package Manager](/windows/package-manager/).
<!-- EnableExperimentalFeatures-Description-End -->

<!-- EnableExperimentalFeatures-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Experimental features are used during Windows Package Manager development cycle to provide previews for new behaviors. Some of these experimental features may be implemented prior to the Group Policy settings designed to control their behavior.
<!-- EnableExperimentalFeatures-Editable-End -->

<!-- EnableExperimentalFeatures-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableExperimentalFeatures-DFProperties-End -->

<!-- EnableExperimentalFeatures-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableHashOverride-Applicability-End -->

<!-- EnableHashOverride-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableHashOverride
```
<!-- EnableHashOverride-OmaUri-End -->

<!-- EnableHashOverride-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether or not the [Windows Package Manager](/windows/package-manager/) can be configured to enable the ability override the SHA256 security validation in settings.

- If you enable or don't configure this policy, users will be able to enable the ability override the SHA256 security validation in the [Windows Package Manager](/windows/package-manager/) settings.

- If you disable this policy, users won't be able to enable the ability override the SHA256 security validation in the [Windows Package Manager](/windows/package-manager/) settings.
<!-- EnableHashOverride-Description-End -->

<!-- EnableHashOverride-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableHashOverride-Editable-End -->

<!-- EnableHashOverride-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableHashOverride-DFProperties-End -->

<!-- EnableHashOverride-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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

<!-- EnableLocalArchiveMalwareScanOverride-Begin -->
## EnableLocalArchiveMalwareScanOverride

<!-- EnableLocalArchiveMalwareScanOverride-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableLocalArchiveMalwareScanOverride-Applicability-End -->

<!-- EnableLocalArchiveMalwareScanOverride-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableLocalArchiveMalwareScanOverride
```
<!-- EnableLocalArchiveMalwareScanOverride-OmaUri-End -->

<!-- EnableLocalArchiveMalwareScanOverride-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the ability to override malware vulnerability scans when installing an archive file using a local manifest using the command line arguments.

- If you enable this policy, users can override the malware scan when performing a local manifest install of an archive file.

- If you disable this policy, users will be unable to override the malware scan of an archive file when installing using a local manifest.

- If you don't configure this policy, the [Windows Package Manager](/windows/package-manager/) administrator settings will be adhered to.
<!-- EnableLocalArchiveMalwareScanOverride-Description-End -->

<!-- EnableLocalArchiveMalwareScanOverride-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableLocalArchiveMalwareScanOverride-Editable-End -->

<!-- EnableLocalArchiveMalwareScanOverride-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableLocalArchiveMalwareScanOverride-DFProperties-End -->

<!-- EnableLocalArchiveMalwareScanOverride-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableLocalArchiveMalwareScanOverride |
| Friendly Name | Enable App Installer Local Archive Malware Scan Override |
| Location | Computer Configuration |
| Path | Windows Components > Desktop App Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppInstaller |
| Registry Value Name | EnableLocalArchiveMalwareScanOverride |
| ADMX File Name | DesktopAppInstaller.admx |
<!-- EnableLocalArchiveMalwareScanOverride-AdmxBacked-End -->

<!-- EnableLocalArchiveMalwareScanOverride-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableLocalArchiveMalwareScanOverride-Examples-End -->

<!-- EnableLocalArchiveMalwareScanOverride-End -->

<!-- EnableLocalManifestFiles-Begin -->
## EnableLocalManifestFiles

<!-- EnableLocalManifestFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableLocalManifestFiles-Applicability-End -->

<!-- EnableLocalManifestFiles-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableLocalManifestFiles
```
<!-- EnableLocalManifestFiles-OmaUri-End -->

<!-- EnableLocalManifestFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether users can install packages with local manifest files.

- If you enable or don't configure this setting, users will be able to install packages with local manifests using the [Windows Package Manager](/windows/package-manager/).

- If you disable this setting, users won't be able to install packages with local manifests using the [Windows Package Manager](/windows/package-manager/).
<!-- EnableLocalManifestFiles-Description-End -->

<!-- EnableLocalManifestFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableLocalManifestFiles-Editable-End -->

<!-- EnableLocalManifestFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableLocalManifestFiles-DFProperties-End -->

<!-- EnableLocalManifestFiles-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableMicrosoftStoreSource-Applicability-End -->

<!-- EnableMicrosoftStoreSource-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableMicrosoftStoreSource
```
<!-- EnableMicrosoftStoreSource-OmaUri-End -->

<!-- EnableMicrosoftStoreSource-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the Microsoft Store source included with the [Windows Package Manager](/windows/package-manager/).

- If you don't configure this setting, the Microsoft Store source for the Windows Package manager will be available and can be removed.

- If you enable this setting, the Microsoft Store source for the [Windows Package Manager](/windows/package-manager/) will be available and can't be removed.

- If you disable this setting the Microsoft Store source for the [Windows Package Manager](/windows/package-manager/) won't be available.
<!-- EnableMicrosoftStoreSource-Description-End -->

<!-- EnableMicrosoftStoreSource-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableMicrosoftStoreSource-Editable-End -->

<!-- EnableMicrosoftStoreSource-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableMicrosoftStoreSource-DFProperties-End -->

<!-- EnableMicrosoftStoreSource-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableMSAppInstallerProtocol-Applicability-End -->

<!-- EnableMSAppInstallerProtocol-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableMSAppInstallerProtocol
```
<!-- EnableMSAppInstallerProtocol-OmaUri-End -->

<!-- EnableMSAppInstallerProtocol-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether users can install packages from a website that's using the ms-appinstaller protocol.

- If you enable this setting, users will be able to install packages from websites that use this protocol.

- If you disable or don't configure this setting, users won't be able to install packages from websites that use this protocol.
<!-- EnableMSAppInstallerProtocol-Description-End -->

<!-- EnableMSAppInstallerProtocol-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableMSAppInstallerProtocol-Editable-End -->

<!-- EnableMSAppInstallerProtocol-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableMSAppInstallerProtocol-DFProperties-End -->

<!-- EnableMSAppInstallerProtocol-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableSettings-Applicability-End -->

<!-- EnableSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableSettings
```
<!-- EnableSettings-OmaUri-End -->

<!-- EnableSettings-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether users can change their settings.

- If you enable or don't configure this setting, users will be able to change settings for the [Windows Package Manager](/windows/package-manager/).

- If you disable this setting, users won't be able to change settings for the [Windows Package Manager](/windows/package-manager/).
<!-- EnableSettings-Description-End -->

<!-- EnableSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The settings are stored inside of a .json file on the user’s system. It may be possible for users to gain access to the file using elevated credentials. This won't override any policy settings that have been configured by this policy.
<!-- EnableSettings-Editable-End -->

<!-- EnableSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableSettings-DFProperties-End -->

<!-- EnableSettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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

<!-- EnableWindowsPackageManagerCommandLineInterfaces-Begin -->
## EnableWindowsPackageManagerCommandLineInterfaces

<!-- EnableWindowsPackageManagerCommandLineInterfaces-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- EnableWindowsPackageManagerCommandLineInterfaces-Applicability-End -->

<!-- EnableWindowsPackageManagerCommandLineInterfaces-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableWindowsPackageManagerCommandLineInterfaces
```
<!-- EnableWindowsPackageManagerCommandLineInterfaces-OmaUri-End -->

<!-- EnableWindowsPackageManagerCommandLineInterfaces-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy determines if a user can perform an action using the [Windows Package Manager](/windows/package-manager/) through a command line interface (WinGet CLI, or WinGet PowerShell).

If you disable this policy, users won't be able execute the [Windows Package Manager](/windows/package-manager/) CLI, and PowerShell cmdlets.

If you enable, or don't configuring this policy, users will be able to execute the [Windows Package Manager](/windows/package-manager/) CLI commands, and PowerShell cmdlets. (Provided "Enable App Installer" policy isn't disabled).

This policy doesn't override the "Enable App Installer" policy.
<!-- EnableWindowsPackageManagerCommandLineInterfaces-Description-End -->

<!-- EnableWindowsPackageManagerCommandLineInterfaces-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableWindowsPackageManagerCommandLineInterfaces-Editable-End -->

<!-- EnableWindowsPackageManagerCommandLineInterfaces-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableWindowsPackageManagerCommandLineInterfaces-DFProperties-End -->

<!-- EnableWindowsPackageManagerCommandLineInterfaces-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableWindowsPackageManagerCommandLineInterfaces |
| Friendly Name | Enable Windows Package Manager command line interfaces |
| Location | Computer Configuration |
| Path | Windows Components > Desktop App Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppInstaller |
| Registry Value Name | EnableWindowsPackageManagerCommandLineInterfaces |
| ADMX File Name | DesktopAppInstaller.admx |
<!-- EnableWindowsPackageManagerCommandLineInterfaces-AdmxBacked-End -->

<!-- EnableWindowsPackageManagerCommandLineInterfaces-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableWindowsPackageManagerCommandLineInterfaces-Examples-End -->

<!-- EnableWindowsPackageManagerCommandLineInterfaces-End -->

<!-- EnableWindowsPackageManagerConfiguration-Begin -->
## EnableWindowsPackageManagerConfiguration

<!-- EnableWindowsPackageManagerConfiguration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- EnableWindowsPackageManagerConfiguration-Applicability-End -->

<!-- EnableWindowsPackageManagerConfiguration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/EnableWindowsPackageManagerConfiguration
```
<!-- EnableWindowsPackageManagerConfiguration-OmaUri-End -->

<!-- EnableWindowsPackageManagerConfiguration-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether the [Windows Package Manager](/windows/package-manager/) configuration feature can be used by users.

- If you enable or don't configure this setting, users will be able to use the [Windows Package Manager](/windows/package-manager/) configuration feature.

- If you disable this setting, users won't be able to use the [Windows Package Manager](/windows/package-manager/) configuration feature.
<!-- EnableWindowsPackageManagerConfiguration-Description-End -->

<!-- EnableWindowsPackageManagerConfiguration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableWindowsPackageManagerConfiguration-Editable-End -->

<!-- EnableWindowsPackageManagerConfiguration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableWindowsPackageManagerConfiguration-DFProperties-End -->

<!-- EnableWindowsPackageManagerConfiguration-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableWindowsPackageManagerConfiguration |
| Friendly Name | Enable Windows Package Manager Configuration |
| Location | Computer Configuration |
| Path | Windows Components > Desktop App Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppInstaller |
| Registry Value Name | EnableWindowsPackageManagerConfiguration |
| ADMX File Name | DesktopAppInstaller.admx |
<!-- EnableWindowsPackageManagerConfiguration-AdmxBacked-End -->

<!-- EnableWindowsPackageManagerConfiguration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableWindowsPackageManagerConfiguration-Examples-End -->

<!-- EnableWindowsPackageManagerConfiguration-End -->

<!-- SourceAutoUpdateInterval-Begin -->
## SourceAutoUpdateInterval

<!-- SourceAutoUpdateInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- SourceAutoUpdateInterval-Applicability-End -->

<!-- SourceAutoUpdateInterval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DesktopAppInstaller/SourceAutoUpdateInterval
```
<!-- SourceAutoUpdateInterval-OmaUri-End -->

<!-- SourceAutoUpdateInterval-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the auto-update interval for package-based sources. The default source for [Windows Package Manager](/windows/package-manager/) is configured such that an index of the packages is cached on the local machine. The index is downloaded when a user invokes a command, and the interval has passed.

- If you disable or don't configure this setting, the default interval or the value specified in the [Windows Package Manager](/windows/package-manager/) settings will be used.

- If you enable this setting, the number of minutes specified will be used by the [Windows Package Manager](/windows/package-manager/).
<!-- SourceAutoUpdateInterval-Description-End -->

<!-- SourceAutoUpdateInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The default source for Windows Package Manager is configured such that an index of the packages is cached on the local machine. The index is downloaded when a user invokes a command, and the interval has passed (the index is not updated in the background). This setting has no impact on REST-based sources.
<!-- SourceAutoUpdateInterval-Editable-End -->

<!-- SourceAutoUpdateInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SourceAutoUpdateInterval-DFProperties-End -->

<!-- SourceAutoUpdateInterval-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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
