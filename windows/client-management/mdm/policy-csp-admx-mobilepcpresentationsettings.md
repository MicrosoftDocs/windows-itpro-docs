---
title: ADMX_MobilePCPresentationSettings Policy CSP
description: Learn more about the ADMX_MobilePCPresentationSettings Area in Policy CSP.
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

<!-- ADMX_MobilePCPresentationSettings-Begin -->
# Policy CSP - ADMX_MobilePCPresentationSettings

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_MobilePCPresentationSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_MobilePCPresentationSettings-Editable-End -->

<!-- PresentationSettingsEnable_1-Begin -->
## PresentationSettingsEnable_1

<!-- PresentationSettingsEnable_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- PresentationSettingsEnable_1-Applicability-End -->

<!-- PresentationSettingsEnable_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MobilePCPresentationSettings/PresentationSettingsEnable_1
```
<!-- PresentationSettingsEnable_1-OmaUri-End -->

<!-- PresentationSettingsEnable_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off Windows presentation settings.

- If you enable this policy setting, Windows presentation settings cannot be invoked.

- If you disable this policy setting, Windows presentation settings can be invoked. The presentation settings icon will be displayed in the notification area. This will give users a quick and easy way to configure their system settings before a presentation to block system notifications and screen blanking, adjust speaker volume, and apply a custom background image.

> [!NOTE]
> Users will be able to customize their system settings for presentations in Windows Mobility Center.

- If you do not configure this policy setting, Windows presentation settings can be invoked.
<!-- PresentationSettingsEnable_1-Description-End -->

<!-- PresentationSettingsEnable_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PresentationSettingsEnable_1-Editable-End -->

<!-- PresentationSettingsEnable_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PresentationSettingsEnable_1-DFProperties-End -->

<!-- PresentationSettingsEnable_1-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PresentationSettingsEnable_1 |
| Friendly Name | Turn off Windows presentation settings |
| Location | User Configuration |
| Path | Windows Components > Presentation Settings |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\PresentationSettings |
| Registry Value Name | NoPresentationSettings |
| ADMX File Name | MobilePCPresentationSettings.admx |
<!-- PresentationSettingsEnable_1-AdmxBacked-End -->

<!-- PresentationSettingsEnable_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PresentationSettingsEnable_1-Examples-End -->

<!-- PresentationSettingsEnable_1-End -->

<!-- PresentationSettingsEnable_2-Begin -->
## PresentationSettingsEnable_2

<!-- PresentationSettingsEnable_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- PresentationSettingsEnable_2-Applicability-End -->

<!-- PresentationSettingsEnable_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MobilePCPresentationSettings/PresentationSettingsEnable_2
```
<!-- PresentationSettingsEnable_2-OmaUri-End -->

<!-- PresentationSettingsEnable_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off Windows presentation settings.

- If you enable this policy setting, Windows presentation settings cannot be invoked.

- If you disable this policy setting, Windows presentation settings can be invoked. The presentation settings icon will be displayed in the notification area. This will give users a quick and easy way to configure their system settings before a presentation to block system notifications and screen blanking, adjust speaker volume, and apply a custom background image.

> [!NOTE]
> Users will be able to customize their system settings for presentations in Windows Mobility Center.

- If you do not configure this policy setting, Windows presentation settings can be invoked.
<!-- PresentationSettingsEnable_2-Description-End -->

<!-- PresentationSettingsEnable_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PresentationSettingsEnable_2-Editable-End -->

<!-- PresentationSettingsEnable_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PresentationSettingsEnable_2-DFProperties-End -->

<!-- PresentationSettingsEnable_2-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PresentationSettingsEnable_2 |
| Friendly Name | Turn off Windows presentation settings |
| Location | Computer Configuration |
| Path | Windows Components > Presentation Settings |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\PresentationSettings |
| Registry Value Name | NoPresentationSettings |
| ADMX File Name | MobilePCPresentationSettings.admx |
<!-- PresentationSettingsEnable_2-AdmxBacked-End -->

<!-- PresentationSettingsEnable_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PresentationSettingsEnable_2-Examples-End -->

<!-- PresentationSettingsEnable_2-End -->

<!-- ADMX_MobilePCPresentationSettings-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_MobilePCPresentationSettings-CspMoreInfo-End -->

<!-- ADMX_MobilePCPresentationSettings-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
