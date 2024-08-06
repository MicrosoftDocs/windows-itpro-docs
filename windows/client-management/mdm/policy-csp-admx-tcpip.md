---
title: ADMX_tcpip Policy CSP
description: Learn more about the ADMX_tcpip Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_tcpip-Begin -->
# Policy CSP - ADMX_tcpip

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_tcpip-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_tcpip-Editable-End -->

<!-- 6to4_Router_Name-Begin -->
## 6to4_Router_Name

<!-- 6to4_Router_Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- 6to4_Router_Name-Applicability-End -->

<!-- 6to4_Router_Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_tcpip/6to4_Router_Name
```
<!-- 6to4_Router_Name-OmaUri-End -->

<!-- 6to4_Router_Name-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify a 6to4 relay name for a 6to4 host. A 6to4 relay is used as a default gateway for IPv6 network traffic sent by the 6to4 host. The 6to4 relay name setting has no effect if 6to4 connectivity isn't available on the host.

- If you enable this policy setting, you can specify a relay name for a 6to4 host.

- If you disable or don't configure this policy setting, the local host setting is used, and you can't specify a relay name for a 6to4 host.
<!-- 6to4_Router_Name-Description-End -->

<!-- 6to4_Router_Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- 6to4_Router_Name-Editable-End -->

<!-- 6to4_Router_Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- 6to4_Router_Name-DFProperties-End -->

<!-- 6to4_Router_Name-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | 6to4_Router_Name |
| Friendly Name | Set 6to4 Relay Name |
| Location | Computer Configuration |
| Path | Network > TCPIP Settings > IPv6 Transition Technologies |
| Registry Key Name | Software\Policies\Microsoft\Windows\TCPIP\v6Transition |
| ADMX File Name | tcpip.admx |
<!-- 6to4_Router_Name-AdmxBacked-End -->

<!-- 6to4_Router_Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- 6to4_Router_Name-Examples-End -->

<!-- 6to4_Router_Name-End -->

<!-- 6to4_Router_Name_Resolution_Interval-Begin -->
## 6to4_Router_Name_Resolution_Interval

<!-- 6to4_Router_Name_Resolution_Interval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- 6to4_Router_Name_Resolution_Interval-Applicability-End -->

<!-- 6to4_Router_Name_Resolution_Interval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_tcpip/6to4_Router_Name_Resolution_Interval
```
<!-- 6to4_Router_Name_Resolution_Interval-OmaUri-End -->

<!-- 6to4_Router_Name_Resolution_Interval-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the interval at which the relay name is resolved. The 6to4 relay name resolution interval setting has no effect if 6to4 connectivity isn't available on the host.

- If you enable this policy setting, you can specify the value for the duration at which the relay name is resolved periodically.

- If you disable or don't configure this policy setting, the local host setting is used.
<!-- 6to4_Router_Name_Resolution_Interval-Description-End -->

<!-- 6to4_Router_Name_Resolution_Interval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- 6to4_Router_Name_Resolution_Interval-Editable-End -->

<!-- 6to4_Router_Name_Resolution_Interval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- 6to4_Router_Name_Resolution_Interval-DFProperties-End -->

<!-- 6to4_Router_Name_Resolution_Interval-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | 6to4_Router_Name_Resolution_Interval |
| Friendly Name | Set 6to4 Relay Name Resolution Interval |
| Location | Computer Configuration |
| Path | Network > TCPIP Settings > IPv6 Transition Technologies |
| Registry Key Name | Software\Policies\Microsoft\Windows\TCPIP\v6Transition |
| ADMX File Name | tcpip.admx |
<!-- 6to4_Router_Name_Resolution_Interval-AdmxBacked-End -->

<!-- 6to4_Router_Name_Resolution_Interval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- 6to4_Router_Name_Resolution_Interval-Examples-End -->

<!-- 6to4_Router_Name_Resolution_Interval-End -->

