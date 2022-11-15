---
title: Policy CSP - ADMX_PenTraining
description: Learn about Policy CSP - ADMX_PenTraining.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/22/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_PenTraining

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_PenTraining policies

<dl>
  <dd>
    <a href="#admx-pentraining-pentrainingoff_1">ADMX_PenTraining/PenTrainingOff_1</a>
  </dd>
  <dd>
    <a href="#admx-pentraining-pentrainingoff_2">ADMX_PenTraining/PenTrainingOff_2</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="admx-pentraining-pentrainingoff_1"></a>**ADMX_PenTraining/PenTrainingOff_1**

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
Turns off Tablet PC Pen Training.

- If you enable this policy setting, users can't open Tablet PC Pen Training.

- If you disable or don't configure this policy setting, users can open Tablet PC Pen Training.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Tablet PC Pen Training*
-   GP name: *PenTrainingOff_1*
-   GP path: *Windows Components\Tablet PC\Tablet PC Pen Training*
-   GP ADMX file name: *PenTraining.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-pentraining-pentrainingoff_2"></a>**ADMX_PenTraining/PenTrainingOff_2**

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
Turns off Tablet PC Pen Training.

- If you enable this policy setting, users can't open Tablet PC Pen Training.

- If you disable or don't configure this policy setting, users can open Tablet PC Pen Training.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Tablet PC Pen Training*
-   GP name: *PenTrainingOff_2*
-   GP path: *Windows Components\Tablet PC\Tablet PC Pen Training*
-   GP ADMX file name: *PenTraining.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)