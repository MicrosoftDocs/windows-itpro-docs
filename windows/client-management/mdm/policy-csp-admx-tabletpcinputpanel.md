---
title: ADMX_TabletPCInputPanel Policy CSP
description: Learn more about the ADMX_TabletPCInputPanel Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_TabletPCInputPanel-Begin -->
# Policy CSP - ADMX_TabletPCInputPanel

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_TabletPCInputPanel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_TabletPCInputPanel-Editable-End -->

<!-- AutoComplete_1-Begin -->
## AutoComplete_1

<!-- AutoComplete_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AutoComplete_1-Applicability-End -->

<!-- AutoComplete_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/AutoComplete_1
```
<!-- AutoComplete_1-OmaUri-End -->

<!-- AutoComplete_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Turns off the integration of application auto complete lists with Tablet PC Input Panel in applications where this behavior is available.

Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy, application auto complete lists will never appear next to Input Panel. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, application auto complete lists will appear next to Input Panel in applications where the functionality is available. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, application auto complete lists will appear next to Input Panel in applications where the functionality is available. Users will be able to configure this setting on the Text completion tab in Input Panel Options.
<!-- AutoComplete_1-Description-End -->

<!-- AutoComplete_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AutoComplete_1-Editable-End -->

<!-- AutoComplete_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AutoComplete_1-DFProperties-End -->

<!-- AutoComplete_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AutoComplete_1 |
| Friendly Name | Turn off AutoComplete integration with Input Panel |
| Location | User Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | DisableACIntegration |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- AutoComplete_1-AdmxBacked-End -->

<!-- AutoComplete_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AutoComplete_1-Examples-End -->

<!-- AutoComplete_1-End -->

<!-- AutoComplete_2-Begin -->
## AutoComplete_2

<!-- AutoComplete_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AutoComplete_2-Applicability-End -->

<!-- AutoComplete_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/AutoComplete_2
```
<!-- AutoComplete_2-OmaUri-End -->

<!-- AutoComplete_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Turns off the integration of application auto complete lists with Tablet PC Input Panel in applications where this behavior is available.

Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy, application auto complete lists will never appear next to Input Panel. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, application auto complete lists will appear next to Input Panel in applications where the functionality is available. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, application auto complete lists will appear next to Input Panel in applications where the functionality is available. Users will be able to configure this setting on the Text completion tab in Input Panel Options.
<!-- AutoComplete_2-Description-End -->

<!-- AutoComplete_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AutoComplete_2-Editable-End -->

<!-- AutoComplete_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AutoComplete_2-DFProperties-End -->

<!-- AutoComplete_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AutoComplete_2 |
| Friendly Name | Turn off AutoComplete integration with Input Panel |
| Location | Computer Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | DisableACIntegration |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- AutoComplete_2-AdmxBacked-End -->

<!-- AutoComplete_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AutoComplete_2-Examples-End -->

<!-- AutoComplete_2-End -->

<!-- EdgeTarget_1-Begin -->
## EdgeTarget_1

<!-- EdgeTarget_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EdgeTarget_1-Applicability-End -->

<!-- EdgeTarget_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/EdgeTarget_1
```
<!-- EdgeTarget_1-OmaUri-End -->

<!-- EdgeTarget_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents Input Panel tab from appearing on the edge of the Tablet PC screen.

Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy, Input Panel tab won't appear on the edge of the Tablet PC screen. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, Input Panel tab will appear on the edge of the Tablet PC screen. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, Input Panel tab will appear on the edge of the Tablet PC screen. Users will be able to configure this setting on the Opening tab in Input Panel Options.

> [!CAUTION]
> If you enable both the "Prevent Input Panel from appearing next to text entry areas" policy and the "Prevent Input Panel tab from appearing" policy, and disable the "Show Input Panel taskbar icon" policy, the user will then have no way to access Input Panel.
<!-- EdgeTarget_1-Description-End -->

<!-- EdgeTarget_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EdgeTarget_1-Editable-End -->

<!-- EdgeTarget_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EdgeTarget_1-DFProperties-End -->

<!-- EdgeTarget_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EdgeTarget_1 |
| Friendly Name | Prevent Input Panel tab from appearing |
| Location | User Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | DisableEdgeTarget |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- EdgeTarget_1-AdmxBacked-End -->

<!-- EdgeTarget_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EdgeTarget_1-Examples-End -->

<!-- EdgeTarget_1-End -->

<!-- EdgeTarget_2-Begin -->
## EdgeTarget_2

<!-- EdgeTarget_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EdgeTarget_2-Applicability-End -->

<!-- EdgeTarget_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/EdgeTarget_2
```
<!-- EdgeTarget_2-OmaUri-End -->

