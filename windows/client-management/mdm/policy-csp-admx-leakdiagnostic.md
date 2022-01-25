---
title: Policy CSP - ADMX_LeakDiagnostic
description: Policy CSP - ADMX_LeakDiagnostic
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 09/17/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_LeakDiagnostic

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).
<hr/>

<!--Policies-->
## ADMX_LeakDiagnostic policies  

<dl>
  <dd>
    <a href="#admx-leakdiagnostic-wdiscenarioexecutionpolicy">ADMX_LeakDiagnostic/WdiScenarioExecutionPolicy</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-leakdiagnostic-wdiscenarioexecutionpolicy"></a>**ADMX_LeakDiagnostic/WdiScenarioExecutionPolicy**  

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
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting substitutes custom alert text in the disk diagnostic message shown to users when a disk reports a S.M.A.R.T. fault.  

- If you enable this policy setting, Windows displays custom alert text in the disk diagnostic message. The custom text may not exceed 512 characters.  

- If you disable or do not configure this policy setting, Windows displays the default alert text in the disk diagnostic message.  

No reboots or service restarts are required for this policy setting to take effect: changes take effect immediately.  

This policy setting only takes effect if the Disk Diagnostic scenario policy setting  is enabled or not configured and the Diagnostic Policy Service (DPS) is in the running state. When the service is stopped or disabled, diagnostic scenarios are not executed. 

The DPS can be configured with the Services snap-in to the Microsoft Management Console.  

> [!NOTE]
> For Windows Server systems, this policy setting applies only if the Desktop Experience optional component is installed and the Remote Desktop Services role is not installed.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure custom alert text*
-   GP name: *WdiScenarioExecutionPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Disk Diagnostic*
-   GP ADMX file name: *LeakDiagnostic.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policies-->


<!--/Policies-->

