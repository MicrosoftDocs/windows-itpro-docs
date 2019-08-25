---
title: Adjust memory quotas for a process (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Adjust memory quotas for a process security policy setting.
ms.assetid: 6754a2c8-6d07-4567-9af3-335fd8dd7626
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

# Adjust memory quotas for a process

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Adjust memory quotas for a process** security policy setting.

## Reference

This privilege determines who can change the maximum memory that can be consumed by a process. This privilege is useful for system tuning on a group or user basis.

This user right is defined in the Default Domain Controller Group Policy Object (GPO) and in the local security policy of workstations and servers.

Constant: SeIncreaseQuotaPrivilege

### Possible values

-   User-defined list of accounts
-   Not Defined

### Best practices

1.  Restrict the **Adjust memory quotas for a process** user right to only users who require the ability to adjust memory quotas to perform their jobs.
2.  If this user right is necessary for a user account, it can be assigned to a local machine account instead of to a domain account.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\User Rights Assignment\\

### Default values

By default, members of the Administrators, Local Service, and Network Service groups have this right.

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value | 
| - | - |
| Default Domain Policy | Administrators<br>Local Service<br>Network Service |
| Default Domain Controller Policy | Administrators<br>Local Service<br>Network Service |
| Stand-Alone Server Default Settings | Administrators<br>Local Service<br>Network Service |
| Domain Controller Effective Default Settings | Administrators<br>Local Service<br>Network Service |
| Member Server Effective Default Settings | Administrators<br>Local Service<br>Network Service |
| Client Computer Effective Default Settings | Administrators<br>Local Service<br>Network Service |
 
## Policy management

A restart of the device is not required for this policy setting to be effective.

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

A user with the **Adjust memory quotas for a process** privilege can reduce the amount of memory that is available to any process, which could cause business-critical network applications to become slow or to fail. This privilege could be used by a malicious user to start a denial-of-service (DoS) attack.

### Countermeasure

Restrict the **Adjust memory quotas for a process** user right to users who require it to perform their jobs, such as application administrators who maintain database management systems or domain administrators who manage the organization's directory and its supporting infrastructure.

### Potential impact

Organizations that have not restricted users to roles with limited privileges may find it difficult to impose this countermeasure. Also, if you have installed optional components such as ASP.NET or IIS, you may need to assign the **Adjust memory quotas for a process** user right to additional accounts that are required by those components. IIS requires that this privilege be explicitly assigned to the IWAM\_&lt;ComputerName&gt;, Network Service, and Service accounts. Otherwise, this countermeasure should have no impact on most computers. If this user right is necessary for a user account, it can be assigned to a local computer account instead of to a domain account.

## Related topics
- [User Rights Assignment](user-rights-assignment.md)
 
 
