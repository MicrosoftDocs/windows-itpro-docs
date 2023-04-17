---
title: Network access Do not allow anonymous enumeration of SAM accounts (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Network access Do not allow anonymous enumeration of SAM accounts security policy setting.
ms.assetid: 6ee25b33-ad43-4097-b031-7be680f64c7c
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
ms.topic: conceptual
ms.date: 04/19/2017
ms.technology: itpro-security
---

# Network access: Do not allow anonymous enumeration of SAM accounts

**Applies to**
-   Windows 11
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Network access: Do not allow anonymous enumeration of SAM accounts** security policy setting.

## Reference

This policy setting determines which other permissions will be assigned for anonymous connections to the device. Windows allows anonymous users to perform certain activities, such as enumerating the names of domain accounts and network shares. This permission is convenient, for example, when an administrator wants to give access to users in a trusted domain that doesn't maintain a reciprocal trust.

This policy setting has no impact on domain controllers.

Misuse of this policy setting is a common error that can cause data loss or problems with data access or security.

### Possible values

-   Enabled

-   Disabled

    No other permissions can be assigned by the administrator for anonymous connections to the device. Anonymous connections will rely on default permissions.

-   Not defined

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Enabled|
| DC Effective Default Settings | Enabled| 
| Member Server Effective Default Settings| Enabled| 
| Client Computer Effective Default Settings | Enabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through Group Policy.

### Policy conflicts

Even with this policy setting enabled, anonymous users will have access to resources with permissions that explicitly include the built-in group, ANONYMOUS LOGON (on systems earlier than Windows Server 2008 and Windows Vista).

### Group Policy

This policy has no impact on domain controllers.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

An unauthorized user could anonymously list account names and use the information to perform social engineering attacks or attempt to guess passwords. Social engineering attackers try to deceive users in some way to obtain passwords or some form of security information.

### Countermeasure

Enable the **Network access: Do not allow anonymous enumeration of SAM accounts** setting.

### Potential impact

It's impossible to grant access to users of another domain across a one-way trust because administrators in the trusting domain are unable to enumerate lists of accounts in the other domain. Users who access file and print servers anonymously are unable to list the shared network resources on those servers; the users must be authenticated before they can view the lists of shared folders and printers.

## Related topics

- [Security Options](security-options.md)
