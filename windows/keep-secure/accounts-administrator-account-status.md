---
title: Accounts Administrator account status (Windows 10)
description: Describes the best practices location values and security considerations for the Accounts Administrator account status security policy setting.
MSHAttr: PreferredLib /library
ms.assetid: 71a3bd48-1014-49e0-a936-bfe9433af23e
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Accounts: Administrator account status


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy-management)
-   [Security considerations](#security-considerations)
-   [Related topics](#related-topics)

Describes the best practices, location, values, and security considerations for the **Accounts: Administrator account status** security policy setting.

## Reference


This security setting determines whether the local administrator account is enabled or disabled.

If you try to enable the administrator account after it has been disabled, and if the current administrator password does not meet the password requirements, you cannot enable the account. In this case, an alternative member of the Administrators group must reset the password on the administrator account.

If you disable this policy setting, and one of the following conditions exists on the computer, the administrator account is not disabled.

1.  No other local administrator account exists

2.  The administrator account is currently in use

3.  All other local administrator accounts are:

    1.  Disabled

    2.  Listed in the [Deny log on locally](deny-log-on-locally.md) User Rights Assignment

If the current administrator password does not meet the password requirements, you will not be able to enable the administrator account again after it has been disabled. In this case, another member of the Administrators group must set the password on the administrator account.

### Possible values

-   Enabled

-   Disabled

-   Not defined

By default, this setting is **Not defined** on domain controllers and **Enabled** on stand-alone servers.

### Best practices

-   Disabling the administrator account can become a maintenance issue under certain circumstances. For example, in a domain environment, if the secure channel that constitutes your connection fails for any reason, and there is no other local administrator account, you must restart the computer in safe mode to fix the problem that broke your connection status.

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
<td align="left"><p>Enabled</p></td>
</tr>
<tr class="even">
<td align="left"><p>DC Effective Default Settings</p></td>
<td align="left"><p>Enabled</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Enabled</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>Disabled</p></td>
</tr>
</tbody>
</table>

 

## Policy management


Disabling the administrator account can become a maintenance issue under certain circumstances. Reasons that an organization might consider disabling the built-in administrator account include:

-   For some organizations, periodically changing the passwords for local accounts can be a daunting management challenge.

-   By default, the administrator account cannot be locked—no matter how many failed attempts to sign in a user accrues. This makes it a prime target for brute-force, password-guessing attacks.

-   This account has a well-known security identifier (SID). Some non-Microsoft tools allow you to authenticate over the network by specifying the SID rather than the account name. This means that even if you rename the administrator account, a malicious user could start a brute-force attack by using the SID.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Safe mode considerations

When you start a device in safe mode, the disabled administrator account is enabled only if the computer is non-domain joined and there are no other active local administrator accounts. If the computer is joined to a domain, the disabled administrator account is not enabled.

If the administrator account is disabled, you can still access the computer by using safe mode with the current administrative credentials. For example, if a failure occurs using a secure channel with a domain-joined computer, and there is no other local administrator account, you must restart the device in safe mode to fix the failure.

### How to access a disabled Administrator account

You can use the following methods to access a disabled Administrator account:

-   When there is only one local administrator account that is disabled, start the device in safe mode (locally or over a network), and sign in by using the credentials for the administrator account on that computer.

-   When there are local administrator accounts in addition to the built-in account, start the computer in safe mode (locally or over a network), and sign in by using the credentials for the administrator account on that device. An alternate method is to sign in to Windows by using another local Administrator account that was created.

-   When multiple domain-joined servers have a disabled local Administrator account that can be accessed in safe mode, you can remotely run psexec by using the following command: **net user administrator /active: no**.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

The built-in administrator account cannot be locked out no matter how many failed logons it accrues, which makes it a prime target for brute-force attacks that attempt to guess passwords. Also, this account has a well-known security identifier (SID), and there are non-Microsoft tools that allow authentication by using the SID rather than the account name. Therefore, even if you rename the Administrator account, an attacker could launch a brute-force attack by using the SID to log on. All other accounts that are members of the Administrator's group have the safeguard of locking out the account if the number of failed logons exceeds its configured maximum.

### Countermeasure

Disable the **Accounts: Administrator account status** setting so that the built-in Administrator account cannot be used in a normal system startup.

If it is very difficult to maintain a regular schedule for periodic password changes for local accounts, you can disable the built-in administrator account instead of relying on regular password changes to protect it from attack.

### Potential impact

Maintenance issues can arise under certain circumstances if you disable the administrator account. For example, if the secure channel between a member computer and the domain controller fails in a domain environment for any reason and there is no other local administrator account, you must restart in safe mode to fix the problem that caused the secure channel to fail.

If the current administrator password does not meet the password requirements, you cannot enable the administrator account after it is disabled. If this situation occurs, another member of the administrators group must set the password on the administrator account.

## Related topics


[Security Options](security-options.md)

 

 





