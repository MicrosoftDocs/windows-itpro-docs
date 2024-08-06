---
title: ADMX_Servicing Policy CSP
description: Learn more about the ADMX_Servicing Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Servicing-Begin -->
# Policy CSP - ADMX_Servicing

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Servicing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Servicing-Editable-End -->

<!-- Servicing-Begin -->
## Servicing

<!-- Servicing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Servicing-Applicability-End -->

<!-- Servicing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Servicing/Servicing
```
<!-- Servicing-OmaUri-End -->

<!-- Servicing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the network locations that will be used for the repair of operating system corruption and for enabling optional features that have had their payload files removed.

- If you enable this policy setting and specify the new location, the files in that location will be used to repair operating system corruption and for enabling optional features that have had their payload files removed. You must enter the fully qualified path to the new location in the "Alternate source file path" text box. Multiple locations can be specified when each path is separated by a semicolon.

The network location can be either a folder, or a WIM file. If it's a WIM file, the location should be specified by prefixing the path with "wim:" and include the index of the image to use in the WIM file. For example "wim:\\server\share\install.wim:3".

- If you disable or don't configure this policy setting, or if the required files can't be found at the locations specified in this policy setting, the files will be downloaded from Windows Update, if that's allowed by the policy settings for the computer.
<!-- Servicing-Description-End -->

<!-- Servicing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Servicing-Editable-End -->

<!-- Servicing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Servicing-DFProperties-End -->

<!-- Servicing-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Servicing |
| Friendly Name | Specify settings for optional component installation and component repair |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Servicing |
| ADMX File Name | Servicing.admx |
<!-- Servicing-AdmxBacked-End -->

<!-- Servicing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Servicing-Examples-End -->

<!-- Servicing-End -->

<!-- ADMX_Servicing-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Servicing-CspMoreInfo-End -->

<!-- ADMX_Servicing-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
