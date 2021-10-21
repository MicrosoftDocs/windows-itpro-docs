---
title: Policy CSP - Feeds
description: Use the Policy CSP - Feeds setting policy specifies whether news and interests is allowed on the device.
ms.author: v-nsatapathy
ms.topic: article
ms.prod: m365-security
ms.technology: windows-sec
author: nimishasatapathy
ms.localizationpriority: medium
ms.date: 09/17/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - Feeds


<hr/>

<!--Policies-->
## Feeds policies  

<dl>
  <dd>
    <a href="#feeds-feedsenabled">Feeds/FeedsEnabled</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="feeds-feedsenabled"></a>**Feeds/FeedsEnabled**  

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
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>Yes</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>No</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>No</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies whether news and interests is allowed on the device.

The values for this policy are 1 and 0. This policy defaults to 1.

- 1 - Default - News and interests feature will be allowed on the taskbar. The settings UI will be present in Taskbar context menu, and users will be able to turn off or switch mode.

- 0 - News and interests feature will be turned off completely, and the settings UI in Taskbar context menu will be removed.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable news and interests on the taskbar*
-   GP name: *FeedsEnabled*
-   GP path: *Windows Components\News and interests*
-   GP ADMX file name: *Feeds.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<!--/Policies-->

