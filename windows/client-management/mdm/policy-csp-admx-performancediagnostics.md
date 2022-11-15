---
title: Policy CSP - ADMX_PerformanceDiagnostics
description: Learn about Policy CSP - ADMX_PerformanceDiagnostics.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/16/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_PerformanceDiagnostics

>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_PerformanceDiagnostics policies

<dl>
  <dd>
    <a href="#admx-performancediagnostics-wdiscenarioexecutionpolicy-1">ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_1</a>
  </dd>
  <dd>
    <a href="#admx-performancediagnostics-wdiscenarioexecutionpolicy-2">ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_2</a>
  </dd>
  <dd>
    <a href="#admx-performancediagnostics-wdiscenarioexecutionpolicy-3">ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_3</a>
  </dd>
  <dd>
    <a href="#admx-performancediagnostics-wdiscenarioexecutionpolicy-4">ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_4</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-performancediagnostics-wdiscenarioexecutionpolicy-1"></a>**ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_1**

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
This policy setting determines the execution level for Windows Boot Performance Diagnostics.

If you enable this policy setting, you must select an execution level from the dropdown menu. If you select problem detection and troubleshooting only, the Diagnostic Policy Service (DPS) will detect Windows Boot Performance problems and attempt to determine their root causes. These root causes will be logged to the event log when detected, but no corrective action will be taken. If you select detection, troubleshooting, and resolution, the DPS will detect Windows Boot Performance problems and indicate to the user that assisted resolution is available.

If you disable this policy setting, Windows won't be able to detect, troubleshoot or resolve any Windows Boot Performance problems that are handled by the DPS.

If you don't configure this policy setting, the DPS will enable Windows Boot Performance for resolution by default.

This policy setting takes effect only if the diagnostics-wide scenario execution policy isn't configured.

>[!Note]
>No system restart or service restart is required for this policy to take effect; changes take effect immediately.

This policy setting will only take effect when the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenarios won't be executed.  The DPS can be configured with the Services snap-in to the Microsoft Management Console.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Scenario Execution Level*
-   GP name: *WdiScenarioExecutionPolicy_1*
-   GP path: *System\Troubleshooting and Diagnostics\Windows Boot Performance Diagnostics*
-   GP ADMX file name: *PerformanceDiagnostics.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-performancediagnostics-wdiscenarioexecutionpolicy-2"></a>**ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_2**

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
Determines the execution level for Windows Standby/Resume Performance Diagnostics.

If you enable this policy setting, you must select an execution level from the dropdown menu. If you select problem detection and troubleshooting only, the Diagnostic Policy Service (DPS) will detect Windows Standby/Resume Performance problems and attempt to determine their root causes. These root causes will be logged to the event log when detected, but no corrective action will be taken. If you select detection, troubleshooting, and resolution, the DPS will detect Windows Standby/Resume Performance problems and indicate to the user that assisted resolution is available.

If you disable this policy setting, Windows won't be able to detect, troubleshoot or resolve any Windows Standby/Resume Performance problems that are handled by the DPS.

If you don't configure this policy setting, the DPS will enable Windows Standby/Resume Performance for resolution by default.

This policy setting takes effect only if the diagnostics-wide scenario execution policy isn't configured.

No system restart or service restart is required for this policy to take effect: changes take effect immediately.

This policy setting will only take effect when the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenarios won't be executed.  The DPS can be configured with the Services snap-in to the Microsoft Management Console.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Scenario Execution Level*
-   GP name: *WdiScenarioExecutionPolicy_2*
-   GP path: *System\Troubleshooting and Diagnostics\Windows System Responsiveness Performance Diagnostics*
-   GP ADMX file name: *PerformanceDiagnostics.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-performancediagnostics-wdiscenarioexecutionpolicy-3"></a>**ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_3**

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
This policy setting determines the execution level for Windows Shutdown Performance Diagnostics.

If you enable this policy setting, you must select an execution level from the dropdown menu. If you select problem detection and troubleshooting only, the Diagnostic Policy Service (DPS) will detect Windows Shutdown Performance problems and attempt to determine their root causes. These root causes will be logged to the event log when detected, but no corrective action will be taken. If you select detection, troubleshooting, and resolution, the DPS will detect Windows Shutdown Performance problems and indicate to the user that assisted resolution is available.

If you disable this policy setting, Windows won't be able to detect, troubleshoot or resolve any Windows Shutdown Performance problems that are handled by the DPS.

If you don't configure this policy setting, the DPS will enable Windows Shutdown Performance for resolution by default.

This policy setting takes effect only if the diagnostics-wide scenario execution policy isn't configured.

No system restart or service restart is required for this policy to take effect: changes take effect immediately.

This policy setting will only take effect when the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenarios won't be executed.  The DPS can be configured with the Services snap-in to the Microsoft Management Console.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Scenario Execution Level*
-   GP name: *WdiScenarioExecutionPolicy_3*
-   GP path: *System\Troubleshooting and Diagnostics\Windows Shutdown Performance Diagnostics*
-   GP ADMX file name: *PerformanceDiagnostics.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-performancediagnostics-wdiscenarioexecutionpolicy-4"></a>**ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_4**

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
Determines the execution level for Windows Standby/Resume Performance Diagnostics.

If you enable this policy setting, you must select an execution level from the dropdown menu. If you select problem detection and troubleshooting only, the Diagnostic Policy Service (DPS) will detect Windows Standby/Resume Performance problems and attempt to determine their root causes. These root causes will be logged to the event log when detected, but no corrective action will be taken. If you select detection, troubleshooting, and resolution, the DPS will detect Windows Standby/Resume Performance problems and indicate to the user that assisted resolution is available.

If you disable this policy setting, Windows won't be able to detect, troubleshoot or resolve any Windows Standby/Resume Performance problems that are handled by the DPS.

If you don't configure this policy setting, the DPS will enable Windows Standby/Resume Performance for resolution by default.

This policy setting takes effect only if the diagnostics-wide scenario execution policy isn't configured.

No system restart or service restart is required for this policy to take effect: changes take effect immediately.

This policy setting will only take effect when the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenarios won't be executed.  The DPS can be configured with the Services snap-in to the Microsoft Management Console.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Scenario Execution Level*
-   GP name: *WdiScenarioExecutionPolicy_4*
-   GP path: *System\Troubleshooting and Diagnostics\Windows Standby/Resume Performance Diagnostics*
-   GP ADMX file name: *PerformanceDiagnostics.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)