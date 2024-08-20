---
title: TenantRestrictions Policy CSP
description: Learn more about the TenantRestrictions Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- TenantRestrictions-Begin -->
# Policy CSP - TenantRestrictions

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- TenantRestrictions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TenantRestrictions-Editable-End -->

<!-- ConfigureTenantRestrictions-Begin -->
## ConfigureTenantRestrictions

<!-- ConfigureTenantRestrictions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.320] and later <br> ✅ Windows 10, version 2004 with [KB5006738](https://support.microsoft.com/help/5006738) [10.0.19041.1320] and later <br> ✅ Windows 10, version 20H2 with [KB5006738](https://support.microsoft.com/help/5006738) [10.0.19042.1320] and later <br> ✅ Windows 10, version 21H1 with [KB5006738](https://support.microsoft.com/help/5006738) [10.0.19043.1320] and later <br> ✅ Windows 10, version 21H2 [10.0.19044] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ConfigureTenantRestrictions-Applicability-End -->

<!-- ConfigureTenantRestrictions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TenantRestrictions/ConfigureTenantRestrictions
```
<!-- ConfigureTenantRestrictions-OmaUri-End -->

<!-- ConfigureTenantRestrictions-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting enables and configures the device-based tenant restrictions feature for Microsoft Entra ID.

When you enable this setting, compliant applications will be prevented from accessing disallowed tenants, according to a policy set in your Microsoft Entra tenant.

> [!NOTE]
> Creation of a policy in your home tenant is required, and additional security measures for managed devices are recommended for best protection. Refer to Microsoft Entra tenant Restrictions for more details.

<https://go.microsoft.com/fwlink/?linkid=2148762>

Before enabling firewall protection, ensure that a Windows Defender Application Control (WDAC) policy that correctly tags applications has been applied to the target devices. Enabling firewall protection without a corresponding WDAC policy will prevent all applications from reaching Microsoft endpoints. This firewall setting isn't supported on all versions of Windows - see the following link for more information.

For details about setting up WDAC with tenant restrictions, see <https://go.microsoft.com/fwlink/?linkid=2155230>
<!-- ConfigureTenantRestrictions-Description-End -->

<!-- ConfigureTenantRestrictions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureTenantRestrictions-Editable-End -->

<!-- ConfigureTenantRestrictions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureTenantRestrictions-DFProperties-End -->

<!-- ConfigureTenantRestrictions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | trv2_payload |
| Friendly Name | Cloud Policy Details |
| Location | Computer Configuration |
| Path | Windows Components > Tenant Restrictions |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\TenantRestrictions\Payload |
| ADMX File Name | TenantRestrictions.admx |
<!-- ConfigureTenantRestrictions-AdmxBacked-End -->

<!-- ConfigureTenantRestrictions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureTenantRestrictions-Examples-End -->

<!-- ConfigureTenantRestrictions-End -->

<!-- TenantRestrictions-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- TenantRestrictions-CspMoreInfo-End -->

<!-- TenantRestrictions-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
