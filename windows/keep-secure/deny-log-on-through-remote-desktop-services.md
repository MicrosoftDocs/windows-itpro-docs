---
title: Deny log on through Remote Desktop Services (Windows 10)
description: Describes the best practices location values policy management and security considerations for the Deny log on through Remote Desktop Services security policy setting.
MSHAttr: PreferredLib /library
ms.assetid: 84bbb807-287c-4acc-a094-cf0ffdcbca67
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Deny log on through Remote Desktop Services


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy-management)
-   [Security considerations](#security-considerations)
-   [Related topics](#related-topics)

Describes the best practices, location, values, policy management, and security considerations for the **Deny log on through Remote Desktop Services** security policy setting.

## Reference


This policy setting determines which users are prevented from logging on to the device through a Remote Desktop connection through Remote Desktop Services. It is possible for a user to establish a Remote Desktop connection to a particular server, but not be able to log on to the console of that server.

Constant: SeDenyRemoteInteractiveLogonRight

### Possible values

-   User-defined list of accounts

-   Not defined

### Best practices

-   To control who can open a Remote Desktop connection and log on to the device, add the user account to or remove user accounts from the Remote Desktop Users group.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Server type or GPO</th>
<th align="left">Default value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Default Domain Policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Default Domain Controller Policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Stand-Alone Server Default Settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain Controller Effective Default Settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
</tbody>
</table>

 

## Policy management


This section describes features, tools, and guidance to help you manage this policy.

A restart of the computer is not required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

The **Remote System** property controls settings for Remote Desktop Services (**Allow or prevent remote connections to the computer**) and for Remote Assistance (**Allow Remote Assistance connections to this computer**).

### Group Policy

This policy setting supersedes the [Allow log on through Remote Desktop Services](allow-log-on-through-remote-desktop-services.md) policy setting if a user account is subject to both policies.

Group Policy settings are applied in the following order. They overwrite settings on the local device at the next Group Policy update.

1.  Local policy settings

2.  Site policy settings

3.  Domain policy settings

4.  Organizational unit policy settings

When a local setting is greyed out, it indicates that a GPO currently controls that setting.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Any account with the right to log on through Remote Desktop Services could be used to log on to the remote console of the device. If this user right is not restricted to legitimate users who need to log on to the console of the computer, malicious users might download and run software that elevates their user rights.

### Countermeasure

Assign the **Deny log on through Remote Desktop Services** user right to the built-in local guest account and all service accounts. If you have installed optional components, such as ASP.NET, you may want to assign this user right to additional accounts that are required by those components.

### Potential impact

If you assign the **Deny log on through Remote Desktop Services** user right to other groups, you could limit the abilities of users who are assigned to specific administrative roles in your environment. Accounts that have this user right cannot connect to the device through Remote Desktop Services or Remote Assistance. You should confirm that delegated tasks are not negatively affected.

## Related topics


[User Rights Assignment](user-rights-assignment.md)

 

 





