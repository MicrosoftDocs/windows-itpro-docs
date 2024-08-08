---
title: ADMX_DWM Policy CSP
description: Learn more about the ADMX_DWM Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_DWM-Begin -->
# Policy CSP - ADMX_DWM

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_DWM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DWM-Editable-End -->

<!-- DwmDefaultColorizationColor_1-Begin -->
## DwmDefaultColorizationColor_1

<!-- DwmDefaultColorizationColor_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DwmDefaultColorizationColor_1-Applicability-End -->

<!-- DwmDefaultColorizationColor_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_DWM/DwmDefaultColorizationColor_1
```
<!-- DwmDefaultColorizationColor_1-OmaUri-End -->

<!-- DwmDefaultColorizationColor_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the default color for window frames when the user doesn't specify a color.

- If you enable this policy setting and specify a default color, this color is used in glass window frames, if the user doesn't specify a color.

- If you disable or don't configure this policy setting, the default internal color is used, if the user doesn't specify a color.

> [!NOTE]
> This policy setting can be used in conjunction with the "Prevent color changes of window frames" setting, to enforce a specific color for window frames that can't be changed by users.
<!-- DwmDefaultColorizationColor_1-Description-End -->

<!-- DwmDefaultColorizationColor_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DwmDefaultColorizationColor_1-Editable-End -->

<!-- DwmDefaultColorizationColor_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DwmDefaultColorizationColor_1-DFProperties-End -->

<!-- DwmDefaultColorizationColor_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DwmDefaultColorizationColor_1 |
| Friendly Name | Specify a default color |
| Location | User Configuration |
| Path | Windows Components > Desktop Window Manager > Window Frame Coloring |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DWM |
| Registry Value Name | DefaultColorizationColorState |
| ADMX File Name | DWM.admx |
<!-- DwmDefaultColorizationColor_1-AdmxBacked-End -->

<!-- DwmDefaultColorizationColor_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DwmDefaultColorizationColor_1-Examples-End -->

<!-- DwmDefaultColorizationColor_1-End -->

<!-- DwmDefaultColorizationColor_2-Begin -->
## DwmDefaultColorizationColor_2

<!-- DwmDefaultColorizationColor_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DwmDefaultColorizationColor_2-Applicability-End -->

<!-- DwmDefaultColorizationColor_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DWM/DwmDefaultColorizationColor_2
```
<!-- DwmDefaultColorizationColor_2-OmaUri-End -->

<!-- DwmDefaultColorizationColor_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the default color for window frames when the user doesn't specify a color.

- If you enable this policy setting and specify a default color, this color is used in glass window frames, if the user doesn't specify a color.

- If you disable or don't configure this policy setting, the default internal color is used, if the user doesn't specify a color.

> [!NOTE]
> This policy setting can be used in conjunction with the "Prevent color changes of window frames" setting, to enforce a specific color for window frames that can't be changed by users.
<!-- DwmDefaultColorizationColor_2-Description-End -->

<!-- DwmDefaultColorizationColor_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DwmDefaultColorizationColor_2-Editable-End -->

<!-- DwmDefaultColorizationColor_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DwmDefaultColorizationColor_2-DFProperties-End -->

<!-- DwmDefaultColorizationColor_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DwmDefaultColorizationColor_2 |
| Friendly Name | Specify a default color |
| Location | Computer Configuration |
| Path | Windows Components > Desktop Window Manager > Window Frame Coloring |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DWM |
| Registry Value Name | DefaultColorizationColorState |
| ADMX File Name | DWM.admx |
<!-- DwmDefaultColorizationColor_2-AdmxBacked-End -->

<!-- DwmDefaultColorizationColor_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DwmDefaultColorizationColor_2-Examples-End -->

<!-- DwmDefaultColorizationColor_2-End -->

<!-- DwmDisallowAnimations_1-Begin -->
## DwmDisallowAnimations_1

<!-- DwmDisallowAnimations_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DwmDisallowAnimations_1-Applicability-End -->

<!-- DwmDisallowAnimations_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_DWM/DwmDisallowAnimations_1
```
<!-- DwmDisallowAnimations_1-OmaUri-End -->

<!-- DwmDisallowAnimations_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the appearance of window animations such as those found when restoring, minimizing, and maximizing windows.

- If you enable this policy setting, window animations are turned off.

- If you disable or don't configure this policy setting, window animations are turned on.

Changing this policy setting requires a logoff for it to be applied.
<!-- DwmDisallowAnimations_1-Description-End -->

<!-- DwmDisallowAnimations_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DwmDisallowAnimations_1-Editable-End -->

<!-- DwmDisallowAnimations_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DwmDisallowAnimations_1-DFProperties-End -->

<!-- DwmDisallowAnimations_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DwmDisallowAnimations_1 |
| Friendly Name | Do not allow window animations |
| Location | User Configuration |
| Path | Windows Components > Desktop Window Manager |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DWM |
| Registry Value Name | DisallowAnimations |
| ADMX File Name | DWM.admx |
<!-- DwmDisallowAnimations_1-AdmxBacked-End -->

<!-- DwmDisallowAnimations_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DwmDisallowAnimations_1-Examples-End -->

<!-- DwmDisallowAnimations_1-End -->

<!-- DwmDisallowAnimations_2-Begin -->
## DwmDisallowAnimations_2

<!-- DwmDisallowAnimations_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DwmDisallowAnimations_2-Applicability-End -->

<!-- DwmDisallowAnimations_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DWM/DwmDisallowAnimations_2
```
<!-- DwmDisallowAnimations_2-OmaUri-End -->

