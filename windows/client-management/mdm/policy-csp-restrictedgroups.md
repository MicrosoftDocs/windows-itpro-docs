---
title: Policy CSP - RestrictedGroups
description: Policy CSP - RestrictedGroups
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 01/12/2018
---

# Policy CSP - RestrictedGroups

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.


<hr/>

<!--StartPolicies-->
## RestrictedGroups policies  

<dl>
  <dd>
    <a href="policy-csp-restrictedgroups.md#restrictedgroups-configuregroupmembership" id="restrictedgroups-configuregroupmembership">RestrictedGroups/ConfigureGroupMembership</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="restrictedgroups-configuregroupmembership"></a>**RestrictedGroups/ConfigureGroupMembership**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
This security setting allows an administrator to define the members of a security-sensitive (restricted) group. When a Restricted Groups Policy is enforced, any current member of a restricted group that is not on the Members list is removed. Any user on the Members list who is not currently a member of the restricted group is added. You can use Restricted Groups policy to control group membership.  

> [!Note]  
> This policy is only scoped to the Administrators group at this time.  

Using the policy, you can specify what members are part of a group. Any members that are not specified in the policy are removed during configuration or refresh. For example, you can create a Restricted Groups policy to only allow specified users (for example, Alice and John) to be members of the Administrators group. When policy is refreshed, only Alice and John will remain as members of the Administrators group.

> [!Note]  
> If a Restricted Groups policy is applied, any current member not on the Restricted Groups policy members list is removed. This can include default members, such as administrators. Restricted Groups should be used primarily to configure membership of local groups on workstation or member servers. An empty Members list means that the restricted group has no members.

<!--EndDescription-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

