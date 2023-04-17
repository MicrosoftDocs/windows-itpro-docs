---
title: Log on as a service (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Log on as a service security policy setting.
ms.assetid: acc9a9e0-fd88-4cda-ab54-503120ba1f42
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

# Log on as a service

**Applies to**
-   Windows 11
-   Windows 10

This article describes the recommended practices, location, values, policy management, and security considerations for the **Log on as a service** security policy setting.

## Reference

This policy setting determines which service accounts can register a process as a service. Running a process under a service account circumvents the need for human intervention.

Constant: SeServiceLogonRight

### Possible values

-   User-defined list of accounts
-   Not Defined

### Best practices

-   Minimize the number of accounts that are granted this user right.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default this setting is Network Service on domain controllers and Network Service on stand-alone servers.

The following table lists the actual and effective default policy values. The policy's property page also lists default values.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Not defined| 
| Domain Controller Effective Default Settings | Network Service| 
| Member Server Effective Default Settings| Network Service| 
| Client Computer Effective Default Settings | Network Service| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

A restart of the computer isn't required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

### Group Policy

The policy setting **Deny logon as a service** supersedes this policy setting if a user account is subject to both policies.

Group Policy settings are applied in the following order, which will overwrite settings on the local device at the next Group Policy update:

1.  Local policy settings
2.  Site policy settings
3.  Domain policy settings
4.  OU policy settings

## Security considerations

This section describes how an attacker might exploit a feature or its configuration. It explains the countermeasure. And it addresses the possible negative consequences of the countermeasure.

### Vulnerability

The **Log on as a service** user right allows accounts to start network services or services that run continuously on a computer, even when no one is logged on to the console. The risk is reduced because only users who have administrative privileges can install and configure services. An 
attacker who has already reached that level of access could configure the service to run with the Local System account.

### Countermeasure

By definition, the Network Service account has the **Log on as a service** user right. This right isn't granted through the Group Policy setting. Minimize the number of other accounts that are granted this user right.

### Potential impact

On most computers, the **Log on as a service** user right is restricted to the Local System, Local Service, and Network Service built-in accounts by default, and there's no negative impact. But if you have optional components such as ASP.NET or IIS, you might need to 
assign the user right to the additional accounts that those components require. IIS requires this user right to be explicitly granted to the ASPNET user account.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
