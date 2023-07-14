---
title: LockDown Policy CSP
description: Learn more about the LockDown Area in Policy CSP.
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

<!-- LockDown-Begin -->
# Policy CSP - LockDown

<!-- LockDown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockDown-Editable-End -->

<!-- AllowEdgeSwipe-Begin -->
## AllowEdgeSwipe

<!-- AllowEdgeSwipe-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowEdgeSwipe-Applicability-End -->

<!-- AllowEdgeSwipe-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LockDown/AllowEdgeSwipe
```
<!-- AllowEdgeSwipe-OmaUri-End -->

<!-- AllowEdgeSwipe-Description-Begin -->
<!-- Description-Source-ADMX -->
- If you disable this policy setting, users won't be able to invoke any system UI by swiping in from any screen edge.

- If you enable or don't configure this policy setting, users will be able to invoke system UI by swiping in from the screen edges.
<!-- AllowEdgeSwipe-Description-End -->

<!-- AllowEdgeSwipe-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The easiest way to verify the policy is to restart the explorer process or to reboot after the policy is applied, and then try to swipe from the right edge of the screen. The desired result is for Action Center to not be invoked by the swipe. You can also enter tablet mode and attempt to swipe from the top of the screen to rearrange, that will also be disabled.
<!-- AllowEdgeSwipe-Editable-End -->

<!-- AllowEdgeSwipe-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowEdgeSwipe-DFProperties-End -->

<!-- AllowEdgeSwipe-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disallow edge swipe. |
| 1 (Default) | Allow edge swipe. |
<!-- AllowEdgeSwipe-AllowedValues-End -->

<!-- AllowEdgeSwipe-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowEdgeSwipe |
| Friendly Name | Allow edge swipe |
| Location | Computer and User Configuration |
| Path | Windows Components > Edge UI |
| Registry Key Name | Software\Policies\Microsoft\Windows\EdgeUI |
| Registry Value Name | AllowEdgeSwipe |
| ADMX File Name | EdgeUI.admx |
<!-- AllowEdgeSwipe-GpMapping-End -->

<!-- AllowEdgeSwipe-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowEdgeSwipe-Examples-End -->

<!-- AllowEdgeSwipe-End -->

<!-- LockDown-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- LockDown-CspMoreInfo-End -->

<!-- LockDown-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
