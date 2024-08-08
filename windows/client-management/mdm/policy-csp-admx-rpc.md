---
title: ADMX_RPC Policy CSP
description: Learn more about the ADMX_RPC Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_RPC-Begin -->
# Policy CSP - ADMX_RPC

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_RPC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_RPC-Editable-End -->

<!-- RpcExtendedErrorInformation-Begin -->
## RpcExtendedErrorInformation

<!-- RpcExtendedErrorInformation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RpcExtendedErrorInformation-Applicability-End -->

<!-- RpcExtendedErrorInformation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RPC/RpcExtendedErrorInformation
```
<!-- RpcExtendedErrorInformation-OmaUri-End -->

<!-- RpcExtendedErrorInformation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether the RPC runtime generates extended error information when an error occurs.

Extended error information includes the local time that the error occurred, the RPC version, and the name of the computer on which the error occurred, or from which it was propagated. Programs can retrieve the extended error information by using standard Windows application programming interfaces (APIs).

- If you disable this policy setting, the RPC Runtime only generates a status code to indicate an error condition.

- If you don't configure this policy setting, it remains disabled. It will only generate a status code to indicate an error condition.

- If you enable this policy setting, the RPC runtime will generate extended error information. You must select an error response type in the drop-down box.

- "Off" disables all extended error information for all processes. RPC only generates an error code.

- "On with Exceptions" enables extended error information, but lets you disable it for selected processes. To disable extended error information for a process while this policy setting is in effect, the command that starts the process must begin with one of the strings in the Extended Error Information Exception field.

- "Off with Exceptions" disables extended error information, but lets you enable it for selected processes. To enable extended error information for a process while this policy setting is in effect, the command that starts the process must begin with one of the strings in the Extended Error Information Exception field.

- "On" enables extended error information for all processes.

> [!NOTE]
> For information about the Extended Error Information Exception field, see the Windows Software Development Kit (SDK).

> [!NOTE]
> Extended error information is formatted to be compatible with other operating systems and older Microsoft operating systems, but only newer Microsoft operating systems can read and respond to the information.

> [!NOTE]
> The default policy setting, "Off," is designed for systems where extended error information is considered to be sensitive, and it shouldn't be made available remotely.

> [!NOTE]
> This policy setting won't be applied until the system is rebooted.
<!-- RpcExtendedErrorInformation-Description-End -->

<!-- RpcExtendedErrorInformation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RpcExtendedErrorInformation-Editable-End -->

<!-- RpcExtendedErrorInformation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RpcExtendedErrorInformation-DFProperties-End -->

<!-- RpcExtendedErrorInformation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RpcExtendedErrorInformation |
| Friendly Name | Propagate extended error information |
| Location | Computer Configuration |
| Path | System > Remote Procedure Call |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Rpc |
| ADMX File Name | RPC.admx |
<!-- RpcExtendedErrorInformation-AdmxBacked-End -->

<!-- RpcExtendedErrorInformation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RpcExtendedErrorInformation-Examples-End -->

<!-- RpcExtendedErrorInformation-End -->

<!-- RpcIgnoreDelegationFailure-Begin -->
## RpcIgnoreDelegationFailure

<!-- RpcIgnoreDelegationFailure-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RpcIgnoreDelegationFailure-Applicability-End -->

<!-- RpcIgnoreDelegationFailure-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RPC/RpcIgnoreDelegationFailure
```
<!-- RpcIgnoreDelegationFailure-OmaUri-End -->

<!-- RpcIgnoreDelegationFailure-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether the RPC Runtime ignores delegation failures when delegation is requested.

The constrained delegation model, introduced in Windows Server 2003, doesn't report that delegation was enabled on a security context when a client connects to a server. Callers of RPC and COM are encouraged to use the RPC_C_QOS_CAPABILITIES_IGNORE_DELEGATE_FAILURE flag, but some applications written for the traditional delegation model prior to Windows Server 2003 may not use this flag and will encounter RPC_S_SEC_PKG_ERROR when connecting to a server that uses constrained delegation.

- If you disable this policy setting, the RPC Runtime will generate RPC_S_SEC_PKG_ERROR errors to applications that ask for delegation and connect to servers using constrained delegation.

- If you don't configure this policy setting, it remains disabled and will generate RPC_S_SEC_PKG_ERROR errors to applications that ask for delegation and connect to servers using constrained delegation.

- If you enable this policy setting, then:

- "Off" directs the RPC Runtime to generate RPC_S_SEC_PKG_ERROR if the client asks for delegation, but the created security context doesn't support delegation.

- "On" directs the RPC Runtime to accept security contexts that don't support delegation even if delegation was asked for.

> [!NOTE]
> This policy setting won't be applied until the system is rebooted.
<!-- RpcIgnoreDelegationFailure-Description-End -->

<!-- RpcIgnoreDelegationFailure-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RpcIgnoreDelegationFailure-Editable-End -->

<!-- RpcIgnoreDelegationFailure-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RpcIgnoreDelegationFailure-DFProperties-End -->

<!-- RpcIgnoreDelegationFailure-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RpcIgnoreDelegationFailure |
| Friendly Name | Ignore Delegation Failure |
| Location | Computer Configuration |
| Path | System > Remote Procedure Call |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Rpc |
| ADMX File Name | RPC.admx |
<!-- RpcIgnoreDelegationFailure-AdmxBacked-End -->

