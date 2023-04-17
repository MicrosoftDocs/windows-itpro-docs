---
title: Shut down the system - security policy setting (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Shut down the system security policy setting.
ms.assetid: c8e8f890-153a-401e-a957-ba6a130304bf
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

# Shut down the system - security policy setting

**Applies to**
-   Windows 11
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Shut down the system** security policy setting.

## Reference

This security setting determines if a user who is logged on locally to a device can shut down Windows.

Shutting down domain controllers makes them unable to do things like process sign-in requests, process Group Policy settings, and answer Lightweight Directory Access Protocol (LDAP) queries. Shutting down domain controllers that have been assigned operations master roles, which are also known as flexible single master operations or FSMO roles, can disable key domain functionality. For example, processing sign-in requests for new passwords, which are done by the primary domain controller (PDC) emulator master.

The **Shut down the system** user right is required to enable hibernation support, to set the power management settings, and to cancel a shutdown.

Constant: SeShutdownPrivilege

### Possible values

-   A user-defined list of accounts
-   Defaults
-   Not defined

### Best practices

1.  Ensure that only Administrators and Backup Operators have the **Shut down the system** user right on member servers. And that only Administrators have the user right on domain controllers. Removing these default groups might limit the abilities of users who are assigned to specific administrative roles in your environment. Ensure that their delegated tasks won't be negatively affected.
2.  The ability to shut down domain controllers should be limited to a few trusted administrators. Even though a system shutdown requires the ability to sign in to the server, you should be careful about the accounts and groups that you allow to shut down a domain controller.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default this setting is Administrators, Backup Operators, Server Operators, and Print Operators on domain controllers, and Administrators and Backup Operators on stand-alone servers.

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined| 
| Default Domain Controller Policy | Administrators<br/>Backup Operators<br/>Server Operators<br/>Print Operators| 
| Stand-Alone Server Default Settings | Administrators<br/>Backup Operators| 
| Domain Controller Effective Default Settings | Administrators<br/>Backup Operators<br/>Server Operators<br/>Print Operators| 
| Member Server Effective Default Settings | Administrators<br/>Backup Operators| 
| Client Computer Effective Default Settings | Administrators<br/>Backup Operators<br/>Users| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

A restart of the computer isn't required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

### Group Policy

This user right doesn't have the same effect as **Force shutdown from a remote system**. For more information, see [Force shutdown from a remote system](force-shutdown-from-a-remote-system.md).

Settings are applied in the following order through a Group Policy Object (GPO), which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings
2.  Site policy settings
3.  Domain policy settings
4.  OU policy settings

When a local setting is greyed out, it indicates that a GPO currently controls that setting.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

The ability to shut down domain controllers should be limited to a few trusted administrators. Although the **Shut down the system** user right requires the ability to sign in to the server, you should be careful about which accounts and groups you allow to shut down a domain controller.

When a domain controller is shut down, it can't process sign-in requests, process Group Policy settings, and answer Lightweight Directory Access Protocol (LDAP) queries. If you shut down domain controllers that have operations master roles, you can disable key domain functionality, such as processing sign-in requests for new passwords, which are performed by the PDC master.

For other server roles, especially roles where non-administrators have rights to sign in to the server, such as RD Session Host servers, it's critical that this user right be removed from users who don't have a legitimate reason to restart the servers.

### Countermeasure

Make sure that only the Administrators and Backup Operators groups are assigned the **Shut down the system** user right on member servers. And make sure that only the Administrators group is assigned the user right on domain controllers.

### Potential impact

The impact of removing these default groups from the **Shut down the system** user right could limit the delegated abilities of assigned roles in your environment. Confirm that delegated activities aren't adversely affected.

## Related articles

- [User Rights Assignment](user-rights-assignment.md)
