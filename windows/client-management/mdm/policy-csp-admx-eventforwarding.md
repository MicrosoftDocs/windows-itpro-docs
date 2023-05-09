---
title: ADMX_EventForwarding Policy CSP
description: Learn more about the ADMX_EventForwarding Area in Policy CSP.
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

<!-- ADMX_EventForwarding-Begin -->
# Policy CSP - ADMX_EventForwarding

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_EventForwarding-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_EventForwarding-Editable-End -->

<!-- ForwarderResourceUsage-Begin -->
## ForwarderResourceUsage

<!-- ForwarderResourceUsage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
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

- If you disable or do not configure this policy setting, forwarder resource usage is not specified.

This setting applies across all subscriptions for the forwarder (source computer).
<!-- ForwarderResourceUsage-Description-End -->

<!-- ForwarderResourceUsage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ForwarderResourceUsage-Editable-End -->

<!-- ForwarderResourceUsage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ForwarderResourceUsage-DFProperties-End -->

<!-- ForwarderResourceUsage-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

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
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
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

- If you disable or do not configure this policy setting, the Event Collector computer will not be specified.
<!-- SubscriptionManager-Description-End -->

<!-- SubscriptionManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SubscriptionManager-Editable-End -->

<!-- SubscriptionManager-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SubscriptionManager-DFProperties-End -->

<!-- SubscriptionManager-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

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
