---
title: WindowsSandbox Policy CSP
description: Learn more about the WindowsSandbox Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- WindowsSandbox-Begin -->
# Policy CSP - WindowsSandbox

<!-- WindowsSandbox-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WindowsSandbox-Editable-End -->

<!-- AllowAudioInput-Begin -->
## AllowAudioInput

<!-- AllowAudioInput-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowAudioInput-Applicability-End -->

<!-- AllowAudioInput-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsSandbox/AllowAudioInput
```
<!-- AllowAudioInput-OmaUri-End -->

<!-- AllowAudioInput-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables or disables audio input to the Sandbox.

- If you enable this policy setting, Windows Sandbox will be able to receive audio input from the user. Applications using a microphone may require this setting.

- If you disable this policy setting, Windows Sandbox won't be able to receive audio input from the user. Applications using a microphone may not function properly with this setting.

- If you don't configure this policy setting, audio input will be enabled.

Note that there may be security implications of exposing host audio input to the container.
<!-- AllowAudioInput-Description-End -->

<!-- AllowAudioInput-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> You must restart Windows Sandbox for any changes to this policy setting to take effect.
<!-- AllowAudioInput-Editable-End -->

<!-- AllowAudioInput-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1]` |
| Default Value  | 1 |
<!-- AllowAudioInput-DFProperties-End -->

<!-- AllowAudioInput-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowAudioInput |
| Friendly Name | Allow audio input in Windows Sandbox |
| Location | Computer Configuration |
| Path | Windows Components > Windows Sandbox |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Sandbox |
| Registry Value Name | AllowAudioInput |
| ADMX File Name | WindowsSandbox.admx |
<!-- AllowAudioInput-GpMapping-End -->

<!-- AllowAudioInput-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAudioInput-Examples-End -->

<!-- AllowAudioInput-End -->

<!-- AllowClipboardRedirection-Begin -->
## AllowClipboardRedirection

<!-- AllowClipboardRedirection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowClipboardRedirection-Applicability-End -->

<!-- AllowClipboardRedirection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsSandbox/AllowClipboardRedirection
```
<!-- AllowClipboardRedirection-OmaUri-End -->

<!-- AllowClipboardRedirection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables or disables clipboard sharing with the sandbox.

- If you enable this policy setting, copy and paste between the host and Windows Sandbox are permitted.

- If you disable this policy setting, copy and paste in and out of Sandbox will be restricted.

- If you don't configure this policy setting, clipboard sharing will be enabled.
<!-- AllowClipboardRedirection-Description-End -->

<!-- AllowClipboardRedirection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> You must restart Windows Sandbox for any changes to this policy setting to take effect.
<!-- AllowClipboardRedirection-Editable-End -->

<!-- AllowClipboardRedirection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1]` |
| Default Value  | 1 |
<!-- AllowClipboardRedirection-DFProperties-End -->

<!-- AllowClipboardRedirection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowClipboardRedirection |
| Friendly Name | Allow clipboard sharing with Windows Sandbox |
| Location | Computer Configuration |
| Path | Windows Components > Windows Sandbox |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Sandbox |
| Registry Value Name | AllowClipboardRedirection |
| ADMX File Name | WindowsSandbox.admx |
<!-- AllowClipboardRedirection-GpMapping-End -->

<!-- AllowClipboardRedirection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowClipboardRedirection-Examples-End -->

<!-- AllowClipboardRedirection-End -->

<!-- AllowMappedFolders-Begin -->
## AllowMappedFolders

<!-- AllowMappedFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- AllowMappedFolders-Applicability-End -->

<!-- AllowMappedFolders-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsSandbox/AllowMappedFolders
```
<!-- AllowMappedFolders-OmaUri-End -->

<!-- AllowMappedFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables or disables mapping folders into sandbox.

- If you enable this policy setting, mapping folders from the host into Sandbox will be permitted.

- If you enable this policy setting and disable write to mapped folders, mapping folders from the host into Sandbox will be permitted, but Sandbox will only have permission to read the files.

- If you disable this policy setting, mapping folders from the host into Sandbox won't be permitted.

- If you don't configure this policy setting, mapped folders will be enabled.

Note that there may be security implications of exposing folders from the host into the container.
<!-- AllowMappedFolders-Description-End -->

<!-- AllowMappedFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowMappedFolders-Editable-End -->

<!-- AllowMappedFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1]` |
| Default Value  | 1 |
<!-- AllowMappedFolders-DFProperties-End -->

