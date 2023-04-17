---
title: ADMX_WindowsMediaDRM Policy CSP
description: Learn more about the ADMX_WindowsMediaDRM Area in Policy CSP.
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

<!-- ADMX_WindowsMediaDRM-Begin -->
# Policy CSP - ADMX_WindowsMediaDRM

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_WindowsMediaDRM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsMediaDRM-Editable-End -->

<!-- DisableOnline-Begin -->
## DisableOnline

<!-- DisableOnline-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableOnline-Applicability-End -->

<!-- DisableOnline-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaDRM/DisableOnline
```
<!-- DisableOnline-OmaUri-End -->

<!-- DisableOnline-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents Windows Media Digital Rights Management (DRM) from accessing the Internet (or intranet).

When enabled, Windows Media DRM is prevented from accessing the Internet (or intranet) for license acquisition and security upgrades.

When this policy is enabled, programs are not able to acquire licenses for secure content, upgrade Windows Media DRM security components, or restore backed up content licenses. Secure content that is already licensed to the local computer will continue to play. Users are also able to protect music that they copy from a CD and play this protected content on their computer, since the license is generated locally in this scenario.

When this policy is either disabled or not configured, Windows Media DRM functions normally and will connect to the Internet (or intranet) to acquire licenses, download security upgrades, and perform license restoration.
<!-- DisableOnline-Description-End -->

<!-- DisableOnline-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableOnline-Editable-End -->

<!-- DisableOnline-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableOnline-DFProperties-End -->

<!-- DisableOnline-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableOnline |
| Friendly Name | Prevent Windows Media DRM Internet Access |
| Location | Computer Configuration |
| Path | Windows Components > Windows Media Digital Rights Management |
| Registry Key Name | Software\Policies\Microsoft\WMDRM |
| Registry Value Name | DisableOnline |
| ADMX File Name | windowsmediadrm.admx |
<!-- DisableOnline-AdmxBacked-End -->

<!-- DisableOnline-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableOnline-Examples-End -->

<!-- DisableOnline-End -->

<!-- ADMX_WindowsMediaDRM-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsMediaDRM-CspMoreInfo-End -->

<!-- ADMX_WindowsMediaDRM-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
