---
title: Policy CSP - Camera
description: Policy CSP - Camera
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 05/14/2018
ms.reviewer: 
manager: dansimp
---

# Policy CSP - Camera



<hr/>

<!--Policies-->
## Camera policies  

<dl>
  <dd>
    <a href="#camera-allowcamera">Camera/AllowCamera</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="camera-allowcamera"></a>**Camera/AllowCamera**  

<!--SupportedSKUs-->
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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Disables or enables the camera.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow Use of Camera*
-   GP name: *L_AllowCamera*
-   GP path: *Windows Components/Camera*
-   GP ADMX file name: *Camera.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.

<!--/Policies-->

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