<!-- EdgeTarget_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents Input Panel tab from appearing on the edge of the Tablet PC screen.

Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy, Input Panel tab won't appear on the edge of the Tablet PC screen. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, Input Panel tab will appear on the edge of the Tablet PC screen. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, Input Panel tab will appear on the edge of the Tablet PC screen. Users will be able to configure this setting on the Opening tab in Input Panel Options.

> [!CAUTION]
> If you enable both the "Prevent Input Panel from appearing next to text entry areas" policy and the "Prevent Input Panel tab from appearing" policy, and disable the "Show Input Panel taskbar icon" policy, the user will then have no way to access Input Panel.
<!-- EdgeTarget_2-Description-End -->

<!-- EdgeTarget_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EdgeTarget_2-Editable-End -->

<!-- EdgeTarget_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EdgeTarget_2-DFProperties-End -->

<!-- EdgeTarget_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EdgeTarget_2 |
| Friendly Name | Prevent Input Panel tab from appearing |
| Location | Computer Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | DisableEdgeTarget |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- EdgeTarget_2-AdmxBacked-End -->

<!-- EdgeTarget_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EdgeTarget_2-Examples-End -->

<!-- EdgeTarget_2-End -->

<!-- IPTIPTarget_1-Begin -->
## IPTIPTarget_1

<!-- IPTIPTarget_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IPTIPTarget_1-Applicability-End -->

<!-- IPTIPTarget_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/IPTIPTarget_1
```
<!-- IPTIPTarget_1-OmaUri-End -->

<!-- IPTIPTarget_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents the Tablet PC Input Panel icon from appearing next to any text entry area in applications where this behavior is available. This policy applies only when using a tablet pen as an input device.

Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy, Input Panel will never appear next to text entry areas when using a tablet pen as an input device. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, Input Panel will appear next to any text entry area in applications where this behavior is available. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, Input Panel will appear next to text entry areas in applications where this behavior is available. Users will be able to configure this setting on the Opening tab in Input Panel Options.

> [!CAUTION]
> If you enable both the "Prevent Input Panel from appearing next to text entry areas" policy and the "Prevent Input Panel tab from appearing" policy, and disable the "Show Input Panel taskbar icon" policy, the user will then have no way to access Input Panel.
<!-- IPTIPTarget_1-Description-End -->

<!-- IPTIPTarget_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IPTIPTarget_1-Editable-End -->

<!-- IPTIPTarget_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IPTIPTarget_1-DFProperties-End -->

<!-- IPTIPTarget_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IPTIPTarget_1 |
| Friendly Name | For tablet pen input, don’t show the Input Panel icon |
| Location | User Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | HideIPTIPTarget |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- IPTIPTarget_1-AdmxBacked-End -->

<!-- IPTIPTarget_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IPTIPTarget_1-Examples-End -->

<!-- IPTIPTarget_1-End -->

<!-- IPTIPTarget_2-Begin -->
## IPTIPTarget_2

<!-- IPTIPTarget_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IPTIPTarget_2-Applicability-End -->

<!-- IPTIPTarget_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/IPTIPTarget_2
```
<!-- IPTIPTarget_2-OmaUri-End -->

