---
title: Policy CSP - ADMX_PushToInstall
description: Policy CSP - ADMX_PushToInstall
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 12/01/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_PushToInstall

<hr/>

<!--Policies-->
## ADMX_PushToInstall policies  

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<dl>
  <dd>
    <a href="#admx-pushtoinstall-disablepushtoinstall">ADMX_PushToInstall/DisablePushToInstall</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-pushtoinstall-disablepushtoinstall"></a>**ADMX_PushToInstall/DisablePushToInstall**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
If you enable this setting, users will not be able to push Apps to this device from the Microsoft Store running on other devices or the web.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Push To Install service*
-   GP name: *DisablePushToInstall*
-   GP path: *Windows Components\Push To Install*
-   GP ADMX file name: *PushToInstall.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<!--/Policies-->

