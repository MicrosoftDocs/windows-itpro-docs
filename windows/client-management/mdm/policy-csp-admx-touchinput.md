---
title: ADMX_TouchInput Policy CSP
description: Learn more about the ADMX_TouchInput Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/09/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_TouchInput-Begin -->
# Policy CSP - ADMX_TouchInput

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_TouchInput-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_TouchInput-Editable-End -->

<!-- PanningEverywhereOff_1-Begin -->
## PanningEverywhereOff_1

<!-- PanningEverywhereOff_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- PanningEverywhereOff_1-Applicability-End -->

<!-- PanningEverywhereOff_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TouchInput/PanningEverywhereOff_1
```
<!-- PanningEverywhereOff_1-OmaUri-End -->

<!-- PanningEverywhereOff_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Turn off Panning
Turns off touch panning, which allows users pan inside windows by touch. On a compatible PC with a touch digitizer, by default users are able to scroll or pan inside a scrolling area by dragging up or down directly on the scrolling content.

- If you enable this setting, the user will not be able to pan windows by touch.

- If you disable this setting, the user can pan windows by touch.

- If you do not configure this setting, Touch Panning is on by default.

> [!NOTE]
> Changes to this setting will not take effect until the user logs off.
<!-- PanningEverywhereOff_1-Description-End -->

<!-- PanningEverywhereOff_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PanningEverywhereOff_1-Editable-End -->

<!-- PanningEverywhereOff_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PanningEverywhereOff_1-DFProperties-End -->

<!-- PanningEverywhereOff_1-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PanningEverywhereOff_1 |
| Friendly Name | Turn off Touch Panning |
| Location | User Configuration |
| Path | WindowsComponents > Tablet PC > Touch Input |
| Registry Key Name | SOFTWARE\Policies\Microsoft\TabletPC |
| Registry Value Name | TurnOffPanning |
| ADMX File Name | TouchInput.admx |
<!-- PanningEverywhereOff_1-AdmxBacked-End -->

<!-- PanningEverywhereOff_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PanningEverywhereOff_1-Examples-End -->

<!-- PanningEverywhereOff_1-End -->

<!-- PanningEverywhereOff_2-Begin -->
## PanningEverywhereOff_2

<!-- PanningEverywhereOff_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- PanningEverywhereOff_2-Applicability-End -->

<!-- PanningEverywhereOff_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TouchInput/PanningEverywhereOff_2
```
<!-- PanningEverywhereOff_2-OmaUri-End -->

<!-- PanningEverywhereOff_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Turn off Panning
Turns off touch panning, which allows users pan inside windows by touch. On a compatible PC with a touch digitizer, by default users are able to scroll or pan inside a scrolling area by dragging up or down directly on the scrolling content.

- If you enable this setting, the user will not be able to pan windows by touch.

- If you disable this setting, the user can pan windows by touch.

- If you do not configure this setting, Touch Panning is on by default.

> [!NOTE]
> Changes to this setting will not take effect until the user logs off.
<!-- PanningEverywhereOff_2-Description-End -->

<!-- PanningEverywhereOff_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PanningEverywhereOff_2-Editable-End -->

<!-- PanningEverywhereOff_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PanningEverywhereOff_2-DFProperties-End -->

<!-- PanningEverywhereOff_2-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PanningEverywhereOff_2 |
| Friendly Name | Turn off Touch Panning |
| Location | Computer Configuration |
| Path | WindowsComponents > Tablet PC > Touch Input |
| Registry Key Name | SOFTWARE\Policies\Microsoft\TabletPC |
| Registry Value Name | TurnOffPanning |
| ADMX File Name | TouchInput.admx |
<!-- PanningEverywhereOff_2-AdmxBacked-End -->

<!-- PanningEverywhereOff_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PanningEverywhereOff_2-Examples-End -->

<!-- PanningEverywhereOff_2-End -->

<!-- TouchInputOff_1-Begin -->
## TouchInputOff_1

<!-- TouchInputOff_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- TouchInputOff_1-Applicability-End -->

<!-- TouchInputOff_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TouchInput/TouchInputOff_1
```
<!-- TouchInputOff_1-OmaUri-End -->

<!-- TouchInputOff_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Turn off Tablet PC touch input

Turns off touch input, which allows the user to interact with their computer using their finger.

- If you enable this setting, the user will not be able to produce input with touch. They will not be able to use touch input or touch gestures such as tap and double tap, the touch pointer, and other touch-specific features.

- If you disable this setting, the user can produce input with touch, by using gestures, the touch pointer, and other-touch specific features.

- If you do not configure this setting, touch input is on by default.

> [!NOTE]
> Changes to this setting will not take effect until the user logs off.
<!-- TouchInputOff_1-Description-End -->

<!-- TouchInputOff_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TouchInputOff_1-Editable-End -->

<!-- TouchInputOff_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TouchInputOff_1-DFProperties-End -->

<!-- TouchInputOff_1-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TouchInputOff_1 |
| Friendly Name | Turn off Tablet PC touch input |
| Location | User Configuration |
| Path | WindowsComponents > Tablet PC > Touch Input |
| Registry Key Name | SOFTWARE\Policies\Microsoft\TabletPC |
| Registry Value Name | TurnOffTouchInput |
| ADMX File Name | TouchInput.admx |
<!-- TouchInputOff_1-AdmxBacked-End -->

<!-- TouchInputOff_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TouchInputOff_1-Examples-End -->

<!-- TouchInputOff_1-End -->

<!-- TouchInputOff_2-Begin -->
## TouchInputOff_2

<!-- TouchInputOff_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- TouchInputOff_2-Applicability-End -->

<!-- TouchInputOff_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TouchInput/TouchInputOff_2
```
<!-- TouchInputOff_2-OmaUri-End -->

<!-- TouchInputOff_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Turn off Tablet PC touch input

Turns off touch input, which allows the user to interact with their computer using their finger.

- If you enable this setting, the user will not be able to produce input with touch. They will not be able to use touch input or touch gestures such as tap and double tap, the touch pointer, and other touch-specific features.

- If you disable this setting, the user can produce input with touch, by using gestures, the touch pointer, and other-touch specific features.

- If you do not configure this setting, touch input is on by default.

> [!NOTE]
> Changes to this setting will not take effect until the user logs off.
<!-- TouchInputOff_2-Description-End -->

<!-- TouchInputOff_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TouchInputOff_2-Editable-End -->

<!-- TouchInputOff_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TouchInputOff_2-DFProperties-End -->

<!-- TouchInputOff_2-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TouchInputOff_2 |
| Friendly Name | Turn off Tablet PC touch input |
| Location | Computer Configuration |
| Path | WindowsComponents > Tablet PC > Touch Input |
| Registry Key Name | SOFTWARE\Policies\Microsoft\TabletPC |
| Registry Value Name | TurnOffTouchInput |
| ADMX File Name | TouchInput.admx |
<!-- TouchInputOff_2-AdmxBacked-End -->

<!-- TouchInputOff_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TouchInputOff_2-Examples-End -->

<!-- TouchInputOff_2-End -->

<!-- ADMX_TouchInput-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_TouchInput-CspMoreInfo-End -->

<!-- ADMX_TouchInput-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
