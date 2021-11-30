---
title: Policy CSP - ADMX_TouchInput
description: Policy CSP - ADMX_TouchInput
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 09/23/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_TouchInput

<hr/>

<!--Policies-->
## ADMX_TouchInput policies  

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<dl>
  <dd>
    <a href="#admx-touchinput-touchinputoff_1">ADMX_TouchInput/TouchInputOff_1</a>
  </dd>
  <dd>
    <a href="#admx-touchinput-touchinputoff_2">ADMX_TouchInput/TouchInputOff_2</a>
  </dd>
  <dd>
    <a href="#admx-touchinput-panningeverywhereoff_1">ADMX_TouchInput/PanningEverywhereOff_1</a>
  </dd>
  <dd>
    <a href="#admx-touchinput-panningeverywhereoff_2">ADMX_TouchInput/PanningEverywhereOff_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-touchinput-touchinputoff_1"></a>**ADMX_TouchInput/TouchInputOff_1**  

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
Turn off Tablet PC touch input Turns off touch input, which allows the user to interact with their computer using their finger.  

- If you enable this setting, the user will not be able to produce input with touch. They will not be able to use touch input or touch gestures such as tap and double tap, the touch pointer, and other touch-specific features.  
- If you disable this setting, the user can produce input with touch, by using gestures, the touch pointer, and other-touch specific features.  

If you do not configure this setting, touch input is on by default.  Note: Changes to this setting will not take effect until the user logs off.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Tablet PC touch input*
-   GP name: *TouchInputOff_1*
-   GP path: *Windows Components\Tablet PC\Touch Input*
-   GP ADMX file name: *TouchInput.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<!--Policy-->
<a href="" id="admx-touchinput-touchinputoff_2"></a>**ADMX_TouchInput/TouchInputOff_2**  

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
Turn off Tablet PC touch input Turns off touch input, which allows the user to interact with their computer using their finger.  

- If you enable this setting, the user will not be able to produce input with touch. They will not be able to use touch input or touch gestures such as tap and double tap, the touch pointer, and other touch-specific features.  
- If you disable this setting, the user can produce input with touch, by using gestures, the touch pointer, and other-touch specific features.  

If you do not configure this setting, touch input is on by default.  Note: Changes to this setting will not take effect until the user logs off.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Tablet PC touch input*
-   GP name: *TouchInputOff_2*
-   GP path: *Windows Components\Tablet PC\Touch Input*
-   GP ADMX file name: *TouchInput.admx*


<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-touchinput-panningeverywhereoff_1"></a>**ADMX_TouchInput/PanningEverywhereOff_1**  

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
Turn off Panning  Turns off touch panning, which allows users pan inside windows by touch. On a compatible PC with a touch digitizer, by default users are able to scroll or pan inside a scrolling area by dragging up or down directly on the scrolling content.  

- If you enable this setting, the user will not be able to pan windows by touch.  

- If you disable this setting, the user can pan windows by touch. If you do not configure this setting, Touch Panning is on by default.  

> [!NOTE]
> Changes to this setting will not take effect until the user logs off.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Touch Panning*
-   GP name: *PanningEverywhereOff_1*
-   GP path: *Windows Components\Tablet PC\Touch Input*
-   GP ADMX file name: *TouchInput.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<a href="" id="admx-touchinput-panningeverywhereoff_2"></a>**ADMX_TouchInput/PanningEverywhereOff_2**  

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
Turn off Panning  Turns off touch panning, which allows users pan inside windows by touch. On a compatible PC with a touch digitizer, by default users are able to scroll or pan inside a scrolling area by dragging up or down directly on the scrolling content.  

- If you enable this setting, the user will not be able to pan windows by touch.  

- If you disable this setting, the user can pan windows by touch. If you do not configure this setting, Touch Panning is on by default.  

> [!NOTE]
> Changes to this setting will not take effect until the user logs off.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Touch Panning*
-   GP name: *PanningEverywhereOff_2*
-   GP path: *Windows Components\Tablet PC\Touch Input*
-   GP ADMX file name: *TouchInput.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