<!-- 6to4_State-Begin -->
## 6to4_State

<!-- 6to4_State-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- 6to4_State-Applicability-End -->

<!-- 6to4_State-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_tcpip/6to4_State
```
<!-- 6to4_State-OmaUri-End -->

<!-- 6to4_State-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure 6to4, an address assignment and router-to-router automatic tunneling technology that's used to provide unicast IPv6 connectivity between IPv6 sites and hosts across the IPv4 Internet. 6to4 uses the global address prefix: 2002:WWXX:YYZZ::/48 in which the letters are a hexadecimal representation of the global IPv4 address (w.x.y.z) assigned to a site.

- If you disable or don't configure this policy setting, the local host setting is used.

- If you enable this policy setting, you can configure 6to4 with one of the following settings:

Policy Default State: 6to4 is turned off and connectivity with 6to4 won't be available.

Policy Enabled State: If a global IPv4 address is present, the host will have a 6to4 interface. If no global IPv4 address is present, the host won't have a 6to4 interface.

Policy Disabled State: 6to4 is turned off and connectivity with 6to4 won't be available.
<!-- 6to4_State-Description-End -->

<!-- 6to4_State-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- 6to4_State-Editable-End -->

<!-- 6to4_State-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- 6to4_State-DFProperties-End -->

<!-- 6to4_State-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | 6to4_State |
| Friendly Name | Set 6to4 State |
| Location | Computer Configuration |
| Path | Network > TCPIP Settings > IPv6 Transition Technologies |
| Registry Key Name | Software\Policies\Microsoft\Windows\TCPIP\v6Transition |
| ADMX File Name | tcpip.admx |
<!-- 6to4_State-AdmxBacked-End -->

<!-- 6to4_State-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- 6to4_State-Examples-End -->

<!-- 6to4_State-End -->

<!-- IP_Stateless_Autoconfiguration_Limits_State-Begin -->
## IP_Stateless_Autoconfiguration_Limits_State

<!-- IP_Stateless_Autoconfiguration_Limits_State-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IP_Stateless_Autoconfiguration_Limits_State-Applicability-End -->

<!-- IP_Stateless_Autoconfiguration_Limits_State-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_tcpip/IP_Stateless_Autoconfiguration_Limits_State
```
<!-- IP_Stateless_Autoconfiguration_Limits_State-OmaUri-End -->

<!-- IP_Stateless_Autoconfiguration_Limits_State-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure IP Stateless Autoconfiguration Limits.

- If you enable or don't configure this policy setting, IP Stateless Autoconfiguration Limits will be enabled and system will limit the number of autoconfigured addresses and routes.

- If you disable this policy setting, IP Stateless Autoconfiguration Limits will be disabled and system won't limit the number of autoconfigured addresses and routes.
<!-- IP_Stateless_Autoconfiguration_Limits_State-Description-End -->

<!-- IP_Stateless_Autoconfiguration_Limits_State-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IP_Stateless_Autoconfiguration_Limits_State-Editable-End -->

<!-- IP_Stateless_Autoconfiguration_Limits_State-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IP_Stateless_Autoconfiguration_Limits_State-DFProperties-End -->

<!-- IP_Stateless_Autoconfiguration_Limits_State-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IP_Stateless_Autoconfiguration_Limits_State |
| Friendly Name | Set IP Stateless Autoconfiguration Limits State |
| Location | Computer Configuration |
| Path | Network > TCPIP Settings > Parameters |
| Registry Key Name | System\CurrentControlSet\Services\Tcpip\Parameters |
| Registry Value Name | EnableIPAutoConfigurationLimits |
| ADMX File Name | tcpip.admx |
<!-- IP_Stateless_Autoconfiguration_Limits_State-AdmxBacked-End -->

<!-- IP_Stateless_Autoconfiguration_Limits_State-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IP_Stateless_Autoconfiguration_Limits_State-Examples-End -->