<!-- AllowMappedFolders-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowMappedFolders |
| Friendly Name | Allow mapping folders into Windows Sandbox |
| Location | Computer Configuration |
| Path | Windows Components > Windows Sandbox |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Sandbox |
| Registry Value Name | AllowMappedFolders |
| ADMX File Name | WindowsSandbox.admx |
<!-- AllowMappedFolders-GpMapping-End -->

<!-- AllowMappedFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowMappedFolders-Examples-End -->

<!-- AllowMappedFolders-End -->

<!-- AllowNetworking-Begin -->
## AllowNetworking

<!-- AllowNetworking-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowNetworking-Applicability-End -->

<!-- AllowNetworking-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsSandbox/AllowNetworking
```
<!-- AllowNetworking-OmaUri-End -->

<!-- AllowNetworking-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables or disables networking in the sandbox. You can disable network access to decrease the attack surface exposed by the sandbox.

- If you enable this policy setting, networking is done by creating a virtual switch on the host, and connects the Windows Sandbox to it via a virtual NIC.

- If you disable this policy setting, networking is disabled in Windows Sandbox.

- If you don't configure this policy setting, networking will be enabled.

Note that enabling networking can expose untrusted applications to the internal network.
<!-- AllowNetworking-Description-End -->

<!-- AllowNetworking-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> You must restart Windows Sandbox for any changes to this policy setting to take effect.
<!-- AllowNetworking-Editable-End -->

<!-- AllowNetworking-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1]` |
| Default Value  | 1 |
<!-- AllowNetworking-DFProperties-End -->

<!-- AllowNetworking-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowNetworking |
| Friendly Name | Allow networking in Windows Sandbox |
| Location | Computer Configuration |
| Path | Windows Components > Windows Sandbox |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Sandbox |
| Registry Value Name | AllowNetworking |
| ADMX File Name | WindowsSandbox.admx |
<!-- AllowNetworking-GpMapping-End -->

<!-- AllowNetworking-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowNetworking-Examples-End -->

<!-- AllowNetworking-End -->

<!-- AllowPrinterRedirection-Begin -->
## AllowPrinterRedirection

<!-- AllowPrinterRedirection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowPrinterRedirection-Applicability-End -->

<!-- AllowPrinterRedirection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsSandbox/AllowPrinterRedirection
```
<!-- AllowPrinterRedirection-OmaUri-End -->

<!-- AllowPrinterRedirection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables or disables printer sharing from the host into the Sandbox.

- If you enable this policy setting, host printers will be shared into Windows Sandbox.

- If you disable this policy setting, Windows Sandbox won't be able to view printers from the host.

- If you don't configure this policy setting, printer redirection will be disabled.
<!-- AllowPrinterRedirection-Description-End -->

<!-- AllowPrinterRedirection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> You must restart Windows Sandbox for any changes to this policy setting to take effect.
<!-- AllowPrinterRedirection-Editable-End -->

<!-- AllowPrinterRedirection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1]` |
| Default Value  | 1 |
<!-- AllowPrinterRedirection-DFProperties-End -->

<!-- AllowPrinterRedirection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowPrinterRedirection |
| Friendly Name | Allow printer sharing with Windows Sandbox |
| Location | Computer Configuration |
| Path | Windows Components > Windows Sandbox |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Sandbox |
| Registry Value Name | AllowPrinterRedirection |
| ADMX File Name | WindowsSandbox.admx |
<!-- AllowPrinterRedirection-GpMapping-End -->

<!-- AllowPrinterRedirection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowPrinterRedirection-Examples-End -->

<!-- AllowPrinterRedirection-End -->

<!-- AllowVGPU-Begin -->
## AllowVGPU

<!-- AllowVGPU-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowVGPU-Applicability-End -->

<!-- AllowVGPU-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsSandbox/AllowVGPU
```
<!-- AllowVGPU-OmaUri-End -->

<!-- AllowVGPU-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting is to enable or disable the virtualized GPU.

- If you enable this policy setting, vGPU will be supported in the Windows Sandbox.

- If you disable this policy setting, Windows Sandbox will use software rendering, which can be slower than virtualized GPU.

- If you don't configure this policy setting, vGPU will be enabled.

Note that enabling virtualized GPU can potentially increase the attack surface of the sandbox.
<!-- AllowVGPU-Description-End -->

<!-- AllowVGPU-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> You must restart Windows Sandbox for any changes to this policy setting to take effect.
<!-- AllowVGPU-Editable-End -->

<!-- AllowVGPU-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1]` |
| Default Value  | 1 |
<!-- AllowVGPU-DFProperties-End -->

