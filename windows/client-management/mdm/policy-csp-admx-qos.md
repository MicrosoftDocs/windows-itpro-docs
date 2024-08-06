---
title: ADMX_QOS Policy CSP
description: Learn more about the ADMX_QOS Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_QOS-Begin -->
# Policy CSP - ADMX_QOS

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_QOS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_QOS-Editable-End -->

<!-- QosMaxOutstandingSends-Begin -->
## QosMaxOutstandingSends

<!-- QosMaxOutstandingSends-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosMaxOutstandingSends-Applicability-End -->

<!-- QosMaxOutstandingSends-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosMaxOutstandingSends
```
<!-- QosMaxOutstandingSends-OmaUri-End -->

<!-- QosMaxOutstandingSends-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the maximum number of outstanding packets permitted on the system. When the number of outstanding packets reaches this limit, the Packet Scheduler postpones all submissions to network adapters until the number falls below this limit.

"Outstanding packets" are packets that the Packet Scheduler has submitted to a network adapter for transmission, but which haven't yet been sent.

- If you enable this setting, you can limit the number of outstanding packets.

- If you disable this setting or don't configure it, then the setting has no effect on the system.

> [!IMPORTANT]
> If the maximum number of outstanding packets is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosMaxOutstandingSends-Description-End -->

<!-- QosMaxOutstandingSends-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosMaxOutstandingSends-Editable-End -->

<!-- QosMaxOutstandingSends-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosMaxOutstandingSends-DFProperties-End -->

<!-- QosMaxOutstandingSends-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosMaxOutstandingSends |
| Friendly Name | Limit outstanding packets |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched |
| ADMX File Name | QOS.admx |
<!-- QosMaxOutstandingSends-AdmxBacked-End -->

<!-- QosMaxOutstandingSends-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosMaxOutstandingSends-Examples-End -->

<!-- QosMaxOutstandingSends-End -->

<!-- QosNonBestEffortLimit-Begin -->
## QosNonBestEffortLimit

<!-- QosNonBestEffortLimit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosNonBestEffortLimit-Applicability-End -->

<!-- QosNonBestEffortLimit-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosNonBestEffortLimit
```
<!-- QosNonBestEffortLimit-OmaUri-End -->

<!-- QosNonBestEffortLimit-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines the percentage of connection bandwidth that the system can reserve. This value limits the combined bandwidth reservations of all programs running on the system.

By default, the Packet Scheduler limits the system to 80 percent of the bandwidth of a connection, but you can use this setting to override the default.

- If you enable this setting, you can use the "Bandwidth limit" box to adjust the amount of bandwidth the system can reserve.

- If you disable this setting or don't configure it, the system uses the default value of 80 percent of the connection.

> [!IMPORTANT]
> If a bandwidth limit's set for a particular network adapter in the registry, this setting is ignored when configuring that network adapter.
<!-- QosNonBestEffortLimit-Description-End -->

<!-- QosNonBestEffortLimit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosNonBestEffortLimit-Editable-End -->

<!-- QosNonBestEffortLimit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosNonBestEffortLimit-DFProperties-End -->

<!-- QosNonBestEffortLimit-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosNonBestEffortLimit |
| Friendly Name | Limit reservable bandwidth |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched |
| ADMX File Name | QOS.admx |
<!-- QosNonBestEffortLimit-AdmxBacked-End -->

<!-- QosNonBestEffortLimit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosNonBestEffortLimit-Examples-End -->

<!-- QosNonBestEffortLimit-End -->

<!-- QosServiceTypeBestEffort_C-Begin -->
## QosServiceTypeBestEffort_C

<!-- QosServiceTypeBestEffort_C-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeBestEffort_C-Applicability-End -->

