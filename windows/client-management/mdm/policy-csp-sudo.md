---
title: Sudo Policy CSP
description: Learn more about the Sudo Area in Policy CSP.
ms.date: 04/10/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Sudo-Begin -->
# Policy CSP - Sudo

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- Sudo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Sudo-Editable-End -->

<!-- EnableSudo-Begin -->
## EnableSudo

<!-- EnableSudo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- EnableSudo-Applicability-End -->

<!-- EnableSudo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Sudo/EnableSudo
```
<!-- EnableSudo-OmaUri-End -->

<!-- EnableSudo-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- EnableSudo-Description-End -->

<!-- EnableSudo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableSudo-Editable-End -->

<!-- EnableSudo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 3 |
<!-- EnableSudo-DFProperties-End -->

<!-- EnableSudo-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Sudo is disabled. |
| 1 | Sudo is allowed in 'force new window' mode. |
| 2 | Sudo is allowed in 'disable input' mode. |
| 3 (Default) | Sudo is allowed in 'inline' mode. |
<!-- EnableSudo-AllowedValues-End -->

<!-- EnableSudo-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnableSudo |
| Path | Sudo > AT > System |
<!-- EnableSudo-GpMapping-End -->

<!-- EnableSudo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableSudo-Examples-End -->

<!-- EnableSudo-End -->

<!-- Sudo-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Sudo-CspMoreInfo-End -->

<!-- Sudo-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
