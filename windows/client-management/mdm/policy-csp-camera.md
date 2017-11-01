---
title: Policy CSP - Camera
description: Policy CSP - Camera
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - Camera



<hr/>

<!--StartPolicies-->
## Camera policies  

<dl>
  <dd>
    <a href="#camera-allowcamera">Camera/AllowCamera</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="camera-allowcamera"></a>**Camera/AllowCamera**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
<p style="margin-left: 20px">Disables or enables the camera.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

<!--StartEAS-->
## <a href="" id="eas"></a>Camera policies that can be set using Exchange Active Sync (EAS)  

-   [Camera/AllowCamera](#camera-allowcamera)  
<!--EndEAS-->

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>Camera policies supported by IoT Core  

-   [Camera/AllowCamera](#camera-allowcamera)  
<!--EndIoTCore-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>Camera policies supported by Microsoft Surface Hub  

-   [Camera/AllowCamera](#camera-allowcamera)  
<!--EndSurfaceHub-->

