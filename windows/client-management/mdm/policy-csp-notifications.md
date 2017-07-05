---
title: Policy CSP - Notifications
description: Policy CSP - Notifications
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
---

# Policy CSP - Notifications

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

<!--StartPolicies-->
<hr/>

## Notifications policies  

<!--StartPolicy-->
<a href="" id="notifications-disallownotificationmirroring"></a>**Notifications/DisallowNotificationMirroring**  

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
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Boolean value that turns off notification mirroring.

> [!IMPORTANT]
> This node must be accessed using the following paths:
>
> -   **./User/Vendor/MSFT/Policy/Config/Notifications/DisallowNotificationMirroring** to set the policy.
> -   **./User/Vendor/MSFT/Policy/Result/Notifications/DisallowNotificationMirroring** to get the result.


<p style="margin-left: 20px">For each user logged into the device, if you enable this policy (set value to 1) the app and system notifications received by this user on this device will not get mirrored to other devices of the same logged in user. If you disable or do not configure this policy (set value to 0) the notifications received by this user on this device will be mirrored to other devices of the same logged in user. This feature can be turned off by apps that do not want to participate in Notification Mirroring. This feature can also be turned off by the user in the Cortana setting page.

<p style="margin-left: 20px">No reboot or service restart is required for this policy to take effect.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default)– enable notification mirroring.
-   1 – disable notification mirroring.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

