---
title: ADMX_hotspotauth Policy CSP
description: Learn more about the ADMX_hotspotauth Area in Policy CSP.
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

<!-- ADMX_hotspotauth-Begin -->
# Policy CSP - ADMX_hotspotauth

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_hotspotauth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_hotspotauth-Editable-End -->

<!-- HotspotAuth_Enable-Begin -->
## HotspotAuth_Enable

<!-- HotspotAuth_Enable-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
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

- If you enable this policy setting, or if you do not configure this policy setting, WLAN hotspots are automatically probed for WISPR protocol support.

- If you disable this policy setting, WLAN hotspots are not probed for WISPr protocol support, and users can only authenticate with WLAN hotspots using a web browser.
<!-- HotspotAuth_Enable-Description-End -->

<!-- HotspotAuth_Enable-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HotspotAuth_Enable-Editable-End -->

<!-- HotspotAuth_Enable-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HotspotAuth_Enable-DFProperties-End -->

<!-- HotspotAuth_Enable-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

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
