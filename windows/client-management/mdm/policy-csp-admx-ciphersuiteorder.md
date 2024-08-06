---
title: ADMX_CipherSuiteOrder Policy CSP
description: Learn more about the ADMX_CipherSuiteOrder Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_CipherSuiteOrder-Begin -->
# Policy CSP - ADMX_CipherSuiteOrder

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_CipherSuiteOrder-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_CipherSuiteOrder-Editable-End -->

<!-- SSLCipherSuiteOrder-Begin -->
## SSLCipherSuiteOrder

<!-- SSLCipherSuiteOrder-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SSLCipherSuiteOrder-Applicability-End -->

<!-- SSLCipherSuiteOrder-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CipherSuiteOrder/SSLCipherSuiteOrder
```
<!-- SSLCipherSuiteOrder-OmaUri-End -->

<!-- SSLCipherSuiteOrder-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the cipher suites used by the Secure Socket Layer (SSL).

- If you enable this policy setting, SSL cipher suites are prioritized in the order specified.

- If you disable or don't configure this policy setting, default cipher suite order is used.

Link for all the cipherSuites: <https://go.microsoft.com/fwlink/?LinkId=517265>
<!-- SSLCipherSuiteOrder-Description-End -->

<!-- SSLCipherSuiteOrder-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SSLCipherSuiteOrder-Editable-End -->

<!-- SSLCipherSuiteOrder-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SSLCipherSuiteOrder-DFProperties-End -->

<!-- SSLCipherSuiteOrder-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SSLCipherSuiteOrder |
| Friendly Name | SSL Cipher Suite Order |
| Location | Computer Configuration |
| Path | Network > SSL Configuration Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002 |
| ADMX File Name | CipherSuiteOrder.admx |
<!-- SSLCipherSuiteOrder-AdmxBacked-End -->

<!-- SSLCipherSuiteOrder-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SSLCipherSuiteOrder-Examples-End -->

<!-- SSLCipherSuiteOrder-End -->

<!-- SSLCurveOrder-Begin -->
## SSLCurveOrder

<!-- SSLCurveOrder-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SSLCurveOrder-Applicability-End -->

<!-- SSLCurveOrder-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CipherSuiteOrder/SSLCurveOrder
```
<!-- SSLCurveOrder-OmaUri-End -->

<!-- SSLCurveOrder-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the priority order of ECC curves used with ECDHE cipher suites.

- If you enable this policy setting, ECC curves are prioritized in the order specified.(Enter one Curve name per line)

- If you disable or don't configure this policy setting, the default ECC curve order is used.

Default Curve Order
 
curve25519
NistP256
NistP384

To See all the curves supported on the system, Use the following command:

CertUtil.exe -DisplayEccCurve.
<!-- SSLCurveOrder-Description-End -->

<!-- SSLCurveOrder-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SSLCurveOrder-Editable-End -->

<!-- SSLCurveOrder-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SSLCurveOrder-DFProperties-End -->

<!-- SSLCurveOrder-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SSLCurveOrder |
| Friendly Name | ECC Curve Order |
| Location | Computer Configuration |
| Path | Network > SSL Configuration Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002 |
| ADMX File Name | CipherSuiteOrder.admx |
<!-- SSLCurveOrder-AdmxBacked-End -->

<!-- SSLCurveOrder-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SSLCurveOrder-Examples-End -->

<!-- SSLCurveOrder-End -->

<!-- ADMX_CipherSuiteOrder-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_CipherSuiteOrder-CspMoreInfo-End -->

<!-- ADMX_CipherSuiteOrder-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