<!-- IPTIPTarget_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents the Tablet PC Input Panel icon from appearing next to any text entry area in applications where this behavior is available. This policy applies only when using a tablet pen as an input device.

Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy, Input Panel will never appear next to text entry areas when using a tablet pen as an input device. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, Input Panel will appear next to any text entry area in applications where this behavior is available. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, Input Panel will appear next to text entry areas in applications where this behavior is available. Users will be able to configure this setting on the Opening tab in Input Panel Options.

> [!CAUTION]
> If you enable both the "Prevent Input Panel from appearing next to text entry areas" policy and the "Prevent Input Panel tab from appearing" policy, and disable the "Show Input Panel taskbar icon" policy, the user will then have no way to access Input Panel.
<!-- IPTIPTarget_2-Description-End -->

<!-- IPTIPTarget_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IPTIPTarget_2-Editable-End -->

<!-- IPTIPTarget_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IPTIPTarget_2-DFProperties-End -->

<!-- IPTIPTarget_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IPTIPTarget_2 |
| Friendly Name | For tablet pen input, don’t show the Input Panel icon |
| Location | Computer Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | HideIPTIPTarget |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- IPTIPTarget_2-AdmxBacked-End -->

<!-- IPTIPTarget_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IPTIPTarget_2-Examples-End -->

<!-- IPTIPTarget_2-End -->

<!-- IPTIPTouchTarget_1-Begin -->
## IPTIPTouchTarget_1

<!-- IPTIPTouchTarget_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IPTIPTouchTarget_1-Applicability-End -->

<!-- IPTIPTouchTarget_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/IPTIPTouchTarget_1
```
<!-- IPTIPTouchTarget_1-OmaUri-End -->

<!-- IPTIPTouchTarget_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents the Tablet PC Input Panel icon from appearing next to any text entry area in applications where this behavior is available. This policy applies only when a user is using touch input.

Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy, Input Panel will never appear next to any text entry area when a user is using touch input. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, Input Panel will appear next to text entry areas in applications where this behavior is available. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, Input Panel will appear next to text entry areas in applications where this behavior is available. Users will be able to configure this setting on the Opening tab in Input Panel Options.
<!-- IPTIPTouchTarget_1-Description-End -->

<!-- IPTIPTouchTarget_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IPTIPTouchTarget_1-Editable-End -->

<!-- IPTIPTouchTarget_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IPTIPTouchTarget_1-DFProperties-End -->

<!-- IPTIPTouchTarget_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IPTIPTouchTarget_1 |
| Friendly Name | For touch input, don’t show the Input Panel icon |
| Location | User Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | HideIPTIPTouchTarget |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- IPTIPTouchTarget_1-AdmxBacked-End -->

<!-- IPTIPTouchTarget_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IPTIPTouchTarget_1-Examples-End -->

<!-- IPTIPTouchTarget_1-End -->

<!-- IPTIPTouchTarget_2-Begin -->
## IPTIPTouchTarget_2

<!-- IPTIPTouchTarget_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IPTIPTouchTarget_2-Applicability-End -->

<!-- IPTIPTouchTarget_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/IPTIPTouchTarget_2
```
<!-- IPTIPTouchTarget_2-OmaUri-End -->

<!-- IPTIPTouchTarget_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents the Tablet PC Input Panel icon from appearing next to any text entry area in applications where this behavior is available. This policy applies only when a user is using touch input.

Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy, Input Panel will never appear next to any text entry area when a user is using touch input. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, Input Panel will appear next to text entry areas in applications where this behavior is available. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, Input Panel will appear next to text entry areas in applications where this behavior is available. Users will be able to configure this setting on the Opening tab in Input Panel Options.
<!-- IPTIPTouchTarget_2-Description-End -->

<!-- IPTIPTouchTarget_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IPTIPTouchTarget_2-Editable-End -->

<!-- IPTIPTouchTarget_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IPTIPTouchTarget_2-DFProperties-End -->