<!-- IP_Stateless_Autoconfiguration_Limits_State-End -->

<!-- IPHTTPS_ClientState-Begin -->
## IPHTTPS_ClientState

<!-- IPHTTPS_ClientState-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IPHTTPS_ClientState-Applicability-End -->

<!-- IPHTTPS_ClientState-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_tcpip/IPHTTPS_ClientState
```
<!-- IPHTTPS_ClientState-OmaUri-End -->

<!-- IPHTTPS_ClientState-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure IP-HTTPS, a tunneling technology that uses the HTTPS protocol to provide IP connectivity to a remote network.

- If you disable or don't configure this policy setting, the local host settings are used.

- If you enable this policy setting, you can specify an IP-HTTPS server URL. You'll be able to configure IP-HTTPS with one of the following settings:

Policy Default State: The IP-HTTPS interface is used when there are no other connectivity options.

Policy Enabled State: The IP-HTTPS interface is always present, even if the host has other connectivity options.

Policy Disabled State: No IP-HTTPS interfaces are present on the host.
<!-- IPHTTPS_ClientState-Description-End -->

<!-- IPHTTPS_ClientState-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IPHTTPS_ClientState-Editable-End -->

<!-- IPHTTPS_ClientState-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IPHTTPS_ClientState-DFProperties-End -->

<!-- IPHTTPS_ClientState-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IPHTTPS_ClientState |
| Friendly Name | Set IP-HTTPS State |
| Location | Computer Configuration |
| Path | Network > TCPIP Settings > IPv6 Transition Technologies |
| Registry Key Name | Software\Policies\Microsoft\Windows\TCPIP\v6Transition\IPHTTPS\IPHTTPSInterface |
| ADMX File Name | tcpip.admx |
<!-- IPHTTPS_ClientState-AdmxBacked-End -->

<!-- IPHTTPS_ClientState-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IPHTTPS_ClientState-Examples-End -->

<!-- IPHTTPS_ClientState-End -->

<!-- ISATAP_Router_Name-Begin -->
## ISATAP_Router_Name

<!-- ISATAP_Router_Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ISATAP_Router_Name-Applicability-End -->

<!-- ISATAP_Router_Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_tcpip/ISATAP_Router_Name
```
<!-- ISATAP_Router_Name-OmaUri-End -->

<!-- ISATAP_Router_Name-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify a router name or Internet Protocol version 4 (IPv4) address for an ISATAP router.

- If you enable this policy setting, you can specify a router name or IPv4 address for an ISATAP router. If you enter an IPv4 address of the ISATAP router in the text box, DNS services aren't required.

- If you disable or don't configure this policy setting, the local host setting is used.
<!-- ISATAP_Router_Name-Description-End -->

<!-- ISATAP_Router_Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ISATAP_Router_Name-Editable-End -->

<!-- ISATAP_Router_Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ISATAP_Router_Name-DFProperties-End -->

<!-- ISATAP_Router_Name-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ISATAP_Router_Name |
| Friendly Name | Set ISATAP Router Name |
| Location | Computer Configuration |
| Path | Network > TCPIP Settings > IPv6 Transition Technologies |
| Registry Key Name | Software\Policies\Microsoft\Windows\TCPIP\v6Transition |
| ADMX File Name | tcpip.admx |
<!-- ISATAP_Router_Name-AdmxBacked-End -->

<!-- ISATAP_Router_Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ISATAP_Router_Name-Examples-End -->

<!-- ISATAP_Router_Name-End -->

<!-- ISATAP_State-Begin -->
## ISATAP_State

<!-- ISATAP_State-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ISATAP_State-Applicability-End -->

