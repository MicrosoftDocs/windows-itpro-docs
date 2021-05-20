---
title: Policy CSP - RestrictedGroups
description: Learn how the Policy CSP - RestrictedGroups setting allows an administrator to define the members that are part of a security-sensitive (restricted) group.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 04/07/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - RestrictedGroups

> [!IMPORTANT]
> Starting from Windows 10, version 20H2, it is recommended to use the [LocalUsersandGroups](policy-csp-localusersandgroups.md) policy instead of the RestrictedGroups policy to configure members (users or AAD groups) to a Windows 10 local group. Applying both the policies to the same device is unsupported and may yield unpredictable results. 


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
This security setting allows an administrator to define the members that are part of a security-sensitive (restricted) group. When a Restricted Groups policy is enforced, any current member of a restricted group that is not on the Members list is removed, except for the built-in administrator in the built-in Administrators group. Any user on the Members list who is not currently a member of the restricted group is added. An empty Members list means that the restricted group has no members. The membership configuration is based on SIDS, therefore renaming these built-in groups does not affect retention of this special membership.

For example, you can create a Restricted Groups policy to allow only specified users, Alice and John, to be members of the Backup Operators group. When this policy is refreshed, only Alice and John will remain as members of the Backup Operators group and all other members will be removed.  

> [!CAUTION]
> Attempting to remove the built-in administrator from the Administrators group will result in failure with the following error:  
>
> | Error Code  | Symbolic Name | Error Description | Header |
> |----------|----------|----------|----------|
> |  0x55b (Hex)  <br>  1371 (Dec)  |ERROR_SPECIAL_ACCOUNT|Cannot perform this operation on built-in accounts.|  winerror.h  |

Starting in Windows 10, version 1809, you can use this schema for retrieval and application of the RestrictedGroups/ConfigureGroupMembership policy. A minimum occurrence of zero members when applying the policy implies clearing the access group and should be used with caution.

```xml
<xs:schema xmlns:xs="https://www.w3.org/2001/XMLSchema" version="1.0">  
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
        <member name = "contoso\Group3"/>
    </accessgroup>
</groupmembership>
```
where:
- `<accessgroup desc>` contains the local group SID or group name to configure. If a SID is specified here, the policy uses the [LookupAccountName](/windows/win32/api/winbase/nf-winbase-lookupaccountnamea) API to get the local group name. For best results, use names for `<accessgroup desc>`.
- `<member name>` contains the members to add to the group in `<accessgroup desc>`. A member can be specified as a name or as a SID. For best results, use a SID for `<member name>`. The member SID can be a user account or a group in AD, Azure AD, or on the local machine. If a name is specified here, the policy will try to get the corresponding SID using the [LookupAccountSID](/windows/win32/api/winbase/nf-winbase-lookupaccountsida) API. Name can be used for a user account or a group in AD or on the local machine. Membership is configured using the [NetLocalGroupSetMembers](/windows/win32/api/lmaccess/nf-lmaccess-netlocalgroupsetmembers) API.
- In this example, `Group1` and `Group2` are local groups on the device being configured, and `Group3` is a domain group.

> [!NOTE]
> Currently, the RestrictedGroups/ConfigureGroupMembership policy does not have a MemberOf functionality. However, you can add a domain group as a member to a local group by using the member portion, as shown in the previous example.
<!--/Example-->
<!--Validation-->

### Policy timeline

The behavior of this policy setting differs in different Windows 10 versions. For Windows 10, version 1809 through version 1909, you can use name in `<accessgroup dec>` and SID in `<member name>`. For Windows 10, version 2004, you can use name or SID for both the elements, as described in this topic. 

The following table describes how this policy setting behaves in different Windows 10 versions:

| Windows 10 version | Policy behavior |
| ------------------ | --------------- |
|Windows 10, version 1803 | Added this policy setting. <br> XML accepts group and member only by name. <br> Supports configuring the administrators group using the group name. <br> Expects member name to be in the account name format. |
| Windows 10, version 1809 <br> Windows 10, version 1903 <br> Windows 10, version 1909 | Supports configuring any local group. <br> `<accessgroup desc>` accepts only name. <br> `<member name>` accepts a name or an SID. <br> This is useful when you want to ensure a certain local group always has a well-known SID as member. |
| Windows 10, version 2004 | Behaves as described in this topic. <br> Accepts name or SID for group and members and translates as appropriate. | 


<!--/Validation-->
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