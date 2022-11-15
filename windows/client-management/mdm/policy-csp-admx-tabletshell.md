---
title: Policy CSP - ADMX_TabletShell
description: Learn about Policy CSP - ADMX_TabletShell.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/23/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_TabletShell

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_TabletShell policies

<dl>
  <dd>
    <a href="#admx-tabletshell-disableinkball_1">ADMX_TabletShell/DisableInkball_1</a>
  </dd>
  <dd>
    <a href="#admx-tabletshell-disablenotewriterprinting_1">ADMX_TabletShell/DisableNoteWriterPrinting_1</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-tabletshell-disableinkball_1"></a>**ADMX_TabletShell/DisableInkball_1**

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
This policy setting prevents start of InkBall game.

If you enable this policy, the InkBall game won't run.

If you disable this policy, the InkBall game will run.  If you don't configure this policy, the InkBall game will run.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow Inkball to run*
-   GP name: *DisableInkball_1*
-   GP path: *Windows Components\Tablet PC\Accessories*
-   GP ADMX file name: *TabletShell.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-tabletshell-disablenotewriterprinting_1"></a>**ADMX_TabletShell/DisableNoteWriterPrinting_1**

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
This policy setting prevents printing to Journal Note Writer.

If you enable this policy, the Journal Note Writer printer driver won't allow printing to it. It will remain displayed in the list of available printers, but attempts to print it will fail.

If you disable this policy, you'll be able to use this feature to print to a Journal Note.  If you don't configure this policy, users will be able to use this feature to print to a Journal Note.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow printing to Journal Note Writer*
-   GP name: *DisableNoteWriterPrinting_1*
-   GP path: *Windows Components\Tablet PC\Accessories*
-   GP ADMX file name: *TabletShell.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
