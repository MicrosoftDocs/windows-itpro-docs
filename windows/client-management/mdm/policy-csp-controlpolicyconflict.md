---
title: ControlPolicyConflict Policy CSP
description: Learn more about the ControlPolicyConflict Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ControlPolicyConflict-Begin -->
# Policy CSP - ControlPolicyConflict

<!-- ControlPolicyConflict-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ControlPolicyConflict-Editable-End -->

<!-- MDMWinsOverGP-Begin -->
## MDMWinsOverGP

<!-- MDMWinsOverGP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- MDMWinsOverGP-Applicability-End -->

<!-- MDMWinsOverGP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ControlPolicyConflict/MDMWinsOverGP
```
<!-- MDMWinsOverGP-OmaUri-End -->

<!-- MDMWinsOverGP-Description-Begin -->
<!-- Description-Source-DDF -->
If set to 1 then any MDM policy that's set that has an equivalent GP policy will result in GP service blocking the setting of the policy by GP MMC. Setting the value to 0 (zero) or deleting the policy will remove the GP policy blocks restore the saved GP policies.
<!-- MDMWinsOverGP-Description-End -->

<!-- MDMWinsOverGP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

> [!NOTE]
> MDMWinsOverGP only applies to policies in Policy CSP. MDM policies win over Group Policies where applicable; not all Group Policies are available via MDM or CSP. It does not apply to other MDM settings with equivalent GP settings that are defined in other CSPs such as the [Defender CSP](defender-csp.md). Nor does it apply to the [Update Policy CSP](policy-csp-update.md) for managing Windows updates. 

This policy is used to ensure that MDM policy wins over GP when policy is configured on MDM channel. The default value is 0. The MDM policies in Policy CSP will behave as described if this policy value is set 1.

> [!NOTE]
> This policy doesn't support the Delete command and doesn’t support setting the value to 0 again after it was previously set to 1. Windows 10 version 1809 will support using the Delete command to set the value to 0 again, if it was previously set to 1.

The policy should be set at every sync to ensure the device removes any settings that conflict with MDM just as it does on the very first set of the policy. This ensures that:

-  GP settings that correspond to MDM applied settings aren't conflicting
-  The current Policy Manager policies are refreshed from what MDM has set
-  Any values set by scripts/user outside of GP that conflict with MDM are removed

The [Policy DDF](configuration-service-provider-ddf.md) contains the following tags to identify the policies with equivalent GP:

-  \<MSFT:ADMXBacked\>
-  \<MSFT:ADMXMapped\>
-  \<MSFT:GPRegistryMappedName\>
-  \<MSFT:GPDBMappedName\>

For the list MDM-GP mapping list, see [Policies in Policy CSP supported by Group Policy](./policies-in-policy-csp-supported-by-group-policy.md).

The MDM Diagnostic report shows the applied configurations states of a device including policies, certificates, configuration sources, and resource information. The report includes a list of blocked GP settings because MDM equivalent is configured, if any. To get the diagnostic report, go to **Settings** > **Accounts** > **Access work or school** > and then click the desired work or school account. Scroll to the bottom of the page to **Advanced Diagnostic Report** and then click **Create Report**.
<!-- MDMWinsOverGP-Editable-End -->

<!-- MDMWinsOverGP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- MDMWinsOverGP-DFProperties-End -->

<!-- MDMWinsOverGP-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | . |
| 1 | The MDM policy is used and the GP policy is blocked. |
<!-- MDMWinsOverGP-AllowedValues-End -->

<!-- MDMWinsOverGP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MDMWinsOverGP-Examples-End -->

<!-- MDMWinsOverGP-End -->

<!-- ControlPolicyConflict-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ControlPolicyConflict-CspMoreInfo-End -->

<!-- ControlPolicyConflict-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