<!-- RpcIgnoreDelegationFailure-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RpcIgnoreDelegationFailure-Examples-End -->

<!-- RpcIgnoreDelegationFailure-End -->

<!-- RpcMinimumHttpConnectionTimeout-Begin -->
## RpcMinimumHttpConnectionTimeout

<!-- RpcMinimumHttpConnectionTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RpcMinimumHttpConnectionTimeout-Applicability-End -->

<!-- RpcMinimumHttpConnectionTimeout-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RPC/RpcMinimumHttpConnectionTimeout
```
<!-- RpcMinimumHttpConnectionTimeout-OmaUri-End -->

<!-- RpcMinimumHttpConnectionTimeout-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the idle connection timeout for RPC/HTTP connections.

This policy setting is useful in cases where a network agent like an HTTP proxy or a router uses a lower idle connection timeout than the IIS server running the RPC/HTTP proxy. In such cases, RPC/HTTP clients may encounter errors because connections will be timed out faster than expected. Using this policy setting you can force the RPC Runtime and the RPC/HTTP Proxy to use a lower connection timeout.

This policy setting is only applicable when the RPC Client, the RPC Server and the RPC HTTP Proxy are all running Windows Server 2003 family/Windows XP SP1 or higher versions. If either the RPC Client or the RPC Server or the RPC HTTP Proxy run on an older version of Windows, this policy setting will be ignored.

The minimum allowed value for this policy setting is 90 seconds. The maximum is 7200 seconds (2 hours).

- If you disable this policy setting, the idle connection timeout on the IIS server running the RPC HTTP proxy will be used.

- If you don't configure this policy setting, it will remain disabled. The idle connection timeout on the IIS server running the RPC HTTP proxy will be used.

- If you enable this policy setting, and the IIS server running the RPC HTTP proxy is configured with a lower idle connection timeout, the timeout on the IIS server is used. Otherwise, the provided timeout value is used. The timeout is given in seconds.

> [!NOTE]
> This policy setting won't be applied until the system is rebooted.
<!-- RpcMinimumHttpConnectionTimeout-Description-End -->

<!-- RpcMinimumHttpConnectionTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RpcMinimumHttpConnectionTimeout-Editable-End -->

<!-- RpcMinimumHttpConnectionTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RpcMinimumHttpConnectionTimeout-DFProperties-End -->

<!-- RpcMinimumHttpConnectionTimeout-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RpcMinimumHttpConnectionTimeout |
| Friendly Name | Set Minimum Idle Connection Timeout for RPC/HTTP connections |
| Location | Computer Configuration |
| Path | System > Remote Procedure Call |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Rpc |
| ADMX File Name | RPC.admx |
<!-- RpcMinimumHttpConnectionTimeout-AdmxBacked-End -->

<!-- RpcMinimumHttpConnectionTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RpcMinimumHttpConnectionTimeout-Examples-End -->

<!-- RpcMinimumHttpConnectionTimeout-End -->

<!-- RpcStateInformation-Begin -->
## RpcStateInformation

<!-- RpcStateInformation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RpcStateInformation-Applicability-End -->

<!-- RpcStateInformation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RPC/RpcStateInformation
```
<!-- RpcStateInformation-OmaUri-End -->

<!-- RpcStateInformation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the RPC Runtime maintains RPC state information for the system, and how much information it maintains. Basic state information, which consists only of the most commonly needed state data, is required for troubleshooting RPC problems.

- If you disable this policy setting, the RPC runtime defaults to "Auto2" level.

- If you don't configure this policy setting, the RPC defaults to "Auto2" level.

- If you enable this policy setting, you can use the drop-down box to determine which systems maintain RPC state information.

- "None" indicates that the system doesn't maintain any RPC state information.

> [!NOTE]
> Because the basic state information required for troubleshooting has a negligible effect on performance and uses only about 4K of memory, this setting isn't recommended for most installations.

- "Auto1" directs RPC to maintain basic state information only if the computer has at least 64 MB of memory.

- "Auto2" directs RPC to maintain basic state information only if the computer has at least 128 MB of memory and is running Windows 2000 Server, Windows 2000 Advanced Server, or Windows 2000 Datacenter Server.

- "Server" directs RPC to maintain basic state information on the computer, regardless of its capacity.

- "Full" directs RPC to maintain complete RPC state information on the system, regardless of its capacity. Because this level can degrade performance, it's recommended for use only while you are investigating an RPC problem.

> [!NOTE]
> To retrieve the RPC state information from a system that maintains it, you must use a debugging tool.

> [!NOTE]
> This policy setting won't be applied until the system is rebooted.
<!-- RpcStateInformation-Description-End -->

<!-- RpcStateInformation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RpcStateInformation-Editable-End -->

<!-- RpcStateInformation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RpcStateInformation-DFProperties-End -->

<!-- RpcStateInformation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RpcStateInformation |
| Friendly Name | Maintain RPC Troubleshooting State Information |
| Location | Computer Configuration |
| Path | System > Remote Procedure Call |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Rpc |
| ADMX File Name | RPC.admx |
<!-- RpcStateInformation-AdmxBacked-End -->

<!-- RpcStateInformation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RpcStateInformation-Examples-End -->

<!-- RpcStateInformation-End -->

<!-- ADMX_RPC-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_RPC-CspMoreInfo-End -->

<!-- ADMX_RPC-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