<!-- IPTIPTouchTarget_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IPTIPTouchTarget_2 |
| Friendly Name | For touch input, don’t show the Input Panel icon |
| Location | Computer Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | HideIPTIPTouchTarget |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- IPTIPTouchTarget_2-AdmxBacked-End -->

<!-- IPTIPTouchTarget_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IPTIPTouchTarget_2-Examples-End -->

<!-- IPTIPTouchTarget_2-End -->

<!-- PasswordSecurity_1-Begin -->
## PasswordSecurity_1

<!-- PasswordSecurity_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PasswordSecurity_1-Applicability-End -->

<!-- PasswordSecurity_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/PasswordSecurity_1
```
<!-- PasswordSecurity_1-OmaUri-End -->

<!-- PasswordSecurity_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Adjusts password security settings in Touch Keyboard and Handwriting panel (a.k.a. Tablet PC Input Panel in Windows 7 and Windows Vista). These settings include using the on-screen keyboard by default, preventing users from switching to another Input Panel skin (the writing pad or character pad), and not showing what keys are tapped when entering a password.

Touch Keyboard and Handwriting panel enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy and choose "Low" from the drop-down box, password security is set to "Low". At this setting, all password security settings are turned off. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you enable this policy and choose "Medium-Low" from the drop-down box, password security is set to "Medium-Low". At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching is allowed, and Input Panel displays the cursor and which keys are tapped. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you enable this policy and choose "Medium" from the drop-down box, password security is set to "Medium". At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching isn't allowed, and Input Panel displays the cursor and which keys are tapped. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you enable this policy and choose to "Medium-High" from the drop-down box, password security is set to "Medium-High". At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching is allowed, and Input Panel doesn't display the cursor or which keys are tapped. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you enable this policy and choose "High" from the drop-down box, password security is set to "High". At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching isn't allowed, and Input Panel doesn't display the cursor or which keys are tapped. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, password security is set to "Medium-High". At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching is allowed, and Input Panel doesn't display the cursor or which keys are tapped. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, password security is set to "Medium-High" by default. At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching is allowed, and Input Panel doesn't display the cursor or which keys are tapped. Users will be able to configure this setting on the Advanced tab in Input Panel Options in Windows 7 and Windows Vista.

> [!CAUTION]
> If you lower password security settings, people who can see the user's screen might be able to see their passwords.
<!-- PasswordSecurity_1-Description-End -->

<!-- PasswordSecurity_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PasswordSecurity_1-Editable-End -->

<!-- PasswordSecurity_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PasswordSecurity_1-DFProperties-End -->

<!-- PasswordSecurity_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PasswordSecurity_1 |
| Friendly Name | Turn off password security in Input Panel |
| Location | User Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | PasswordSecurityState |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- PasswordSecurity_1-AdmxBacked-End -->

<!-- PasswordSecurity_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PasswordSecurity_1-Examples-End -->

<!-- PasswordSecurity_1-End -->

<!-- PasswordSecurity_2-Begin -->
## PasswordSecurity_2

<!-- PasswordSecurity_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PasswordSecurity_2-Applicability-End -->

<!-- PasswordSecurity_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/PasswordSecurity_2
```
<!-- PasswordSecurity_2-OmaUri-End -->

<!-- PasswordSecurity_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Adjusts password security settings in Touch Keyboard and Handwriting panel (a.k.a. Tablet PC Input Panel in Windows 7 and Windows Vista). These settings include using the on-screen keyboard by default, preventing users from switching to another Input Panel skin (the writing pad or character pad), and not showing what keys are tapped when entering a password.