<!-- QosServiceTypeBestEffort_C-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeBestEffort_C
```
<!-- QosServiceTypeBestEffort_C-OmaUri-End -->

<!-- QosServiceTypeBestEffort_C-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate Layer-3 Differentiated Services Code Point (DSCP) value for packets with the Best Effort service type (ServiceTypeBestEffort). The Packet Scheduler inserts the corresponding DSCP value in the IP header of the packets.

This setting applies only to packets that conform to the flow specification.

- If you enable this setting, you can change the default DSCP value associated with the Best Effort service type.

- If you disable this setting, the system uses the default DSCP value of 0.

> [!IMPORTANT]
> If the DSCP value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeBestEffort_C-Description-End -->

<!-- QosServiceTypeBestEffort_C-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeBestEffort_C-Editable-End -->

<!-- QosServiceTypeBestEffort_C-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeBestEffort_C-DFProperties-End -->

<!-- QosServiceTypeBestEffort_C-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeBestEffort_C |
| Friendly Name | Best effort service type |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > DSCP value of conforming packets |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeBestEffort_C-AdmxBacked-End -->

<!-- QosServiceTypeBestEffort_C-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeBestEffort_C-Examples-End -->

<!-- QosServiceTypeBestEffort_C-End -->

<!-- QosServiceTypeBestEffort_NC-Begin -->
## QosServiceTypeBestEffort_NC

<!-- QosServiceTypeBestEffort_NC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeBestEffort_NC-Applicability-End -->

<!-- QosServiceTypeBestEffort_NC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeBestEffort_NC
```
<!-- QosServiceTypeBestEffort_NC-OmaUri-End -->

<!-- QosServiceTypeBestEffort_NC-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate Layer-3 Differentiated Services Code Point (DSCP) value for packets with the Best Effort service type (ServiceTypeBestEffort). The Packet Scheduler inserts the corresponding DSCP value in the IP header of the packets.

This setting applies only to packets that don't conform to the flow specification.

- If you enable this setting, you can change the default DSCP value associated with the Best Effort service type.

- If you disable this setting, the system uses the default DSCP value of 0.

> [!IMPORTANT]
> If the DSCP value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeBestEffort_NC-Description-End -->

<!-- QosServiceTypeBestEffort_NC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeBestEffort_NC-Editable-End -->

<!-- QosServiceTypeBestEffort_NC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeBestEffort_NC-DFProperties-End -->

<!-- QosServiceTypeBestEffort_NC-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeBestEffort_NC |
| Friendly Name | Best effort service type |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > DSCP value of non-conforming packets |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeBestEffort_NC-AdmxBacked-End -->

<!-- QosServiceTypeBestEffort_NC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeBestEffort_NC-Examples-End -->

<!-- QosServiceTypeBestEffort_NC-End -->

<!-- QosServiceTypeBestEffort_PV-Begin -->
## QosServiceTypeBestEffort_PV

<!-- QosServiceTypeBestEffort_PV-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeBestEffort_PV-Applicability-End -->

<!-- QosServiceTypeBestEffort_PV-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeBestEffort_PV
```
<!-- QosServiceTypeBestEffort_PV-OmaUri-End -->

<!-- QosServiceTypeBestEffort_PV-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate link layer (Layer-2) priority value for packets with the Best Effort service type (ServiceTypeBestEffort). The Packet Scheduler inserts the corresponding priority value in the Layer-2 header of the packets.

- If you enable this setting, you can change the default priority value associated with the Best Effort service type.

- If you disable this setting, the system uses the default priority value of 0.

> [!IMPORTANT]
> If the Layer-2 priority value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeBestEffort_PV-Description-End -->

<!-- QosServiceTypeBestEffort_PV-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeBestEffort_PV-Editable-End -->

<!-- QosServiceTypeBestEffort_PV-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeBestEffort_PV-DFProperties-End -->

<!-- QosServiceTypeBestEffort_PV-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeBestEffort_PV |
| Friendly Name | Best effort service type |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > Layer-2 priority value |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeBestEffort_PV-AdmxBacked-End -->

<!-- QosServiceTypeBestEffort_PV-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeBestEffort_PV-Examples-End -->

<!-- QosServiceTypeBestEffort_PV-End -->

<!-- QosServiceTypeControlledLoad_C-Begin -->
## QosServiceTypeControlledLoad_C

<!-- QosServiceTypeControlledLoad_C-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeControlledLoad_C-Applicability-End -->

<!-- QosServiceTypeControlledLoad_C-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeControlledLoad_C
```
<!-- QosServiceTypeControlledLoad_C-OmaUri-End -->

