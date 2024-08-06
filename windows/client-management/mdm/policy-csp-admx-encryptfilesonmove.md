---
title: ADMX_EncryptFilesonMove Policy CSP
description: Learn more about the ADMX_EncryptFilesonMove Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_EncryptFilesonMove-Begin -->
# Policy CSP - ADMX_EncryptFilesonMove

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_EncryptFilesonMove-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_EncryptFilesonMove-Editable-End -->

<!-- NoEncryptOnMove-Begin -->
## NoEncryptOnMove

<!-- NoEncryptOnMove-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoEncryptOnMove-Applicability-End -->

<!-- NoEncryptOnMove-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EncryptFilesonMove/NoEncryptOnMove
```
<!-- NoEncryptOnMove-OmaUri-End -->

<!-- NoEncryptOnMove-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents File Explorer from encrypting files that are moved to an encrypted folder.

- If you enable this policy setting, File Explorer won't automatically encrypt files that are moved to an encrypted folder.

- If you disable or don't configure this policy setting, File Explorer automatically encrypts files that are moved to an encrypted folder.

This setting applies only to files moved within a volume. When files are moved to other volumes, or if you create a new file in an encrypted folder, File Explorer encrypts those files automatically.
<!-- NoEncryptOnMove-Description-End -->

<!-- NoEncryptOnMove-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoEncryptOnMove-Editable-End -->

<!-- NoEncryptOnMove-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoEncryptOnMove-DFProperties-End -->

<!-- NoEncryptOnMove-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoEncryptOnMove |
| Friendly Name | Do not automatically encrypt files moved to encrypted folders |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoEncryptOnMove |
| ADMX File Name | EncryptFilesonMove.admx |
<!-- NoEncryptOnMove-AdmxBacked-End -->

<!-- NoEncryptOnMove-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoEncryptOnMove-Examples-End -->

<!-- NoEncryptOnMove-End -->

<!-- ADMX_EncryptFilesonMove-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_EncryptFilesonMove-CspMoreInfo-End -->

<!-- ADMX_EncryptFilesonMove-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
