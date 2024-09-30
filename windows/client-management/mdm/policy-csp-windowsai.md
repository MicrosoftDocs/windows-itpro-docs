---
title: WindowsAI Policy CSP
description: Learn more about the WindowsAI Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- WindowsAI-Begin -->
# Policy CSP - WindowsAI

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- WindowsAI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WindowsAI-Editable-End -->

<!-- DisableAIDataAnalysis-Begin -->
## DisableAIDataAnalysis

<!-- DisableAIDataAnalysis-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- DisableAIDataAnalysis-Applicability-End -->

<!-- DisableAIDataAnalysis-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/WindowsAI/DisableAIDataAnalysis
```
<!-- DisableAIDataAnalysis-OmaUri-End -->

<!-- DisableAIDataAnalysis-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control whether Windows saves snapshots of the screen and analyzes the user's activity on their device.

- If you enable this policy setting, Windows won't be able to save snapshots and users won't be able to search for or browse through their historical device activity using Recall.

- If you disable or don't configure this policy setting, Windows will save snapshots of the screen and users will be able to search for or browse through a timeline of their past activities using Recall.
<!-- DisableAIDataAnalysis-Description-End -->

<!-- DisableAIDataAnalysis-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableAIDataAnalysis-Editable-End -->

<!-- DisableAIDataAnalysis-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableAIDataAnalysis-DFProperties-End -->

<!-- DisableAIDataAnalysis-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Enable Saving Snapshots for Windows. |
| 1 | Disable Saving Snapshots for Windows. |
<!-- DisableAIDataAnalysis-AllowedValues-End -->

<!-- DisableAIDataAnalysis-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableAIDataAnalysis |
| Friendly Name | Turn off Saving Snapshots for Windows |
| Location | User Configuration |
| Path | Windows Components > Windows AI |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WindowsAI |
| Registry Value Name | DisableAIDataAnalysis |
| ADMX File Name | WindowsCopilot.admx |
<!-- DisableAIDataAnalysis-GpMapping-End -->

<!-- DisableAIDataAnalysis-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAIDataAnalysis-Examples-End -->

<!-- DisableAIDataAnalysis-End -->

<!-- DisableCocreator-Begin -->
## DisableCocreator

<!-- DisableCocreator-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- DisableCocreator-Applicability-End -->

<!-- DisableCocreator-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsAI/DisableCocreator
```
<!-- DisableCocreator-OmaUri-End -->

<!-- DisableCocreator-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to control whether Cocreator functionality is disabled in the Windows Paint app.

- If this policy is enabled, Cocreator functionality won't be accessible in the Paint app.

- If this policy is disabled or not configured, users will be able to access Cocreator functionality.
<!-- DisableCocreator-Description-End -->

<!-- DisableCocreator-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableCocreator-Editable-End -->

<!-- DisableCocreator-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableCocreator-DFProperties-End -->

<!-- DisableCocreator-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Cocreator is enabled. |
| 1 | Cocreator is disabled. |
<!-- DisableCocreator-AllowedValues-End -->

<!-- DisableCocreator-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableCocreator |
| Path | WindowsAI > AT > WindowsComponents > Paint |
<!-- DisableCocreator-GpMapping-End -->

<!-- DisableCocreator-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableCocreator-Examples-End -->

<!-- DisableCocreator-End -->

<!-- DisableImageCreator-Begin -->
## DisableImageCreator

<!-- DisableImageCreator-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- DisableImageCreator-Applicability-End -->

<!-- DisableImageCreator-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsAI/DisableImageCreator
```
<!-- DisableImageCreator-OmaUri-End -->

<!-- DisableImageCreator-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to control whether Image Creator functionality is disabled in the Windows Paint app.

- If this policy is enabled, Image Creator functionality won't be accessible in the Paint app.

- If this policy is disabled or not configured, users will be able to access Image Creator functionality.
<!-- DisableImageCreator-Description-End -->

<!-- DisableImageCreator-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableImageCreator-Editable-End -->

<!-- DisableImageCreator-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableImageCreator-DFProperties-End -->

<!-- DisableImageCreator-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Image Creator is enabled. |
| 1 | Image Creator is disabled. |
<!-- DisableImageCreator-AllowedValues-End -->

<!-- DisableImageCreator-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableImageCreator |
| Path | WindowsAI > AT > WindowsComponents > Paint |
<!-- DisableImageCreator-GpMapping-End -->

<!-- DisableImageCreator-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableImageCreator-Examples-End -->

<!-- DisableImageCreator-End -->

<!-- SetCopilotHardwareKey-Begin -->
## SetCopilotHardwareKey

<!-- SetCopilotHardwareKey-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- SetCopilotHardwareKey-Applicability-End -->

<!-- SetCopilotHardwareKey-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/WindowsAI/SetCopilotHardwareKey
```
<!-- SetCopilotHardwareKey-OmaUri-End -->

