---
title: Policy CSP - TimeLanguageSettings
description: Policy CSP - TimeLanguageSettings
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/13/2019
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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td></td>
	<td></td>
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
DeviceHealthMonitoring is an opt-in health monitoring connection between the device and Microsoft. You should enable this policy only if your organization is using a Microsoft device monitoring service which requires it.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:  

- 1 — The DeviceHealthMonitoring connection is enabled.
- 0 (default) — The DeviceHealthMonitoring connection is disabled.

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td></td>
	<td></td>
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
This policy is applicable only if the [AllowDeviceHealthMonitoring](#devicehealthmonitoring-allowdevicehealthmonitoring) policy has been set to 1 (Enabled) on the device. 
This policy modifies which health events are sent to Microsoft on the DeviceHealthMonitoring connection.
IT Pros do not need to set this policy. Instead, Microsoft Intune is expected to dynamically manage this value in coordination with the Microsoft device health monitoring service.


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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td></td>
	<td></td>
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
This policy is applicable only if the [AllowDeviceHealthMonitoring](#devicehealthmonitoring-allowdevicehealthmonitoring) policy has been set to 1 (Enabled) on the device. 
The value of this policy constrains the DeviceHealthMonitoring connection to certain destinations in order to support regional and sovereign cloud scenarios.
In most cases, an IT Pro does not need to define this policy. Instead, it is expected that this value is dynamically managed by Microsoft Intune to align with the region or cloud to which the device's tenant is already linked. Only configure this policy manually if explicitly instructed to do so by a Microsoft device monitoring service.


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

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>DeviceHealthMonitoring policies supported by IoT Core  

-   [DeviceHealthMonitoring/AllowDeviceHealthMonitoring](#devicehealthmonitoring-allowdevicehealthmonitoring)  
-   [DeviceHealthMonitoring/ConfigDeviceHealthMonitoringScope](#devicehealthmonitoring-configdevicehealthmonitoringscope)  
-   [DeviceHealthMonitoring/ConfigDeviceHealthMonitoringUploadDestination](#devicehealthmonitoring-configdevicehealthmonitoringuploaddestination)  
<!--EndIoTCore-->

<!--StartIoTEnterprise-->
## <a href="" id="iotcore"></a>DeviceHealthMonitoring policies supported by IoT Enterprise  

-   [DeviceHealthMonitoring/AllowDeviceHealthMonitoring](#devicehealthmonitoring-allowdevicehealthmonitoring)  
-   [DeviceHealthMonitoring/ConfigDeviceHealthMonitoringScope](#devicehealthmonitoring-configdevicehealthmonitoringscope)  
-   [DeviceHealthMonitoring/ConfigDeviceHealthMonitoringUploadDestination](#devicehealthmonitoring-configdevicehealthmonitoringuploaddestination)  
<!--EndIoTEnterprise-->

<hr/>
Footnotes:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.
-   5 - Added in Windows 10, version 1809.
-   6 - Added in Windows 10, version 1903.