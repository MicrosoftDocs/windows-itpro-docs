---
title: Change the time zone (Windows 10)
description: Describes the best practices location values policy management and security considerations for the Change the time zone security policy setting.
MSHAttr: PreferredLib /library
ms.assetid: 3b1afae4-68bb-472f-a43e-49e300d73e50
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Change the time zone


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy-management)
-   [Security considerations](#security-considerations)
-   [Related topics](#related-topics)

Describes the best practices, location, values, policy management, and security considerations for the **Change the time zone** security policy setting.

## Reference


This policy setting determines which users can adjust the time zone that is used by the device for displaying the local time, which includes the device's system time plus the time zone offset.

Constant: SeTimeZonePrivilege

### Possible values

-   User-defined list of accounts

-   Not Defined

### Best practices

None.

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
<td align="left"><p>Not Defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Default Domain Controller Policy</p></td>
<td align="left"><p>Administrators</p>
<p>Users</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Stand-Alone Server Default Settings</p></td>
<td align="left"><p>Administrators</p>
<p>Users</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain Controller Effective Default Settings</p></td>
<td align="left"><p>Administrators</p>
<p>Users</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Administrators</p>
<p>Users</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>Administrators</p>
<p>Users</p></td>
</tr>
</tbody>
</table>

 

## Policy management


A restart of the device is not required for this policy setting to be effective.

Any change to the account for this user right assignment becomes effective the next time the account logs on.

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

Changing the time zone represents little vulnerability because the system time is not affected. This setting merely enables users to display their preferred time zone while being synchronized with domain controllers in different time zones.

### Countermeasure

Countermeasures are not required because system time is not affected by this setting.

### Potential impact

None.

## Related topics


[User Rights Assignment](user-rights-assignment.md)

 

 