<!-- SetCopilotHardwareKey-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting determines which app opens when the user presses the Copilot key on their keyboard.

- If the policy is enabled, the specified app will open when the user presses the Copilot key. Users can change the key assignment in Settings.

- If the policy isn't configured, Copilot will open if it's available in that country or region.
<!-- SetCopilotHardwareKey-Description-End -->

<!-- SetCopilotHardwareKey-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetCopilotHardwareKey-Editable-End -->

<!-- SetCopilotHardwareKey-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SetCopilotHardwareKey-DFProperties-End -->

<!-- SetCopilotHardwareKey-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SetCopilotHardwareKey |
| Path | WindowsCopilot > AT > WindowsComponents > WindowsCopilot |
<!-- SetCopilotHardwareKey-GpMapping-End -->

<!-- SetCopilotHardwareKey-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetCopilotHardwareKey-Examples-End -->

<!-- SetCopilotHardwareKey-End -->

<!-- TurnOffWindowsCopilot-Begin -->
## TurnOffWindowsCopilot

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- TurnOffWindowsCopilot-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 21H2 [10.0.19044.3758] and later <br> ✅ Windows 10, version 22H2 with [KB5032278](https://support.microsoft.com/help/5032278) [10.0.19045.3758] and later <br> ✅ Windows 11, version 22H2 with [KB5030310](https://support.microsoft.com/help/5030310) [10.0.22621.2361] and later <br> ✅ Windows 11, version 23H2 [10.0.22631] and later |
<!-- TurnOffWindowsCopilot-Applicability-End -->

<!-- TurnOffWindowsCopilot-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/WindowsAI/TurnOffWindowsCopilot
```
<!-- TurnOffWindowsCopilot-OmaUri-End -->

<!-- TurnOffWindowsCopilot-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off Windows Copilot.

- If you enable this policy setting, users won't be able to use Copilot. The Copilot icon won't appear on the taskbar either.

- If you disable or don't configure this policy setting, users will be able to use Copilot when it's available to them.
<!-- TurnOffWindowsCopilot-Description-End -->

<!-- TurnOffWindowsCopilot-Editable-Begin -->

> [!Note]
> - The TurnOffWindowsCopilot policy isn't for the [new Copilot experience](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/evolving-copilot-in-windows-for-your-workforce/ba-p/4141999) that's in some [Windows Insider builds](https://blogs.windows.com/windows-insider/2024/05/22/releasing-windows-11-version-24h2-to-the-release-preview-channel/) and that will be gradually rolling out to Windows 11 and Windows 10 devices. <!--9048085-->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffWindowsCopilot-Editable-End -->

<!-- TurnOffWindowsCopilot-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- TurnOffWindowsCopilot-DFProperties-End -->

<!-- TurnOffWindowsCopilot-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Enable Copilot. |
| 1 | Disable Copilot. |
<!-- TurnOffWindowsCopilot-AllowedValues-End -->

<!-- TurnOffWindowsCopilot-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | TurnOffWindowsCopilot |
| Friendly Name | Turn off Windows Copilot |
| Location | User Configuration |
| Path | Windows Components > Windows Copilot |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot |
| Registry Value Name | TurnOffWindowsCopilot |
| ADMX File Name | WindowsCopilot.admx |
<!-- TurnOffWindowsCopilot-GpMapping-End -->

<!-- TurnOffWindowsCopilot-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffWindowsCopilot-Examples-End -->

<!-- TurnOffWindowsCopilot-End -->

<!-- WindowsAI-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- WindowsAI-CspMoreInfo-End -->

<!-- WindowsAI-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
