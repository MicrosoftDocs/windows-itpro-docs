---
title: Policy CSP - ADMX_FTHSVC
description: Learn about the Policy CSP - ADMX_FTHSVC.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/15/2021
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_FTHSVC

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_FTHSVC policies

<dl>
  <dd>
    <a href="#admx-fthsvc-wdiscenarioexecutionpolicy">ADMX_FTHSVC/WdiScenarioExecutionPolicy</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="admx-fthsvc-wdiscenarioexecutionpolicy"></a>**ADMX_FTHSVC/WdiScenarioExecutionPolicy**

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
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting permits or prohibits the Diagnostic Policy Service (DPS) from automatically resolving any heap corruption problems.

If you enable this policy setting, the DPS detects, troubleshoots, and attempts to resolve automatically any heap corruption problems.

If you disable this policy setting, Windows can't detect, troubleshoot, and attempt to resolve automatically any heap corruption problems that are handled by the DPS.

If you don't configure this policy setting, the DPS enables Fault Tolerant Heap for resolution by default.

This policy setting takes effect only if the diagnostics-wide scenario execution policy isn't configured.
This policy setting takes effect only when the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenarios aren't executed.
The DPS can be configured with the Services snap-in to the Microsoft Management Console.
No system restart or service restart is required for this policy setting to take effect: changes take effect immediately.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Scenario Execution Level*
-   GP name: *WdiScenarioExecutionPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Fault Tolerant Heap*
-   GP ADMX file name: *FTHSVC.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)