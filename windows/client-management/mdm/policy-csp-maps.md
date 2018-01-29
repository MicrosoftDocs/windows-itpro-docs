---
title: Policy CSP - Maps
description: Policy CSP - Maps
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 01/29/2018
---

# Policy CSP - Maps



<hr/>

<!--StartPolicies-->
## Maps policies  

<dl>
  <dd>
    <a href="#maps-allowofflinemapsdownloadovermeteredconnection">Maps/AllowOfflineMapsDownloadOverMeteredConnection</a>
  </dd>
  <dd>
    <a href="#maps-enableofflinemapsautoupdate">Maps/EnableOfflineMapsAutoUpdate</a>
  </dd>
</dl>


<hr/>

<!--StartPolicy-->
<a href="" id="maps-allowofflinemapsdownloadovermeteredconnection"></a>**Maps/AllowOfflineMapsDownloadOverMeteredConnection**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
Added in Windows 10, version 1607. Allows the download and update of map data over metered connections.

After the policy is applied, you can verify the settings in the user interface in **System** &gt; **Offline Maps**.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Disabled. Force disable auto-update over metered connection.
-   1 – Enabled. Force enable auto-update over metered connection.
-   65535 (default) – Not configured. User's choice.

<!--/SupportedValues-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="maps-enableofflinemapsautoupdate"></a>**Maps/EnableOfflineMapsAutoUpdate**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
Added in Windows 10, version 1607. Disables the automatic download and update of map data.

After the policy is applied, you can verify the settings in the user interface in **System** &gt; **Offline Maps**.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Disabled. Force off auto-update.
-   1 – Enabled. Force on auto-update.
-   65535 (default) – Not configured. User's choice.

<!--/SupportedValues-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

