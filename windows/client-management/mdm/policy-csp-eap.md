---
title: Eap Policy CSP
description: Learn more about the Eap Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Eap-Begin -->
# Policy CSP - Eap

<!-- Eap-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Eap-Editable-End -->

<!-- AllowTLS1_3-Begin -->
## AllowTLS1_3

<!-- AllowTLS1_3-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowTLS1_3-Applicability-End -->

<!-- AllowTLS1_3-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Eap/AllowTLS1_3
```
<!-- AllowTLS1_3-OmaUri-End -->

<!-- AllowTLS1_3-Description-Begin -->
<!-- Description-Source-DDF -->
Added in Windows 10, version 21. H1. Allow or disallow use of TLS 1.3 during EAP client authentication.
<!-- AllowTLS1_3-Description-End -->

<!-- AllowTLS1_3-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowTLS1_3-Editable-End -->

<!-- AllowTLS1_3-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowTLS1_3-DFProperties-End -->

<!-- AllowTLS1_3-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Use of TLS version 1.3 isn't allowed for authentication. |
| 1 (Default) | Use of TLS version 1.3 is allowed for authentication. |
<!-- AllowTLS1_3-AllowedValues-End -->

<!-- AllowTLS1_3-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowTLS1_3-Examples-End -->

<!-- AllowTLS1_3-End -->

<!-- Eap-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Eap-CspMoreInfo-End -->

<!-- Eap-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
