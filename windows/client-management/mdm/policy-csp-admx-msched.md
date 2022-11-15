---
title: Policy CSP - ADMX_msched
description: Learn about Policy CSP - ADMX_msched.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/08/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_msched

>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_msched policies

<dl>
  <dd>
    <a href="#admx-msched-activationboundarypolicy">ADMX_msched/ActivationBoundaryPolicy</a>
  </dd>
  <dd>
    <a href="#admx-msched-randomdelaypolicy">ADMX_msched/RandomDelayPolicy</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-msched-activationboundarypolicy"></a>**ADMX_msched/ActivationBoundaryPolicy**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
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
This policy setting allows you to configure Automatic Maintenance activation boundary. The maintenance activation boundary is the daily scheduled time at which Automatic Maintenance starts.

If you enable this policy setting, this scheduled time will override the default daily scheduled time as specified in Security and Maintenance/Automatic Maintenance Control Panel.

If you disable or don't configure this policy setting, the daily scheduled time as specified in Security and Maintenance/Automatic Maintenance Control Panel will apply.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Automatic Maintenance Activation Boundary*
-   GP name: *ActivationBoundaryPolicy*
-   GP path: *Windows Components\Maintenance Scheduler*
-   GP ADMX file name: *msched.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-msched-randomdelaypolicy"></a>**ADMX_msched/RandomDelayPolicy**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
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
This policy setting allows you to configure Automatic Maintenance activation random delay.

The maintenance random delay is the amount of time up to which Automatic Maintenance will delay starting from its Activation Boundary.

If you enable this policy setting, Automatic Maintenance will delay starting from its Activation Boundary, by up to this time.

If you don't configure this policy setting, 4 hour random delay will be applied to Automatic Maintenance.

If you disable this policy setting, no random delay will be applied to Automatic Maintenance.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Automatic Maintenance Random Delay*
-   GP name: *RandomDelayPolicy*
-   GP path: *Windows Components\Maintenance Scheduler*
-   GP ADMX file name: *msched.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)