---
title: Network access Allow anonymous SID/Name translation (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Network access Allow anonymous SID/Name translation security policy setting.
ms.assetid: 0144477f-22a6-4d06-b70a-9c9c2196e99e
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Network access: Allow anonymous SID/Name translation

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **Network access: Allow anonymous SID/Name translation** security policy setting.

## Reference

This policy setting enables or disables the ability of an anonymous user to request security identifier (SID) attributes for another user.

If this policy setting is enabled, a user might use the well-known Administrators SID to get the real name of the built-in Administrator account, even if the account has been renamed. That person might then use the account name to initiate a brute-force password-guessing attack.

Misuse of this policy setting is a common error that can cause data loss or problems with data access or security.

### Possible values

-   Enabled

    An anonymous user can request the SID attribute for another user. An anonymous user with knowledge of an administrator's SID could contact a computer that has this policy enabled and use the SID to get the administrator's name. This setting affects the SID-to-name translation as well as the name-to-SID translation.

-   Disabled

    Prevents an anonymous user from requesting the SID attribute for another user.

-   Not defined

### Best practices

-   Set this policy to Disabled. This is the default value on member computers; therefore, it will have no impact on them. The default value for domain controllers is Enabled.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Disabled| 
| DC Effective Default Settings | Enabled| 
| Member Server Effective Default Settings| Disabled| 
| Client Computer Effective Default Settings | Disabled| 
 
### Operating system version differences

The default value of this setting has changed between operating systems as follows:

-   The default on domain controllers running Windows Server 2003 R2 or earlier was set to Enabled.
-   The default on domain controllers running Windows Server 2008 and later is set to Disabled.

## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Group Policy

Modifying this setting may affect compatibility with client computers, services, and applications.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

If this policy setting is enabled, a user with local access could use the well-known Administrator's SID to learn the real name of the built-in Administrator account, even if it has been renamed. That person could then use the account name to initiate a password-guessing attack.

### Countermeasure

Disable the **Network access: Allow anonymous SID/Name translation** setting.

### Potential impact

Disabled is the default configuration for this policy setting on member devices; therefore, it has no impact on them. The default configuration for domain controllers is Enabled.

## Related topics

- [Security Options](security-options.md)
