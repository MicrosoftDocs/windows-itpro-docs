---
title: ADMX_Securitycenter Policy CSP
description: Learn more about the ADMX_Securitycenter Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/09/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Securitycenter-Begin -->
# Policy CSP - ADMX_Securitycenter

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_Securitycenter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Securitycenter-Editable-End -->

<!-- SecurityCenter_SecurityCenterInDomain-Begin -->
## SecurityCenter_SecurityCenterInDomain

<!-- SecurityCenter_SecurityCenterInDomain-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- SecurityCenter_SecurityCenterInDomain-Applicability-End -->

<!-- SecurityCenter_SecurityCenterInDomain-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Securitycenter/SecurityCenter_SecurityCenterInDomain
```
<!-- SecurityCenter_SecurityCenterInDomain-OmaUri-End -->

<!-- SecurityCenter_SecurityCenterInDomain-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Security Center is turned on or off for computers that are joined to an Active Directory domain. When Security Center is turned on, it monitors essential security settings and notifies the user when the computer might be at risk. The Security Center Control Panel category view also contains a status section, where the user can get recommendations to help increase the computer's security. When Security Center is not enabled on the domain, neither the notifications nor the Security Center status section are displayed.

**Note** that Security Center can only be turned off for computers that are joined to a Windows domain. When a computer is not joined to a Windows domain, the policy setting will have no effect.

If you do not configure this policy setting, the Security Center is turned off for domain members.

- If you enable this policy setting, Security Center is turned on for all users.

- If you disable this policy setting, Security Center is turned off for domain members.

Windows XP SP2
----------------------
In Windows XP SP2, the essential security settings that are monitored by Security Center include firewall, antivirus, and Automatic Updates. **Note** that Security Center might not be available following a change to this policy setting until after the computer is restarted for Windows XP SP2 computers.

Windows Vista
---------------------
In Windows Vista, this policy setting monitors essential security settings to include firewall, antivirus, antispyware, Internet security settings, User Account Control, and Automatic Updates. Windows Vista computers do not require a reboot for this policy setting to take effect.
<!-- SecurityCenter_SecurityCenterInDomain-Description-End -->

<!-- SecurityCenter_SecurityCenterInDomain-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SecurityCenter_SecurityCenterInDomain-Editable-End -->

<!-- SecurityCenter_SecurityCenterInDomain-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SecurityCenter_SecurityCenterInDomain-DFProperties-End -->

<!-- SecurityCenter_SecurityCenterInDomain-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SecurityCenter_SecurityCenterInDomain |
| Friendly Name | Turn on Security Center (Domain PCs only) |
| Location | Computer Configuration |
| Path | Windows Components > Security Center |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Security Center |
| Registry Value Name | SecurityCenterInDomain |
| ADMX File Name | Securitycenter.admx |
<!-- SecurityCenter_SecurityCenterInDomain-AdmxBacked-End -->

<!-- SecurityCenter_SecurityCenterInDomain-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SecurityCenter_SecurityCenterInDomain-Examples-End -->

<!-- SecurityCenter_SecurityCenterInDomain-End -->

<!-- ADMX_Securitycenter-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Securitycenter-CspMoreInfo-End -->

<!-- ADMX_Securitycenter-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
