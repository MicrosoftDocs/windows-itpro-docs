---
title: WindowsDefenderApplicationGuard CSP
description: Learn more about the WindowsDefenderApplicationGuard CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/11/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- WindowsDefenderApplicationGuard-Begin -->
# WindowsDefenderApplicationGuard CSP

<!-- WindowsDefenderApplicationGuard-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The WindowsDefenderApplicationGuard configuration service provider (CSP) is used by the enterprise to configure the settings in Microsoft Defender Application Guard. This CSP was added in Windows 10, version 1709.

[!INCLUDE [microsoft-defender-application-guard-mdag-configure-via-mdm](../../../includes/licensing/microsoft-defender-application-guard-mdag-configure-via-mdm.md)]
<!-- WindowsDefenderApplicationGuard-Editable-End -->

<!-- WindowsDefenderApplicationGuard-Tree-Begin -->
The following list shows the WindowsDefenderApplicationGuard configuration service provider nodes:

- ./Device/Vendor/MSFT/WindowsDefenderApplicationGuard
  - [Audit](#audit)
    - [AuditApplicationGuard](#auditauditapplicationguard)
  - [InstallWindowsDefenderApplicationGuard](#installwindowsdefenderapplicationguard)
  - [PlatformStatus](#platformstatus)
  - [Settings](#settings)
    - [AllowCameraMicrophoneRedirection](#settingsallowcameramicrophoneredirection)
    - [AllowPersistence](#settingsallowpersistence)
    - [AllowVirtualGPU](#settingsallowvirtualgpu)
    - [AllowWindowsDefenderApplicationGuard](#settingsallowwindowsdefenderapplicationguard)
    - [BlockNonEnterpriseContent](#settingsblocknonenterprisecontent)
    - [CertificateThumbprints](#settingscertificatethumbprints)
    - [ClipboardFileType](#settingsclipboardfiletype)
    - [ClipboardSettings](#settingsclipboardsettings)
    - [PrintingSettings](#settingsprintingsettings)
    - [SaveFilesToHost](#settingssavefilestohost)
  - [Status](#status)
<!-- WindowsDefenderApplicationGuard-Tree-End -->

<!-- Device-Audit-Begin -->
## Audit

<!-- Device-Audit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Audit-Applicability-End -->

<!-- Device-Audit-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Audit
```
<!-- Device-Audit-OmaUri-End -->

<!-- Device-Audit-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Interior node for Audit.
<!-- Device-Audit-Description-End -->

<!-- Device-Audit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Audit-Editable-End -->

<!-- Device-Audit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Audit-DFProperties-End -->

<!-- Device-Audit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Audit-Examples-End -->

<!-- Device-Audit-End -->

<!-- Device-Audit-AuditApplicationGuard-Begin -->
### Audit/AuditApplicationGuard

<!-- Device-Audit-AuditApplicationGuard-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Audit-AuditApplicationGuard-Applicability-End -->

<!-- Device-Audit-AuditApplicationGuard-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Audit/AuditApplicationGuard
```
<!-- Device-Audit-AuditApplicationGuard-OmaUri-End -->

<!-- Device-Audit-AuditApplicationGuard-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
This policy setting allows you to decide whether auditing events can be collected from Application Guard.
<!-- Device-Audit-AuditApplicationGuard-Description-End -->

<!-- Device-Audit-AuditApplicationGuard-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Audit-AuditApplicationGuard-Editable-End -->

<!-- Device-Audit-AuditApplicationGuard-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Audit-AuditApplicationGuard-DFProperties-End -->

<!-- Device-Audit-AuditApplicationGuard-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Audit event logs aren't collected for Application Guard. |
| 1 | Application Guard inherits its auditing policies from system and starts to audit security events for Application Guard container. |
<!-- Device-Audit-AuditApplicationGuard-AllowedValues-End -->

<!-- Device-Audit-AuditApplicationGuard-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AppHVSI_AuditApplicationGuardConfig |
| Friendly Name | Allow auditing events in Microsoft Defender Application Guard |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Application Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppHVSI |
| Registry Value Name | AuditApplicationGuard |
| ADMX File Name | AppHVSI.admx |
<!-- Device-Audit-AuditApplicationGuard-GpMapping-End -->

<!-- Device-Audit-AuditApplicationGuard-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Audit-AuditApplicationGuard-Examples-End -->

<!-- Device-Audit-AuditApplicationGuard-End -->

<!-- Device-InstallWindowsDefenderApplicationGuard-Begin -->
## InstallWindowsDefenderApplicationGuard

<!-- Device-InstallWindowsDefenderApplicationGuard-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-InstallWindowsDefenderApplicationGuard-Applicability-End -->

<!-- Device-InstallWindowsDefenderApplicationGuard-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/InstallWindowsDefenderApplicationGuard
```
<!-- Device-InstallWindowsDefenderApplicationGuard-OmaUri-End -->

<!-- Device-InstallWindowsDefenderApplicationGuard-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Initiates remote installation of Application Guard feature.
<!-- Device-InstallWindowsDefenderApplicationGuard-Description-End -->

<!-- Device-InstallWindowsDefenderApplicationGuard-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InstallWindowsDefenderApplicationGuard-Editable-End -->

<!-- Device-InstallWindowsDefenderApplicationGuard-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec, Get |
<!-- Device-InstallWindowsDefenderApplicationGuard-DFProperties-End -->

<!-- Device-InstallWindowsDefenderApplicationGuard-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| Install | Will initiate feature install. |
| Uninstall | Will initiate feature uninstall. |
<!-- Device-InstallWindowsDefenderApplicationGuard-AllowedValues-End -->

<!-- Device-InstallWindowsDefenderApplicationGuard-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InstallWindowsDefenderApplicationGuard-Examples-End -->

<!-- Device-InstallWindowsDefenderApplicationGuard-End -->

<!-- Device-PlatformStatus-Begin -->
## PlatformStatus

<!-- Device-PlatformStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-PlatformStatus-Applicability-End -->

<!-- Device-PlatformStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/PlatformStatus
```
<!-- Device-PlatformStatus-OmaUri-End -->

<!-- Device-PlatformStatus-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Returns bitmask that indicates status of Application Guard platform installation and prerequisites on the device. Bit 0 - Set to 1 when Application Guard is enabled into enterprise manage mode. Bit 1 - Set to 1 when the client machine is Hyper-V capable. Bit 2 - Reserved for Microsoft. Bit 3 - Set to 1 when Application Guard is installed on the client machine. Bit 4 - Reserved for Microsoft. Bit 5 - Set to 1 when the client machine meets minimum hardware requirements.
<!-- Device-PlatformStatus-Description-End -->

<!-- Device-PlatformStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PlatformStatus-Editable-End -->

<!-- Device-PlatformStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-PlatformStatus-DFProperties-End -->

<!-- Device-PlatformStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PlatformStatus-Examples-End -->

<!-- Device-PlatformStatus-End -->

<!-- Device-Settings-Begin -->
## Settings

<!-- Device-Settings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Settings-Applicability-End -->

<!-- Device-Settings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Settings
```
<!-- Device-Settings-OmaUri-End -->

<!-- Device-Settings-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Interior Node for Settings.
<!-- Device-Settings-Description-End -->

<!-- Device-Settings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Settings-Editable-End -->

<!-- Device-Settings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Settings-DFProperties-End -->

<!-- Device-Settings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Settings-Examples-End -->

<!-- Device-Settings-End -->

<!-- Device-Settings-AllowCameraMicrophoneRedirection-Begin -->
### Settings/AllowCameraMicrophoneRedirection

<!-- Device-Settings-AllowCameraMicrophoneRedirection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Settings-AllowCameraMicrophoneRedirection-Applicability-End -->

<!-- Device-Settings-AllowCameraMicrophoneRedirection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Settings/AllowCameraMicrophoneRedirection
```
<!-- Device-Settings-AllowCameraMicrophoneRedirection-OmaUri-End -->

<!-- Device-Settings-AllowCameraMicrophoneRedirection-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
This policy setting allows you to determine whether applications inside Microsoft Defender Application Guard can access the device's camera and microphone when these settings are enabled on the user's device.

- If you enable this policy setting, applications inside Microsoft Defender Application Guard will be able to access the camera and microphone on the user's device.

- If you disable or don't configure this policy setting, applications inside Microsoft Defender Application Guard will be unable to access the camera and microphone on the user's device.
<!-- Device-Settings-AllowCameraMicrophoneRedirection-Description-End -->

<!-- Device-Settings-AllowCameraMicrophoneRedirection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Settings-AllowCameraMicrophoneRedirection-Editable-End -->

<!-- Device-Settings-AllowCameraMicrophoneRedirection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Settings-AllowCameraMicrophoneRedirection-DFProperties-End -->

<!-- Device-Settings-AllowCameraMicrophoneRedirection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Microsoft Defender Application Guard can't access the device’s camera and microphone. When the policy isn't configured, it's the same as disabled (0). |
| 1 | Turns on the functionality to allow Microsoft Defender Application Guard to access the device’s camera and microphone. |
<!-- Device-Settings-AllowCameraMicrophoneRedirection-AllowedValues-End -->

<!-- Device-Settings-AllowCameraMicrophoneRedirection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AppHVSI_AllowCameraMicrophoneRedirectionConfig |
| Friendly Name | Allow camera and microphone access in Microsoft Defender Application Guard |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Application Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppHVSI |
| Registry Value Name | AllowCameraMicrophoneRedirection |
| ADMX File Name | AppHVSI.admx |
<!-- Device-Settings-AllowCameraMicrophoneRedirection-GpMapping-End -->

<!-- Device-Settings-AllowCameraMicrophoneRedirection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Settings-AllowCameraMicrophoneRedirection-Examples-End -->

<!-- Device-Settings-AllowCameraMicrophoneRedirection-End -->

<!-- Device-Settings-AllowPersistence-Begin -->
### Settings/AllowPersistence

<!-- Device-Settings-AllowPersistence-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Settings-AllowPersistence-Applicability-End -->

<!-- Device-Settings-AllowPersistence-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Settings/AllowPersistence
```
<!-- Device-Settings-AllowPersistence-OmaUri-End -->

<!-- Device-Settings-AllowPersistence-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
This policy setting allows you to decide whether data should persist across different sessions in Application Guard.
<!-- Device-Settings-AllowPersistence-Description-End -->

<!-- Device-Settings-AllowPersistence-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Settings-AllowPersistence-Editable-End -->

<!-- Device-Settings-AllowPersistence-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Settings-AllowPersistence-DFProperties-End -->

<!-- Device-Settings-AllowPersistence-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Application Guard discards user-downloaded files and other items (such as, cookies, Favorites, and so on) during machine restart or user log-off. |
| 1 | Application Guard saves user-downloaded files and other items (such as, cookies, Favorites, and so on) for use in future Application Guard sessions. |
<!-- Device-Settings-AllowPersistence-AllowedValues-End -->

<!-- Device-Settings-AllowPersistence-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AppHVSI_AllowPersistence |
| Friendly Name | Allow data persistence for Microsoft Defender Application Guard |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Application Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppHVSI |
| Registry Value Name | AllowPersistence |
| ADMX File Name | AppHVSI.admx |
<!-- Device-Settings-AllowPersistence-GpMapping-End -->

<!-- Device-Settings-AllowPersistence-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Settings-AllowPersistence-Examples-End -->

<!-- Device-Settings-AllowPersistence-End -->

<!-- Device-Settings-AllowVirtualGPU-Begin -->
### Settings/AllowVirtualGPU

<!-- Device-Settings-AllowVirtualGPU-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Settings-AllowVirtualGPU-Applicability-End -->

<!-- Device-Settings-AllowVirtualGPU-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Settings/AllowVirtualGPU
```
<!-- Device-Settings-AllowVirtualGPU-OmaUri-End -->

<!-- Device-Settings-AllowVirtualGPU-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
This policy setting allows you to determine whether Application Guard can use the virtual Graphics Processing Unit (GPU) to process graphics. If you enable this setting, Microsoft Defender Application Guard uses Hyper-V to access supported, high-security rendering graphics hardware (GPUs). These GPUs improve rendering performance and battery life while using Microsoft Defender Application Guard, particularly for video playback and other graphics-intensive use cases. If you enable this setting without connecting any high-security rendering graphics hardware, Microsoft Defender Application Guard will automatically revert to software-based (CPU) rendering.
<!-- Device-Settings-AllowVirtualGPU-Description-End -->

<!-- Device-Settings-AllowVirtualGPU-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!WARNING]
> Enabling this setting with potentially compromised graphics devices or drivers might pose a risk to the host device.
<!-- Device-Settings-AllowVirtualGPU-Editable-End -->

<!-- Device-Settings-AllowVirtualGPU-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Settings-AllowVirtualGPU-DFProperties-End -->

<!-- Device-Settings-AllowVirtualGPU-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Cannot access the vGPU and uses the CPU to support rendering graphics. When the policy isn't configured, it's the same as disabled (0). |
| 1 | Turns on the functionality to access the vGPU offloading graphics rendering from the CPU. This can create a faster experience when working with graphics intense websites or watching video within the container. |
<!-- Device-Settings-AllowVirtualGPU-AllowedValues-End -->

<!-- Device-Settings-AllowVirtualGPU-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AppHVSI_AllowVirtualGPU |
| Friendly Name | Allow hardware-accelerated rendering for Microsoft Defender Application Guard |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Application Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppHVSI |
| Registry Value Name | AllowVirtualGPU |
| ADMX File Name | AppHVSI.admx |
<!-- Device-Settings-AllowVirtualGPU-GpMapping-End -->

<!-- Device-Settings-AllowVirtualGPU-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Settings-AllowVirtualGPU-Examples-End -->

<!-- Device-Settings-AllowVirtualGPU-End -->

<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-Begin -->
### Settings/AllowWindowsDefenderApplicationGuard

<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-Applicability-End -->

<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Settings/AllowWindowsDefenderApplicationGuard
```
<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-OmaUri-End -->

<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Turn on Microsoft Defender Application Guard in Enterprise Mode.
<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-Description-End -->

<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-Editable-End -->

<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-DFProperties-End -->

<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disable Microsoft Defender Application Guard. |
| 1 | Enable Microsoft Defender Application Guard for Microsoft Edge ONLY. |
| 2 | Enable Microsoft Defender Application Guard for isolated Windows environments ONLY. |
| 3 | Enable Microsoft Defender Application Guard for Microsoft Edge AND isolated Windows environments. |
<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-AllowedValues-End -->

<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowAppHVSI |
| Path | Windows Components > Microsoft Defender Application Guard |
<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-GpMapping-End -->

<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-Examples-End -->

<!-- Device-Settings-AllowWindowsDefenderApplicationGuard-End -->

<!-- Device-Settings-BlockNonEnterpriseContent-Begin -->
### Settings/BlockNonEnterpriseContent

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- Device-Settings-BlockNonEnterpriseContent-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Settings-BlockNonEnterpriseContent-Applicability-End -->

<!-- Device-Settings-BlockNonEnterpriseContent-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Settings/BlockNonEnterpriseContent
```
<!-- Device-Settings-BlockNonEnterpriseContent-OmaUri-End -->

<!-- Device-Settings-BlockNonEnterpriseContent-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
This policy setting allows you to decide whether websites can load non-enterprise content in Microsoft Edge and Internet Explorer.
<!-- Device-Settings-BlockNonEnterpriseContent-Description-End -->

<!-- Device-Settings-BlockNonEnterpriseContent-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy setting is no longer supported in the new Microsoft Edge browser. The policy will be deprecated and removed in a future release. Webpages that contain mixed content, both enterprise and non-enterprise, may load incorrectly or fail completely if this feature is enabled.
<!-- Device-Settings-BlockNonEnterpriseContent-Editable-End -->

<!-- Device-Settings-BlockNonEnterpriseContent-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Settings-BlockNonEnterpriseContent-DFProperties-End -->

<!-- Device-Settings-BlockNonEnterpriseContent-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Non-enterprise content embedded in enterprise sites is allowed to open outside of the Microsoft Defender Application Guard container, directly in Internet Explorer and Microsoft Edge. |
| 1 | Non-enterprise content embedded on enterprise sites are stopped from opening in Internet Explorer or Microsoft Edge outside of Microsoft Defender Application Guard. |
<!-- Device-Settings-BlockNonEnterpriseContent-AllowedValues-End -->

<!-- Device-Settings-BlockNonEnterpriseContent-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AppHVSI_BlockNonEnterpriseContentConfig |
| Friendly Name | Prevent enterprise websites from loading non-enterprise content in Microsoft Edge and Internet Explorer |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Application Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppHVSI |
| Registry Value Name | BlockNonEnterpriseContent |
| ADMX File Name | AppHVSI.admx |
<!-- Device-Settings-BlockNonEnterpriseContent-GpMapping-End -->

<!-- Device-Settings-BlockNonEnterpriseContent-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Settings-BlockNonEnterpriseContent-Examples-End -->

<!-- Device-Settings-BlockNonEnterpriseContent-End -->

<!-- Device-Settings-CertificateThumbprints-Begin -->
### Settings/CertificateThumbprints

<!-- Device-Settings-CertificateThumbprints-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Settings-CertificateThumbprints-Applicability-End -->

<!-- Device-Settings-CertificateThumbprints-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Settings/CertificateThumbprints
```
<!-- Device-Settings-CertificateThumbprints-OmaUri-End -->

<!-- Device-Settings-CertificateThumbprints-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
This policy setting allows certain device level Root Certificates to be shared with the Microsoft Defender Application Guard container.

- If you enable this setting, certificates with a thumbprint matching the ones specified will be transferred into the container. Multiple certificates can be specified by using a comma to separate the thumbprints for each certificate you want to transfer. Here's an example: b4e72779a8a362c860c36a6461f31e3aa7e58c14,1b1d49f06d2a697a544a1059bd59a7b058cda924.

- If you disable or don't configure this setting, certificates aren't shared with the Microsoft Defender Application Guard container.
<!-- Device-Settings-CertificateThumbprints-Description-End -->

<!-- Device-Settings-CertificateThumbprints-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> To enforce this policy, device restart or user logon/logoff is required.
<!-- Device-Settings-CertificateThumbprints-Editable-End -->

<!-- Device-Settings-CertificateThumbprints-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `,`) |
<!-- Device-Settings-CertificateThumbprints-DFProperties-End -->

<!-- Device-Settings-CertificateThumbprints-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AppHVSI_CertificateThumbprints |
| Friendly Name | Allow Microsoft Defender Application Guard to use Root Certificate Authorities from the user’s device |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Application Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppHVSI |
| ADMX File Name | AppHVSI.admx |
<!-- Device-Settings-CertificateThumbprints-GpMapping-End -->

<!-- Device-Settings-CertificateThumbprints-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Settings-CertificateThumbprints-Examples-End -->

<!-- Device-Settings-CertificateThumbprints-End -->

<!-- Device-Settings-ClipboardFileType-Begin -->
### Settings/ClipboardFileType

<!-- Device-Settings-ClipboardFileType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Settings-ClipboardFileType-Applicability-End -->

<!-- Device-Settings-ClipboardFileType-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Settings/ClipboardFileType
```
<!-- Device-Settings-ClipboardFileType-OmaUri-End -->

<!-- Device-Settings-ClipboardFileType-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Determines the type of content that can be copied from the host to Application Guard environment and vice versa.
<!-- Device-Settings-ClipboardFileType-Description-End -->

<!-- Device-Settings-ClipboardFileType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Settings-ClipboardFileType-Editable-End -->

<!-- Device-Settings-ClipboardFileType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Settings-ClipboardFileType-DFProperties-End -->

<!-- Device-Settings-ClipboardFileType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Allow text copying. |
| 2 | Allow image copying. |
| 3 | Allow text and image copying. |
<!-- Device-Settings-ClipboardFileType-AllowedValues-End -->

<!-- Device-Settings-ClipboardFileType-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AppHVSI_ClipboardConfig |
| Friendly Name | Configure Microsoft Defender Application Guard clipboard settings |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Application Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppHVSI |
| ADMX File Name | AppHVSI.admx |
<!-- Device-Settings-ClipboardFileType-GpMapping-End -->

<!-- Device-Settings-ClipboardFileType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Settings-ClipboardFileType-Examples-End -->

<!-- Device-Settings-ClipboardFileType-End -->

<!-- Device-Settings-ClipboardSettings-Begin -->
### Settings/ClipboardSettings

<!-- Device-Settings-ClipboardSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Settings-ClipboardSettings-Applicability-End -->

<!-- Device-Settings-ClipboardSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Settings/ClipboardSettings
```
<!-- Device-Settings-ClipboardSettings-OmaUri-End -->

<!-- Device-Settings-ClipboardSettings-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
This policy setting allows you to decide how the clipboard behaves while in Application Guard.
<!-- Device-Settings-ClipboardSettings-Description-End -->

<!-- Device-Settings-ClipboardSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Settings-ClipboardSettings-Editable-End -->

<!-- Device-Settings-ClipboardSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Settings-ClipboardSettings-DFProperties-End -->

<!-- Device-Settings-ClipboardSettings-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Completely turns Off the clipboard functionality for the Application Guard. |
| 1 | Turns On clipboard operation from an isolated session to the host. |
| 2 | Turns On clipboard operation from the host to an isolated session. |
| 3 | Turns On clipboard operation in both the directions. |
<!-- Device-Settings-ClipboardSettings-AllowedValues-End -->

<!-- Device-Settings-ClipboardSettings-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AppHVSI_ClipboardConfig |
| Friendly Name | Configure Microsoft Defender Application Guard clipboard settings |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Application Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppHVSI |
| ADMX File Name | AppHVSI.admx |
<!-- Device-Settings-ClipboardSettings-GpMapping-End -->

<!-- Device-Settings-ClipboardSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Settings-ClipboardSettings-Examples-End -->

<!-- Device-Settings-ClipboardSettings-End -->

<!-- Device-Settings-PrintingSettings-Begin -->
### Settings/PrintingSettings

<!-- Device-Settings-PrintingSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Settings-PrintingSettings-Applicability-End -->

<!-- Device-Settings-PrintingSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Settings/PrintingSettings
```
<!-- Device-Settings-PrintingSettings-OmaUri-End -->

<!-- Device-Settings-PrintingSettings-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
This policy setting allows you to decide how the print functionality behaves while in Application Guard.
<!-- Device-Settings-PrintingSettings-Description-End -->

<!-- Device-Settings-PrintingSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Settings-PrintingSettings-Editable-End -->

<!-- Device-Settings-PrintingSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Settings-PrintingSettings-DFProperties-End -->

<!-- Device-Settings-PrintingSettings-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disables all print functionality. |
| 1 | Enables only XPS printing. |
| 2 | Enables only PDF printing. |
| 3 | Enables both PDF and XPS printing. |
| 4 | Enables only local printing. |
| 5 | Enables both local and XPS printing. |
| 6 | Enables both local and PDF printing. |
| 7 | Enables local, PDF, and XPS printing. |
| 8 | Enables only network printing. |
| 9 | Enables both network and XPS printing. |
| 10 | Enables both network and PDF printing. |
| 11 | Enables network, PDF, and XPS printing. |
| 12 | Enables both network and local printing. |
| 13 | Enables network, local, and XPS printing. |
| 14 | Enables network, local, and PDF printing. |
| 15 | Enables all printing. |
<!-- Device-Settings-PrintingSettings-AllowedValues-End -->

<!-- Device-Settings-PrintingSettings-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AppHVSI_PrintingConfig |
| Friendly Name | Configure Microsoft Defender Application Guard print settings |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Application Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppHVSI |
| ADMX File Name | AppHVSI.admx |
<!-- Device-Settings-PrintingSettings-GpMapping-End -->

<!-- Device-Settings-PrintingSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Settings-PrintingSettings-Examples-End -->

<!-- Device-Settings-PrintingSettings-End -->

<!-- Device-Settings-SaveFilesToHost-Begin -->
### Settings/SaveFilesToHost

<!-- Device-Settings-SaveFilesToHost-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-Settings-SaveFilesToHost-Applicability-End -->

<!-- Device-Settings-SaveFilesToHost-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Settings/SaveFilesToHost
```
<!-- Device-Settings-SaveFilesToHost-OmaUri-End -->

<!-- Device-Settings-SaveFilesToHost-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
This policy setting allows you to determine whether users can elect to download files from Edge in the container and persist files them from container to the host operating system.
<!-- Device-Settings-SaveFilesToHost-Description-End -->

<!-- Device-Settings-SaveFilesToHost-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Settings-SaveFilesToHost-Editable-End -->

<!-- Device-Settings-SaveFilesToHost-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Settings-SaveFilesToHost-DFProperties-End -->

<!-- Device-Settings-SaveFilesToHost-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | The user can't download files from Edge in the container to the host file system. When the policy isn't configured, it's the same as disabled (0). |
| 1 | Turns on the functionality to allow users to download files from Edge in the container to the host file system. |
<!-- Device-Settings-SaveFilesToHost-AllowedValues-End -->

<!-- Device-Settings-SaveFilesToHost-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AppHVSI_SaveFilesToHost |
| Friendly Name | Allow files to download and save to the host operating system from Microsoft Defender Application Guard |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Application Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppHVSI |
| Registry Value Name | SaveFilesToHost |
| ADMX File Name | AppHVSI.admx |
<!-- Device-Settings-SaveFilesToHost-GpMapping-End -->

<!-- Device-Settings-SaveFilesToHost-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Settings-SaveFilesToHost-Examples-End -->

<!-- Device-Settings-SaveFilesToHost-End -->

<!-- Device-Status-Begin -->
## Status

<!-- Device-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Status-Applicability-End -->

<!-- Device-Status-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WindowsDefenderApplicationGuard/Status
```
<!-- Device-Status-OmaUri-End -->

<!-- Device-Status-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Returns bitmask that indicates status of Application Guard installation and pre-requisites on the device. Bit 0 - Set to 1 when Application Guard is enabled into enterprise manage mode. Bit 1 - Set to 1 when the client machine is Hyper-V capable. Bit 2 - Set to 1 when the client machine has a valid OS license and SKU. Bit 3 - Set to 1 when Application Guard installed on the client machine. Bit 4 - Set to 1 when required Network Isolation Policies are configured. Bit 5 - Set to 1 when the client machine meets minimum hardware requirements. Bit 6 - Set to 1 when system reboot is required.
<!-- Device-Status-Description-End -->

<!-- Device-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Status-Editable-End -->

<!-- Device-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Status-DFProperties-End -->

<!-- Device-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Status-Examples-End -->

<!-- Device-Status-End -->

<!-- WindowsDefenderApplicationGuard-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- WindowsDefenderApplicationGuard-CspMoreInfo-End -->

<!-- WindowsDefenderApplicationGuard-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
