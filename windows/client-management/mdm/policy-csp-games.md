---
title: Policy CSP - Games
description: Learn to use the Policy CSP - Games setting so that you can specify whether advanced gaming services can be used.
ms.author: dansimp
ms.topic: article
ms.prod: m365-security
ms.technology: windows-sec
author: manikadhiman
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - Games



<hr/>

<!--Policies-->
## Games policies  

<dl>
  <dd>
    <a href="#games-allowadvancedgamingservices">Games/AllowAdvancedGamingServices</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="games-allowadvancedgamingservices"></a>**Games/AllowAdvancedGamingServices**  

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1709. Specifies whether advanced gaming services can be used. These services may send data to Microsoft or publishers of games that use these services. Value type is integer.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - Not Allowed
- 1 (default) - Allowed

<!--/SupportedValues-->
<!--/Policy-->
<hr/>


<!--/Policies-->

