---
title: Policy CSP - ADMX_WordWheel
description: Policy CSP - ADMX_WordWheel
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 09/22/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_WordWheel
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_WordWheel policies  

<dl>
  <dd>
    <a href="#admx-wordwheel-customsearch">ADMX_WordWheel/CustomSearch</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-wordwheel-customsearch"></a>**ADMX_WordWheel/CustomSearch**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Set up the menu name and URL for the custom Internet search provider.  

- If you enable this setting, the specified menu name and URL will be used for Internet searches.  
- If you disable or not configure this setting, the default Internet search provider will be used.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Custom Instant Search Internet search provider*
-   GP name: *CustomSearch*
-   GP path: *Windows Components\Instant Search*
-   GP ADMX file name: *WordWheel.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->

