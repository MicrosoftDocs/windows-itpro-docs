---
title: Policy CSP - Feeds
description: Define the list of trusting forests that the Kerberos client searches when attempting to resolve two-part service principal names (SPNs).
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 09/27/2019
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

<<!--SupportedSKUs-->
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
> * Device

<hr/>

<!--/Scope-->

<!--/Description-->
Specifies whether "Feeds" is enabled on the taskbar.

The values for this policy are 1 and 0. This policy defaults to 1.

1 - Default - "Feeds" feature will be allowed on the taskbar. The settings UI will be present in Taskbar context menu, and users will be able to turn off or switch mode.

0 - "Feeds" feature will be turned off completely, and the settings UI in Taskbar context menu will be removed.
<!--/Description-->

<!--/Policy-->
<!--/Policies-->

