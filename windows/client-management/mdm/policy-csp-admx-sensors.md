---
title: Policy CSP - ADMX_Sensors
description: Policy CSP - ADMX_Sensors
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 10/22/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_Sensors
> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_Sensors policies  

<dl>
  <dd>
    <a href="#admx-sensors-disablelocationscripting-1">ADMX_Sensors/DisableLocationScripting_1</a>
  </dd>
  <dd>
    <a href="#admx-sensors-disablelocationscripting-2">ADMX_Sensors/DisableLocationScripting_2</a>
  </dd>
  <dd>
    <a href="#admx-sensors-disablelocation-1">ADMX_Sensors/DisableLocation_1</a>
  </dd>
  <dd>
    <a href="#admx-sensors-disablesensors-1">ADMX_Sensors/DisableSensors_1</a>
  </dd>
  <dd>
    <a href="#admx-sensors-disablesensors-2">ADMX_Sensors/DisableSensors_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-sensors-disablelocationscripting-1"></a>**ADMX_Sensors/DisableLocationScripting_1**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting turns off scripting for the location feature.

If you enable this policy setting, scripts for the location feature will not run.

If you disable or do not configure this policy setting, all location scripts will run.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off location scripting*
-   GP name: *DisableLocationScripting_1*
-   GP path: *Windows Components\Location and Sensors*
-   GP ADMX file name: *Sensors.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-sensors-disablelocationscripting-2"></a>**ADMX_Sensors/DisableLocationScripting_2**  

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
This policy setting turns off scripting for the location feature.

If you enable this policy setting, scripts for the location feature will not run.

If you disable or do not configure this policy setting, all location scripts will run.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off location scripting*
-   GP name: *DisableLocationScripting_2*
-   GP path: *Windows Components\Location and Sensors*
-   GP ADMX file name: *Sensors.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-sensors-disablelocation-1"></a>**ADMX_Sensors/DisableLocation_1**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting turns off the location feature for this computer.

If you enable this policy setting, the location feature is turned off, and all programs on this computer are prevented from using location information from the location feature.

If you disable or do not configure this policy setting, all programs on this computer will not be prevented from using location information from the location feature.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off location*
-   GP name: *DisableLocation_1*
-   GP path: *Windows Components\Location and Sensors*
-   GP ADMX file name: *Sensors.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-sensors-disablesensors-1"></a>**ADMX_Sensors/DisableSensors_1**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting turns off the sensor feature for this computer.

If you enable this policy setting, the sensor feature is turned off, and all programs on this computer cannot use the sensor feature.

If you disable or do not configure this policy setting, all programs on this computer can use the sensor feature.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off sensors*
-   GP name: *DisableSensors_1*
-   GP path: *Windows Components\Location and Sensors*
-   GP ADMX file name: *Sensors.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-sensors-disablesensors-2"></a>**ADMX_Sensors/DisableSensors_2**  

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
This policy setting turns off the sensor feature for this computer.

If you enable this policy setting, the sensor feature is turned off, and all programs on this computer cannot use the sensor feature.

If you disable or do not configure this policy setting, all programs on this computer can use the sensor feature.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off sensors*
-   GP name: *DisableSensors_2*
-   GP path: *Windows Components\Location and Sensors*
-   GP ADMX file name: *Sensors.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->