---
title: ADMX_DCOM Policy CSP
description: Learn more about the ADMX_DCOM Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_DCOM-Begin -->
# Policy CSP - ADMX_DCOM

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_DCOM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DCOM-Editable-End -->

<!-- DCOMActivationSecurityCheckAllowLocalList-Begin -->
## DCOMActivationSecurityCheckAllowLocalList

<!-- DCOMActivationSecurityCheckAllowLocalList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DCOMActivationSecurityCheckAllowLocalList-Applicability-End -->

<!-- DCOMActivationSecurityCheckAllowLocalList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DCOM/DCOMActivationSecurityCheckAllowLocalList
```
<!-- DCOMActivationSecurityCheckAllowLocalList-OmaUri-End -->

<!-- DCOMActivationSecurityCheckAllowLocalList-Description-Begin -->
<!-- Description-Source-ADMX -->
Allows you to specify that local computer administrators can supplement the "Define Activation Security Check exemptions" list.

- If you enable this policy setting, and DCOM doesn't find an explicit entry for a DCOM server application id (appid) in the "Define Activation Security Check exemptions" policy (if enabled), DCOM will look for an entry in the locally configured list.

- If you disable this policy setting, DCOM won't look in the locally configured DCOM activation security check exemption list.

- If you don't configure this policy setting, DCOM will only look in the locally configured exemption list if the "Define Activation Security Check exemptions" policy isn't configured.
<!-- DCOMActivationSecurityCheckAllowLocalList-Description-End -->

<!-- DCOMActivationSecurityCheckAllowLocalList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
**NOTE** This policy setting applies to all sites in Trusted zones.
<!-- DCOMActivationSecurityCheckAllowLocalList-Editable-End -->

<!-- DCOMActivationSecurityCheckAllowLocalList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DCOMActivationSecurityCheckAllowLocalList-DFProperties-End -->

<!-- DCOMActivationSecurityCheckAllowLocalList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DCOMActivationSecurityCheckAllowLocalList |
| Friendly Name | Allow local activation security check exemptions |
| Location | Computer Configuration |
| Path | System > Distributed COM > Application Compatibility Settings |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DCOM\AppCompat |
| Registry Value Name | AllowLocalActivationSecurityCheckExemptionList |
| ADMX File Name | DCOM.admx |
<!-- DCOMActivationSecurityCheckAllowLocalList-AdmxBacked-End -->

<!-- DCOMActivationSecurityCheckAllowLocalList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DCOMActivationSecurityCheckAllowLocalList-Examples-End -->

<!-- DCOMActivationSecurityCheckAllowLocalList-End -->

<!-- DCOMActivationSecurityCheckExemptionList-Begin -->
## DCOMActivationSecurityCheckExemptionList

<!-- DCOMActivationSecurityCheckExemptionList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DCOMActivationSecurityCheckExemptionList-Applicability-End -->

<!-- DCOMActivationSecurityCheckExemptionList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DCOM/DCOMActivationSecurityCheckExemptionList
```
<!-- DCOMActivationSecurityCheckExemptionList-OmaUri-End -->

<!-- DCOMActivationSecurityCheckExemptionList-Description-Begin -->
<!-- Description-Source-ADMX -->
Allows you to view and change a list of DCOM server application ids (appids) which are exempted from the DCOM Activation security check. DCOM uses two such lists, one configured via Group Policy through this policy setting, and the other via the actions of local computer administrators. DCOM ignores the second list when this policy setting is configured, unless the "Allow local activation security check exemptions" policy is enabled.

DCOM server appids added to this policy must be listed in curly-brace format. For Example: `{b5dcb061-cefb-42e0-a1be-e6a6438133fe}`. If you enter a non-existent or improperly formatted appid DCOM will add it to the list without checking for errors.

- If you enable this policy setting, you can view and change the list of DCOM activation security check exemptions defined by Group Policy settings. If you add an appid to this list and set its value to 1, DCOM won't enforce the Activation security check for that DCOM server. If you add an appid to this list and set its value to 0 DCOM will always enforce the Activation security check for that DCOM server regardless of local settings.

- If you disable this policy setting, the appid exemption list defined by Group Policy is deleted, and the one defined by local computer administrators is used.

- If you don't configure this policy setting, the appid exemption list defined by local computer administrators is used.

> [!NOTE]
> The DCOM Activation security check is done after a DCOM server process is started, but before an object activation request is dispatched to the server process. This access check is done against the DCOM server's custom launch permission security descriptor if it exists, or otherwise against the configured defaults.

If the DCOM server's custom launch permission contains explicit DENY entries this may mean that object activations that would've previously succeeded for such specified users, once the DCOM server process was up and running, might now fail instead. The proper action in this situation is to re-configure the DCOM server's custom launch permission settings for correct security settings, but this policy setting may be used in the short-term as an application compatibility deployment aid.

DCOM servers added to this exemption list are only exempted if their custom launch permissions don't contain specific LocalLaunch, RemoteLaunch, LocalActivate, or RemoteActivate grant or deny entries for any users or groups. Also note, exemptions for DCOM Server Appids added to this list will apply to both 32-bit and 64-bit versions of the server if present.
<!-- DCOMActivationSecurityCheckExemptionList-Description-End -->

<!-- DCOMActivationSecurityCheckExemptionList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy setting applies to all sites in Trusted zones.
<!-- DCOMActivationSecurityCheckExemptionList-Editable-End -->

<!-- DCOMActivationSecurityCheckExemptionList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DCOMActivationSecurityCheckExemptionList-DFProperties-End -->

<!-- DCOMActivationSecurityCheckExemptionList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DCOMActivationSecurityCheckExemptionList |
| Friendly Name | Define Activation Security Check exemptions |
| Location | Computer Configuration |
| Path | System > Distributed COM > Application Compatibility Settings |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DCOM\AppCompat |
| Registry Value Name | ListBox_Support_ActivationSecurityCheckExemptionList |
| ADMX File Name | DCOM.admx |
<!-- DCOMActivationSecurityCheckExemptionList-AdmxBacked-End -->

<!-- DCOMActivationSecurityCheckExemptionList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DCOMActivationSecurityCheckExemptionList-Examples-End -->

<!-- DCOMActivationSecurityCheckExemptionList-End -->

<!-- ADMX_DCOM-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DCOM-CspMoreInfo-End -->

<!-- ADMX_DCOM-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
