---
title: Policy CSP - AccountPoliciesAccountLockoutPolicy
description: Policy CSP - AccountPoliciesAccountLockoutPolicy
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 01/29/2018
---

# Policy CSP - AccountPoliciesAccountLockoutPolicy

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.


<hr/>

<!--StartPolicies-->
## AccountPoliciesAccountLockoutPolicy policies  

<dl>
  <dd>
    <a href="#accountpoliciesaccountlockoutpolicy-accountlockoutduration">AccountPoliciesAccountLockoutPolicy/AccountLockoutDuration</a>
  </dd>
  <dd>
    <a href="#accountpoliciesaccountlockoutpolicy-accountlockoutthreshold">AccountPoliciesAccountLockoutPolicy/AccountLockoutThreshold</a>
  </dd>
  <dd>
    <a href="#accountpoliciesaccountlockoutpolicy-resetaccountlockoutcounterafter">AccountPoliciesAccountLockoutPolicy/ResetAccountLockoutCounterAfter</a>
  </dd>
</dl>


<hr/>

<!--StartPolicy-->
<a href="" id="accountpoliciesaccountlockoutpolicy-accountlockoutduration"></a>**AccountPoliciesAccountLockoutPolicy/AccountLockoutDuration**  

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

<!--/SupportdSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, next major release. This security setting determines the number of minutes a locked-out account remains locked out before automatically becoming unlocked. The available range is from 0 minutes through 99,999 minutes. If you set the account lockout duration to 0, the account will be locked out until an administrator explicitly unlocks it.

If an account lockout threshold is defined, the account lockout duration must be greater than or equal to the reset time.

Default: None, because this policy setting only has meaning when an Account lockout threshold is specified.

<!--/Description-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="accountpoliciesaccountlockoutpolicy-accountlockoutthreshold"></a>**AccountPoliciesAccountLockoutPolicy/AccountLockoutThreshold**  

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

<!--/SupportdSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, next major release. This security setting determines the number of failed logon attempts that causes a user account to be locked out. A locked-out account cannot be used until it is reset by an administrator or until the lockout duration for the account has expired. You can set a value between 0 and 999 failed logon attempts. If you set the value to 0, the account will never be locked out.

Failed password attempts against workstations or member servers that have been locked using either CTRL+ALT+DELETE or password-protected screen savers count as failed logon attempts.

Default: 0.

<!--/Description-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="accountpoliciesaccountlockoutpolicy-resetaccountlockoutcounterafter"></a>**AccountPoliciesAccountLockoutPolicy/ResetAccountLockoutCounterAfter**  

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

<!--/SupportdSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, next major release. This security setting determines the number of minutes that must elapse after a failed logon attempt before the failed logon attempt counter is reset to 0 bad logon attempts. The available range is 1 minute to 99,999 minutes.

If an account lockout threshold is defined, this reset time must be less than or equal to the Account lockout duration.

Default: None, because this policy setting only has meaning when an Account lockout threshold is specified.

<!--/Description-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

