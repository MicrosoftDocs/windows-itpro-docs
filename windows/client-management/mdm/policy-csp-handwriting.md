---
title: Policy CSP - Handwriting
description: Policy CSP - Handwriting
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - Handwriting



<hr/>

<!--StartPolicies-->
## Handwriting policies  

<dl>
  <dd>
    <a href="#handwriting-paneldefaultmodedocked">Handwriting/PanelDefaultModeDocked</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="handwriting-paneldefaultmodedocked"></a>**Handwriting/PanelDefaultModeDocked**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3<sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3<sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3<sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3<sup></td>
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
<p style="margin-left: 20px">Added in Windows 10. version 1709. This policy allows an enterprise to configure the default mode for the handwriting panel.

<p style="margin-left: 20px">The handwriting panel has 2 modes - floats near the text box, or docked to the bottom of the screen. The default configuration to is floating near text box. If you want the panel to be fixed or docked, use this policy to fix it to the bottom of the screen.

<p style="margin-left: 20px">In floating mode, the content is hidden behind a flying-in panel and results in end-user dissatisfaction. The end-user will need to drag the flying-in panel to see the rest of the content. In the fixed mode, the flying-in panel is fixed to the bottom of the screen and does not require any user interaction.

<p style="margin-left: 20px">The docked mode is especially useful in Kiosk mode where you do not expect the end-user to drag the flying-in panel out of the way. 

<ul>
<li>0 - Disabled (default)</li>
<li>1 - Enabled</li>
</ul>

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

