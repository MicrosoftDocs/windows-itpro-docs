---
title: Policy CSP - Licensing
description: Use the Policy CSP - Licensing setting to enable or disable Windows license reactivation on managed devices.
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

# Policy CSP - Licensing



<hr/>

<!--Policies-->
## Licensing policies  

<dl>
  <dd>
    <a href="#licensing-allowwindowsentitlementreactivation">Licensing/AllowWindowsEntitlementReactivation</a>
  </dd>
  <dd>
    <a href="#licensing-disallowkmsclientonlineavsvalidation">Licensing/DisallowKMSClientOnlineAVSValidation</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="licensing-allowwindowsentitlementreactivation"></a>**Licensing/AllowWindowsEntitlementReactivation**  

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
Added in Windows 10, version 1607. Enables or Disable Windows license reactivation on managed devices.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Control Device Reactivation for Retail devices*
-   GP name: *AllowWindowsEntitlementReactivation*
-   GP path: *Windows Components/Software Protection Platform*
-   GP ADMX file name: *AVSValidationGP.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Disable Windows license reactivation on managed devices.
-   1 (default) – Enable Windows license reactivation on managed devices.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="licensing-disallowkmsclientonlineavsvalidation"></a>**Licensing/DisallowKMSClientOnlineAVSValidation**  

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
Added in Windows 10, version 1607. Enabling this setting prevents this computer from sending data to Microsoft regarding its activation state.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn off KMS Client Online AVS Validation*
-   GP name: *NoAcquireGT*
-   GP path: *Windows Components/Software Protection Platform*
-   GP ADMX file name: *AVSValidationGP.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Disabled.
-   1 – Enabled.

<!--/SupportedValues-->
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