<!-- ISATAP_State-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_tcpip/ISATAP_State
```
<!-- ISATAP_State-OmaUri-End -->

<!-- ISATAP_State-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure Intra-Site Automatic Tunnel Addressing Protocol (ISATAP), an address-to-router and host-to-host, host-to-router and router-to-host automatic tunneling technology that's used to provide unicast IPv6 connectivity between IPv6 hosts across an IPv4 intranet.

- If you disable or don't configure this policy setting, the local host setting is used.

- If you enable this policy setting, you can configure ISATAP with one of the following settings:

Policy Default State: No ISATAP interfaces are present on the host.

Policy Enabled State: If the ISATAP name is resolved successfully, the host will have ISATAP configured with a link-local address and an address for each prefix received from the ISATAP router through stateless address auto-configuration. If the ISATAP name isn't resolved successfully, the host will have an ISATAP interface configured with a link-local address.

Policy Disabled State: No ISATAP interfaces are present on the host.
<!-- ISATAP_State-Description-End -->

<!-- ISATAP_State-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ISATAP_State-Editable-End -->

<!-- ISATAP_State-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ISATAP_State-DFProperties-End -->

<!-- ISATAP_State-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ISATAP_State |
| Friendly Name | Set ISATAP State |
| Location | Computer Configuration |
| Path | Network > TCPIP Settings > IPv6 Transition Technologies |
| Registry Key Name | Software\Policies\Microsoft\Windows\TCPIP\v6Transition |
| ADMX File Name | tcpip.admx |
<!-- ISATAP_State-AdmxBacked-End -->

<!-- ISATAP_State-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ISATAP_State-Examples-End -->

<!-- ISATAP_State-End -->

<!-- Teredo_Client_Port-Begin -->
## Teredo_Client_Port

<!-- Teredo_Client_Port-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Teredo_Client_Port-Applicability-End -->

<!-- Teredo_Client_Port-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_tcpip/Teredo_Client_Port
```
<!-- Teredo_Client_Port-OmaUri-End -->

<!-- Teredo_Client_Port-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to select the UDP port the Teredo client will use to send packets. If you leave the default of 0, the operating system will select a port (recommended). If you select a UDP port that's already in use by a system, the Teredo client will fail to initialize.

- If you enable this policy setting, you can customize a UDP port for the Teredo client.

- If you disable or don't configure this policy setting, the local host setting is used.
<!-- Teredo_Client_Port-Description-End -->

<!-- Teredo_Client_Port-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Teredo_Client_Port-Editable-End -->

<!-- Teredo_Client_Port-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Teredo_Client_Port-DFProperties-End -->

<!-- Teredo_Client_Port-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Teredo_Client_Port |
| Friendly Name | Set Teredo Client Port |
| Location | Computer Configuration |
| Path | Network > TCPIP Settings > IPv6 Transition Technologies |
| Registry Key Name | Software\Policies\Microsoft\Windows\TCPIP\v6Transition |
| ADMX File Name | tcpip.admx |
<!-- Teredo_Client_Port-AdmxBacked-End -->

<!-- Teredo_Client_Port-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Teredo_Client_Port-Examples-End -->

<!-- Teredo_Client_Port-End -->

<!-- Teredo_Default_Qualified-Begin -->
## Teredo_Default_Qualified

<!-- Teredo_Default_Qualified-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Teredo_Default_Qualified-Applicability-End -->

