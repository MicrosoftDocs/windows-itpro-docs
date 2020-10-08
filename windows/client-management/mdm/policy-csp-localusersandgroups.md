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
The RestrictedGroups/ConfigureGroupMembership policy setting allows administrators to configure members (users or AAD groups) to a Windows 10 local group. However, RG policy has a limitation that it only allows for a full replace of the existing groups with the new members and does not allow selective add/remove. This limitation causes scalability issues for Intune to implement the policy in its current format. In addition, it restricts customers from enabling scenarios and attain parity with on-premises group management. As a result, this policy limitation delays the GA of the local admin rights scenario for AAD Joined devices.  

On-premises AD offers more flexibility in managing local groups using the Local Users and Groups (LUG) GPP. RG GPO is not meant to provide granularity in selectively removing existing members or adding new ones. Enabling capabilities in LUG GPP into RG MDM policy would create confusion for customers who’re accustomed to the on-premises polices and preferences, and how they’re used. So, it’s beneficial in the long-term to build a new MDM policy that provides customers granularity for managing local users and groups from the cloud, instead of overriding the RG policy. In addition, this new policy allows for further improvements without altering the meaning of the RG policy. 

This policy setting allows administrators to manage local groups on a device.


```xml
<![CDATA[<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">
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
                      </xs:schema]]>
```
<!--/Description-->
<!--SupportedValues-->
This policy setting has two top level actions:

- Update represented by U
- Replace represented R
We can have 2 verbs - Add Member, Remove Member for specific local group - to modify local group setting

Add member and Remove member can use an Azure AD SID or the user's name. For adding or removing Azure AD groups using this policy, you must use the group's SID. Azure AD group SIDs can be obtained using Graph API for Groups. The SID is present in the attribute "securityIdentifier". 
<!--/SupportedValues-->
<!--Example-->

Example to add and remove group members

```xml
<?xml version = "1.0" encoding = "utf-8"?> 
<GroupConfiguration> 
    <accessgroup desc = "Backup Operators"> 
        <group action = "U" /> 
        <add member = "S-1-5-544"/> 
        <remove member = "Guest"/> 
    </accessgroup> 
</GroupConfiguration>

Example to replace group membership

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
Action Consequences

U: Update Group: Add/Remove specified members.

o Add Member = contains name or SID

o Remove Member = contains name or SID (remove wins if a sid is specified in both due to order of processing

o MemberOf / group nesting can be achieved by specifying the group in Add Member of another group

§ ‘R’ : Replace group membership provides the same functionality as Restricted Groups.

§ Replace operation takes precedence over Update. Thus, if a group appears twice in the XML, once with ‘U’ and once with ‘R’ , Replace wins. This is behaviour in parity with on prem.

§ Remove member is not valid for ‘R’ Replace operation and will be ignored if present.

§ The list given in the XML is processed in the order given with the exception of ‘R’ actions which get processed last to ensure they win. That also means that if a group is present multiple times with different add/remove values, all of them will processed in the order of presence.
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

<!--/Policies-->
