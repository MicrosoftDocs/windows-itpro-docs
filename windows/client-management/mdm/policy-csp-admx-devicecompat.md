---
title: Policy CSP - ADMX_DeviceCompat
description: Learn about Policy CSP - ADMX_DeviceCompat.
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 08/09/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_DeviceCompat
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_DeviceCompat policies  

<dl>
  <dd>
    <a href="#admx-devicecompat-deviceflags">ADMX_DeviceCompat/DeviceFlags</a>
  </dd>
  <dd>
    <a href="#admx-devicecompat-drivershims">ADMX_DeviceCompat/DriverShims</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-devicecompat-deviceflags"></a>**ADMX_DeviceCompat/DeviceFlags**  

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
Changes behavior of Microsoft bus drivers to work with specific devices.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Device compatibility settings*
-   GP name: *DeviceFlags*
-   GP path: *Windows Components\Device and Driver Compatibility*
-   GP ADMX file name: *DeviceCompat.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-devicecompat-drivershims"></a>**ADMX_DeviceCompat/DriverShims**  

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
Changes behavior of third-party drivers to work around incompatibilities introduced between OS versions.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Driver compatibility settings*
-   GP name: *DriverShims*
-   GP path: *Windows Components\Device and Driver Compatibility*
-   GP ADMX file name: *DeviceCompat.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)