<!-- Teredo_Default_Qualified-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_tcpip/Teredo_Default_Qualified
```
<!-- Teredo_Default_Qualified-OmaUri-End -->

<!-- Teredo_Default_Qualified-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to set Teredo to be ready to communicate, a process referred to as qualification. By default, Teredo enters a dormant state when not in use. The qualification process brings it out of a dormant state.

If you disable or don't configure this policy setting, the local host setting is used.

This policy setting contains only one state:

Policy Enabled State: If Default Qualified is enabled, Teredo will attempt qualification immediately and remain qualified if the qualification process succeeds.
<!-- Teredo_Default_Qualified-Description-End -->

<!-- Teredo_Default_Qualified-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Teredo_Default_Qualified-Editable-End -->

<!-- Teredo_Default_Qualified-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Teredo_Default_Qualified-DFProperties-End -->

<!-- Teredo_Default_Qualified-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Teredo_Default_Qualified |
| Friendly Name | Set Teredo Default Qualified |
| Location | Computer Configuration |
| Path | Network > TCPIP Settings > IPv6 Transition Technologies |
| Registry Key Name | Software\Policies\Microsoft\Windows\TCPIP\v6Transition |
| ADMX File Name | tcpip.admx |
<!-- Teredo_Default_Qualified-AdmxBacked-End -->

<!-- Teredo_Default_Qualified-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Teredo_Default_Qualified-Examples-End -->

<!-- Teredo_Default_Qualified-End -->

<!-- Teredo_Refresh_Rate-Begin -->
## Teredo_Refresh_Rate

<!-- Teredo_Refresh_Rate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Teredo_Refresh_Rate-Applicability-End -->

<!-- Teredo_Refresh_Rate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_tcpip/Teredo_Refresh_Rate
```
<!-- Teredo_Refresh_Rate-OmaUri-End -->

<!-- Teredo_Refresh_Rate-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the Teredo refresh rate.

> [!NOTE]
> On a periodic basis (by default, every 30 seconds), Teredo clients send a single Router Solicitation packet to the Teredo server. The Teredo server sends a Router Advertisement Packet in response. This periodic packet refreshes the IP address and UDP port mapping in the translation table of the Teredo client's NAT device.

- If you enable this policy setting, you can specify the refresh rate. If you choose a refresh rate longer than the port mapping in the Teredo client's NAT device, Teredo might stop working or connectivity might be intermittent.

- If you disable or don't configure this policy setting, the refresh rate is configured using the local settings on the computer. The default refresh rate is 30 seconds.
<!-- Teredo_Refresh_Rate-Description-End -->

<!-- Teredo_Refresh_Rate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Teredo_Refresh_Rate-Editable-End -->

<!-- Teredo_Refresh_Rate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Teredo_Refresh_Rate-DFProperties-End -->

<!-- Teredo_Refresh_Rate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Teredo_Refresh_Rate |
| Friendly Name | Set Teredo Refresh Rate |
| Location | Computer Configuration |
| Path | Network > TCPIP Settings > IPv6 Transition Technologies |
| Registry Key Name | Software\Policies\Microsoft\Windows\TCPIP\v6Transition |
| ADMX File Name | tcpip.admx |
<!-- Teredo_Refresh_Rate-AdmxBacked-End -->

<!-- Teredo_Refresh_Rate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Teredo_Refresh_Rate-Examples-End -->

<!-- Teredo_Refresh_Rate-End -->

<!-- Teredo_Server_Name-Begin -->
## Teredo_Server_Name

<!-- Teredo_Server_Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Teredo_Server_Name-Applicability-End -->

<!-- Teredo_Server_Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_tcpip/Teredo_Server_Name
```
<!-- Teredo_Server_Name-OmaUri-End -->

<!-- Teredo_Server_Name-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the name of the Teredo server. This server name will be used on the Teredo client computer where this policy setting is applied.

- If you enable this policy setting, you can specify a Teredo server name that applies to a Teredo client.

- If you disable or don't configure this policy setting, the local settings on the computer are used to determine the Teredo server name.
<!-- Teredo_Server_Name-Description-End -->

<!-- Teredo_Server_Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Teredo_Server_Name-Editable-End -->

<!-- Teredo_Server_Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Teredo_Server_Name-DFProperties-End -->

<!-- Teredo_Server_Name-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Teredo_Server_Name |
| Friendly Name | Set Teredo Server Name |
| Location | Computer Configuration |
| Path | Network > TCPIP Settings > IPv6 Transition Technologies |
| Registry Key Name | Software\Policies\Microsoft\Windows\TCPIP\v6Transition |
| ADMX File Name | tcpip.admx |
<!-- Teredo_Server_Name-AdmxBacked-End -->

<!-- Teredo_Server_Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Teredo_Server_Name-Examples-End -->

<!-- Teredo_Server_Name-End -->

<!-- Teredo_State-Begin -->
## Teredo_State

<!-- Teredo_State-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Teredo_State-Applicability-End -->

<!-- Teredo_State-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_tcpip/Teredo_State
```
<!-- Teredo_State-OmaUri-End -->