<!-- QosServiceTypeControlledLoad_C-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate Layer-3 Differentiated Services Code Point (DSCP) value for packets with the Controlled Load service type (ServiceTypeControlledLoad). The Packet Scheduler inserts the corresponding DSCP value in the IP header of the packets.

This setting applies only to packets that conform to the flow specification.

- If you enable this setting, you can change the default DSCP value associated with the Controlled Load service type.

- If you disable this setting, the system uses the default DSCP value of 24 (0x18).

> [!IMPORTANT]
> If the DSCP value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeControlledLoad_C-Description-End -->

<!-- QosServiceTypeControlledLoad_C-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeControlledLoad_C-Editable-End -->

<!-- QosServiceTypeControlledLoad_C-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeControlledLoad_C-DFProperties-End -->

<!-- QosServiceTypeControlledLoad_C-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeControlledLoad_C |
| Friendly Name | Controlled load service type |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > DSCP value of conforming packets |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeControlledLoad_C-AdmxBacked-End -->

<!-- QosServiceTypeControlledLoad_C-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeControlledLoad_C-Examples-End -->

<!-- QosServiceTypeControlledLoad_C-End -->

<!-- QosServiceTypeControlledLoad_NC-Begin -->
## QosServiceTypeControlledLoad_NC

<!-- QosServiceTypeControlledLoad_NC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeControlledLoad_NC-Applicability-End -->

<!-- QosServiceTypeControlledLoad_NC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeControlledLoad_NC
```
<!-- QosServiceTypeControlledLoad_NC-OmaUri-End -->

<!-- QosServiceTypeControlledLoad_NC-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate Layer-3 Differentiated Services Code Point (DSCP) value for packets with the Controlled Load service type (ServiceTypeControlledLoad). The Packet Scheduler inserts the corresponding DSCP value in the IP header of the packets.

This setting applies only to packets that don't conform to the flow specification.

- If you enable this setting, you can change the default DSCP value associated with the Controlled Load service type.

- If you disable this setting, the system uses the default DSCP value of 0.

> [!IMPORTANT]
> If the DSCP value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeControlledLoad_NC-Description-End -->

<!-- QosServiceTypeControlledLoad_NC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeControlledLoad_NC-Editable-End -->

<!-- QosServiceTypeControlledLoad_NC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeControlledLoad_NC-DFProperties-End -->

<!-- QosServiceTypeControlledLoad_NC-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeControlledLoad_NC |
| Friendly Name | Controlled load service type |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > DSCP value of non-conforming packets |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeControlledLoad_NC-AdmxBacked-End -->

<!-- QosServiceTypeControlledLoad_NC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeControlledLoad_NC-Examples-End -->

<!-- QosServiceTypeControlledLoad_NC-End -->

<!-- QosServiceTypeControlledLoad_PV-Begin -->
## QosServiceTypeControlledLoad_PV

<!-- QosServiceTypeControlledLoad_PV-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeControlledLoad_PV-Applicability-End -->

<!-- QosServiceTypeControlledLoad_PV-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeControlledLoad_PV
```
<!-- QosServiceTypeControlledLoad_PV-OmaUri-End -->

<!-- QosServiceTypeControlledLoad_PV-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate link layer (Layer-2) priority value for packets with the Controlled Load service type (ServiceTypeControlledLoad). The Packet Scheduler inserts the corresponding priority value in the Layer-2 header of the packets.

- If you enable this setting, you can change the default priority value associated with the Controlled Load service type.

- If you disable this setting, the system uses the default priority value of 0.

> [!IMPORTANT]
> If the Layer-2 priority value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeControlledLoad_PV-Description-End -->

<!-- QosServiceTypeControlledLoad_PV-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeControlledLoad_PV-Editable-End -->

<!-- QosServiceTypeControlledLoad_PV-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeControlledLoad_PV-DFProperties-End -->

<!-- QosServiceTypeControlledLoad_PV-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeControlledLoad_PV |
| Friendly Name | Controlled load service type |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > Layer-2 priority value |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeControlledLoad_PV-AdmxBacked-End -->

<!-- QosServiceTypeControlledLoad_PV-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeControlledLoad_PV-Examples-End -->

<!-- QosServiceTypeControlledLoad_PV-End -->

