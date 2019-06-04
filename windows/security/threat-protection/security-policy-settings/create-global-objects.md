---
title: Create global objects (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Create global objects security policy setting.
ms.assetid: 9cb6247b-44fc-4815-86f2-cb59b6f0221e
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

# Create global objects

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Create global objects** security policy setting.

## Reference

This policy setting determines which users can create global objects that are available to all sessions. Users can still create objects that are specific to their own session if they do not have this user right.

A global object is an object that is created to be used by any number of processes or threads, even those not started within the user’s session. Remote Desktop Services uses global objects in its processes to facilitate connections and access.

Constant: SeCreateGlobalPrivilege

### Possible values

-   User-defined list of accounts
-   Default accounts listed below

### Best practices

-   Do not assign any user accounts this right.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default, members of the Administrators group have this right, as do Local Service and Network Service accounts on the supported versions of Windows. Service is included for backwards compatibility with earlier versions of Windows.

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not Defined | 
| Default Domain Controller Policy | Administrators<br/>Local Service<br/>Network Service<br/>Service| 
| Stand-Alone Server Default Settings | Administrators<br/>Local Service<br/>Network Service<br/>Service| 
| Domain Controller Effective Default Settings | Administrators<br/>Local Service<br/>Network Service<br/>Service| 
| Member Server Effective Default Settings | Administrators<br/>Local Service<br/>Network Service<br/>Service| 
| Client Computer Effective Default Settings | Administrators<br/>Local Service<br/>Network Service<br/>Service| 
 
## Policy management

A restart of the device is not required for this policy setting to take effect.

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

The **Create global objects** user right is required for a user account to create global objects in Remote Desktop sessions. Users can still create session-specfic objects without being assigned this user right. Assigning this right can be a security risk.

By default, members of the **Administrators** group, the System account, and services that are started by the Service Control Manager are assigned the **Create global objects** user right. Users who are added to the **Remote Desktop Users** group also have this user right. 

### Countermeasure

When non-administrators need to access a server using Remote Desktop, add the users to the **Remote Desktop Users** group rather than assining them this user right.

### Potential impact

None. Not Defined is the default domain policy configuration.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
