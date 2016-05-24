---
title: Maximum lifetime for user ticket renewal (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Maximum lifetime for user ticket renewal security policy setting.
ms.assetid: f88cd819-3dd1-4e38-b560-13fe6881b609
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Maximum lifetime for user ticket renewal
**Applies to**
-   Windows 10
Describes the best practices, location, values, policy management, and security considerations for the **Maximum lifetime for user ticket renewal** security policy setting.
## Reference
The **Maximum lifetime for user ticket renewal** policy setting determines the period of time (in days) during which a user’s ticket-granting ticket can be renewed.
The possible values for this Group Policy setting are:
-   A user-defined number of days from 0 through 99,999
-   Not defined
### Best practices
-   If the value for this policy setting is too high, users may be able to renew very old user ticket-granting tickets. If the value is 0, ticket-granting tickets never expire.
    It is advisable to set **Maximum lifetime for user ticket renewal** to **7** days.
### Location
Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Kerberos Policy
### Default values
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
<td align="left"><p>7 days</p></td>
</tr>
<tr class="even">
<td align="left"><p>Default Domain Controller Policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Stand-Alone Server Default Settings</p></td>
<td align="left"><p>Not applicable</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain Controller Effective Default Settings</p></td>
<td align="left"><p>7 days</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Not applicable</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>Not applicable</p></td>
</tr>
</tbody>
</table>
 
### Policy management
This section describes features, tools, and guidance to help you manage this policy.
A restart of the device is not required for this policy setting to be effective.
This policy setting is configured on the domain controller.
### Group Policy
Client devices will get the new setting during the next scheduled and successful Group Policy refresh. But for domain controllers to assign these new settings immediately, a gpupdate.exe /force is required. On the local device, the Security Configuration Engine will refresh this setting in about five minutes.
Settings are applied in the following order through a Group Policy Object (GPO), which will overwrite settings on the local computer at the next Group Policy update:
1.  Local policy settings
2.  Site policy settings
3.  Domain policy settings
4.  OU policy settings
When a local setting is greyed out, it indicates that a GPO currently controls that setting.
## Security considerations
This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.
### Vulnerability
If the value for the **Maximum lifetime for user ticket renewal** setting is too high, users might be able to renew very old user tickets.
### Countermeasure
Configure the **Maximum lifetime for user ticket renewal** setting to 7 days.
### Potential impact
None. This is the default configuration.
## Related topics
[Kerberos Policy](kerberos-policy.md)
 
 
