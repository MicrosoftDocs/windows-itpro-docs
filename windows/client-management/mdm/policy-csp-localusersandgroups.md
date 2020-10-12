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
<GroupConfiguration>
    <accessgroup desc = "Backup Operators">
        <group action = ""/> 
            <add member = ""/>
            <remove member = ""/>
    </accessgroup>
</GroupConfiguration>
```

where:

- `<accessgroup desc>`: Specifies the name or SID of the local group to configure. If you specify a SID, the [LookupAccountSid](https://docs.microsoft.com/windows/win32/api/winbase/nf-winbase-lookupaccountsida) API is used to translate the SID to a valid group name. If you specify a name, the [LookupAccountName](https://docs.microsoft.com/windows/win32/api/winbase/nf-winbase-lookupaccountnamea) API is used to look up the group and validate the name. If name/SID lookup fails, the group is skipped and the next group in the XML file is processed. If there are multiple errors, the last error is returned at the end of the policy processing. 
- `<group action>`: Specifies the action to take on the local group, which can be Update and Restrict, represented by U and R: 
    - Update. This action must be used to keep the current group membership intact and add or remove members of the specific group.
    - Restrict. This action must be used to replace current membership with the newly specified groups. This action provides the same functionality as the [RestrictedGroups/ConfigureGroupMembership](./policy-csp-restrictedgroups.md#restrictedgroups-configuregroupmembership) policy setting.
- `<add member>`: Specifies the SID or name of the member to configure.
- `<remove member>`: Specifies the SID or name of the member to remove from the specified group.

See [Use custom settings for Windows 10 devices in Intune](https://docs.microsoft.com/mem/intune/configuration/custom-settings-windows-10) for information on how to create custom profiles.

> [!IMPORTANT]
> - `<add member>` and `<remove member>` can use an Azure AD SID or the user's name. For adding or removing Azure AD groups using this policy, you must use the group's SID. Azure AD group SIDs can be obtained using [Graph](https://docs.microsoft.com/graph/api/resources/group?view=graph-rest-1.0#json-representation) API for Groups. The SID is present in the `securityIdentifier` attribute. 
> - When specifying a SID in the `<add member>` or `<remove member>`, member SIDs are added without attempting to resolve them. Therefore, be very careful when specifying a SID to ensure it is correct.
> - Remove member is not valid for the R (Restrict) action and will be ignored if present.
> - The list in the XML is processed in the given order except for the R actions, which get processed last to ensure they win. It also means that if a group is present multiple times with different add/remove values, all of them will be processed in the order of presence.

<!--/Description-->
<!--SupportedValues-->
<!--/SupportedValues-->
<!--Example-->

**Examples**

Example: Update action for adding and removing group members:

```xml
<GroupConfiguration> 
    <accessgroup desc = "Backup Operators"> 
        <group action = "U" /> 
        <add member = "S-1-5-544"/> 
        <remove member = "Guest"/> 
    </accessgroup> 
</GroupConfiguration>
```

Example: Restrict action for replacing the group membership:

```xml
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

## FAQs

### What happens if I accidentally remove the built-in Administrator SID from the Administrators group?

Removing the built-in Administrator account from the built-in Administrators group is blocked at SAM/OS level for security reasons. Attempting to do so will result in failure with the following error: 
 
| Error Code  | Symbolic Name | Error Description | Header |
|----------|----------|----------|----------|
|  0x55b (Hex)  <br>  1371 (Dec)  |ERROR_SPECIAL_ACCOUNT|Cannot perform this operation on built-in accounts.|  winerror.h  |

When configuring the built-in Administrators group with the R (Restrict) action, specify the built-in Administrator account SID/Name in `<add member>` to avoid this error.

### Can I add a member that already exists?

Yes, you can add a member that is already a member of a group.

### Can I remove a member if it isn't a member of the group?

Yes, you can remove a member even if it isn't a member of the group.

### How can I add a domain group as a member to a local group?

To add a domain group as a member to a local group, specify the domain group in `<add member>` of the local group.

### Can I apply more than one LocalUserAndGroups policy/XML to the same device?

No, this is not allowed. Attempting to do so will result in a conflict in Intune.

### What happens if I specify a group name that doesn't exist?

Invalid group names or SIDs will be skipped. Valid parts of the policy will apply, and error will be returned at the end of the processing. This behavior aligns with the on-prem AD GPP (Group Policy Preferences) LocalUsersAndGroups policy. Similarly, invalid member names will be skipped, and error will be returned at the end to notify that not all settings were applied successfully. 

### What happens if I specify R and U in the same XML?

If you specify both R and U in the same XML, the R (Restrict) action takes precedence over U (Update). Therefore, if a group appears twice in the XML, once with U and again with R, the R action wins.

### How do I check the result of a policy that is applied on the client device?

After a policy is applied on the client device, you can investigate the event log to review the result: 

1. Open Event Viewer (**eventvwr.exe**).
2. Navigate to **Applications and Services Logs** > **Microsoft** > **Windows** > **DeviceManagement-Enterprise-
Diagnostics-Provider** > **Admin**.
3. Search for the `LocalUsersAndGroups` string to review the relevant details.

### How can I troubleshoot Name/SID lookup APIs?

To troubleshoot Name/SID lookup APIs:

1. Enable **lsp.log** on the client device by running the following commands:

    ```cmd
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" -Name LspDbgInfoLevel -Value 0x800 -Type dword -Force

    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" -Name LspDbgTraceOptions -Value 0x1 -Type dword -Force
    ```

    The **lsp.log** file (**C:\windows\debug\lsp.log**) will be displayed. This log file tracks the SID-Name resolution.

2. Turn the logging off by running the following command:

    ```cmd
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" -Name LspDbgInfoLevel -Value 0x0 -Type dword -Force
    ```


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
