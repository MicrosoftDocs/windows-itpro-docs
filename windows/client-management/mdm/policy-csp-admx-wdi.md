---
title: Policy CSP - ADMX_WDI
description: Policy CSP - ADMX_WDI
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 11/09/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_WDI

<hr/>

<!--Policies-->
## ADMX_WDI policies  

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<dl>
  <dd>
    <a href="#admx-wdi-wdidpsscenarioexecutionpolicy">ADMX_WDI/WdiDpsScenarioExecutionPolicy</a>
  </dd>
  <dd>
    <a href="#admx-wdi-wdidpsscenariodatasizelimitpolicy">ADMX_WDI/WdiDpsScenarioDataSizeLimitPolicy</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-wdi-wdidpsscenarioexecutionpolicy"></a>**ADMX_WDI/WdiDpsScenarioExecutionPolicy**  

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
This policy setting determines the data retention limit for Diagnostic Policy Service (DPS) scenario data.  
- If you enable this policy setting, you must enter the maximum size of scenario data that should be retained in megabytes. Detailed troubleshooting data related to scenarios will be retained until this limit is reached.  
- If you disable or don't configure this policy setting, the DPS deletes scenario data once it exceeds 128 megabytes in size.  
No reboots or service restarts are required for this policy setting to take effect: changes take effect immediately.  
This policy setting will only take effect when the Diagnostic Policy Service is in the running state.  
When the service is stopped or disabled, diagnostic scenario data won't be deleted.  
The DPS can be configured with the Services snap-in to the Microsoft Management Console.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Diagnostics: Configure scenario retention*
-   GP name: *WdiDpsScenarioExecutionPolicy*
-   GP path: *System\Troubleshooting and Diagnostics*
-   GP ADMX file name: *WDI.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-wdi-wdidpsscenariodatasizelimitpolicy"></a>**ADMX_WDI/WdiDpsScenarioDataSizeLimitPolicy**  

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
This policy setting determines the execution level for Diagnostic Policy Service (DPS) scenarios.  

- If you enable this policy setting, you must select an execution level from the drop-down menu. 

If you select problem detection and troubleshooting only, the DPS will detect problems and attempt to determine their root causes. These root causes will be logged to the event log when detected, but no corrective action will be taken. If you select detection, troubleshooting and resolution, the DPS will attempt to automatically fix problems it detects or indicate to the user that assisted resolution is available.  

- If you disable this policy setting, Windows can't detect, troubleshoot, or resolve any problems that are handled by the DPS. 

If you don't configure this policy setting, the DPS enables all scenarios for resolution by default, unless you configure separate scenario-specific policy settings. This policy setting takes precedence over any scenario-specific policy settings when it's enabled or disabled.  Scenario-specific policy settings only take effect if this policy setting isn't configured. No reboots or service restarts are required for this policy setting to take effect: changes take effect immediately.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Diagnostics: Configure scenario execution level*
-   GP name: *WdiDpsScenarioDataSizeLimitPolicy*
-   GP path: *System\Troubleshooting and Diagnostics*
-   GP ADMX file name: *WDI.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->