<!-- Teredo_State-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure Teredo, an address assignment and automatic tunneling technology that provides unicast IPv6 connectivity across the IPv4 Internet.

- If you disable or don't configure this policy setting, the local host settings are used.

- If you enable this policy setting, you can configure Teredo with one of the following settings:

Default: The default state is "Client".

Disabled: No Teredo interfaces are present on the host.

Client: The Teredo interface is present only when the host isn't on a network that includes a domain controller.

Enterprise Client: The Teredo interface is always present, even if the host is on a network that includes a domain controller.
<!-- Teredo_State-Description-End -->

<!-- Teredo_State-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Teredo_State-Editable-End -->

<!-- Teredo_State-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Teredo_State-DFProperties-End -->

<!-- Teredo_State-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Teredo_State |
| Friendly Name | Set Teredo State |
| Location | Computer Configuration |
| Path | Network > TCPIP Settings > IPv6 Transition Technologies |
| Registry Key Name | Software\Policies\Microsoft\Windows\TCPIP\v6Transition |
| ADMX File Name | tcpip.admx |
<!-- Teredo_State-AdmxBacked-End -->

<!-- Teredo_State-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Teredo_State-Examples-End -->

<!-- Teredo_State-End -->

<!-- Windows_Scaling_Heuristics_State-Begin -->
## Windows_Scaling_Heuristics_State

<!-- Windows_Scaling_Heuristics_State-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Windows_Scaling_Heuristics_State-Applicability-End -->

<!-- Windows_Scaling_Heuristics_State-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_tcpip/Windows_Scaling_Heuristics_State
```
<!-- Windows_Scaling_Heuristics_State-OmaUri-End -->

<!-- Windows_Scaling_Heuristics_State-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure Window Scaling Heuristics. Window Scaling Heuristics is an algorithm to identify connectivity and throughput problems caused by many Firewalls and other middle boxes that don't interpret Window Scaling option correctly.

- If you don't configure this policy setting, the local host settings are used.

- If you enable this policy setting, Window Scaling Heuristics will be enabled and system will try to identify connectivity and throughput problems and take appropriate measures.

- If you disable this policy setting, Window Scaling Heuristics will be disabled and system won't try to identify connectivity and throughput problems casued by Firewalls or other middle boxes.
<!-- Windows_Scaling_Heuristics_State-Description-End -->

<!-- Windows_Scaling_Heuristics_State-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Windows_Scaling_Heuristics_State-Editable-End -->

<!-- Windows_Scaling_Heuristics_State-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Windows_Scaling_Heuristics_State-DFProperties-End -->

<!-- Windows_Scaling_Heuristics_State-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Windows_Scaling_Heuristics_State |
| Friendly Name | Set Window Scaling Heuristics State |
| Location | Computer Configuration |
| Path | Network > TCPIP Settings > Parameters |
| Registry Key Name | System\CurrentControlSet\Services\Tcpip\Parameters |
| Registry Value Name | EnableWsd |
| ADMX File Name | tcpip.admx |
<!-- Windows_Scaling_Heuristics_State-AdmxBacked-End -->

<!-- Windows_Scaling_Heuristics_State-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Windows_Scaling_Heuristics_State-Examples-End -->

<!-- Windows_Scaling_Heuristics_State-End -->

<!-- ADMX_tcpip-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_tcpip-CspMoreInfo-End -->

<!-- ADMX_tcpip-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