<!-- AllowVGPU-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowVGPU |
| Friendly Name | Allow vGPU sharing for Windows Sandbox |
| Location | Computer Configuration |
| Path | Windows Components > Windows Sandbox |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Sandbox |
| Registry Value Name | AllowVGPU |
| ADMX File Name | WindowsSandbox.admx |
<!-- AllowVGPU-GpMapping-End -->

<!-- AllowVGPU-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowVGPU-Examples-End -->

<!-- AllowVGPU-End -->

<!-- AllowVideoInput-Begin -->
## AllowVideoInput

<!-- AllowVideoInput-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowVideoInput-Applicability-End -->

<!-- AllowVideoInput-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsSandbox/AllowVideoInput
```
<!-- AllowVideoInput-OmaUri-End -->

<!-- AllowVideoInput-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables or disables video input to the Sandbox.

- If you enable this policy setting, video input is enabled in Windows Sandbox.

- If you disable this policy setting, video input is disabled in Windows Sandbox. Applications using video input may not function properly in Windows Sandbox.

- If you don't configure this policy setting, video input will be disabled. Applications that use video input may not function properly in Windows Sandbox.

Note that there may be security implications of exposing host video input to the container.
<!-- AllowVideoInput-Description-End -->

<!-- AllowVideoInput-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> You must restart Windows Sandbox for any changes to this policy setting to take effect.
<!-- AllowVideoInput-Editable-End -->

<!-- AllowVideoInput-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1]` |
| Default Value  | 1 |
<!-- AllowVideoInput-DFProperties-End -->

<!-- AllowVideoInput-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowVideoInput |
| Friendly Name | Allow video input in Windows Sandbox |
| Location | Computer Configuration |
| Path | Windows Components > Windows Sandbox |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Sandbox |
| Registry Value Name | AllowVideoInput |
| ADMX File Name | WindowsSandbox.admx |
<!-- AllowVideoInput-GpMapping-End -->

<!-- AllowVideoInput-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowVideoInput-Examples-End -->

<!-- AllowVideoInput-End -->

<!-- AllowWriteToMappedFolders-Begin -->
## AllowWriteToMappedFolders

<!-- AllowWriteToMappedFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- AllowWriteToMappedFolders-Applicability-End -->

<!-- AllowWriteToMappedFolders-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsSandbox/AllowWriteToMappedFolders
```
<!-- AllowWriteToMappedFolders-OmaUri-End -->

<!-- AllowWriteToMappedFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables or disables mapping folders into sandbox.

- If you enable this policy setting, mapping folders from the host into Sandbox will be permitted.

- If you enable this policy setting and disable write to mapped folders, mapping folders from the host into Sandbox will be permitted, but Sandbox will only have permission to read the files.

- If you disable this policy setting, mapping folders from the host into Sandbox won't be permitted.

- If you don't configure this policy setting, mapped folders will be enabled.

Note that there may be security implications of exposing folders from the host into the container.
<!-- AllowWriteToMappedFolders-Description-End -->

<!-- AllowWriteToMappedFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowWriteToMappedFolders-Editable-End -->

<!-- AllowWriteToMappedFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1]` |
| Default Value  | 1 |
| Dependency [WindowsSandbox_AllowWriteToMappedFolders_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/WindowsSandbox/AllowMappedFolders` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- AllowWriteToMappedFolders-DFProperties-End -->

<!-- AllowWriteToMappedFolders-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowMappedFolders |
| Friendly Name | Allow mapping folders into Windows Sandbox |
| Location | Computer Configuration |
| Path | Windows Components > Windows Sandbox |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Sandbox |
| Registry Value Name | AllowMappedFolders |
| ADMX File Name | WindowsSandbox.admx |
<!-- AllowWriteToMappedFolders-GpMapping-End -->

<!-- AllowWriteToMappedFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowWriteToMappedFolders-Examples-End -->

<!-- AllowWriteToMappedFolders-End -->

<!-- WindowsSandbox-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- WindowsSandbox-CspMoreInfo-End -->

<!-- WindowsSandbox-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
