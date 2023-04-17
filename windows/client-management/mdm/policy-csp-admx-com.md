---
title: ADMX_COM Policy CSP
description: Learn more about the ADMX_COM Area in Policy CSP.
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

<!-- ADMX_COM-Begin -->
# Policy CSP - ADMX_COM

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_COM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_COM-Editable-End -->

<!-- AppMgmt_COM_SearchForCLSID_1-Begin -->
## AppMgmt_COM_SearchForCLSID_1

<!-- AppMgmt_COM_SearchForCLSID_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- AppMgmt_COM_SearchForCLSID_1-Applicability-End -->

<!-- AppMgmt_COM_SearchForCLSID_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_COM/AppMgmt_COM_SearchForCLSID_1
```
<!-- AppMgmt_COM_SearchForCLSID_1-OmaUri-End -->

<!-- AppMgmt_COM_SearchForCLSID_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting directs the system to search Active Directory for missing Component Object Model (COM) components that a program requires.

Many Windows programs, such as the MMC snap-ins, use the interfaces provided by the COM components. These programs cannot perform all their functions unless Windows has internally registered the required components.

- If you enable this policy setting and a component registration is missing, the system searches for it in Active Directory and, if it is found, downloads it. The resulting searches might make some programs start or run slowly.

- If you disable or do not configure this policy setting, the program continues without the registration. As a result, the program might not perform all its functions, or it might stop.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
<!-- AppMgmt_COM_SearchForCLSID_1-Description-End -->

<!-- AppMgmt_COM_SearchForCLSID_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppMgmt_COM_SearchForCLSID_1-Editable-End -->

<!-- AppMgmt_COM_SearchForCLSID_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AppMgmt_COM_SearchForCLSID_1-DFProperties-End -->

<!-- AppMgmt_COM_SearchForCLSID_1-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppMgmt_COM_SearchForCLSID_1 |
| Friendly Name | Download missing COM components |
| Location | User Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Windows\App Management |
| Registry Value Name | COMClassStore |
| ADMX File Name | COM.admx |
<!-- AppMgmt_COM_SearchForCLSID_1-AdmxBacked-End -->

<!-- AppMgmt_COM_SearchForCLSID_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AppMgmt_COM_SearchForCLSID_1-Examples-End -->

<!-- AppMgmt_COM_SearchForCLSID_1-End -->

<!-- AppMgmt_COM_SearchForCLSID_2-Begin -->
## AppMgmt_COM_SearchForCLSID_2

<!-- AppMgmt_COM_SearchForCLSID_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- AppMgmt_COM_SearchForCLSID_2-Applicability-End -->

<!-- AppMgmt_COM_SearchForCLSID_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_COM/AppMgmt_COM_SearchForCLSID_2
```
<!-- AppMgmt_COM_SearchForCLSID_2-OmaUri-End -->

<!-- AppMgmt_COM_SearchForCLSID_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting directs the system to search Active Directory for missing Component Object Model (COM) components that a program requires.

Many Windows programs, such as the MMC snap-ins, use the interfaces provided by the COM components. These programs cannot perform all their functions unless Windows has internally registered the required components.

- If you enable this policy setting and a component registration is missing, the system searches for it in Active Directory and, if it is found, downloads it. The resulting searches might make some programs start or run slowly.

- If you disable or do not configure this policy setting, the program continues without the registration. As a result, the program might not perform all its functions, or it might stop.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
<!-- AppMgmt_COM_SearchForCLSID_2-Description-End -->

<!-- AppMgmt_COM_SearchForCLSID_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppMgmt_COM_SearchForCLSID_2-Editable-End -->

<!-- AppMgmt_COM_SearchForCLSID_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AppMgmt_COM_SearchForCLSID_2-DFProperties-End -->

<!-- AppMgmt_COM_SearchForCLSID_2-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppMgmt_COM_SearchForCLSID_2 |
| Friendly Name | Download missing COM components |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Windows\App Management |
| Registry Value Name | COMClassStore |
| ADMX File Name | COM.admx |
<!-- AppMgmt_COM_SearchForCLSID_2-AdmxBacked-End -->

<!-- AppMgmt_COM_SearchForCLSID_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AppMgmt_COM_SearchForCLSID_2-Examples-End -->

<!-- AppMgmt_COM_SearchForCLSID_2-End -->

<!-- ADMX_COM-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_COM-CspMoreInfo-End -->

<!-- ADMX_COM-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
