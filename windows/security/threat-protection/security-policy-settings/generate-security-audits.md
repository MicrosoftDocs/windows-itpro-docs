---
title: Generate security audits (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Generate security audits security policy setting.
ms.assetid: c0e1cd80-840e-4c74-917c-5c2349de885f
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

# Generate security audits

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Generate security audits** security policy setting.

## Reference

This policy setting determines which accounts can be used by a process to generate audit records in the security event log. The Local Security Authority Subsystem Service (LSASS) writes events to the log. You can use the information in the security event log to trace unauthorized device access.

Constant: SeAuditPrivilege

### Possible values

-   User-defined list of accounts
-   Local Service
-   Network Service

### Best practices

-   Because the audit log can potentially be an attack vector if an account is compromised, ensure that only the Local Service and Network Service accounts have the **Generate security audits** user right assigned to them.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default, this setting is Local Service and Network Service on domain controllers and stand-alone servers.

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Local Service<br/>Network Service| 
| Stand-Alone Server Default Settings | Local Service<br/>Network Service| 
| Domain Controller Effective Default Settings | Local Service<br/>Network Service| 
| Member Server Effective Default Settings | Local Service<br/>Network Service| 
| Client Computer Effective Default Settings | Local Service<br/>Network Service| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

A restart of the computer is not required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

Misuse of this user right can result in the generation of many auditing events, potentially hiding evidence of an attack or causing a denial-of-service (DoS) if the [Audit: Shut down system immediately if unable to log security audits](audit-shut-down-system-immediately-if-unable-to-log-security-audits.md) security policy setting is enabled.

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

A malicious user could use accounts that can write to the Security log to fill that log with meaningless events. If the computer is configured to overwrite events as needed, malicious users could use this method to remove evidence of their unauthorized activities. If the computer is configured to shut down when it is unable to write to the Security log, and it is not configured to automatically back up the log files, this method could be used to create a DoS condition.

### Countermeasure

Ensure that only the Local Service and Network Service accounts have the **Generate security audits** user right assigned to them.

### Potential impact

None. Restricting the **Generate security audits** user right to the Local Service and Network Service accounts is the default configuration.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
