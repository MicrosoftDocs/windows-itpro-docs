---
title: ADMX_ActiveXInstallService Policy CSP
description: Learn more about the ADMX_ActiveXInstallService Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_ActiveXInstallService-Begin -->
# Policy CSP - ADMX_ActiveXInstallService

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_ActiveXInstallService-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_ActiveXInstallService-Editable-End -->

<!-- AxISURLZonePolicies-Begin -->
## AxISURLZonePolicies

<!-- AxISURLZonePolicies-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AxISURLZonePolicies-Applicability-End -->

<!-- AxISURLZonePolicies-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ActiveXInstallService/AxISURLZonePolicies
```
<!-- AxISURLZonePolicies-OmaUri-End -->

<!-- AxISURLZonePolicies-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the installation of ActiveX controls for sites in Trusted zone.

- If you enable this policy setting, ActiveX controls are installed according to the settings defined by this policy setting.

- If you disable or don't configure this policy setting, ActiveX controls prompt the user before installation.

If the trusted site uses the HTTPS protocol, this policy setting can also control how ActiveX Installer Service responds to certificate errors. By default all HTTPS connections must supply a server certificate that passes all validation criteria. If you are aware that a trusted site has a certificate error but you want to trust it anyway you can select the certificate errors that you want to ignore.

> [!NOTE]
> This policy setting applies to all sites in Trusted zones.
<!-- AxISURLZonePolicies-Description-End -->

<!-- AxISURLZonePolicies-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AxISURLZonePolicies-Editable-End -->

<!-- AxISURLZonePolicies-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AxISURLZonePolicies-DFProperties-End -->

<!-- AxISURLZonePolicies-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AxISURLZonePolicies |
| Friendly Name | Establish ActiveX installation policy for sites in Trusted zones |
| Location | Computer Configuration |
| Path | Windows Components > ActiveX Installer Service |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\AxInstaller\AxISURLZonePolicies |
| ADMX File Name | ActiveXInstallService.admx |
<!-- AxISURLZonePolicies-AdmxBacked-End -->

<!-- AxISURLZonePolicies-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AxISURLZonePolicies-Examples-End -->

<!-- AxISURLZonePolicies-End -->

<!-- ADMX_ActiveXInstallService-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_ActiveXInstallService-CspMoreInfo-End -->

<!-- ADMX_ActiveXInstallService-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
