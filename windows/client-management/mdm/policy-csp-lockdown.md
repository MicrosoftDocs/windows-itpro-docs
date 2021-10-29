---
title: Policy CSP - LockDown
description: Use the Policy CSP - LockDown setting to allow the user to invoke any system user interface by swiping in from any screen edge using touch.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - LockDown


<hr/>

<!--Policies-->
## LockDown policies  

<dl>
  <dd>
    <a href="#lockdown-allowedgeswipe">LockDown/AllowEdgeSwipe</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="lockdown-allowedgeswipe"></a>**LockDown/AllowEdgeSwipe**  

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
Allows the user to invoke any system user interface by swiping in from any screen edge using touch.

The easiest way to verify the policy is to restart the explorer process or to reboot after the policy is applied. And then try to swipe from the right edge of the screen. The desired result is for Action Center to not be invoked by the swipe. You can also enter tablet mode and attempt to swipe from the top of the screen to rearrange. That will also be disabled.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Allow edge swipe*
-   GP name: *AllowEdgeSwipe*
-   GP path: *Windows Components/Edge UI*
-   GP ADMX file name: *EdgeUI.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - disallow edge swipe.
-   1 (default, not configured) - allow edge swipe.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--/Policies-->

