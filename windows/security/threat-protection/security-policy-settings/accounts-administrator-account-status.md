---
title: Accounts Administrator account status (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Accounts Administrator account status security policy setting.
ms.assetid: 71a3bd48-1014-49e0-a936-bfe9433af23e
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 08/01/2017
ms.technology: itpro-security
---

# Accounts: Administrator account status

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Accounts: Administrator account status** security policy setting.

## Reference

This security setting determines whether the local Administrator account is enabled or disabled.

The following conditions prevent disabling the Administrator account, even if this security setting is disabled.

1.  The Administrator account is currently in use
2.  The Administrators group has no other members
3.  All other members of the Administrators group are:
    1.  Disabled
    2.  Listed in the [Deny log on locally](deny-log-on-locally.md) User Rights Assignment

If the Administrator account is disabled, you can't enable it if the password doesn't meet requirements. In this case, another member of the Administrators group must reset the password.

### Possible values
-   Enabled
-   Disabled
-   Not defined

By default, this setting is **Not defined** on domain controllers and **Enabled** on stand-alone servers.

### Best practices

-   Disabling the administrator account can become a maintenance issue under certain circumstances. For example, in a domain environment, if the secure channel that constitutes your connection fails for any reason, and there's no other local administrator account, you must restart the computer in safe mode to fix the problem that broke your connection status.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined |
| Default Domain Controller Policy |Not defined |
| Stand-Alone Server Default Settings | Enabled |
| DC Effective Default Settings | Enabled |
| Member Server Effective Default Settings | Enabled |
| Client Computer Effective Default Settings | Disabled |

 
## Policy management

Disabling the administrator account can become a maintenance issue under certain circumstances. Reasons that an organization might consider disabling the built-in administrator account include:

-   For some organizations, periodically changing the passwords for local accounts can be a daunting management challenge.
-   By default, the administrator account can't be locked—no matter how many failed attempts to sign in a user accrue. This open state of the account makes it a prime target for brute-force, password-guessing attacks.
-   This account has a well-known security identifier (SID). Some non-Microsoft tools allow you to authenticate over the network by specifying the SID rather than the account name. This authentication approach means that even if you rename the administrator account, a malicious user could start a brute-force attack by using the SID.

### Restart requirement

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through Group Policy.

### Safe mode considerations

When you start a device in safe mode, the disabled administrator account is enabled only if the computer is non-domain joined and there are no other active local administrator accounts. In this case, you can access the computer by using safe mode with the current administrative credentials. If the computer is joined to a domain, the disabled administrator account isn't enabled.

### How to access a disabled Administrator account

You can use the following methods to access a disabled Administrator account:
-   For non-domain joined computers: when all the local administrator accounts are disabled, start the device in safe mode (locally or over a network), and sign in by using the credentials for the default local administrator account on that computer. 
-   For domain-joined computers: remotely run the command **net user administrator /active: yes** by using psexec to enable the default local administrator account.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

The built-in administrator account can't be locked out no matter how many failed logons it accrues, which makes it a prime target for brute-force attacks that attempt to guess passwords. Also, this account has a well-known security identifier (SID), and there are non-Microsoft tools that allow authentication by using the SID rather than the account name. Therefore, even if you rename the Administrator account, an attacker could launch a brute-force attack by using the SID to sign in. All other accounts that are members of the Administrator's group have the safeguard of locking out the account if the number of failed logons exceeds its configured maximum.

### Countermeasure

Disable the **Accounts: Administrator account status** setting so that the built-in Administrator account can't be used in a normal system startup.
If it's difficult to maintain a regular schedule for periodic password changes for local accounts, you can disable the built-in administrator account instead of relying on regular password changes to protect it from attack.

### Potential impact

Maintenance issues can arise under certain circumstances if you disable the administrator account. For example, if the secure channel between a member computer and the domain controller fails in a domain environment for any reason and there's no other local administrator account, you must restart in safe mode to fix the problem that caused the secure channel to fail.
If the current administrator password doesn't meet the password requirements, you can't enable the administrator account after it's disabled. If this situation occurs, another member of the administrators' group must set the password on the administrator account.

## Related topics

[Security Options](security-options.md)