<!-- QosServiceTypeGuaranteed_C-Begin -->
## QosServiceTypeGuaranteed_C

<!-- QosServiceTypeGuaranteed_C-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeGuaranteed_C-Applicability-End -->

<!-- QosServiceTypeGuaranteed_C-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeGuaranteed_C
```
<!-- QosServiceTypeGuaranteed_C-OmaUri-End -->

<!-- QosServiceTypeGuaranteed_C-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate Layer-3 Differentiated Services Code Point (DSCP) value for packets with the Guaranteed service type (ServiceTypeGuaranteed). The Packet Scheduler inserts the corresponding DSCP value in the IP header of the packets.

This setting applies only to packets that conform to the flow specification.

- If you enable this setting, you can change the default DSCP value associated with the Guaranteed service type.

- If you disable this setting, the system uses the default DSCP value of 40 (0x28).

> [!IMPORTANT]
> If the DSCP value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeGuaranteed_C-Description-End -->

<!-- QosServiceTypeGuaranteed_C-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeGuaranteed_C-Editable-End -->

<!-- QosServiceTypeGuaranteed_C-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeGuaranteed_C-DFProperties-End -->

<!-- QosServiceTypeGuaranteed_C-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeGuaranteed_C |
| Friendly Name | Guaranteed service type |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > DSCP value of conforming packets |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeGuaranteed_C-AdmxBacked-End -->

<!-- QosServiceTypeGuaranteed_C-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeGuaranteed_C-Examples-End -->

<!-- QosServiceTypeGuaranteed_C-End -->

<!-- QosServiceTypeGuaranteed_NC-Begin -->
## QosServiceTypeGuaranteed_NC

<!-- QosServiceTypeGuaranteed_NC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeGuaranteed_NC-Applicability-End -->

<!-- QosServiceTypeGuaranteed_NC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeGuaranteed_NC
```
<!-- QosServiceTypeGuaranteed_NC-OmaUri-End -->

<!-- QosServiceTypeGuaranteed_NC-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate Layer-3 Differentiated Services Code Point (DSCP) value for packets with the Guaranteed service type (ServiceTypeGuaranteed). The Packet Scheduler inserts the corresponding DSCP value in the IP header of the packets.

This setting applies only to packets that don't conform to the flow specification.

- If you enable this setting, you can change the default DSCP value associated with the Guaranteed service type.

- If you disable this setting, the system uses the default DSCP value of 0.

> [!IMPORTANT]
> If the DSCP value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeGuaranteed_NC-Description-End -->

<!-- QosServiceTypeGuaranteed_NC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeGuaranteed_NC-Editable-End -->

<!-- QosServiceTypeGuaranteed_NC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeGuaranteed_NC-DFProperties-End -->

<!-- QosServiceTypeGuaranteed_NC-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeGuaranteed_NC |
| Friendly Name | Guaranteed service type |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > DSCP value of non-conforming packets |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeGuaranteed_NC-AdmxBacked-End -->

<!-- QosServiceTypeGuaranteed_NC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeGuaranteed_NC-Examples-End -->

<!-- QosServiceTypeGuaranteed_NC-End -->

<!-- QosServiceTypeGuaranteed_PV-Begin -->
## QosServiceTypeGuaranteed_PV

<!-- QosServiceTypeGuaranteed_PV-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeGuaranteed_PV-Applicability-End -->

