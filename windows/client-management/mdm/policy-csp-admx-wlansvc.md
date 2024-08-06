---
title: ADMX_wlansvc Policy CSP
description: Learn more about the ADMX_wlansvc Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_wlansvc-Begin -->
# Policy CSP - ADMX_wlansvc

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_wlansvc-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_wlansvc-Editable-End -->

<!-- SetCost-Begin -->
## SetCost

<!-- SetCost-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SetCost-Applicability-End -->

<!-- SetCost-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_wlansvc/SetCost
```
<!-- SetCost-OmaUri-End -->

<!-- SetCost-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the cost of Wireless LAN (WLAN) connections on the local machine.

- If this policy setting is enabled, a drop-down list box presenting possible cost values will be active. Selecting one of the following values from the list will set the cost of all WLAN connections on the local machine:

- Unrestricted: Use of this connection is unlimited and not restricted by usage charges and capacity constraints.

- Fixed: Use of this connection isn't restricted by usage charges and capacity constraints up to a certain data limit.

- Variable: This connection is costed on a per byte basis.

- If this policy setting is disabled or isn't configured, the cost of Wireless LAN connections is Unrestricted by default.
<!-- SetCost-Description-End -->

<!-- SetCost-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetCost-Editable-End -->

<!-- SetCost-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SetCost-DFProperties-End -->

<!-- SetCost-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SetCost |
| Friendly Name | Set Cost |
| Location | Computer Configuration |
| Path | Network > WLAN Service > WLAN Media Cost |
| Registry Key Name | Software\Policies\Microsoft\Windows\Wireless\NetCost |
| ADMX File Name | wlansvc.admx |
<!-- SetCost-AdmxBacked-End -->

<!-- SetCost-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetCost-Examples-End -->

<!-- SetCost-End -->

<!-- SetPINEnforced-Begin -->
## SetPINEnforced

<!-- SetPINEnforced-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SetPINEnforced-Applicability-End -->

<!-- SetPINEnforced-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_wlansvc/SetPINEnforced
```
<!-- SetPINEnforced-OmaUri-End -->

<!-- SetPINEnforced-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy applies to Wireless Display connections. This policy means that the use of a PIN for pairing to Wireless Display devices is required rather than optional.

Conversely it means that Push Button is NOT allowed.

- If this policy setting is disabled or isn't configured, by default Push Button pairing is allowed (but not necessarily preferred).
<!-- SetPINEnforced-Description-End -->

<!-- SetPINEnforced-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetPINEnforced-Editable-End -->

<!-- SetPINEnforced-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SetPINEnforced-DFProperties-End -->

<!-- SetPINEnforced-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SetPINEnforced |
| Friendly Name | Require PIN pairing |
| Location | Computer Configuration |
| Path | Network > Wireless Display |
| Registry Key Name | SOFTWARE\Policies\Microsoft\WirelessDisplay |
| Registry Value Name | EnforcePinBasedPairing |
| ADMX File Name | wlansvc.admx |
<!-- SetPINEnforced-AdmxBacked-End -->

<!-- SetPINEnforced-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetPINEnforced-Examples-End -->

<!-- SetPINEnforced-End -->

<!-- SetPINPreferred-Begin -->
## SetPINPreferred

<!-- SetPINPreferred-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SetPINPreferred-Applicability-End -->

<!-- SetPINPreferred-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_wlansvc/SetPINPreferred
```
<!-- SetPINPreferred-OmaUri-End -->

<!-- SetPINPreferred-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy applies to Wireless Display connections. This policy changes the preference order of the pairing methods.

When enabled, it makes the connections to prefer a PIN for pairing to Wireless Display devices over the Push Button pairing method.

- If this policy setting is disabled or isn't configured, by default Push Button pairing is preferred (if allowed by other policies).
<!-- SetPINPreferred-Description-End -->

<!-- SetPINPreferred-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetPINPreferred-Editable-End -->

<!-- SetPINPreferred-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SetPINPreferred-DFProperties-End -->

<!-- SetPINPreferred-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SetPINPreferred |
| Friendly Name | Prefer PIN pairing |
| Location | Computer Configuration |
| Path | Network > Wireless Display |
| Registry Key Name | SOFTWARE\Policies\Microsoft\WirelessDisplay |
| Registry Value Name | PreferPinBasedPairing |
| ADMX File Name | wlansvc.admx |
<!-- SetPINPreferred-AdmxBacked-End -->

<!-- SetPINPreferred-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetPINPreferred-Examples-End -->

<!-- SetPINPreferred-End -->

<!-- ADMX_wlansvc-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_wlansvc-CspMoreInfo-End -->

<!-- ADMX_wlansvc-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
