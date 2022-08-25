---
title: Policy CSP - ADMX_Start
description: Learn about Policy CSP - ADMX_Start.
ms.author: v-aljupudi
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: alekyaj
ms.date: 08/25/2022
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_Start

<hr/>

> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--Policies-->
## ADMX_Start policies  

<dl>
  <dd>
    <a href="#admx-start-disablecontrolcenter">ADMX_Start/DisableControlCenter</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="admx-start-disablecontrolcenter"></a>**ADMX_Start/DisableControlCenter**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting removes Control Center from the bottom right area on the taskbar. The control center area is located at the left of the clock in the taskbar and includes icons for current network and volume. 

If this setting is enabled, Control Center is not displayed in the control center area.

The following are the supported values:

- Integer 0 - Disabled/Not configured.
- Integer 1 - Enabled.

>[!Note]
> A reboot is required for this policy setting to take effect.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Remove control center*
-   GP name: *DisableControlCenter*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)