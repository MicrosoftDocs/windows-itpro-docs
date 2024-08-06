---
title: ADMX_LinkLayerTopologyDiscovery Policy CSP
description: Learn more about the ADMX_LinkLayerTopologyDiscovery Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_LinkLayerTopologyDiscovery-Begin -->
# Policy CSP - ADMX_LinkLayerTopologyDiscovery

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_LinkLayerTopologyDiscovery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_LinkLayerTopologyDiscovery-Editable-End -->

<!-- LLTD_EnableLLTDIO-Begin -->
## LLTD_EnableLLTDIO

<!-- LLTD_EnableLLTDIO-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
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

- If you enable this policy setting, additional options are available to fine-tune your selection. You may choose the "Allow operation while in domain" option to allow LLTDIO to operate on a network interface that's connected to a managed network. On the other hand, if a network interface is connected to an unmanaged network, you may choose the "Allow operation while in public network" and "Prohibit operation while in private network" options instead.

- If you disable or don't configure this policy setting, the default behavior of LLTDIO will apply.
<!-- LLTD_EnableLLTDIO-Description-End -->

<!-- LLTD_EnableLLTDIO-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LLTD_EnableLLTDIO-Editable-End -->

<!-- LLTD_EnableLLTDIO-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LLTD_EnableLLTDIO-DFProperties-End -->

<!-- LLTD_EnableLLTDIO-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
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

- If you enable this policy setting, additional options are available to fine-tune your selection. You may choose the "Allow operation while in domain" option to allow the Responder to operate on a network interface that's connected to a managed network. On the other hand, if a network interface is connected to an unmanaged network, you may choose the "Allow operation while in public network" and "Prohibit operation while in private network" options instead.

- If you disable or don't configure this policy setting, the default behavior for the Responder will apply.
<!-- LLTD_EnableRspndr-Description-End -->

<!-- LLTD_EnableRspndr-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LLTD_EnableRspndr-Editable-End -->

<!-- LLTD_EnableRspndr-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LLTD_EnableRspndr-DFProperties-End -->

<!-- LLTD_EnableRspndr-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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
