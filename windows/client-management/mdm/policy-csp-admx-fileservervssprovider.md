---
title: ADMX_FileServerVSSProvider Policy CSP
description: Learn more about the ADMX_FileServerVSSProvider Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_FileServerVSSProvider-Begin -->
# Policy CSP - ADMX_FileServerVSSProvider

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_FileServerVSSProvider-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_FileServerVSSProvider-Editable-End -->

<!-- Pol_EncryptProtocol-Begin -->
## Pol_EncryptProtocol

<!-- Pol_EncryptProtocol-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_EncryptProtocol-Applicability-End -->

<!-- Pol_EncryptProtocol-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_FileServerVSSProvider/Pol_EncryptProtocol
```
<!-- Pol_EncryptProtocol-OmaUri-End -->

<!-- Pol_EncryptProtocol-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether the RPC protocol messagese used by VSS for SMB2 File Shares feature is enabled.

VSS for SMB2 File Shares feature enables VSS aware backup applications to perform application consistent backup and restore of VSS aware applications storing data on SMB2 File Shares.

By default, the RPC protocol message between File Server VSS provider and File Server VSS Agent is signed but not encrypted.

> [!NOTE]
> To make changes to this setting effective, you must restart Volume Shadow Copy (VSS) Service .
<!-- Pol_EncryptProtocol-Description-End -->

<!-- Pol_EncryptProtocol-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_EncryptProtocol-Editable-End -->

<!-- Pol_EncryptProtocol-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_EncryptProtocol-DFProperties-End -->

<!-- Pol_EncryptProtocol-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_EncryptProtocol |
| Friendly Name | Allow or Disallow use of encryption to protect the RPC protocol messages between File Share Shadow Copy Provider running on application server and File Share Shadow Copy Agent running on the file servers. |
| Location | Computer Configuration |
| Path | System > File Share Shadow Copy Provider |
| Registry Key Name | Software\Policies\Microsoft\Windows\fssProv |
| Registry Value Name | EncryptProtocol |
| ADMX File Name | FileServerVSSProvider.admx |
<!-- Pol_EncryptProtocol-AdmxBacked-End -->

<!-- Pol_EncryptProtocol-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_EncryptProtocol-Examples-End -->

<!-- Pol_EncryptProtocol-End -->

<!-- ADMX_FileServerVSSProvider-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_FileServerVSSProvider-CspMoreInfo-End -->

<!-- ADMX_FileServerVSSProvider-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
