---
title: Policy CSP - RestrictedGroups
description: Policy CSP - RestrictedGroups
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 03/12/2020
ms.reviewer: 
manager: dansimp
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
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
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
This security setting allows an administrator to define the members of a security-sensitive (restricted) group. When a Restricted Groups Policy is enforced, any current member of a restricted group that is not on the Members list is removed. Any user on the Members list who is not currently a member of the restricted group is added. You can use Restricted Groups policy to control group membership. Using the policy, you can specify what members are part of a group. Any members that are not specified in the policy are removed during configuration or refresh. For example, you can create a Restricted Groups policy to only allow specified users (for example, Alice and John) to be members of the Administrators group. When policy is refreshed, only Alice and John will remain as members of the Administrators group.  

> [!CAUTION]
> If a Restricted Groups policy is applied, any current member not on the Restricted Groups policy members list is removed. This can include default members, such as administrators. Restricted Groups should be used primarily to configure membership of local groups on workstation or member servers. An empty Members list means that the restricted group has no members.

Starting in Windows 10, version 1809, you can use this schema for retrieval and application of the RestrictedGroups/ConfigureGroupMembership policy. A minimum occurrence of 0 members when applying the policy implies clearing the access group and should be used with caution.

```xml
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

Here's an example:
```
<groupmembership>
    <accessgroup desc = "Group1">
        <member name = "S-1-15-6666767-76767676767-666666777"/>
        <member name = "contoso\Alice"/>
    </accessgroup>
    <accessgroup desc = "Group2">
        <member name = "S-1-15-1233433-23423432423-234234324"/>
        <member name = "Group1"/>
    </accessgroup>
</groupmembership>
```
where:
- `<accessgroup desc>` contains the local group SID or group name to configure. If an SID is specified here, the policy uses [LookupAccountName](https://docs.microsoft.com/windows/win32/api/winbase/nf-winbase-lookupaccountnamea) API to get the local group name. For best results, use names for `<accessgroup desc>`.
- `<member name>` contains the members to add to the group in `<accessgroup desc>`. If a name is specified here, the policy will try to get the corresponding SID using [LookupAccountSID](https://docs.microsoft.com/windows/win32/api/winbase/nf-winbase-lookupaccountsida) API. (**Note:** This doesn't query Azure AD). For best results, use SID for `<member name>`. As groups can be renamed and account name lookups are limited to AD/local machine, hence SID is the best and most deterministic way to configure.
The member SID can be a user account or a group in AD, Azure AD, or on the local machine. Membership is configured using [NetLocalGroupSetMembers](https://docs.microsoft.com/windows/win32/api/lmaccess/nf-lmaccess-netlocalgroupsetmembers) API.
- `Group1` and `Group2` are group locals on the device being configured.

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

Footnotes:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.
-   5 - Added in Windows 10, version 1809.
-   6 - Added in Windows 10, version 1903.

<!--/Policies-->
