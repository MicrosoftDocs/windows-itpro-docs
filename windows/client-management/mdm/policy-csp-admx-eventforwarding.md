---
title: ADMX_EventForwarding Policy CSP
description: Learn more about the ADMX_EventForwarding Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_EventForwarding-Begin -->
# Policy CSP - ADMX_EventForwarding

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_EventForwarding-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_EventForwarding-Editable-End -->

<!-- ForwarderResourceUsage-Begin -->
## ForwarderResourceUsage

<!-- ForwarderResourceUsage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ForwarderResourceUsage-Applicability-End -->

<!-- ForwarderResourceUsage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventForwarding/ForwarderResourceUsage
```
<!-- ForwarderResourceUsage-OmaUri-End -->

<!-- ForwarderResourceUsage-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls resource usage for the forwarder (source computer) by controlling the events/per second sent to the Event Collector.

- If you enable this policy setting, you can control the volume of events sent to the Event Collector by the source computer. This may be required in high volume environments.

- If you disable or don't configure this policy setting, forwarder resource usage isn't specified.

This setting applies across all subscriptions for the forwarder (source computer).
<!-- ForwarderResourceUsage-Description-End -->

<!-- ForwarderResourceUsage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ForwarderResourceUsage-Editable-End -->

<!-- ForwarderResourceUsage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ForwarderResourceUsage-DFProperties-End -->

<!-- ForwarderResourceUsage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ForwarderResourceUsage |
| Friendly Name | Configure forwarder resource usage |
| Location | Computer Configuration |
| Path | Windows Components > Event Forwarding |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\EventForwarding |
| ADMX File Name | EventForwarding.admx |
<!-- ForwarderResourceUsage-AdmxBacked-End -->

<!-- ForwarderResourceUsage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ForwarderResourceUsage-Examples-End -->

<!-- ForwarderResourceUsage-End -->

<!-- SubscriptionManager-Begin -->
## SubscriptionManager

<!-- SubscriptionManager-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SubscriptionManager-Applicability-End -->

<!-- SubscriptionManager-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventForwarding/SubscriptionManager
```
<!-- SubscriptionManager-OmaUri-End -->

<!-- SubscriptionManager-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the server address, refresh interval, and issuer certificate authority (CA) of a target Subscription Manager.

- If you enable this policy setting, you can configure the Source Computer to contact a specific FQDN (Fully Qualified Domain Name) or IP Address and request subscription specifics.

Use the following syntax when using the HTTPS protocol:

Server=https://`<FQDN of the collector>`:5986/wsman/SubscriptionManager/WEC,Refresh=`<Refresh interval in seconds>`,IssuerCA=`<Thumb print of the client authentication certificate>`. When using the HTTP protocol, use port 5985.

- If you disable or don't configure this policy setting, the Event Collector computer won't be specified.
<!-- SubscriptionManager-Description-End -->

<!-- SubscriptionManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SubscriptionManager-Editable-End -->

<!-- SubscriptionManager-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SubscriptionManager-DFProperties-End -->

<!-- SubscriptionManager-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SubscriptionManager |
| Friendly Name | Configure target Subscription Manager |
| Location | Computer Configuration |
| Path | Windows Components > Event Forwarding |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\EventForwarding |
| ADMX File Name | EventForwarding.admx |
<!-- SubscriptionManager-AdmxBacked-End -->

<!-- SubscriptionManager-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SubscriptionManager-Examples-End -->

<!-- SubscriptionManager-End -->

<!-- ADMX_EventForwarding-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_EventForwarding-CspMoreInfo-End -->

<!-- ADMX_EventForwarding-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
