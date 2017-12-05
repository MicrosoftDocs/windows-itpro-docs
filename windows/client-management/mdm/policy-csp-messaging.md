---
title: Policy CSP - Messaging
description: Policy CSP - Messaging
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - Messaging



<hr/>

<!--StartPolicies-->
## Messaging policies  

<dl>
  <dd>
    <a href="#messaging-allowmms">Messaging/AllowMMS</a>
  </dd>
  <dd>
    <a href="#messaging-allowmessagesync">Messaging/AllowMessageSync</a>
  </dd>
  <dd>
    <a href="#messaging-allowrcs">Messaging/AllowRCS</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="messaging-allowmms"></a>**Messaging/AllowMMS**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Enables or disables the MMS send/receive functionality on the device. For enterprises, this policy can be used to disable MMS on devices as part of the auditing or management requirement.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 - Disabled.
-   1 (default) - Enabled.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="messaging-allowmessagesync"></a>**Messaging/AllowMessageSync**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
<p style="margin-left: 20px">Added in Windows 10, version 1607. Enables text message back up and restore and Messaging Everywhere. This policy allows an organization to disable these features to avoid information being stored on servers outside of their control.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 - message sync is not allowed and cannot be changed by the user.
-   1 - message sync is allowed. The user can change this setting.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="messaging-allowrcs"></a>**Messaging/AllowRCS**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Enables or disables the RCS send/receive functionality on the device. For enterprises, this policy can be used to disable RCS on devices as part of the auditing or management requirement.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 - Disabled.
-   1 (default) - Enabled.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

