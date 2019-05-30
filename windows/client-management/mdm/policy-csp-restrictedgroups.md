---
title: Policy CSP - RestrictedGroups
description: Policy CSP - RestrictedGroups
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 03/15/2018
---

# Policy CSP - RestrictedGroups


<hr/>

<!--Policies-->
## RestrictedGroups policies  

<dl>
  <dd>
    <a href="#restrictedgroups-configuregroupmembership">RestrictedGroups/ConfigureGroupMembership</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="restrictedgroups-configuregroupmembership"></a>**RestrictedGroups/ConfigureGroupMembership**  

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
	<td></td>
	<td></td>
</tr>
</table>
Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This security setting allows an administrator to define the members of a security-sensitive (restricted) group. When a Restricted Groups Policy is enforced, any current member of a restricted group that is not on the Members list is removed. Any user on the Members list who is not currently a member of the restricted group is added. You can use Restricted Groups policy to control group membership. Using the policy, you can specify what members are part of a group. Any members that are not specified in the policy are removed during configuration or refresh. For example, you can create a Restricted Groups policy to only allow specified users (for example, Alice and John) to be members of the Administrators group. When policy is refreshed, only Alice and John will remain as members of the Administrators group.  

Caution: If a Restricted Groups policy is applied, any current member not on the Restricted Groups policy members list is removed. This can include default members, such as administrators. Restricted Groups should be used primarily to configure membership of local groups on workstation or member servers. An empty Members list means that the restricted group has no members.

Starting in Windows 10, version 1809, you can use this schema for retrieval and application of the RestrictedGroups/ConfigureGroupMembership policy. A minimum occurrence of 0 members when applying the policy implies clearing the access group and should be used with caution.

``` syntax
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">  
  <xs:simpleType name="member_name">
    <xs:restriction base="xs:string">
      <xs:maxLength value="255" />
    </xs:restriction>
  </xs:simpleType>
  <xs:element name="accessgroup">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="member" minOccurs="0" maxOccurs="unbounded">
          <xs:annotation>
            <xs:documentation>Restricted Group Member</xs:documentation>
          </xs:annotation>
          <xs:complexType>
           <xs:attribute name="name" type="member_name" use="required"/>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
      <xs:attribute name="desc" type="member_name" use="required"/>
    </xs:complexType>
  </xs:element>
  <xs:element name="groupmembership">
    <xs:complexType>
       <xs:sequence>
          <xs:element name="accessgroup" minOccurs="0" maxOccurs="unbounded">
           <xs:annotation>
              <xs:documentation>Restricted Group</xs:documentation>
            </xs:annotation>
          </xs:element>
       </xs:sequence>
    </xs:complexType>
   </xs:element>
</xs:schema>
```

<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->
Here is an example:

```
<groupmembership>
    <accessgroup desc="Administrators">
        <member name="AzureAD\CSPTest@contoso.com" />
        <member name="CSPTest22306\administrator" />
        <member name = "AzureAD\patlewis@contoso.com" />
    </accessgroup>
    <accessgroup desc = "testcsplocal">
        <member name = "CSPTEST22306\patlewis" />
        <member name = "AzureAD\CSPTest@contoso.com" />
    </accessgroup>
</groupmembership>
```
<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

Take note:
* You should include the local administrator while modifying the administrators group to prevent accidental loss of access
* Include the entire UPN after AzureAD


