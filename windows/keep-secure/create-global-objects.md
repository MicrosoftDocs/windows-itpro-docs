---
title: Create global objects (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Create global objects security policy setting.
ms.assetid: 9cb6247b-44fc-4815-86f2-cb59b6f0221e
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Create global objects


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy-management)
-   [Security considerations](#security-considerations)
-   [Related topics](#related-topics)

Describes the best practices, location, values, policy management, and security considerations for the **Create global objects** security policy setting.

## Reference


This policy setting determines which users can create global objects that are available to all sessions. Users can still create objects that are specific to their own session if they do not have this user right.

A global object is an object that is created to be used by any number of processes or threads, even those not started within the user’s session. Remote Desktop Services uses global objects in its processes to facilitate connections and access.

Constant: SeCreateGlobalPrivilege

### Possible values

-   User-defined list of accounts

-   Default accounts listed below

### Best practices

-   Do not assign any user accounts this right.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default, members of the Administrators group have this right, as do Local Service and Network Service accounts on the supported versions of Windows. Service is included for backwards compatibility with earlier versions of Windows.

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

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
<td align="left"><p>Not Defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Default Domain Controller Policy</p></td>
<td align="left"><p>Administrators</p>
<p>Local Service</p>
<p>Network Service</p>
<p>Service</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Stand-Alone Server Default Settings</p></td>
<td align="left"><p>Administrators</p>
<p>Local Service</p>
<p>Network Service</p>
<p>Service</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain Controller Effective Default Settings</p></td>
<td align="left"><p>Administrators</p>
<p>Local Service</p>
<p>Network Service</p>
<p>Service</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Administrators</p>
<p>Local Service</p>
<p>Network Service</p>
<p>Service</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>Administrators</p>
<p>Local Service</p>
<p>Network Service</p>
<p>Service</p></td>
</tr>
</tbody>
</table>

 

## Policy management


A restart of the device is not required for this policy setting to take effect.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

### Group Policy

Settings are applied in the following order through a Group Policy Object (GPO), which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings

2.  Site policy settings

3.  Domain policy settings

4.  OU policy settings

When a local setting is greyed out, it indicates that a GPO currently controls that setting.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

**Caution**  
A user account that is given this user right has complete control over the system, and it can lead to the system being compromised. We highly recommend that you do not assign this right to any user accounts.

 

Windows examines a user's access token to determine the level of the user's privileges. Access tokens are built when users log on to the local device or connect to a remote device over a network. When you revoke a privilege, the change is immediately recorded, but the change is not reflected in the user's access token until the next time the user logs on or connects. Users with the ability to create or modify tokens can change the level of access for any currently logged on account. They could escalate their privileges or create a denial-of-service (DoS) condition.

### Countermeasure

Do not assign the **Create a token object** user right to any users. Processes that require this user right should use the Local System account, which already includes it, instead of a separate user account with this user right assigned.

### Potential impact

None. Not Defined is the default domain policy configuration.

## Related topics


[User Rights Assignment](user-rights-assignment.md)

 

 





