---
title: Policy CSP - ADMX_sdiagschd
description: Learn about Policy CSP - ADMX_sdiagschd.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/17/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_sdiagschd

<hr/>

<!--Policies-->
## ADMX_sdiagschd policies

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<dl>
  <dd>
    <a href="#admx-sdiagschd-scheduleddiagnosticsexecutionpolicy">ADMX_sdiagschd/ScheduledDiagnosticsExecutionPolicy</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-sdiagschd-scheduleddiagnosticsexecutionpolicy"></a>**ADMX_sdiagschd/ScheduledDiagnosticsExecutionPolicy**

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
This policy determines whether scheduled diagnostics will run to proactively detect and resolve system problems.

If you enable this policy setting, you must choose an execution level from the following:

- If you choose detection and troubleshooting only, Windows will periodically detect and troubleshoot problems. The user will be notified of the problem for interactive resolution.
- If you choose detection, troubleshooting and resolution, Windows will resolve some of these problems silently without requiring user input.

If you disable this policy setting, Windows won't be able to detect, troubleshoot or resolve problems on a scheduled basis.

If you don't configure this policy setting, local troubleshooting preferences will take precedence, as configured in the control panel. If no local troubleshooting preference is configured, scheduled diagnostics are enabled for detection, troubleshooting and resolution by default. No reboots or service restarts are required for this policy to take effect: changes take effect immediately. This policy setting will only take effect when the Task Scheduler service is in the running state. When the service is stopped or disabled, scheduled diagnostics won't be executed.  The Task Scheduler service can be configured with the Services snap-in to the Microsoft Management Console.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Scheduled Maintenance Behavior*
-   GP name: *ScheduledDiagnosticsExecutionPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Scheduled Maintenance*
-   GP ADMX file name: *sdiagschd.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
