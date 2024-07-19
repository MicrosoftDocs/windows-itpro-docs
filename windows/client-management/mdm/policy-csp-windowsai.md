---
title: WindowsAI Policy CSP
description: Learn more about the WindowsAI Area in Policy CSP.
ms.date: 06/28/2024
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
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- DisableAIDataAnalysis-Applicability-End -->

<!-- DisableAIDataAnalysis-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/WindowsAI/DisableAIDataAnalysis
```
<!-- DisableAIDataAnalysis-OmaUri-End -->

<!-- DisableAIDataAnalysis-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to determine whether end users have the option to allow snapshots to be saved on their PCs. If disabled, end users will have a choice to save snapshots of their screen on their PC and then use Recall to find things they've seen. If the policy is enabled, end users won't be able to save snapshots on their PC. If the policy isn't configured, end users may or may not be able to save snapshots on their PC-depending on other policy configurations.
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
| Path | WindowsAI > AT > WindowsComponents > WindowsAI |
<!-- DisableAIDataAnalysis-GpMapping-End -->

<!-- DisableAIDataAnalysis-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAIDataAnalysis-Examples-End -->

<!-- DisableAIDataAnalysis-End -->

<!-- TurnOffWindowsCopilot-Begin -->
## TurnOffWindowsCopilot

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- TurnOffWindowsCopilot-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 21H2 [10.0.19044.3758] and later <br> ✅ Windows 10, version 22H2 [10.0.19045.3758] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2361] and later <br> ✅ Windows 11, version 23H2 [10.0.22631] and later |
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
