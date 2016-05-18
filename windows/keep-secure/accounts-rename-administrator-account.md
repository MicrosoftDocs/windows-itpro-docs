---
title: Accounts Rename administrator account (Windows 10)
description: This security policy reference topic for the IT professional describes the best practices, location, values, and security considerations for this policy setting.
ms.assetid: d21308eb-7c60-4e48-8747-62b8109844f9
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Accounts: Rename administrator account
**Applies to**
-   Windows 10
This security policy reference topic for the IT professional describes the best practices, location, values, and security considerations for this policy setting.
## Reference
The **Accounts: Rename administrator account** policy setting determines whether a different account name is associated with the security identifier (SID) for the administrator account.
Because the administrator account exists on all Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), renaming the account makes it slightly more difficult for attackers to guess this user name and password combination.
Rename the Administrator account by specifying a value for the **Accounts: Rename administrator account** policy setting.
### Possible values
-   User-defined text
-   Not defined
### Best practices
-   Be sure to inform users who are authorized to use this account of the new account name.
### Location
Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options
### Default values
The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.
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
<td align="left"><p>Administrator</p></td>
</tr>
<tr class="even">
<td align="left"><p>DC Effective Default Settings</p></td>
<td align="left"><p>Administrator</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Administrator</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>Administrator</p></td>
</tr>
</tbody>
</table>
 
## Policy management
This section describes features and tools that are available to help you manage this policy.
### Restart requirement
None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.
### Policy conflict considerations
None.
### Group Policy
This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy is not contained in a distributed GPO, this policy can be configured on the local device by using the Local Security Policy snap-in.
## Security considerations
This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.
### Vulnerability
The Administrator account exists on all versions Windows 10 for desktop editions. If you rename this account, it is slightly more difficult for unauthorized persons to guess this privileged user name and password combination. Beginning with Windows Vista, the person who installs the operating system specifies an account that is the first member of the Administrator group and has full rights to configure the computer so this countermeasure is applied by default on new installations. If a device is upgraded from a previous version of Windows, the account with the name administrator is retained with all the rights and privileges that were defined for the account in the previous installation.
The built-in administrator account cannot be locked out, regardless of how many times an attacker might use a bad password. This capability makes the administrator account a popular target for brute-force attacks that attempt to guess passwords. The value of this countermeasure is lessened because this account has a well-known SID, and there are non-Microsoft tools that allow authentication by using the SID rather than the account name. Therefore, even if you rename the Administrator account, an attacker could launch a brute-force attack by using the SID to log on.
### Countermeasure
Specify a new name in the **Accounts: Rename administrator account** setting to rename the Administrator account.
### Potential impact
You must provide users who are authorized to use this account with the new account name. (The guidance for this setting assumes that the Administrator account was not disabled.)
## Related topics
[Security Options](security-options.md)
 
 
