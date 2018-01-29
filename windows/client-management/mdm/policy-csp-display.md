---
title: Policy CSP - Display
description: Policy CSP - Display
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 01/29/2018
---

# Policy CSP - Display



<hr/>

<!--StartPolicies-->
## Display policies  

<dl>
  <dd>
    <a href="#display-turnoffgdidpiscalingforapps">Display/TurnOffGdiDPIScalingForApps</a>
  </dd>
  <dd>
    <a href="#display-turnongdidpiscalingforapps">Display/TurnOnGdiDPIScalingForApps</a>
  </dd>
</dl>


<hr/>

<!--StartPolicy-->
<a href="" id="display-turnoffgdidpiscalingforapps"></a>**Display/TurnOffGdiDPIScalingForApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
GDI DPI Scaling enables applications that are not DPI aware to become per monitor DPI aware.

This policy setting lets you specify legacy applications that have GDI DPI Scaling turned off.

If you enable this policy setting, GDI DPI Scaling is turned off for all applications in the list, even if they are enabled by using ApplicationCompatibility database, ApplicationCompatibility UI System (Enhanced) setting, or an application manifest.

If you disable or do not configure this policy setting, GDI DPI Scaling might still be turned on for legacy applications.

If GDI DPI Scaling is configured to both turn off and turn on an application, the application will be turned off.

To validate on Desktop, do the following:

1.   Configure the setting for an app which has GDI DPI scaling enabled via MDM or any other supported mechanisms.
2.   Run the app and observe blurry text.

<!--EndDescription-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="display-turnongdidpiscalingforapps"></a>**Display/TurnOnGdiDPIScalingForApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
GDI DPI Scaling enables applications that are not DPI aware to become per monitor DPI aware.

This policy setting lets you specify legacy applications that have GDI DPI Scaling turned on.

If you enable this policy setting, GDI DPI Scaling is turned on for all legacy applications in the list.

If you disable or do not configure this policy setting, GDI DPI Scaling will not be enabled for an application except when an application is enabled by using ApplicationCompatibility database, ApplicationCompatibility UI System (Enhanced) setting, or an application manifest.

If GDI DPI Scaling is configured to both turn off and turn on an application, the application will be turned off.

To validate on Desktop, do the following:

1.   Configure the setting for an app which uses GDI.
2.   Run the app and observe crisp text.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

