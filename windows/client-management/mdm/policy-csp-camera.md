---
title: Policy CSP - Camera
description: Learn how to use the Policy CSP - Camera setting so that you can configure it to disable or enable the camera.
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

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

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
-   GP Friendly name: *Allow Use of Camera*
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



<!--/Policies-->

