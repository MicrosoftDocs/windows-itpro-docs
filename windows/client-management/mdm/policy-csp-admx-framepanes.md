---
title: ADMX_FramePanes Policy CSP
description: Learn more about the ADMX_FramePanes Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_FramePanes-Begin -->
# Policy CSP - ADMX_FramePanes

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_FramePanes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_FramePanes-Editable-End -->

<!-- NoPreviewPane-Begin -->
## NoPreviewPane

<!-- NoPreviewPane-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoPreviewPane-Applicability-End -->

<!-- NoPreviewPane-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_FramePanes/NoPreviewPane
```
<!-- NoPreviewPane-OmaUri-End -->

<!-- NoPreviewPane-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting shows or hides the Details Pane in File Explorer.

If you enable this policy setting and configure it to hide the pane, the Details Pane in File Explorer is hidden and can't be turned on by the user.

If you enable this policy setting and configure it to show the pane, the Details Pane is always visible and can't be hidden by the user.

> [!NOTE]
> This has a side effect of not being able to toggle to the Preview Pane since the two can't be displayed at the same time.

If you disable, or don't configure this policy setting, the Details Pane is hidden by default and can be displayed by the user. This is the default policy setting.
<!-- NoPreviewPane-Description-End -->

<!-- NoPreviewPane-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoPreviewPane-Editable-End -->

<!-- NoPreviewPane-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoPreviewPane-DFProperties-End -->

<!-- NoPreviewPane-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoPreviewPane |
| Friendly Name | Turn on or off details pane |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer > Explorer Frame Pane |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| ADMX File Name | FramePanes.admx |
<!-- NoPreviewPane-AdmxBacked-End -->

<!-- NoPreviewPane-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoPreviewPane-Examples-End -->

<!-- NoPreviewPane-End -->

<!-- NoReadingPane-Begin -->
## NoReadingPane

<!-- NoReadingPane-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoReadingPane-Applicability-End -->

<!-- NoReadingPane-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_FramePanes/NoReadingPane
```
<!-- NoReadingPane-OmaUri-End -->

<!-- NoReadingPane-Description-Begin -->
<!-- Description-Source-ADMX -->
Hides the Preview Pane in File Explorer.

If you enable this policy setting, the Preview Pane in File Explorer is hidden and can't be turned on by the user.

If you disable, or don't configure this setting, the Preview Pane is hidden by default and can be displayed by the user.
<!-- NoReadingPane-Description-End -->

<!-- NoReadingPane-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoReadingPane-Editable-End -->

<!-- NoReadingPane-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoReadingPane-DFProperties-End -->

<!-- NoReadingPane-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoReadingPane |
| Friendly Name | Turn off Preview Pane |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer > Explorer Frame Pane |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoReadingPane |
| ADMX File Name | FramePanes.admx |
<!-- NoReadingPane-AdmxBacked-End -->

<!-- NoReadingPane-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoReadingPane-Examples-End -->

<!-- NoReadingPane-End -->

<!-- ADMX_FramePanes-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_FramePanes-CspMoreInfo-End -->

<!-- ADMX_FramePanes-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
