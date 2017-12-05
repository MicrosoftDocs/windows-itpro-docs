---
title: Policy CSP - Location
description: Policy CSP - Location
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - Location



<hr/>

<!--StartPolicies-->
## Location policies  

<dl>
  <dd>
    <a href="#location-enablelocation">Location/EnableLocation</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="location-enablelocation"></a>**Location/EnableLocation**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
<p style="margin-left: 20px">Added in Windows 10, version 1703. Optional policy that allows for IT admin to preconfigure whether or not Location Service's Device Switch is enabled or disabled for the device. Setting this policy is not required for Location Services to function. This policy controls a device wide state that affects all users, apps, and services ability to find the device's latitude and longitude on a map. There is a separate user switch that defines whether the location service is allowed to retrieve a position for the current user. In order to retrieve a position for a specific user, both the Device Switch and the User Switch must be enabled. If either is disabled, positions cannot be retrieved for the user. The user can later change both the User Switch and the Device Switch through the user interface on the Settings -> Privacy -> Location page.

> [!IMPORTANT]
> This policy is not intended to ever be set, pushed, or refreshed more than one time after the first boot of the device because it is meant as initial configuration. Refreshing this policy might result in the Location Service's Device Switch changing state to something the user did not select, which is not an intended use for this policy.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Disabled.
-   1 – Enabled.

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Verify that Settings -> Privacy -> Location -> Location for this device is On/Off as expected.
2.   Use Windows Maps Application (or similar) to see if a location can or cannot be obtained.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

