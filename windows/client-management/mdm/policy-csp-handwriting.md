---
title: Handwriting Policy CSP
description: Learn more about the Handwriting Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Handwriting-Begin -->
# Policy CSP - Handwriting

<!-- Handwriting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Handwriting-Editable-End -->

<!-- PanelDefaultModeDocked-Begin -->
## PanelDefaultModeDocked

<!-- PanelDefaultModeDocked-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- PanelDefaultModeDocked-Applicability-End -->

<!-- PanelDefaultModeDocked-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Handwriting/PanelDefaultModeDocked
```
<!-- PanelDefaultModeDocked-OmaUri-End -->

<!-- PanelDefaultModeDocked-Description-Begin -->
<!-- Description-Source-ADMX -->
The handwriting panel has 2 modes - floats near the text box, or, attached to the bottom of the screen. Default is floating near text box. If you want the panel to be fixed, use this policy to fix it to the bottom.
<!-- PanelDefaultModeDocked-Description-End -->

<!-- PanelDefaultModeDocked-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
In floating mode, the content is hidden behind a flying-in panel and results in end-user dissatisfaction. The end-user will need to drag the flying-in panel, to see the rest of the content. In the fixed mode, the flying-in panel is fixed to the bottom of the screen and doesn't require any user interaction.

The docked mode is especially useful in Kiosk mode, where you don't expect the end-user to drag the flying-in panel out of the way.
<!-- PanelDefaultModeDocked-Editable-End -->

<!-- PanelDefaultModeDocked-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- PanelDefaultModeDocked-DFProperties-End -->

<!-- PanelDefaultModeDocked-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- PanelDefaultModeDocked-AllowedValues-End -->

<!-- PanelDefaultModeDocked-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PanelDefaultModeDocked |
| Friendly Name | Handwriting Panel Default Mode Docked |
| Location | Computer Configuration |
| Path | Windows Components > Handwriting |
| Registry Key Name | Software\Policies\Microsoft\Handwriting |
| Registry Value Name | PanelDefaultModeDocked |
| ADMX File Name | Handwriting.admx |
<!-- PanelDefaultModeDocked-GpMapping-End -->

<!-- PanelDefaultModeDocked-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PanelDefaultModeDocked-Examples-End -->

<!-- PanelDefaultModeDocked-End -->

<!-- Handwriting-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Handwriting-CspMoreInfo-End -->

<!-- Handwriting-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
