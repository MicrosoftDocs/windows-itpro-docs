---
title: LanmanWorkstation Policy CSP
description: Learn more about the LanmanWorkstation Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- LanmanWorkstation-Begin -->
# Policy CSP - LanmanWorkstation

<!-- LanmanWorkstation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LanmanWorkstation-Editable-End -->

<!-- EnableInsecureGuestLogons-Begin -->
## EnableInsecureGuestLogons

<!-- EnableInsecureGuestLogons-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- EnableInsecureGuestLogons-Applicability-End -->

<!-- EnableInsecureGuestLogons-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LanmanWorkstation/EnableInsecureGuestLogons
```
<!-- EnableInsecureGuestLogons-OmaUri-End -->

<!-- EnableInsecureGuestLogons-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines if the SMB client will allow insecure guest logons to an SMB server.

- If you enable this policy setting or if you don't configure this policy setting, the SMB client will allow insecure guest logons.

- If you disable this policy setting, the SMB client will reject insecure guest logons.

If you enable signing, the SMB client will reject insecure guest logons.

Insecure guest logons are used by file servers to allow unauthenticated access to shared folders. While uncommon in an enterprise environment, insecure guest logons are frequently used by consumer Network Attached Storage (NAS) appliances acting as file servers. Windows file servers require authentication and don't use insecure guest logons by default. Since insecure guest logons are unauthenticated, important security features such as SMB Signing and SMB Encryption are disabled. As a result, clients that allow insecure guest logons are vulnerable to a variety of man-in-the-middle attacks that can result in data loss, data corruption, and exposure to malware. Additionally, any data written to a file server using an insecure guest logon is potentially accessible to anyone on the network. Microsoft recommends disabling insecure guest logons and configuring file servers to require authenticated access".
<!-- EnableInsecureGuestLogons-Description-End -->

<!-- EnableInsecureGuestLogons-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableInsecureGuestLogons-Editable-End -->

<!-- EnableInsecureGuestLogons-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableInsecureGuestLogons-DFProperties-End -->

<!-- EnableInsecureGuestLogons-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- EnableInsecureGuestLogons-AllowedValues-End -->

<!-- EnableInsecureGuestLogons-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_EnableInsecureGuestLogons |
| Friendly Name | Enable insecure guest logons |
| Location | Computer Configuration |
| Path | Network > Lanman Workstation |
| Registry Key Name | Software\Policies\Microsoft\Windows\LanmanWorkstation |
| Registry Value Name | AllowInsecureGuestAuth |
| ADMX File Name | LanmanWorkstation.admx |
<!-- EnableInsecureGuestLogons-GpMapping-End -->

<!-- EnableInsecureGuestLogons-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableInsecureGuestLogons-Examples-End -->

<!-- EnableInsecureGuestLogons-End -->

<!-- LanmanWorkstation-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- LanmanWorkstation-CspMoreInfo-End -->

<!-- LanmanWorkstation-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
