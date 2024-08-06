---
title: ADMX_hotspotauth Policy CSP
description: Learn more about the ADMX_hotspotauth Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_hotspotauth-Begin -->
# Policy CSP - ADMX_hotspotauth

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_hotspotauth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_hotspotauth-Editable-End -->

<!-- HotspotAuth_Enable-Begin -->
## HotspotAuth_Enable

<!-- HotspotAuth_Enable-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HotspotAuth_Enable-Applicability-End -->

<!-- HotspotAuth_Enable-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_hotspotauth/HotspotAuth_Enable
```
<!-- HotspotAuth_Enable-OmaUri-End -->

<!-- HotspotAuth_Enable-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines whether WLAN hotspots are probed for Wireless Internet Service Provider roaming (WISPr) protocol support.

If a WLAN hotspot supports the WISPr protocol, users can submit credentials when manually connecting to the network. If authentication is successful, users will be connected automatically on subsequent attempts. Credentials can also be configured by network operators.

- If you enable this policy setting, or if you don't configure this policy setting, WLAN hotspots are automatically probed for WISPR protocol support.

- If you disable this policy setting, WLAN hotspots aren't probed for WISPr protocol support, and users can only authenticate with WLAN hotspots using a web browser.
<!-- HotspotAuth_Enable-Description-End -->

<!-- HotspotAuth_Enable-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HotspotAuth_Enable-Editable-End -->

<!-- HotspotAuth_Enable-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HotspotAuth_Enable-DFProperties-End -->

<!-- HotspotAuth_Enable-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HotspotAuth_Enable |
| Friendly Name | Enable Hotspot Authentication |
| Location | Computer Configuration |
| Path | Network > Hotspot Authentication |
| Registry Key Name | Software\Policies\Microsoft\Windows\HotspotAuthentication |
| Registry Value Name | Enabled |
| ADMX File Name | hotspotauth.admx |
<!-- HotspotAuth_Enable-AdmxBacked-End -->

<!-- HotspotAuth_Enable-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HotspotAuth_Enable-Examples-End -->

<!-- HotspotAuth_Enable-End -->

<!-- ADMX_hotspotauth-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_hotspotauth-CspMoreInfo-End -->

<!-- ADMX_hotspotauth-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
