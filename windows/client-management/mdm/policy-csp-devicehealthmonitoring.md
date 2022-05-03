---
title: Policy CSP - DeviceHealthMonitoring
description: Learn how the Policy CSP - DeviceHealthMonitoring setting is used as an opt-in health monitoring connection between the device and Microsoft.
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

# Policy CSP - DeviceHealthMonitoring



<hr/>

<!--Policies-->
## DeviceHealthMonitoring policies  

<dl>
  <dd>
    <a href="#devicehealthmonitoring-allowdevicehealthmonitoring">DeviceHealthMonitoring/AllowDeviceHealthMonitoring</a>
  </dd>
  <dd>
    <a href="#devicehealthmonitoring-configdevicehealthmonitoringscope">DeviceHealthMonitoring/ConfigDeviceHealthMonitoringScope</a>
  </dd>
  <dd>
    <a href="#devicehealthmonitoring-configdevicehealthmonitoringuploaddestination">DeviceHealthMonitoring/ConfigDeviceHealthMonitoringUploadDestination</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="devicehealthmonitoring-allowdevicehealthmonitoring"></a>**DeviceHealthMonitoring/AllowDeviceHealthMonitoring**  

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
DeviceHealthMonitoring is an opt-in health monitoring connection between the device and Microsoft. You should enable this policy only if your organization is using a Microsoft device monitoring service that requires it.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:  

- 1—The DeviceHealthMonitoring connection is enabled.
- 0 (default)—The DeviceHealthMonitoring connection is disabled.

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicehealthmonitoring-configdevicehealthmonitoringscope"></a>**DeviceHealthMonitoring/ConfigDeviceHealthMonitoringScope**  

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
This policy is applicable only if the [AllowDeviceHealthMonitoring](#devicehealthmonitoring-allowdevicehealthmonitoring) policy has been set to 1 (Enabled) on the device. 
This policy modifies which health events are sent to Microsoft on the DeviceHealthMonitoring connection.
IT Pros don't need to set this policy. Instead, Microsoft Intune is expected to dynamically manage this value in coordination with the Microsoft device health monitoring service.


<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicehealthmonitoring-configdevicehealthmonitoringuploaddestination"></a>**DeviceHealthMonitoring/ConfigDeviceHealthMonitoringUploadDestination**  

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
This policy is applicable only if the [AllowDeviceHealthMonitoring](#devicehealthmonitoring-allowdevicehealthmonitoring) policy has been set to 1 (Enabled) on the device. 
The value of this policy constrains the DeviceHealthMonitoring connection to certain destinations in order to support regional and sovereign cloud scenarios.
In most cases, an IT Pro doesn't need to define this policy. Instead, it's expected that this value is dynamically managed by Microsoft Intune to align with the region or cloud to which the device's tenant is already linked. Only configure this policy manually if explicitly instructed to do so by a Microsoft device monitoring service.


<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>



<!--/Policies-->

