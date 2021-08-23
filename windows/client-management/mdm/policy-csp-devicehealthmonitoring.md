---
title: Policy CSP - DeviceHealthMonitoring
description: Learn how the Policy CSP - DeviceHealthMonitoring setting is used as an opt-in health monitoring connection between the device and Microsoft.
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
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
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
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
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
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
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

