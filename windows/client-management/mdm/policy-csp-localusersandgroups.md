---
title: Policy CSP - LocalUsersAndGroups
description: Policy CSP - LocalUsersAndGroups
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 10/14/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - LocalUsersAndGroups

> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

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
Available in Windows 10, version 20H2. This policy setting allows IT admins to add, remove, or replace members of local groups on a managed device.

> [!NOTE]
> The [RestrictedGroups/ConfigureGroupMembership](./policy-csp-restrictedgroups.md#restrictedgroups-configuregroupmembership) policy setting also allows you to configure members (users or AAD groups) to a Windows 10 local group. However, it allows only for a full replace of the existing groups with the new members and does not allow selective add or remove.
>
> Starting from Windows 10, version 20H2, it is recommended to use the LocalUsersandGroups policy instead of the RestrictedGroups policy. Applying both the policies to the same device is unsupported and may yield unpredictable results. 

Here is an example of the policy definition XML for group configuration:

```xml
<GroupConfiguration>
    <accessgroup desc = "">
        <group action = ""/> 
            <add member = ""/>
            <remove member = ""/>
    </accessgroup>
</GroupConfiguration>
```

where:

- `<accessgroup desc>`: Specifies the name or SID of the local group to configure. If you specify a SID, the [LookupAccountSid](/windows/win32/api/winbase/nf-winbase-lookupaccountsida) API is used to translate the SID to a valid group name. If you specify a name, the [LookupAccountName](/windows/win32/api/winbase/nf-winbase-lookupaccountnamea) API is used to lookup the group and validate the name. If name/SID lookup fails, the group is skipped and the next group in the XML file is processed. If there are multiple errors, the last error is returned at the end of the policy processing. 
- `<group action>`: Specifies the action to take on the local group, which can be Update and Restrict, represented by U and R: 
    - Update. This action must be used to keep the current group membership intact and add or remove members of the specific group.
    - Restrict. This action must be used to replace current membership with the newly specified groups. This action provides the same functionality as the [RestrictedGroups/ConfigureGroupMembership](./policy-csp-restrictedgroups.md#restrictedgroups-configuregroupmembership) policy setting.
- `<add member>`: Specifies the SID or name of the member to configure.
- `<remove member>`: Specifies the SID or name of the member to remove from the specified group.

    > [!NOTE]
    > When specifying member names of the user accounts, you must use following format – AzureAD\userUPN. For example, "AzureAD\user1@contoso.com" or "AzureAD\user2@contoso.co.uk". 
For adding Azure AD groups, you need to specify the Azure AD Group SID. Azure AD group names are not supported with this policy.
for more information, see [LookupAccountNameA function](/windows/win32/api/winbase/nf-winbase-lookupaccountnamea).  

See [Use custom settings for Windows 10 devices in Intune](/mem/intune/configuration/custom-settings-windows-10) for information on how to create custom profiles.

> [!IMPORTANT]
> - `<add member>` and `<remove member>` can use an Azure AD SID or the user's name. For adding or removing Azure AD groups using this policy, you must use the group's SID. Azure AD group SIDs can be obtained using [Graph](/graph/api/resources/group?view=graph-rest-1.0&preserve-view=true#json-representation) API for Groups. The SID is present in the `securityIdentifier` attribute. 
> - When specifying a SID in the `<add member>` or `<remove member>`, member SIDs are added without attempting to resolve them. Therefore, be very careful when specifying a SID to ensure it is correct.
> - `<remove member>` is not valid for the R (Restrict) action and will be ignored if present.
> - The list in the XML is processed in the given order except for the R actions, which get processed last to ensure they win. It also means that if a group is present multiple times with different add/remove values, all of them will be processed in the order they are present.

<!--/Description-->
<!--SupportedValues-->
<!--/SupportedValues-->
<!--Example-->

**Examples**

Example 1: AAD focused.

The following example updates the built-in administrators group with AAD account "bob@contoso.com" and an Azure AD group with the SID **S-1-12-1-111111111-22222222222-3333333333-4444444444** on an AAD-joined machine. 

```xml
<GroupConfiguration>
    <accessgroup desc = "Administrators">
        <group action = "U" />
        <add member = "AzureAD\bob@contoso.com"/>
        <add member = "S-1-12-1-111111111-22222222222-3333333333-4444444444"/>
    </accessgroup>
</GroupConfiguration>
```

Example 2: Replace / Restrict the built-in administrators group with an AAD user account.

> [!NOTE]
> When using ‘R’ replace option to configure the built-in ‘Administrators’ group, it is required to always specify the administrator as a member + any other custom members. This is because the built-in administrator must always be a member of the administrators group.

Example:
```xml
<GroupConfiguration>
    <accessgroup desc = "Administrators">
        <group action = "R" />
        <add member = "AzureAD\bob@contoso.com"/>
        <add member = "Administrator"/>
    </accessgroup>
</GroupConfiguration>
```
Example 3: Update action for adding and removing group members on a hybrid joined machine.

The following example shows how you can update a local group (**Administrators**)—add an AD domain group as a member using its name (**Contoso\ITAdmins**), add a AAD group by its SID (**S-1-12-1-111111111-22222222222-3333333333-4444444444**), and remove a local account (**Guest**) if it exists.

```xml
<GroupConfiguration> 
    <accessgroup desc = "Administrators"> 
        <group action = "U" /> 
        <add member = "Contoso\ITAdmins"/>
        <add member = "S-1-12-1-111111111-22222222222-3333333333-4444444444"/>
        <remove member = "Guest"/> 
    </accessgroup> 
</GroupConfiguration>
```


<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

> [!NOTE]
> 
> When AAD group SID’s are added to local groups, during AAD account logon privileges are evaluated only for the following well-known groups on a Windows 10 device:
> 
> - Administrators
> - Users
> - Guests
> - Power Users
> - Remote Desktop Users
> - Remote Management Users

## FAQs

This section provides answers to some common questions you might have about the LocalUsersAndGroups policy CSP. 

### What happens if I accidentally remove the built-in Administrator SID from the Administrators group?

Removing the built-in Administrator account from the built-in Administrators group is blocked at SAM/OS level for security reasons. Attempting to do so will result in failure with the following error: 
 
| Error Code  | Symbolic Name | Error Description | Header |
|----------|----------|----------|----------|
|  0x55b (Hex)  <br>  1371 (Dec)  |ERROR_SPECIAL_ACCOUNT|Cannot perform this operation on built-in accounts.|  winerror.h  |

When configuring the built-in Administrators group with the R (Restrict) action, specify the built-in Administrator account SID/Name in `<add member>` to avoid this error.

### Can I add a member that already exists?

Yes, you can add a member that is already a member of a group. This will result in no changes to the group and no error.

### Can I remove a member if it isn't a member of the group?

Yes, you can remove a member even if it isn't a member of the group. This will result in no changes to the group and no error.

### How can I add a domain group as a member to a local group?

To add a domain group as a member to a local group, specify the domain group in `<add member>` of the local group. Use fully qualified account names (for example, domain_name\group_name) instead of isolated names (for example, group_name) for the best results. See [LookupAccountNameA function](/windows/win32/api/winbase/nf-winbase-lookupaccountnamea#remarks) for more information. 

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

    ```powershell
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" -Name LspDbgInfoLevel -Value 0x800 -Type dword -Force

    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" -Name LspDbgTraceOptions -Value 0x1 -Type dword -Force
    ```

    The **lsp.log** file (**C:\windows\debug\lsp.log**) will be displayed. This log file tracks the SID-Name resolution.

2. Turn the logging off by running the following command:

    ```powershell
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" -Name LspDbgInfoLevel -Value 0x0 -Type dword -Force
    
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" -Name LspDbgTraceOptions -Value 0x0 -Type dword -Force
    ```

```xml
<xs:schema xmlns:xs="https://www.w3.org/2001/XMLSchema" version="1.0">
                          <xs:simpleType name="name">
                            <xs:restriction base="xs:string">
                              <xs:maxLength value="255" />
                            </xs:restriction>
                          </xs:simpleType>
                          <xs:element name="accessgroup">
                            <xs:complexType>
                                <xs:sequence>
                                    <xs:element name="group" minOccurs="1" maxOccurs="1">
                                      <xs:annotation>
                                        <xs:documentation>Group Configuration Action</xs:documentation>
                                      </xs:annotation>
                                      <xs:complexType>
                                        <xs:attribute name="action" type="name" use="required"/>
                                      </xs:complexType>
                                    </xs:element>
                                    <xs:element name="add" minOccurs="0" maxOccurs="unbounded">
                                      <xs:annotation>
                                        <xs:documentation>Group Member to Add</xs:documentation>
                                      </xs:annotation>
                                      <xs:complexType>
                                        <xs:attribute name="member" type="name" use="required"/>
                                      </xs:complexType>
                                    </xs:element>
                                    <xs:element name="remove" minOccurs="0" maxOccurs="unbounded">
                                      <xs:annotation>
                                        <xs:documentation>Group Member to Remove</xs:documentation>
                                      </xs:annotation>
                                      <xs:complexType>
                                        <xs:attribute name="member" type="name" use="required"/>
                                      </xs:complexType>
                                    </xs:element>
                                    <xs:element name="property" minOccurs="0" maxOccurs="unbounded">
                                      <xs:annotation>
                                        <xs:documentation>Group property to configure</xs:documentation>
                                      </xs:annotation>
                                      <xs:complexType>
                                        <xs:attribute name="desc" type="name" use="required"/>
                                        <xs:attribute name="value" type="name" use="required"/>
                                      </xs:complexType>
                                    </xs:element>
                                  </xs:sequence>
                              <xs:attribute name="desc" type="name" use="required"/>
                            </xs:complexType>
                          </xs:element>
                          <xs:element name="GroupConfiguration">
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element name="accessgroup" minOccurs="0" maxOccurs="unbounded">
                                  <xs:annotation>
                              <xs:documentation>Local Group Configuration</xs:documentation>
                            </xs:annotation>
                                </xs:element>
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                      </xs:schema>
```

Footnotes:

Available in Windows 10, version 20H2

<!--/Policies-->