<!-- QosServiceTypeGuaranteed_PV-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeGuaranteed_PV
```
<!-- QosServiceTypeGuaranteed_PV-OmaUri-End -->

<!-- QosServiceTypeGuaranteed_PV-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate link layer (Layer-2) priority value for packets with the Guaranteed service type (ServiceTypeGuaranteed). The Packet Scheduler inserts the corresponding priority value in the Layer-2 header of the packets.

- If you enable this setting, you can change the default priority value associated with the Guaranteed service type.

- If you disable this setting, the system uses the default priority value of 0.

> [!IMPORTANT]
> If the Layer-2 priority value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeGuaranteed_PV-Description-End -->

<!-- QosServiceTypeGuaranteed_PV-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeGuaranteed_PV-Editable-End -->

<!-- QosServiceTypeGuaranteed_PV-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeGuaranteed_PV-DFProperties-End -->

<!-- QosServiceTypeGuaranteed_PV-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeGuaranteed_PV |
| Friendly Name | Guaranteed service type |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > Layer-2 priority value |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeGuaranteed_PV-AdmxBacked-End -->

<!-- QosServiceTypeGuaranteed_PV-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeGuaranteed_PV-Examples-End -->

<!-- QosServiceTypeGuaranteed_PV-End -->

<!-- QosServiceTypeNetworkControl_C-Begin -->
## QosServiceTypeNetworkControl_C

<!-- QosServiceTypeNetworkControl_C-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeNetworkControl_C-Applicability-End -->

<!-- QosServiceTypeNetworkControl_C-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeNetworkControl_C
```
<!-- QosServiceTypeNetworkControl_C-OmaUri-End -->

<!-- QosServiceTypeNetworkControl_C-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate Layer-3 Differentiated Services Code Point (DSCP) value for packets with the Network Control service type (ServiceTypeNetworkControl). The Packet Scheduler inserts the corresponding DSCP value in the IP header of the packets.

This setting applies only to packets that conform to the flow specification.

- If you enable this setting, you can change the default DSCP value associated with the Network Control service type.

- If you disable this setting, the system uses the default DSCP value of 48 (0x30).

> [!IMPORTANT]
> If the DSCP value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeNetworkControl_C-Description-End -->

<!-- QosServiceTypeNetworkControl_C-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeNetworkControl_C-Editable-End -->

<!-- QosServiceTypeNetworkControl_C-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeNetworkControl_C-DFProperties-End -->

<!-- QosServiceTypeNetworkControl_C-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeNetworkControl_C |
| Friendly Name | Network control service type |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > DSCP value of conforming packets |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeNetworkControl_C-AdmxBacked-End -->

<!-- QosServiceTypeNetworkControl_C-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeNetworkControl_C-Examples-End -->

<!-- QosServiceTypeNetworkControl_C-End -->

<!-- QosServiceTypeNetworkControl_NC-Begin -->
## QosServiceTypeNetworkControl_NC

<!-- QosServiceTypeNetworkControl_NC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeNetworkControl_NC-Applicability-End -->

<!-- QosServiceTypeNetworkControl_NC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeNetworkControl_NC
```
<!-- QosServiceTypeNetworkControl_NC-OmaUri-End -->

<!-- QosServiceTypeNetworkControl_NC-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate Layer-3 Differentiated Services Code Point (DSCP) value for packets with the Network Control service type (ServiceTypeNetworkControl). The Packet Scheduler inserts the corresponding DSCP value in the IP header of the packets.

This setting applies only to packets that don't conform to the flow specification.

- If you enable this setting, you can change the default DSCP value associated with the Network Control service type.

- If you disable this setting, the system uses the default DSCP value of 0.

> [!IMPORTANT]
> If the DSCP value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeNetworkControl_NC-Description-End -->

<!-- QosServiceTypeNetworkControl_NC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeNetworkControl_NC-Editable-End -->

<!-- QosServiceTypeNetworkControl_NC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeNetworkControl_NC-DFProperties-End -->

<!-- QosServiceTypeNetworkControl_NC-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeNetworkControl_NC |
| Friendly Name | Network control service type |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > DSCP value of non-conforming packets |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeNetworkControl_NC-AdmxBacked-End -->

<!-- QosServiceTypeNetworkControl_NC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeNetworkControl_NC-Examples-End -->

<!-- QosServiceTypeNetworkControl_NC-End -->

<!-- QosServiceTypeNetworkControl_PV-Begin -->
## QosServiceTypeNetworkControl_PV

<!-- QosServiceTypeNetworkControl_PV-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeNetworkControl_PV-Applicability-End -->

<!-- QosServiceTypeNetworkControl_PV-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeNetworkControl_PV
```
<!-- QosServiceTypeNetworkControl_PV-OmaUri-End -->

<!-- QosServiceTypeNetworkControl_PV-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate link layer (Layer-2) priority value for packets with the Network Control service type (ServiceTypeNetworkControl). The Packet Scheduler inserts the corresponding priority value in the Layer-2 header of the packets.

