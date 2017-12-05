---
title: Policy CSP - Maps
description: Policy CSP - Maps
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows the download and update of map data over metered connections.

<p style="margin-left: 20px">The following list shows the supported values:

-   65535 (default) – Not configured. User's choice.
-   0 – Disabled. Force disable auto-update over metered connection.
-   1 – Enabled. Force enable auto-update over metered connection.

<p style="margin-left: 20px">After the policy is applied, you can verify the settings in the user interface in **System** &gt; **Offline Maps**.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="maps-enableofflinemapsautoupdate"></a>**Maps/EnableOfflineMapsAutoUpdate**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
<p style="margin-left: 20px">Added in Windows 10, version 1607. Disables the automatic download and update of map data.

<p style="margin-left: 20px">The following list shows the supported values:

-   65535 (default) – Not configured. User's choice.
-   0 – Disabled. Force off auto-update.
-   1 – Enabled. Force on auto-update.

<p style="margin-left: 20px">After the policy is applied, you can verify the settings in the user interface in **System** &gt; **Offline Maps**.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

