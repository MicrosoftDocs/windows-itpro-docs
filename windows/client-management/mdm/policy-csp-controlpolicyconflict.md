---
title: Policy CSP - ControlPolicyConflict
description: Policy CSP - ControlPolicyConflict
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 01/30/2018
---

# Policy CSP - ControlPolicyConflict

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.


<hr/>

<!--Policies-->
## ControlPolicyConflict policies  

<dl>
  <dd>
    <a href="#controlpolicyconflict-mdmwinsovergp">ControlPolicyConflict/MDMWinsOverGP</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="controlpolicyconflict-mdmwinsovergp"></a>**ControlPolicyConflict/MDMWinsOverGP**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Added in Windows 10, version 1803. This policy allows the IT admin to control which policy will be used whenever both the MDM policy and its equivalent Group Policy are set on the device.

This policy is used to ensure that MDM policy wins over GP when same setting is set by both GP and MDM channel. This policy doesn’t support Delete command. This policy doesn’t support setting the value to be 0 again after it was previously set 1. The default value is 0. The MDM policies in Policy CSP will behave as described if this policy value is set 1.

The policy should be set at every sync to ensure the device removes any settings that conflict with MDM just as it does on the very first set of the policy. This ensures that:

- GP settings that correspond to MDM applied settings are not conflicting 
- The current Policy Manager policies are refreshed from what MDM has set 
- Any values set by scripts/user outside of GP that conflict with MDM are removed

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default)
- 1 - The MDM policy is used and the GP policy is blocked.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--/Policies-->

