---
title: Policy CSP - ADMX_WinCal
description: Policy CSP - ADMX_WinCal
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 09/28/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_WinCal
> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_WinCal policies  

<dl>
  <dd>
    <a href="#admx-wincal-turnoffwincal-1">ADMX_WinCal/TurnOffWinCal_1</a>
  </dd>
  <dd>
    <a href="#admx-wincal-turnoffwincal-2">ADMX_WinCal/TurnOffWinCal_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-wincal-turnoffwincal-1"></a>**ADMX_WinCal/TurnOffWinCal_1**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Windows Calendar is a feature that allows users to manage appointments and tasks by creating personal calendars, publishing them, and subscribing to other users calendars.

If you enable this setting, Windows Calendar will be turned off.

If you disable or do not configure this setting, Windows Calendar will be turned on.

The default is for Windows Calendar to be turned on.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Windows Calendar*
-   GP name: *TurnOffWinCal_1*
-   GP path: *Windows Components\Windows Calendar*
-   GP ADMX file name: *WinCal.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-wincal-turnoffwincal-2"></a>**ADMX_WinCal/TurnOffWinCal_2**  

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
Windows Calendar is a feature that allows users to manage appointments and tasks by creating personal calendars, publishing them, and subscribing to other users calendars.

If you enable this setting, Windows Calendar will be turned off.

If you disable or do not configure this setting, Windows Calendar will be turned on.

The default is for Windows Calendar to be turned on.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Windows Calendar*
-   GP name: *TurnOffWinCal_2*
-   GP path: *Windows Components\Windows Calendar*
-   GP ADMX file name: *WinCal.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

