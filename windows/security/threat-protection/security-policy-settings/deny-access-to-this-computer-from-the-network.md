---
title: Deny access to this computer from the network (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Deny access to this computer from the network security policy setting.
ms.assetid: 935e9f89-951b-4163-b186-fc325682bb0b
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

# Deny access to this computer from the network

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Deny access to this computer from the network** security policy setting.

## Reference

This security setting determines which users are prevented from accessing a device over the network.

Constant: SeDenyNetworkLogonRight

### Possible values

-   User-defined list of accounts
-   Guest

### Best practices

-   Because all Active Directory Domain Services programs use a network logon for access, use caution when you assign this user right on domain controllers.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default, this setting is Guest on domain controllers and on stand-alone servers.

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.


| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined | 
| Default Domain Controller Policy | Guest | 
| Stand-Alone Server Default Settings | Guest | 
| Domain Controller Effective Default Settings | Guest | 
| Member Server Effective Default Settings | Guest | 
| Client Computer Effective Default Settings | Guest | 
 
## Policy management

This section describes features and tools available to help you manage this policy.

A restart of the device is not required for this policy setting to be effective.

This policy setting supersedes the **Access this computer from the network** policy setting if a user account is subject to both policies.

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

Users who can log on to the device over the network can enumerate lists of account names, group names, and shared resources. Users with permission to access shared folders and files can connect over the network and possibly view or modify data.

### Countermeasure

Assign the **Deny access to this computer from the network** user right to the following accounts:

-   Anonymous logon
-   Built-in local Administrator account
-   Local Guest account
-   All service accounts

An important exception to this list is any service accounts that are used to start services that must connect to the device over the network. For example, let’s say you have configured a shared folder for web servers to access, and you present content within that folder through a website. You may need to allow the account that runs IIS to log on to the server with the shared folder from the network. This user right is particularly effective when you must configure servers and workstations on which sensitive information is handled because of regulatory compliance concerns.

### Potential impact

If you configure the **Deny access to this computer from the network** user right for other accounts, you could limit the abilities of users who are assigned to specific administrative roles in your environment. You should verify that delegated tasks are not negatively affected.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
