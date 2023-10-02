---
title: RestrictedGroups Policy CSP
description: Learn more about the RestrictedGroups Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- RestrictedGroups-Begin -->
# Policy CSP - RestrictedGroups

<!-- RestrictedGroups-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

> [!IMPORTANT]
> Starting from Windows 10, version 20H2, to configure members of Windows local groups, use the [LocalUsersandGroups](policy-csp-localusersandgroups.md) policy instead of the RestrictedGroups policy. These members can be users or Azure Active Directory (Azure AD) groups.
>
> Don't apply both policies to the same device, it's unsupported and may yield unpredictable results.
<!-- RestrictedGroups-Editable-End -->

<!-- ConfigureGroupMembership-Begin -->
## ConfigureGroupMembership

<!-- ConfigureGroupMembership-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ConfigureGroupMembership-Applicability-End -->

<!-- ConfigureGroupMembership-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RestrictedGroups/ConfigureGroupMembership
```
<!-- ConfigureGroupMembership-OmaUri-End -->

<!-- ConfigureGroupMembership-Description-Begin -->
<!-- Description-Source-DDF -->
This security setting allows an administrator to define the members of a security-sensitive (restricted) group. When a Restricted Groups Policy is enforced, any current member of a restricted group that isn't on the Members list is removed. Any user on the Members list who isn't currently a member of the restricted group is added. You can use Restricted Groups policy to control group membership. Using the policy, you can specify what members are part of a group. Any members that aren't specified in the policy are removed during configuration or refresh. For example, you can create a Restricted Groups policy to only allow specified users (for example, Alice and John) to be members of the Administrators group. When policy is refreshed, only Alice and John will remain as members of the Administrators group.

> [!CAUTION]
> If a Restricted Groups policy is applied, any current member not on the Restricted Groups policy members list is removed. This can include default members, such as administrators. Restricted Groups should be used primarily to configure membership of local groups on workstation or member servers. An empty Members list means that the restricted group has no members.
<!-- ConfigureGroupMembership-Description-End -->

<!-- ConfigureGroupMembership-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!CAUTION]
> You can't remove the built-in Administrator account from the built-in Administrators group. If you try to remove it, the command fails with the following error:
>
> | Error Code  | Symbolic Name | Error Description | Header |
> |----------|----------|----------|----------|
> |  `0x55b` (Hex)  <br>  `1371` (Dec)  |ERROR_SPECIAL_ACCOUNT|Cannot perform this operation on built-in accounts.|  winerror.h  |
<!-- ConfigureGroupMembership-Editable-End -->

<!-- ConfigureGroupMembership-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureGroupMembership-DFProperties-End -->

<!-- ConfigureGroupMembership-AllowedValues-Begin -->
**Allowed values**:

<br>
<details>
  <summary>Expand to see schema XML</summary>

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
            <xs:attribute name="name" type="member_name" use="required" />
          </xs:complexType>
        </xs:element>
      </xs:sequence>
      <xs:attribute name="desc" type="member_name" use="required" />
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

</details>
<!-- ConfigureGroupMembership-AllowedValues-End -->

<!-- ConfigureGroupMembership-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->

**Example**:

```xml
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

Descriptions of the properties:

- `<accessgroup desc>` contains the local group SID or group name to configure. If a SID is specified here, the policy uses the [LookupAccountName](/windows/win32/api/winbase/nf-winbase-lookupaccountnamea) API to get the local group name. For best results, use names for `<accessgroup desc>`.

- `<member name>` contains the members to add to the group in `<accessgroup desc>`. A member can be specified as a name or as a SID. For best results, use a SID for `<member name>`. The member SID can be a user account or a group in Active Directory, Azure AD, or on the local machine. If a name is specified here, the policy will try to get the corresponding SID using the [LookupAccountSID](/windows/win32/api/winbase/nf-winbase-lookupaccountsida) API. Name can be used for a user account or a group in Active Directory or on the local machine. Membership is configured using the [NetLocalGroupSetMembers](/windows/win32/api/lmaccess/nf-lmaccess-netlocalgroupsetmembers) API.

- In this example, `Group1` and `Group2` are local groups on the device being configured, and `Group3` is a domain group.

> [!NOTE]
> Currently, the RestrictedGroups/ConfigureGroupMembership policy doesn't have a MemberOf functionality. However, you can add a domain group as a member to a local group by using the member portion, as shown in this example.
<!-- ConfigureGroupMembership-Examples-End -->

<!-- ConfigureGroupMembership-End -->

<!-- RestrictedGroups-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->

**Policy timeline**:

The behavior of this policy setting differs in different Windows 10 versions. For Windows 10, version 1809 through version 1909, you can use name in `<accessgroup desc>` and SID in `<member name>`. For Windows 10, version 2004, you can use name or SID for both the elements, as described in the example.

The following table describes how this policy setting behaves in different Windows 10 versions:

| Windows 10 version | Policy behavior |
| ------------------ | --------------- |
|Windows 10, version 1803 | Added this policy setting. <br> XML accepts group and member only by name. <br> Supports configuring the administrators group using the group name. <br> Expects member name to be in the account name format. |
| Windows 10, version 1809 <br> Windows 10, version 1903 <br> Windows 10, version 1909 | Supports configuring any local group. <br> `<accessgroup desc>` accepts only name. <br> `<member name>` accepts a name or a SID. <br> This behavior is useful when you want to make sure a certain local group always has a well-known SID as member. |
| Windows 10, version 2004 | Behaves as described in this article. <br> Accepts name or SID for group and members and translates as appropriate.|

<!-- RestrictedGroups-CspMoreInfo-End -->

<!-- RestrictedGroups-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
