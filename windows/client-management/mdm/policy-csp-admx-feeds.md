---
title: Policy CSP - ADMX_Feeds
description: Policy CSP - ADMX_Feeds
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 09/16/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_Feeds
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
<dl>
  <dd>
    <a href="#admx-feeds-feedsenabled">ADMX_Feeds/FeedsEnabled</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-feeds-feedsenabled"></a>**ADMX_Feeds/FeedsEnabled**  

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
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Business</td>
    <td>Yes</td>
    <td>Yes</td>
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
> * Machine

<!--/Scope-->
<!--Description-->

This policy setting specifies whether news and interests is allowed on the device.

The values for this policy are 1 and 0. This policy defaults to 1.

- 1 - Default - News and interests feature will be allowed on the taskbar. The settings UI will be present in Taskbar context menu, and users will be able to turn off or switch mode.

- 0 - News and interests feature will be turned off completely, and the settings UI in Taskbar context menu will be removed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable news and interests on the taskbar.*
-   GP name: *FeedsEnabled*
-   GP path: *Windows Components\News and interests*
-   GP ADMX file name: *Feeds.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->