<!-- DwmDisallowAnimations_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the appearance of window animations such as those found when restoring, minimizing, and maximizing windows.

- If you enable this policy setting, window animations are turned off.

- If you disable or don't configure this policy setting, window animations are turned on.

Changing this policy setting requires a logoff for it to be applied.
<!-- DwmDisallowAnimations_2-Description-End -->

<!-- DwmDisallowAnimations_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DwmDisallowAnimations_2-Editable-End -->

<!-- DwmDisallowAnimations_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DwmDisallowAnimations_2-DFProperties-End -->

<!-- DwmDisallowAnimations_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DwmDisallowAnimations_2 |
| Friendly Name | Do not allow window animations |
| Location | Computer Configuration |
| Path | Windows Components > Desktop Window Manager |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DWM |
| Registry Value Name | DisallowAnimations |
| ADMX File Name | DWM.admx |
<!-- DwmDisallowAnimations_2-AdmxBacked-End -->

<!-- DwmDisallowAnimations_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DwmDisallowAnimations_2-Examples-End -->

<!-- DwmDisallowAnimations_2-End -->

<!-- DwmDisallowColorizationColorChanges_1-Begin -->
## DwmDisallowColorizationColorChanges_1

<!-- DwmDisallowColorizationColorChanges_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DwmDisallowColorizationColorChanges_1-Applicability-End -->

<!-- DwmDisallowColorizationColorChanges_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_DWM/DwmDisallowColorizationColorChanges_1
```
<!-- DwmDisallowColorizationColorChanges_1-OmaUri-End -->

<!-- DwmDisallowColorizationColorChanges_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the ability to change the color of window frames.

- If you enable this policy setting, you prevent users from changing the default window frame color.

- If you disable or don't configure this policy setting, you allow users to change the default window frame color.

> [!NOTE]
> This policy setting can be used in conjunction with the "Specify a default color for window frames" policy setting, to enforce a specific color for window frames that can't be changed by users.
<!-- DwmDisallowColorizationColorChanges_1-Description-End -->

<!-- DwmDisallowColorizationColorChanges_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DwmDisallowColorizationColorChanges_1-Editable-End -->

<!-- DwmDisallowColorizationColorChanges_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DwmDisallowColorizationColorChanges_1-DFProperties-End -->

<!-- DwmDisallowColorizationColorChanges_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DwmDisallowColorizationColorChanges_1 |
| Friendly Name | Do not allow color changes |
| Location | User Configuration |
| Path | Windows Components > Desktop Window Manager > Window Frame Coloring |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DWM |
| Registry Value Name | DisallowColorizationColorChanges |
| ADMX File Name | DWM.admx |
<!-- DwmDisallowColorizationColorChanges_1-AdmxBacked-End -->

<!-- DwmDisallowColorizationColorChanges_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DwmDisallowColorizationColorChanges_1-Examples-End -->

<!-- DwmDisallowColorizationColorChanges_1-End -->

<!-- DwmDisallowColorizationColorChanges_2-Begin -->
## DwmDisallowColorizationColorChanges_2

<!-- DwmDisallowColorizationColorChanges_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DwmDisallowColorizationColorChanges_2-Applicability-End -->

<!-- DwmDisallowColorizationColorChanges_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DWM/DwmDisallowColorizationColorChanges_2
```
<!-- DwmDisallowColorizationColorChanges_2-OmaUri-End -->

<!-- DwmDisallowColorizationColorChanges_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the ability to change the color of window frames.

- If you enable this policy setting, you prevent users from changing the default window frame color.

- If you disable or don't configure this policy setting, you allow users to change the default window frame color.

> [!NOTE]
> This policy setting can be used in conjunction with the "Specify a default color for window frames" policy setting, to enforce a specific color for window frames that can't be changed by users.
<!-- DwmDisallowColorizationColorChanges_2-Description-End -->

<!-- DwmDisallowColorizationColorChanges_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DwmDisallowColorizationColorChanges_2-Editable-End -->

<!-- DwmDisallowColorizationColorChanges_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DwmDisallowColorizationColorChanges_2-DFProperties-End -->

<!-- DwmDisallowColorizationColorChanges_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DwmDisallowColorizationColorChanges_2 |
| Friendly Name | Do not allow color changes |
| Location | Computer Configuration |
| Path | Windows Components > Desktop Window Manager > Window Frame Coloring |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DWM |
| Registry Value Name | DisallowColorizationColorChanges |
| ADMX File Name | DWM.admx |
<!-- DwmDisallowColorizationColorChanges_2-AdmxBacked-End -->

<!-- DwmDisallowColorizationColorChanges_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DwmDisallowColorizationColorChanges_2-Examples-End -->

<!-- DwmDisallowColorizationColorChanges_2-End -->

<!-- ADMX_DWM-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DWM-CspMoreInfo-End -->

<!-- ADMX_DWM-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
