---
title: Policy CSP - ADMX_FramePanes
description: Learn about the Policy CSP - ADMX_FramePanes.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/14/2021
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_FramePanes

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).
<hr/>

<!--Policies-->
## ADMX_FramePanes policies

<dl>
  <dd>
    <a href="#admx-framepanes-noreadingpane">ADMX_FramePanes/NoReadingPane</a>
  </dd>
  <dd>
    <a href="#admx-framepanes-nopreviewpane">ADMX_FramePanes/NoPreviewPane</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-framepanes-noreadingpane"></a>**ADMX_FramePanes/NoReadingPane**

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
This policy setting shows or hides the Details Pane in File Explorer.

If you enable this policy setting and configure it to hide the pane, the Details Pane in File Explorer is hidden and can't be turned on by the user.

If you enable this policy setting and configure it to show the pane, the Details Pane is always visible and can't be hidden by the user.

> [!NOTE]
> This has a side effect of not being able to toggle to the Preview Pane since the two can't be displayed at the same time.

If you disable, or don't configure this policy setting, the Details Pane is hidden by default and can be displayed by the user.

This setting is the default policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on or off details pane*
-   GP name: *NoReadingPane*
-   GP path: *Windows Components\File Explorer\Explorer Frame Pane*
-   GP ADMX file name: *FramePanes.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-framepanes-nopreviewpane"></a>**ADMX_FramePanes/NoPreviewPane**


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
Hides the Preview Pane in File Explorer.

If you enable this policy setting, the Preview Pane in File Explorer is hidden and can't be turned on by the user.

If you disable, or don't configure this setting, the Preview Pane is hidden by default and can be displayed by the user.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Preview Pane*
-   GP name: *NoPreviewPane*
-   GP path: *Windows Components\File Explorer\Explorer Frame Pane*
-   GP ADMX file name: *FramePanes.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)