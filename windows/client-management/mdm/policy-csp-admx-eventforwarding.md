---
title: Policy CSP - ADMX_EventForwarding
description: Policy CSP - ADMX_EventForwarding
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 08/17/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_EventForwarding


<hr/>

<!--Policies-->
## ADMX_EventForwarding policies  

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<dl>
  <dd>
    <a href="#admx_eventforwarding-forwarderresourceusage">ADMX_EventForwarding/ForwarderResourceUsage</a>
  </dd>
  <dd>
    <a href="#admx_eventforwarding-subscriptionmanager">ADMX_EventForwarding/SubscriptionManager</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx_eventforwarding-forwarderresourceusage"></a>**ADMX_EventForwarding/ForwarderResourceUsage**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls resource usage for the forwarder (source computer) by controlling the events/per second sent to the Event Collector.

If you enable this policy setting, you can control the volume of events sent to the Event Collector by the source computer. This volume-control may be required in high-volume environments.

If you disable or don't configure this policy setting, forwarder resource usage isn't specified.

This setting applies across all subscriptions for the forwarder (source computer).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure forwarder resource usage*
-   GP name: *ForwarderResourceUsage*
-   GP path: *Windows Components/Event Forwarding*
-   GP ADMX file name: *EventForwarding.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx_eventforwarding-subscriptionmanager"></a>**ADMX_EventForwarding/SubscriptionManager**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to configure the server address, refresh interval, and issuer certificate authority (CA) of a target Subscription Manager.

If you enable this policy setting, you can configure the Source Computer to contact a specific FQDN (Fully Qualified Domain Name) or IP Address and request subscription specifics.

Use the following syntax when using the HTTPS protocol:  

``` syntax

Server=https://<FQDN of the collector>:5986/wsman/SubscriptionManager/WEC,Refresh=<Refresh interval in seconds>,IssuerCA=<Thumb print of the client authentication certificate>.
```

When using the HTTP protocol, use port 5985.

If you disable or don't configure this policy setting, the Event Collector computer won't be specified.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure target Subscription Manager*
-   GP name: *SubscriptionManager*
-   GP path: *Windows Components/Event Forwarding*
-   GP ADMX file name: *EventForwarding.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