Touch Keyboard and Handwriting panel enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy and choose "Low" from the drop-down box, password security is set to "Low". At this setting, all password security settings are turned off. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you enable this policy and choose "Medium-Low" from the drop-down box, password security is set to "Medium-Low". At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching is allowed, and Input Panel displays the cursor and which keys are tapped. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you enable this policy and choose "Medium" from the drop-down box, password security is set to "Medium". At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching isn't allowed, and Input Panel displays the cursor and which keys are tapped. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you enable this policy and choose to "Medium-High" from the drop-down box, password security is set to "Medium-High". At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching is allowed, and Input Panel doesn't display the cursor or which keys are tapped. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you enable this policy and choose "High" from the drop-down box, password security is set to "High". At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching isn't allowed, and Input Panel doesn't display the cursor or which keys are tapped. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, password security is set to "Medium-High". At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching is allowed, and Input Panel doesn't display the cursor or which keys are tapped. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, password security is set to "Medium-High" by default. At this setting, when users enter passwords from Input Panel they use the on-screen keyboard by default, skin switching is allowed, and Input Panel doesn't display the cursor or which keys are tapped. Users will be able to configure this setting on the Advanced tab in Input Panel Options in Windows 7 and Windows Vista.

> [!CAUTION]
> If you lower password security settings, people who can see the user's screen might be able to see their passwords.
<!-- PasswordSecurity_2-Description-End -->

<!-- PasswordSecurity_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PasswordSecurity_2-Editable-End -->

<!-- PasswordSecurity_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PasswordSecurity_2-DFProperties-End -->

<!-- PasswordSecurity_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PasswordSecurity_2 |
| Friendly Name | Turn off password security in Input Panel |
| Location | Computer Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | PasswordSecurityState |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- PasswordSecurity_2-AdmxBacked-End -->

<!-- PasswordSecurity_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PasswordSecurity_2-Examples-End -->

<!-- PasswordSecurity_2-End -->

<!-- Prediction_1-Begin -->
## Prediction_1

<!-- Prediction_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Prediction_1-Applicability-End -->

<!-- Prediction_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/Prediction_1
```
<!-- Prediction_1-OmaUri-End -->

<!-- Prediction_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents the Touch Keyboard and Handwriting panel (a.k.a. Tablet PC Input Panel in Windows 7 and Windows Vista) from providing text prediction suggestions. This policy applies for both the on-screen keyboard and the handwriting tab when the feature is available for the current input area and input language.

Touch Keyboard and Handwriting panel enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy, Input Panel won't provide text prediction suggestions. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, Input Panel will provide text prediction suggestions. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, Input Panel will provide text prediction suggestions. Users will be able to configure this setting on the Text Completion tab in Input Panel Options in Windows 7 and Windows Vista.
<!-- Prediction_1-Description-End -->

<!-- Prediction_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Prediction_1-Editable-End -->

<!-- Prediction_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Prediction_1-DFProperties-End -->

<!-- Prediction_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Prediction_1 |
| Friendly Name | Disable text prediction |
| Location | User Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | DisablePrediction |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- Prediction_1-AdmxBacked-End -->

<!-- Prediction_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Prediction_1-Examples-End -->

<!-- Prediction_1-End -->

<!-- Prediction_2-Begin -->
## Prediction_2

<!-- Prediction_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Prediction_2-Applicability-End -->

<!-- Prediction_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/Prediction_2
```
<!-- Prediction_2-OmaUri-End -->

<!-- Prediction_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents the Touch Keyboard and Handwriting panel (a.k.a. Tablet PC Input Panel in Windows 7 and Windows Vista) from providing text prediction suggestions. This policy applies for both the on-screen keyboard and the handwriting tab when the feature is available for the current input area and input language.

Touch Keyboard and Handwriting panel enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy, Input Panel won't provide text prediction suggestions. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, Input Panel will provide text prediction suggestions. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, Input Panel will provide text prediction suggestions. Users will be able to configure this setting on the Text Completion tab in Input Panel Options in Windows 7 and Windows Vista.
<!-- Prediction_2-Description-End -->

<!-- Prediction_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Prediction_2-Editable-End -->

<!-- Prediction_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Prediction_2-DFProperties-End -->