- If you enable this setting, you can change the default priority value associated with the Network Control service type.

- If you disable this setting, the system uses the default priority value of 0.

> [!IMPORTANT]
> If the Layer-2 priority value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeNetworkControl_PV-Description-End -->

<!-- QosServiceTypeNetworkControl_PV-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeNetworkControl_PV-Editable-End -->

<!-- QosServiceTypeNetworkControl_PV-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeNetworkControl_PV-DFProperties-End -->

<!-- QosServiceTypeNetworkControl_PV-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeNetworkControl_PV |
| Friendly Name | Network control service type |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > Layer-2 priority value |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeNetworkControl_PV-AdmxBacked-End -->

<!-- QosServiceTypeNetworkControl_PV-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeNetworkControl_PV-Examples-End -->

<!-- QosServiceTypeNetworkControl_PV-End -->

<!-- QosServiceTypeNonConforming-Begin -->
## QosServiceTypeNonConforming

<!-- QosServiceTypeNonConforming-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeNonConforming-Applicability-End -->

<!-- QosServiceTypeNonConforming-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeNonConforming
```
<!-- QosServiceTypeNonConforming-OmaUri-End -->

<!-- QosServiceTypeNonConforming-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate link layer (Layer-2) priority value for packets that don't conform to the flow specification. The Packet Scheduler inserts the corresponding priority value in the Layer-2 header of the packets.

- If you enable this setting, you can change the default priority value associated with nonconforming packets.

- If you disable this setting, the system uses the default priority value of 0.

> [!IMPORTANT]
> If the Layer-2 priority value for nonconforming packets is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeNonConforming-Description-End -->

<!-- QosServiceTypeNonConforming-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeNonConforming-Editable-End -->

<!-- QosServiceTypeNonConforming-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeNonConforming-DFProperties-End -->

<!-- QosServiceTypeNonConforming-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeNonConforming |
| Friendly Name | Non-conforming packets |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > Layer-2 priority value |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeNonConforming-AdmxBacked-End -->

<!-- QosServiceTypeNonConforming-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeNonConforming-Examples-End -->

<!-- QosServiceTypeNonConforming-End -->

<!-- QosServiceTypeQualitative_C-Begin -->
## QosServiceTypeQualitative_C

<!-- QosServiceTypeQualitative_C-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeQualitative_C-Applicability-End -->

<!-- QosServiceTypeQualitative_C-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeQualitative_C
```
<!-- QosServiceTypeQualitative_C-OmaUri-End -->

<!-- QosServiceTypeQualitative_C-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate Layer-3 Differentiated Services Code Point (DSCP) value for packets with the Qualitative service type (ServiceTypeQualitative). The Packet Scheduler inserts the corresponding DSCP value in the IP header of the packets.

This setting applies only to packets that conform to the flow specification.

- If you enable this setting, you can change the default DSCP value associated with the Qualitative service type.

- If you disable this setting, the system uses the default DSCP value of 0.

> [!IMPORTANT]
> If the DSCP value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeQualitative_C-Description-End -->

<!-- QosServiceTypeQualitative_C-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeQualitative_C-Editable-End -->

<!-- QosServiceTypeQualitative_C-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeQualitative_C-DFProperties-End -->

<!-- QosServiceTypeQualitative_C-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeQualitative_C |
| Friendly Name | Qualitative service type |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > DSCP value of conforming packets |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeQualitative_C-AdmxBacked-End -->

<!-- QosServiceTypeQualitative_C-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeQualitative_C-Examples-End -->

<!-- QosServiceTypeQualitative_C-End -->

<!-- QosServiceTypeQualitative_NC-Begin -->
## QosServiceTypeQualitative_NC

<!-- QosServiceTypeQualitative_NC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeQualitative_NC-Applicability-End -->

