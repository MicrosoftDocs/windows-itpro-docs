---
title: Account Lockout Policy (Windows 10)
description: Describes the Account Lockout Policy settings and links to information about each policy setting.
ms.assetid: eb968c28-17c5-405f-b413-50728cb7b724
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Account Lockout Policy
**Applies to**
-   Windows 10
Describes the Account Lockout Policy settings and links to information about each policy setting.
Someone who attempts to use more than a few unsuccessful passwords while trying to log on to your system might be a malicious user who is attempting to determine an account password by trial and error. Windows domain controllers keep track of logon attempts, and domain controllers can be configured to respond to this type of potential attack by disabling the account for a preset period of time. Account Lockout Policy settings control the threshold for this response and the actions to be taken after the threshold is reached. The Account Lockout Policy settings can be configured in the following location in the Group Policy Management Console: **Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Account Lockout Policy**.
The following topics provide a discussion of each policy setting's implementation and best practices considerations, policy location, default values for the server type or Group Policy Object (GPO), relevant differences in operating system versions, and security considerations (including the possible vulnerabilities of each policy setting), countermeasures that you can implement, and the potential impact of implementing the countermeasures.
## In this section
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Topic</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Account lockout duration](account-lockout-duration.md)</p></td>
<td align="left"><p>Describes the best practices, location, values, and security considerations for the <strong>Account lockout duration</strong> security policy setting.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Account lockout threshold](account-lockout-threshold.md)</p></td>
<td align="left"><p>Describes the best practices, location, values, and security considerations for the <strong>Account lockout threshold</strong> security policy setting.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Reset account lockout counter after](reset-account-lockout-counter-after.md)</p></td>
<td align="left"><p>Describes the best practices, location, values, and security considerations for the <strong>Reset account lockout counter after</strong> security policy setting.</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Configure security policy settings](how-to-configure-security-policy-settings.md)
 
 
