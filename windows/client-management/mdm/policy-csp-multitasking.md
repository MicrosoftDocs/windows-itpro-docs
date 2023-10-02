---
title: Multitasking Policy CSP
description: Learn more about the Multitasking Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/30/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Multitasking-Begin -->
# Policy CSP - Multitasking

<!-- Multitasking-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Multitasking-Editable-End -->

<!-- BrowserAltTabBlowout-Begin -->
## BrowserAltTabBlowout

<!-- BrowserAltTabBlowout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BrowserAltTabBlowout-Applicability-End -->

<!-- BrowserAltTabBlowout-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Multitasking/BrowserAltTabBlowout
```
<!-- BrowserAltTabBlowout-OmaUri-End -->

<!-- BrowserAltTabBlowout-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting controls the inclusion of app tabs into Alt+Tab.

This can be set to show the most recent 3, 5 or 20 tabs, or no tabs from apps.

If this is set to show "Open windows only", the whole feature will be disabled.
<!-- BrowserAltTabBlowout-Description-End -->

<!-- BrowserAltTabBlowout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

> [!WARNING]
> This policy is currently in preview mode only. It may be used for testing purposes, but shouldn't be used in a production environment at this time.

Enabling this policy restricts the number of Microsoft Edge tabs that are allowed to appear in the Alt+Tab switcher. Alt+Tab can be configured to show all open Microsoft Edge tabs, only the five most recent tabs, only the three most recent tabs, or no tabs. Setting the policy to no tabs configures the Alt+Tab switcher to show app windows only, which is the classic Alt+Tab behavior.

This policy only applies to the Alt+Tab switcher. When the policy isn't enabled, the feature respects the user's setting in the Settings app.
<!-- BrowserAltTabBlowout-Editable-End -->

<!-- BrowserAltTabBlowout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- BrowserAltTabBlowout-DFProperties-End -->

<!-- BrowserAltTabBlowout-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Open windows and all tabs in Microsoft Edge. |
| 2 | Open windows and 5 most recent tabs in Microsoft Edge. |
| 3 | Open windows and 3 most recent tabs in Microsoft Edge. |
| 4 | Open windows only. |
<!-- BrowserAltTabBlowout-AllowedValues-End -->

<!-- BrowserAltTabBlowout-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | BrowserAltTabBlowout |
| Friendly Name | Configure the inclusion of app tabs into Alt-Tab |
| Element Name | Pressing Alt + Tab shows. |
| Location | User Configuration |
| Path | Windows Components > Multitasking |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| ADMX File Name | Multitasking.admx |
<!-- BrowserAltTabBlowout-GpMapping-End -->

<!-- BrowserAltTabBlowout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BrowserAltTabBlowout-Examples-End -->

<!-- BrowserAltTabBlowout-End -->

<!-- Multitasking-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Multitasking-CspMoreInfo-End -->

<!-- Multitasking-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
