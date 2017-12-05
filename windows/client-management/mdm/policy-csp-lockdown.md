---
title: Policy CSP - LockDown
description: Policy CSP - LockDown
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - LockDown



<hr/>

<!--StartPolicies-->
## LockDown policies  

<dl>
  <dd>
    <a href="#lockdown-allowedgeswipe">LockDown/AllowEdgeSwipe</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="lockdown-allowedgeswipe"></a>**LockDown/AllowEdgeSwipe**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows the user to invoke any system user interface by swiping in from any screen edge using touch.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 - disallow edge swipe.
-   1 (default, not configured) - allow edge swipe.

<p style="margin-left: 20px">The easiest way to verify the policy is to restart the explorer process or to reboot after the policy is applied. And then try to swipe from the right edge of the screen. The desired result is for Action Center to not be invoked by the swipe. You can also enter tablet mode and attempt to swipe from the top of the screen to rearrange. That will also be disabled.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