<!-- QosServiceTypeQualitative_NC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeQualitative_NC
```
<!-- QosServiceTypeQualitative_NC-OmaUri-End -->

<!-- QosServiceTypeQualitative_NC-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate Layer-3 Differentiated Services Code Point (DSCP) value for packets with the Qualitative service type (ServiceTypeQualitative). The Packet Scheduler inserts the corresponding DSCP value in the IP header of the packets.

This setting applies only to packets that don't conform to the flow specification.

- If you enable this setting, you can change the default DSCP value associated with the Qualitative service type.

- If you disable this setting, the system uses the default DSCP value of 0.

> [!IMPORTANT]
> If the DSCP value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeQualitative_NC-Description-End -->

<!-- QosServiceTypeQualitative_NC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeQualitative_NC-Editable-End -->

<!-- QosServiceTypeQualitative_NC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeQualitative_NC-DFProperties-End -->

<!-- QosServiceTypeQualitative_NC-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeQualitative_NC |
| Friendly Name | Qualitative service type |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > DSCP value of non-conforming packets |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeQualitative_NC-AdmxBacked-End -->

<!-- QosServiceTypeQualitative_NC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeQualitative_NC-Examples-End -->

<!-- QosServiceTypeQualitative_NC-End -->

<!-- QosServiceTypeQualitative_PV-Begin -->
## QosServiceTypeQualitative_PV

<!-- QosServiceTypeQualitative_PV-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosServiceTypeQualitative_PV-Applicability-End -->

<!-- QosServiceTypeQualitative_PV-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosServiceTypeQualitative_PV
```
<!-- QosServiceTypeQualitative_PV-OmaUri-End -->

<!-- QosServiceTypeQualitative_PV-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate link layer (Layer-2) priority value for packets with the Qualitative service type (ServiceTypeQualitative). The Packet Scheduler inserts the corresponding priority value in the Layer-2 header of the packets.

- If you enable this setting, you can change the default priority value associated with the Qualitative service type.

- If you disable this setting, the system uses the default priority value of 0.

> [!IMPORTANT]
> If the Layer-2 priority value for this service type is specified in the registry for a particular network adapter, this setting is ignored when configuring that network adapter.
<!-- QosServiceTypeQualitative_PV-Description-End -->

<!-- QosServiceTypeQualitative_PV-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosServiceTypeQualitative_PV-Editable-End -->

<!-- QosServiceTypeQualitative_PV-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosServiceTypeQualitative_PV-DFProperties-End -->

<!-- QosServiceTypeQualitative_PV-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosServiceTypeQualitative_PV |
| Friendly Name | Qualitative service type |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler > Layer-2 priority value |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping |
| ADMX File Name | QOS.admx |
<!-- QosServiceTypeQualitative_PV-AdmxBacked-End -->

<!-- QosServiceTypeQualitative_PV-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosServiceTypeQualitative_PV-Examples-End -->

<!-- QosServiceTypeQualitative_PV-End -->

<!-- QosTimerResolution-Begin -->
## QosTimerResolution

<!-- QosTimerResolution-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QosTimerResolution-Applicability-End -->

<!-- QosTimerResolution-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_QOS/QosTimerResolution
```
<!-- QosTimerResolution-OmaUri-End -->

<!-- QosTimerResolution-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines the smallest unit of time that the Packet Scheduler uses when scheduling packets for transmission. The Packet Scheduler can't schedule packets for transmission more frequently than permitted by the value of this entry.

- If you enable this setting, you can override the default timer resolution established for the system, usually units of 10 microseconds.

- If you disable this setting or don't configure it, the setting has no effect on the system.

> [!IMPORTANT]
> If a timer resolution is specified in the registry for a particular network adapter, then this setting is ignored when configuring that network adapter.
<!-- QosTimerResolution-Description-End -->

<!-- QosTimerResolution-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QosTimerResolution-Editable-End -->

<!-- QosTimerResolution-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QosTimerResolution-DFProperties-End -->

<!-- QosTimerResolution-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QosTimerResolution |
| Friendly Name | Set timer resolution |
| Location | Computer Configuration |
| Path | Network > QoS Packet Scheduler |
| Registry Key Name | Software\Policies\Microsoft\Windows\Psched |
| ADMX File Name | QOS.admx |
<!-- QosTimerResolution-AdmxBacked-End -->

<!-- QosTimerResolution-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QosTimerResolution-Examples-End -->

<!-- QosTimerResolution-End -->

<!-- ADMX_QOS-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_QOS-CspMoreInfo-End -->

<!-- ADMX_QOS-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
