---
title: Policy CSP - ADMX_MSDT
description: Policy CSP - ADMX_MSDT
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/09/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_MSDT
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_MSDT policies  

<dl>
  <dd>
    <a href="#admx-msdt-msdtsupportprovider">ADMX_MSDT/MsdtSupportProvider</a>
  </dd>
  <dd>
    <a href="#admx-msdt-msdttooldownloadpolicy">ADMX_MSDT/MsdtToolDownloadPolicy</a>
  </dd>
  <dd>
    <a href="#admx-msdt-wdiscenarioexecutionpolicy">ADMX_MSDT/WdiScenarioExecutionPolicy</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-msdt-msdtsupportprovider"></a>**ADMX_MSDT/MsdtSupportProvider**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures Microsoft Support Diagnostic Tool (MSDT) interactive communication with the support provider. MSDT gathers diagnostic data for analysis by support professionals.

If you enable this policy setting, users can use MSDT to collect and send diagnostic data to a support professional to resolve a problem.

By default, the support provider is set to Microsoft Corporation.

If you disable this policy setting, MSDT cannot run in support mode, and no data can be collected or sent to the support provider.

If you do not configure this policy setting, MSDT support mode is enabled by default.

No reboots or service restarts are required for this policy setting to take effect. Changes take effect immediately.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Microsoft Support Diagnostic Tool: Turn on MSDT interactive communication with support provider*
-   GP name: *MsdtSupportProvider*
-   GP path: *System\Troubleshooting and Diagnostics\Microsoft Support Diagnostic Tool*
-   GP ADMX file name: *MSDT.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-msdt-msdttooldownloadpolicy"></a>**ADMX_MSDT/MsdtToolDownloadPolicy**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting restricts the tool download policy for Microsoft Support Diagnostic Tool.

Microsoft Support Diagnostic Tool (MSDT) gathers diagnostic data for analysis by support professionals.

For some problems, MSDT may prompt the user to download additional tools for troubleshooting.  These tools are required to completely troubleshoot the problem.

If tool download is restricted, it may not be possible to find the root cause of the problem.

If you enable this policy setting for remote troubleshooting, MSDT prompts the user to download additional tools to diagnose problems on remote computers only.

If you enable this policy setting for local and remote troubleshooting, MSDT always prompts for additional tool downloading.

If you disable this policy setting, MSDT never downloads tools, and is unable to diagnose problems on remote computers.

If you do not configure this policy setting, MSDT prompts the user before downloading any additional tools.  No reboots or service restarts are required for this policy setting to take effect. Changes take effect immediately.

This policy setting will take effect only when MSDT is enabled.

This policy setting will only take effect when the Diagnostic Policy Service (DPS) is in the running state.

When the service is stopped or disabled, diagnostic scenarios are not executed.

The DPS can be configured with the Services snap-in to the Microsoft Management Console.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Microsoft Support Diagnostic Tool: Restrict tool download*
-   GP name: *MsdtToolDownloadPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Microsoft Support Diagnostic Tool*
-   GP ADMX file name: *MSDT.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-msdt-wdiscenarioexecutionpolicy"></a>**ADMX_MSDT/WdiScenarioExecutionPolicy**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the execution level for Microsoft Support Diagnostic Tool.

Microsoft Support Diagnostic Tool (MSDT) gathers diagnostic data for analysis by support professionals.  If you enable this policy setting, administrators can use MSDT to collect and send diagnostic data to a support professional to resolve a problem.

If you disable this policy setting, MSDT cannot gather diagnostic data.  If you do not configure this policy setting, MSDT is turned on by default.

This policy setting takes effect only if the diagnostics-wide scenario execution policy is not configured.

No reboots or service restarts are required for this policy setting to take effect. Changes take effect immediately.

This policy setting will only take effect when the Diagnostic Policy Service (DPS) is in the running state. When the service is stopped or disabled, diagnostic scenarios will not be executed. The DPS can be configured with the Services snap-in to the Microsoft Management Console.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Microsoft Support Diagnostic Tool: Configure execution level*
-   GP name: *WdiScenarioExecutionPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Microsoft Support Diagnostic Tool*
-   GP ADMX file name: *MSDT.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607
- 2 - Available in Windows 10, version 1703
- 3 - Available in Windows 10, version 1709
- 4 - Available in Windows 10, version 1803
- 5 - Available in Windows 10, version 1809
- 6 - Available in Windows 10, version 1903
- 7 - Available in Windows 10, version 1909
- 8 - Available in Windows 10, version 2004
- 9 - Available in Windows 10, version 20H2

<!--/Policies-->

