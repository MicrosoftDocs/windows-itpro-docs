---
title: Policy CSP - LocalUsersAndGroups
description: Policy CSP - LocalUsersAndGroups
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 10/08/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - LocalUsersAndGroups


<hr/>

<!--Policies-->
## LocalUsersAndGroups policies  

<dl>
  <dd>
    <a href="#localusersandgroups-configure">LocalUsersAndGroups/Configure</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="localusersandgroups-configure"></a>**LocalUsersAndGroups/Configure**  

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>9</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>9</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>9</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>9</sup></td>
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
This policy setting allows IT admins to add, remove, or replace members of local groups on a managed device.

> [!NOTE]
> The [RestrictedGroups/ConfigureGroupMembership](./policy-csp-restrictedgroups.md#restrictedgroups-configuregroupmembership) policy setting also allows you to configure members (users or AAD groups) to a Windows 10 local group. However, it allows only for a full replace of the existing groups with the new members and does not allow selective add or remove.

Here's an example of the policy definition XML for group configuration:

```xml
<?xml version = "1.0" encoding = "utf-8"?>
    <GroupConfiguration>
        <accessgroup desc = "Backup Operators">
            <group action = ""/> 
                <add member = ""/>
                <remove member = ""/>
                <property desc = "" value = ""/> 
        </accessgroup>
    </GroupConfiguration>
```

where:

- `<accessgroup>`: Specifies the name or SID of the local group to configure.
- `<group action>`: Specifies the action to take on the local group, which can be Update and Replace, represented by U and R: 
    - Update. This action must be used to keep the current group membership intact and add or remove members of the specific group.
    - Replace. This action must be used to replace current membership with the newly specified groups. This action provides the same functionality as that of the [RestrictedGroups/ConfigureGroupMembership](./policy-csp-restrictedgroups.md#restrictedgroups-configuregroupmembership) policy setting.
- `<add member>`: Specifies the SID or name of the member to configure.
- `<remove member>`: Specifies the SID or name of the member to remove from the specified group.
- `<property desc>`: (Optional and not supported currently). This element is reserved for the future use to update group properties, such as group name as part of an update action.

> [!IMPORTANT]
> - `<add member>` and `<remove member>` can use an Azure AD SID or the user's name. For adding or removing Azure AD groups using this policy, you must use the group's SID. Azure AD group SIDs can be obtained using Graph API for Groups. The SID is present in the `securityIdentifier` attribute. 
> - This policy setting does not support the MemberOf functionality. However, you can add a domain group as a member to a local group by specifying the group in `<add member>` of another group.
> - The R (Replace) action takes precedence over U (Update). Therefore, if a group appears twice in the XML, once with U and again with R, the R action wins.
> - Remove member is not valid for the R (Replace) action and will be ignored if present.
> - The list in the XML is processed in the given order with the exception of R actions, which get processed last to ensure they win. It also means that if a group is present multiple times with different add/remove values, all of them will be processed in the order of presence.

<!--/Description-->
<!--SupportedValues-->
<!--/SupportedValues-->
<!--Example-->

**Examples**

The following is an example XML for the Update action to add and remove group members:

```xml
<?xml version = "1.0" encoding = "utf-8"?> 
<GroupConfiguration> 
    <accessgroup desc = "Backup Operators"> 
        <group action = "U" /> 
        <add member = "S-1-5-544"/> 
        <remove member = "Guest"/> 
    </accessgroup> 
</GroupConfiguration>
```

The following is an example XML for the Replace action to replace the group membership:

```xml
<?xml version = "1.0" encoding = "utf-8"?> 
<GroupConfiguration>
    <accessgroup desc = "Backup Operators">
        <group action = "R" />
        <add member = "S-1-5-544"/>
        <add member = "Guest"/>
    </accessgroup>
</GroupConfiguration>
```
<!--/Example-->
<!--Validation-->

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
- 9 - Available in Windows 10, version 2010.

<!--/Policies-->
