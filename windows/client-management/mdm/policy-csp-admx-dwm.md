---
title: Policy CSP - ADMX_DWM
description: Learn about Policy CSP - ADMX_DWM.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 08/31/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_DWM

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_DWM policies

<dl>
  <dd>
    <a href="#admx-dwm-dwmdefaultcolorizationcolor-1">ADMX_DWM/DwmDefaultColorizationColor_1</a>
  </dd>
  <dd>
    <a href="#admx-dwm-dwmdefaultcolorizationcolor-2">ADMX_DWM/DwmDefaultColorizationColor_2</a>
  </dd>
  <dd>
    <a href="#admx-dwm-dwmdisallowanimations-1">ADMX_DWM/DwmDisallowAnimations_1</a>
  </dd>
  <dd>
    <a href="#admx-dwm-dwmdisallowanimations-2">ADMX_DWM/DwmDisallowAnimations_2</a>
  </dd>
  <dd>
    <a href="#admx-dwm-dwmdisallowcolorizationcolorchanges-1">ADMX_DWM/DwmDisallowColorizationColorChanges_1</a>
  </dd>
  <dd>
    <a href="#admx-dwm-dwmdisallowcolorizationcolorchanges-2">ADMX_DWM/DwmDisallowColorizationColorChanges_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-dwm-dwmdefaultcolorizationcolor-1"></a>**ADMX_DWM/DwmDefaultColorizationColor_1**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls the default color for window frames when the user doesn't specify a color.

If you enable this policy setting and specify a default color, this color is used in glass window frames, if the user doesn't specify a color.

If you disable or don't configure this policy setting, the default internal color is used, if the user doesn't specify a color.

> [!NOTE]
> This policy setting can be used in conjunction with the "Prevent color changes of window frames" setting, to enforce a specific color for window frames that cannot be changed by users.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify a default color*
-   GP name: *DwmDefaultColorizationColor_1*
-   GP path: *Windows Components/Desktop Window Manager/Window Frame Coloring*
-   GP ADMX file name: *DWM.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dwm-dwmdefaultcolorizationcolor-2"></a>**ADMX_DWM/DwmDefaultColorizationColor_2**

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
This policy setting controls the default color for window frames when the user doesn't specify a color.

If you enable this policy setting and specify a default color, this color is used in glass window frames, if the user doesn't specify a color.

If you disable or don't configure this policy setting, the default internal color is used, if the user doesn't specify a color.

> [!NOTE]
> This policy setting can be used in conjunction with the "Prevent color changes of window frames" setting, to enforce a specific color for window frames that cannot be changed by users.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify a default color*
-   GP name: *DwmDefaultColorizationColor_2*
-   GP path: *Windows Components/Desktop Window Manager/Window Frame Coloring*
-   GP ADMX file name: *DWM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-dwm-dwmdisallowanimations-1"></a>**ADMX_DWM/DwmDisallowAnimations_1**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls the appearance of window animations such as those found when restoring, minimizing, and maximizing windows.

If you enable this policy setting, window animations are turned off.

If you disable or don't configure this policy setting, window animations are turned on.

Changing this policy setting requires a sign out for it to be applied.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow window animations*
-   GP name: *DwmDisallowAnimations_1*
-   GP path: *Windows Components/Desktop Window Manager*
-   GP ADMX file name: *DWM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-dwm-dwmdisallowanimations-2"></a>**ADMX_DWM/DwmDisallowAnimations_2**

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
This policy setting controls the appearance of window animations such as those found when restoring, minimizing, and maximizing windows.

If you enable this policy setting, window animations are turned off.

If you disable or don't configure this policy setting, window animations are turned on.

Changing this policy setting requires out a sign for it to be applied.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow window animations*
-   GP name: *DwmDisallowAnimations_2*
-   GP path: *Windows Components/Desktop Window Manager*
-   GP ADMX file name: *DWM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-dwm-dwmdisallowcolorizationcolorchanges-1"></a>**ADMX_DWM/DwmDisallowColorizationColorChanges_1**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls the ability to change the color of window frames.

If you enable this policy setting, you prevent users from changing the default window frame color.

If you disable or don't configure this policy setting, you allow users to change the default window frame color.

> [!NOTE]
> This policy setting can be used in conjunction with the "Specify a default color for window frames" policy setting, to enforce a specific color for window frames that cannot be changed by users.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow color changes*
-   GP name: *DwmDisallowColorizationColorChanges_1*
-   GP path: *Windows Components/Desktop Window Manager/Window Frame Coloring*
-   GP ADMX file name: *DWM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-dwm-dwmdisallowcolorizationcolorchanges-2"></a>**ADMX_DWM/DwmDisallowColorizationColorChanges_2**

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
This policy setting controls the ability to change the color of window frames.

If you enable this policy setting, you prevent users from changing the default window frame color.

If you disable or don't configure this policy setting, you allow users to change the default window frame color.

> [!NOTE]
> This policy setting can be used in conjunction with the "Specify a default color for window frames" policy setting, to enforce a specific color for window frames that cannot be changed by users.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow color changes*
-   GP name: *DwmDisallowColorizationColorChanges_2*
-   GP path: *Windows Components/Desktop Window Manager/Window Frame Coloring*
-   GP ADMX file name: *DWM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)