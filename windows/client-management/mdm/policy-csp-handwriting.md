---
title: Policy CSP - Handwriting
description: Use the Policy CSP - Handwriting setting to allow an enterprise to configure the default mode for the handwriting panel.
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

# Policy CSP - Handwriting



<hr/>

<!--Policies-->
## Handwriting policies  

<dl>
  <dd>
    <a href="#handwriting-paneldefaultmodedocked">Handwriting/PanelDefaultModeDocked</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="handwriting-paneldefaultmodedocked"></a>**Handwriting/PanelDefaultModeDocked**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3<sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3<sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3<sup></td>
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
Added in Windows 10. version 1709. This policy allows an enterprise to configure the default mode for the handwriting panel.

The handwriting panel has 2 modes - floats near the text box, or docked to the bottom of the screen. The default configuration to is floating near text box. If you want the panel to be fixed or docked, use this policy to fix it to the bottom of the screen.

In floating mode, the content is hidden behind a flying-in panel and results in end-user dissatisfaction. The end-user will need to drag the flying-in panel to see the rest of the content. In the fixed mode, the flying-in panel is fixed to the bottom of the screen and does not require any user interaction.

The docked mode is especially useful in Kiosk mode where you do not expect the end-user to drag the flying-in panel out of the way.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Handwriting Panel Default Mode Docked*
-   GP name: *PanelDefaultModeDocked*
-   GP path: *Windows Components/Handwriting*
-   GP ADMX file name: *Handwriting.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - Disabled.
-   1 - Enabled.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607.
- 2 - Available in Windows 10, version 1703.
- 3 - Available in Windows 10, version 1709.
- 4 - Available in Windows 10, version 1803.
- 5 - Available in Windows 10, version 1809.
- 6 - Available in Windows 10, version 1903.
- 7 - Available in Windows 10, version 1909.
- 8 - Available in Windows 10, version 2004.

<!--/Policies-->

