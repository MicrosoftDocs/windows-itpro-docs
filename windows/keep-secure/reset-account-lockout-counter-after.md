---
title: Reset account lockout counter after (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Reset account lockout counter after security policy setting.
ms.assetid: d5ccf6dd-5ba7-44a9-8e0b-c478d8b1442c
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Reset account lockout counter after


**Applies to**

-   Windows 10

Describes the best practices, location, values, and security considerations for the **Reset account lockout counter after** security policy setting.

## Reference


The **Reset account lockout counter after** policy setting determines the number of minutes that must elapse from the time a user fails to log on before the failed logon attempt counter is reset to 0. If [Account lockout threshold](account-lockout-threshold.md) is set to a number greater than zero, this reset time must be less than or equal to the value of [Account lockout duration](account-lockout-duration.md).

A disadvantage to setting this too high is that users lock themselves out for an inconveniently long period if they exceed the account lockout threshold through logon errors. Users may make excessive Help Desk calls.

### Possible values

-   A user-defined number of minutes from 1 through 99,999

-   Not defined

### Best practices

-   You need to determine the threat level for your organization and balance that against the cost of your Help Desk support for password resets. Each organization will have specific requirements.

### Location

**Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Account Lockout Policy**

### Default values

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Server type or Group Policy Object (GPO)</th>
<th align="left">Default value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Default domain policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Default domain controller policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Stand-alone server default settings</p></td>
<td align="left"><p>Not applicable</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain controller effective default settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member server effective default settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client computer effective default settings</p></td>
<td align="left"><p>Not applicable</p></td>
</tr>
</tbody>
</table>

 

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Users can accidentally lock themselves out of their accounts if they mistype their password multiple times.

### Countermeasure

Configure the **Reset account lockout counter after** policy setting to 30.

### Potential impact

If you do not configure this policy setting or if the value is configured to an interval that is too long, an attacker could attempt to log on to each user's account numerous times and lock out their accounts, a denial-of-service (DoS) attack might succeed, or administrators might have to manually unlock all locked-out accounts. If you configure this policy setting to a reasonable value, users can perform new attempts to log on after a failed logon within a reasonable time, without making brute force attacks feasible at high speeds. Be sure that you notify users of the values that are used for this policy setting so that they wait for the lockout timer to expire before they call the Help Desk.

## Related topics


[Account Lockout Policy](account-lockout-policy.md)

 

 





