---
title: ADMX_WindowsConnectNow Policy CSP
description: Learn more about the ADMX_WindowsConnectNow Area in Policy CSP.
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

<!-- ADMX_WindowsConnectNow-Begin -->
# Policy CSP - ADMX_WindowsConnectNow

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_WindowsConnectNow-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsConnectNow-Editable-End -->

<!-- WCN_DisableWcnUi_1-Begin -->
## WCN_DisableWcnUi_1

<!-- WCN_DisableWcnUi_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- WCN_DisableWcnUi_1-Applicability-End -->

<!-- WCN_DisableWcnUi_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsConnectNow/WCN_DisableWcnUi_1
```
<!-- WCN_DisableWcnUi_1-OmaUri-End -->

<!-- WCN_DisableWcnUi_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prohibits access to Windows Connect Now (WCN) wizards.

- If you enable this policy setting, the wizards are turned off and users have no access to any of the wizard tasks. All the configuration related tasks, including "Set up a wireless router or access point" and "Add a wireless device" are disabled.

- If you disable or do not configure this policy setting, users can access the wizard tasks, including "Set up a wireless router or access point" and "Add a wireless device." The default for this policy setting allows users to access all WCN wizards.
<!-- WCN_DisableWcnUi_1-Description-End -->

<!-- WCN_DisableWcnUi_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WCN_DisableWcnUi_1-Editable-End -->

<!-- WCN_DisableWcnUi_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WCN_DisableWcnUi_1-DFProperties-End -->

<!-- WCN_DisableWcnUi_1-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WCN_DisableWcnUi_1 |
| Friendly Name | Prohibit access of the Windows Connect Now wizards |
| Location | User Configuration |
| Path | Network > Windows Connect Now |
| Registry Key Name | Software\Policies\Microsoft\Windows\WCN\UI |
| Registry Value Name | DisableWcnUi |
| ADMX File Name | WindowsConnectNow.admx |
<!-- WCN_DisableWcnUi_1-AdmxBacked-End -->

<!-- WCN_DisableWcnUi_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WCN_DisableWcnUi_1-Examples-End -->

<!-- WCN_DisableWcnUi_1-End -->

<!-- WCN_DisableWcnUi_2-Begin -->
## WCN_DisableWcnUi_2

<!-- WCN_DisableWcnUi_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- WCN_DisableWcnUi_2-Applicability-End -->

<!-- WCN_DisableWcnUi_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsConnectNow/WCN_DisableWcnUi_2
```
<!-- WCN_DisableWcnUi_2-OmaUri-End -->

<!-- WCN_DisableWcnUi_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prohibits access to Windows Connect Now (WCN) wizards.

- If you enable this policy setting, the wizards are turned off and users have no access to any of the wizard tasks. All the configuration related tasks, including "Set up a wireless router or access point" and "Add a wireless device" are disabled.

- If you disable or do not configure this policy setting, users can access the wizard tasks, including "Set up a wireless router or access point" and "Add a wireless device." The default for this policy setting allows users to access all WCN wizards.
<!-- WCN_DisableWcnUi_2-Description-End -->

<!-- WCN_DisableWcnUi_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WCN_DisableWcnUi_2-Editable-End -->

<!-- WCN_DisableWcnUi_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WCN_DisableWcnUi_2-DFProperties-End -->

<!-- WCN_DisableWcnUi_2-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WCN_DisableWcnUi_2 |
| Friendly Name | Prohibit access of the Windows Connect Now wizards |
| Location | Computer Configuration |
| Path | Network > Windows Connect Now |
| Registry Key Name | Software\Policies\Microsoft\Windows\WCN\UI |
| Registry Value Name | DisableWcnUi |
| ADMX File Name | WindowsConnectNow.admx |
<!-- WCN_DisableWcnUi_2-AdmxBacked-End -->

<!-- WCN_DisableWcnUi_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WCN_DisableWcnUi_2-Examples-End -->

<!-- WCN_DisableWcnUi_2-End -->

<!-- WCN_EnableRegistrar-Begin -->
## WCN_EnableRegistrar

<!-- WCN_EnableRegistrar-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- WCN_EnableRegistrar-Applicability-End -->

<!-- WCN_EnableRegistrar-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsConnectNow/WCN_EnableRegistrar
```
<!-- WCN_EnableRegistrar-OmaUri-End -->

<!-- WCN_EnableRegistrar-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows the configuration of wireless settings using Windows Connect Now (WCN). The WCN Registrar enables the discovery and configuration of devices over Ethernet (UPnP), over In-band 802.11 WLAN, through the Windows Portable Device API (WPD), and via USB Flash drives.

Additional options are available to allow discovery and configuration over a specific medium.

- If you enable this policy setting, additional choices are available to turn off the operations over a specific medium.

- If you disable this policy setting, operations are disabled over all media.

- If you do not configure this policy setting, operations are enabled over all media.

The default for this policy setting allows operations over all media.
<!-- WCN_EnableRegistrar-Description-End -->

<!-- WCN_EnableRegistrar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WCN_EnableRegistrar-Editable-End -->

<!-- WCN_EnableRegistrar-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WCN_EnableRegistrar-DFProperties-End -->

<!-- WCN_EnableRegistrar-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WCN_EnableRegistrar |
| Friendly Name | Configuration of wireless settings using Windows Connect Now |
| Location | Computer Configuration |
| Path | Network > Windows Connect Now |
| Registry Key Name | Software\Policies\Microsoft\Windows\WCN\Registrars |
| Registry Value Name | EnableRegistrars |
| ADMX File Name | WindowsConnectNow.admx |
<!-- WCN_EnableRegistrar-AdmxBacked-End -->

<!-- WCN_EnableRegistrar-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WCN_EnableRegistrar-Examples-End -->

<!-- WCN_EnableRegistrar-End -->

<!-- ADMX_WindowsConnectNow-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsConnectNow-CspMoreInfo-End -->

<!-- ADMX_WindowsConnectNow-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
