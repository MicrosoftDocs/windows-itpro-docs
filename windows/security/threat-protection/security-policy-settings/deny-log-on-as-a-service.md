---
title: Deny log on as a service (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Deny log on as a service security policy setting.
ms.assetid: f1114964-df86-4278-9b11-e35c66949794
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

# Deny log on as a service

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Deny log on as a service** security policy setting.

## Reference

This policy setting determines which users are prevented from logging on to the service applications on a device.

A service is an application type that runs in the system background without a user interface. It provides core operating system features, such as web serving, event logging, file serving, printing, cryptography, and error reporting.

Constant: SeDenyServiceLogonRight

### Possible values

-   User-defined list of accounts
-   Not defined

### Best practices

1.  When you assign this user right, thoroughly test that the effect is what you intended.
2.  Within a domain, modify this setting on the applicable Group Policy Object (GPO).

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Not defined | 
| Domain Controller Effective Default Settings | Not defined | 
| Member Server Effective Default Settings | Not defined | 
| Client Computer Effective Default Settings | Not defined | 
 
## Policy management

This section describes features and tools available to help you manage this policy.

A restart of the computer is not required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

### Group Policy

On a domain-joined device, including the domain controller, this policy can be overwritten by a domain policy, which will prevent you from modifying the local policy setting.

This policy setting might conflict with and negate the **Log on as a service** setting.

Settings are applied in the following order through a Group Policy Object (GPO), which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings
2.  Site policy settings
3.  Domain policy settings
4.  OU policy settings

When a local setting is greyed out, it indicates that a GPO currently controls that setting.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Accounts that can log on to a service application could be used to configure and start new unauthorized services, such as a keylogger or other malware. The benefit of the specified countermeasure is somewhat reduced by the fact that only users with administrative rights can install and configure 
services, and an attacker who has already attained that level of access could configure the service to run by using the System account.

### Countermeasure

We recommend that you not assign the **Deny log on as a service** user right to any accounts. This is the default configuration. Organizations that are extremely concerned about security might assign this user right to groups and accounts when they are certain that they will never need to log on to a service application.

### Potential impact

If you assign the **Deny log on as a service** user right to specific accounts, services may not start and a denial-of-service condition could result.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