<!-- Prediction_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Prediction_2 |
| Friendly Name | Disable text prediction |
| Location | Computer Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | DisablePrediction |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- Prediction_2-AdmxBacked-End -->

<!-- Prediction_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Prediction_2-Examples-End -->

<!-- Prediction_2-End -->

<!-- RareChar_1-Begin -->
## RareChar_1

<!-- RareChar_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RareChar_1-Applicability-End -->

<!-- RareChar_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/RareChar_1
```
<!-- RareChar_1-OmaUri-End -->

<!-- RareChar_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Includes rarely used Chinese, Kanji, and Hanja characters when handwriting is converted to typed text. This policy applies only to the use of the Microsoft recognizers for Chinese (Simplified), Chinese (Traditional), Japanese, and Korean. This setting appears in Input Panel Options (in Windows 7 and Windows Vista only) only when these input languages or keyboards are installed.

Touch Keyboard and Handwriting panel (a.k.a. Tablet PC Input Panel in Windows 7 and Windows Vista) enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy, rarely used Chinese, Kanji, and Hanja characters will be included in recognition results when handwriting is converted to typed text. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, rarely used Chinese, Kanji, and Hanja characters won't be included in recognition results when handwriting is converted to typed text. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, rarely used Chinese, Kanji, and Hanja characters won't be included in recognition results when handwriting is converted to typed text. Users will be able to configure this setting on the Ink to text conversion tab in Input Panel Options (in Windows 7 and Windows Vista).
<!-- RareChar_1-Description-End -->

<!-- RareChar_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RareChar_1-Editable-End -->

<!-- RareChar_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RareChar_1-DFProperties-End -->

<!-- RareChar_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RareChar_1 |
| Friendly Name | Include rarely used Chinese, Kanji, or Hanja characters |
| Location | User Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | IncludeRareChar |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- RareChar_1-AdmxBacked-End -->

<!-- RareChar_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RareChar_1-Examples-End -->

<!-- RareChar_1-End -->

<!-- RareChar_2-Begin -->
## RareChar_2

<!-- RareChar_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RareChar_2-Applicability-End -->

<!-- RareChar_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/RareChar_2
```
<!-- RareChar_2-OmaUri-End -->

<!-- RareChar_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Includes rarely used Chinese, Kanji, and Hanja characters when handwriting is converted to typed text. This policy applies only to the use of the Microsoft recognizers for Chinese (Simplified), Chinese (Traditional), Japanese, and Korean. This setting appears in Input Panel Options (in Windows 7 and Windows Vista only) only when these input languages or keyboards are installed.

Touch Keyboard and Handwriting panel (a.k.a. Tablet PC Input Panel in Windows 7 and Windows Vista) enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy, rarely used Chinese, Kanji, and Hanja characters will be included in recognition results when handwriting is converted to typed text. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, rarely used Chinese, Kanji, and Hanja characters won't be included in recognition results when handwriting is converted to typed text. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, rarely used Chinese, Kanji, and Hanja characters won't be included in recognition results when handwriting is converted to typed text. Users will be able to configure this setting on the Ink to text conversion tab in Input Panel Options (in Windows 7 and Windows Vista).
<!-- RareChar_2-Description-End -->

<!-- RareChar_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RareChar_2-Editable-End -->

<!-- RareChar_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RareChar_2-DFProperties-End -->

<!-- RareChar_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RareChar_2 |
| Friendly Name | Include rarely used Chinese, Kanji, or Hanja characters |
| Location | Computer Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | IncludeRareChar |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- RareChar_2-AdmxBacked-End -->

<!-- RareChar_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RareChar_2-Examples-End -->

<!-- RareChar_2-End -->

<!-- ScratchOut_1-Begin -->
## ScratchOut_1

<!-- ScratchOut_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ScratchOut_1-Applicability-End -->

