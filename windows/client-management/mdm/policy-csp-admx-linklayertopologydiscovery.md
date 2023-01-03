---
title: ADMX_LinkLayerTopologyDiscovery Policy CSP
description: Learn more about the ADMX_LinkLayerTopologyDiscovery Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/03/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_LinkLayerTopologyDiscovery-Begin -->
# Policy CSP - ADMX_LinkLayerTopologyDiscovery

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_LinkLayerTopologyDiscovery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_LinkLayerTopologyDiscovery-Editable-End -->

<!-- LLTD_EnableLLTDIO-Begin -->
## LLTD_EnableLLTDIO

<!-- LLTD_EnableLLTDIO-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- LLTD_EnableLLTDIO-Applicability-End -->

<!-- LLTD_EnableLLTDIO-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_LinkLayerTopologyDiscovery/LLTD_EnableLLTDIO
```
<!-- LLTD_EnableLLTDIO-OmaUri-End -->

<!-- LLTD_EnableLLTDIO-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting changes the operational behavior of the Mapper I/O network protocol driver.

LLTDIO allows a computer to discover the topology of a network it's connected to. It also allows a computer to initiate Quality-of-Service requests such as bandwidth estimation and network health analysis.

If you enable this policy setting, additional options are available to fine-tune your selection. You may choose the "Allow operation while in domain" option to allow LLTDIO to operate on a network interface that's connected to a managed network. On the other hand, if a network interface is connected to an unmanaged network, you may choose the "Allow operation while in public network" and "Prohibit operation while in private network" options instead.

If you disable or do not configure this policy setting, the default behavior of LLTDIO will apply.
<!-- LLTD_EnableLLTDIO-Description-End -->

<!-- LLTD_EnableLLTDIO-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LLTD_EnableLLTDIO-Editable-End -->

<!-- LLTD_EnableLLTDIO-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LLTD_EnableLLTDIO-DFProperties-End -->

<!-- LLTD_EnableLLTDIO-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LLTD_EnableLLTDIO |
| Friendly Name | Turn on Mapper I/O (LLTDIO) driver |
| Location | Computer Configuration |
| Path | Network > Link-Layer Topology Discovery |
| Registry Key Name | Software\Policies\Microsoft\Windows\LLTD |
| Registry Value Name | EnableLLTDIO |
| ADMX File Name | LinkLayerTopologyDiscovery.admx |
<!-- LLTD_EnableLLTDIO-AdmxBacked-End -->

<!-- LLTD_EnableLLTDIO-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LLTD_EnableLLTDIO-Examples-End -->

<!-- LLTD_EnableLLTDIO-End -->

<!-- LLTD_EnableRspndr-Begin -->
## LLTD_EnableRspndr

<!-- LLTD_EnableRspndr-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- LLTD_EnableRspndr-Applicability-End -->

<!-- LLTD_EnableRspndr-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_LinkLayerTopologyDiscovery/LLTD_EnableRspndr
```
<!-- LLTD_EnableRspndr-OmaUri-End -->

<!-- LLTD_EnableRspndr-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting changes the operational behavior of the Responder network protocol driver.

The Responder allows a computer to participate in Link Layer Topology Discovery requests so that it can be discovered and located on the network. It also allows a computer to participate in Quality-of-Service activities such as bandwidth estimation and network health analysis.

If you enable this policy setting, additional options are available to fine-tune your selection. You may choose the "Allow operation while in domain" option to allow the Responder to operate on a network interface that's connected to a managed network. On the other hand, if a network interface is connected to an unmanaged network, you may choose the "Allow operation while in public network" and "Prohibit operation while in private network" options instead.

If you disable or do not configure this policy setting, the default behavior for the Responder will apply.
<!-- LLTD_EnableRspndr-Description-End -->

<!-- LLTD_EnableRspndr-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LLTD_EnableRspndr-Editable-End -->

<!-- LLTD_EnableRspndr-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LLTD_EnableRspndr-DFProperties-End -->

<!-- LLTD_EnableRspndr-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LLTD_EnableRspndr |
| Friendly Name | Turn on Responder (RSPNDR) driver |
| Location | Computer Configuration |
| Path | Network > Link-Layer Topology Discovery |
| Registry Key Name | Software\Policies\Microsoft\Windows\LLTD |
| Registry Value Name | EnableRspndr |
| ADMX File Name | LinkLayerTopologyDiscovery.admx |
<!-- LLTD_EnableRspndr-AdmxBacked-End -->

<!-- LLTD_EnableRspndr-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LLTD_EnableRspndr-Examples-End -->

<!-- LLTD_EnableRspndr-End -->

<!-- ADMX_LinkLayerTopologyDiscovery-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_LinkLayerTopologyDiscovery-CspMoreInfo-End -->

<!-- ADMX_LinkLayerTopologyDiscovery-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
