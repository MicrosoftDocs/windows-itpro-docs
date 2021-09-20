---
title: Policy CSP - ADMX_FTHSVC
description: Policy CSP - ADMX_FTHSVC
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 09/15/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_FTHSVC
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

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
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

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

- If you enable this policy setting, the DPS detects, troubleshoots, and attempts to resolve automatically any heap corruption problems.  

- If you disable this policy setting, Windows cannot detect, troubleshoot, and attempt to resolve automatically any heap corruption problems that are handled by the DPS.  
If you do not configure this policy setting, the DPS enables Fault Tolerant Heap for resolution by default.  
This policy setting takes effect only if the diagnostics-wide scenario execution policy is not configured.  
This policy setting takes effect only when the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenarios are not executed. 
The DPS can be configured with the Services snap-in to the Microsoft Management Console.  
No system restart or service restart is required for this policy setting to take effect: changes take effect immediately.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure Scenario Execution Level*
-   GP name: *WdiScenarioExecutionPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Fault Tolerant Heap*
-   GP ADMX file name: *FTHSVC.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.
<!--/Policies-->