<!-- ScratchOut_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/ScratchOut_1
```
<!-- ScratchOut_1-OmaUri-End -->

<!-- ScratchOut_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Turns off both the more tolerant scratch-out gestures that were added in Windows Vista and the Z-shaped scratch-out gesture that was available in Microsoft Windows XP Tablet PC Edition.

The tolerant gestures let users scratch out ink in Input Panel by using strikethrough and other scratch-out gesture shapes.

Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy and choose "All" from the drop-down menu, no scratch-out gestures will be available in Input Panel. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you enable this policy and choose "Tolerant," users will be able to use the Z-shaped scratch-out gesture that was available in Microsoft Windows XP Tablet PC Edition. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you enable this policy and choose "None," users will be able to use both the tolerant scratch-out gestures and the Z-shaped scratch-out gesture. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, users will be able to use both the tolerant scratch-out gestures and the Z-shaped scratch-out gesture. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, users will be able to use both the tolerant scratch-out gestures and the Z-shaped scratch-out gesture. Users will be able to configure this setting on the Gestures tab in Input Panel Options.
<!-- ScratchOut_1-Description-End -->

<!-- ScratchOut_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ScratchOut_1-Editable-End -->

<!-- ScratchOut_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ScratchOut_1-DFProperties-End -->

<!-- ScratchOut_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ScratchOut_1 |
| Friendly Name | Turn off tolerant and Z-shaped scratch-out gestures |
| Location | User Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | ScratchOutState |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- ScratchOut_1-AdmxBacked-End -->

<!-- ScratchOut_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScratchOut_1-Examples-End -->

<!-- ScratchOut_1-End -->

<!-- ScratchOut_2-Begin -->
## ScratchOut_2

<!-- ScratchOut_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ScratchOut_2-Applicability-End -->

<!-- ScratchOut_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TabletPCInputPanel/ScratchOut_2
```
<!-- ScratchOut_2-OmaUri-End -->

<!-- ScratchOut_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Turns off both the more tolerant scratch-out gestures that were added in Windows Vista and the Z-shaped scratch-out gesture that was available in Microsoft Windows XP Tablet PC Edition.

The tolerant gestures let users scratch out ink in Input Panel by using strikethrough and other scratch-out gesture shapes.

Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.

- If you enable this policy and choose "All" from the drop-down menu, no scratch-out gestures will be available in Input Panel. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you enable this policy and choose "Tolerant," users will be able to use the Z-shaped scratch-out gesture that was available in Microsoft Windows XP Tablet PC Edition. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you enable this policy and choose "None," users will be able to use both the tolerant scratch-out gestures and the Z-shaped scratch-out gesture. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you disable this policy, users will be able to use both the tolerant scratch-out gestures and the Z-shaped scratch-out gesture. Users won't be able to configure this setting in the Input Panel Options dialog box.

- If you don't configure this policy, users will be able to use both the tolerant scratch-out gestures and the Z-shaped scratch-out gesture. Users will be able to configure this setting on the Gestures tab in Input Panel Options.
<!-- ScratchOut_2-Description-End -->

<!-- ScratchOut_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ScratchOut_2-Editable-End -->

<!-- ScratchOut_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ScratchOut_2-DFProperties-End -->

<!-- ScratchOut_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ScratchOut_2 |
| Friendly Name | Turn off tolerant and Z-shaped scratch-out gestures |
| Location | Computer Configuration |
| Path | WindowsComponents > Tablet PC > Input Panel |
| Registry Key Name | software\policies\microsoft\TabletTip\1.7 |
| Registry Value Name | ScratchOutState |
| ADMX File Name | TabletPCInputPanel.admx |
<!-- ScratchOut_2-AdmxBacked-End -->

<!-- ScratchOut_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScratchOut_2-Examples-End -->

<!-- ScratchOut_2-End -->

<!-- ADMX_TabletPCInputPanel-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_TabletPCInputPanel-CspMoreInfo-End -->

<!-- ADMX_TabletPCInputPanel-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
