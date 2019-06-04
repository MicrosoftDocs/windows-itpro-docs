---
title: Maximum lifetime for service ticket (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Maximum lifetime for service ticket security policy setting.
ms.assetid: 484bf05a-3858-47fc-bc02-6599ca860247
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

# Maximum lifetime for service ticket

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Maximum lifetime for service ticket** security policy setting.

## Reference

The **Maximum lifetime for service ticket** policy setting determines the maximum number of minutes that a granted session ticket can be used to access a particular service. The value must be 10 minutes or greater, and it must be less than or equal to the value of the **Maximum lifetime for service ticket** policy setting.

The possible values for this Group Policy setting are:

-   A user-defined number of minutes from 10 through 99,999, or 0 (in which case service tickets do not expire).
-   Not defined.

If a client presents an expired session ticket when it requests a connection to a server, the server returns an error message. The client must request a new session ticket from the Kerberos V5 KDC. After a connection is authenticated, however, it no longer matters whether the session ticket remains valid. Session tickets are used only to authenticate new connections with servers. Ongoing operations are not interrupted if the session ticket that authenticated the connection expires during the connection.

If the value for this policy setting is too high, users might be able to access network resources outside of their logon hours. In addition, users whose accounts have been disabled might be able to continue accessing network services by using valid service tickets that were issued before their account was disabled. If the value is set to 0, service tickets never expire.

### Best practices

-   It is advisable to set **Maximum lifetime for service ticket** to **600** minutes.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Kerberos Policy

### Default values

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server Type or GPO | Default Value |
| - | - |
| Default Domain Policy| 600 minutes| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Not applicable| 
| DC Effective Default Settings | 600 minutes| 
| Member Server Effective Default Settings | Not applicable| 
| Client Computer Effective Default Settings | Not applicable| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

A restart of the device is not required for this policy setting to be effective.

This policy setting is configured on the domain controller.

### Group Policy

Client computers will get the new setting during the next scheduled and successful Group Policy refresh. But for domain controllers to assign these new settings immediately, a gpupdate.exe /force is required. On the local device, the Security Configuration Engine will refresh this setting in about five minutes.

Settings are applied in the following order through a Group Policy Object (GPO), which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings
2.  Site policy settings
3.  Domain policy settings
4.  OU policy settings

When a local setting is greyed out, it indicates that a GPO currently controls that setting.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

If you configure the value for the **Maximum lifetime for service ticket** setting too high, users might be able to access network resources outside of their logon hours. Also, users whose accounts were disabled might continue to have access to network services with valid service tickets that were issued before their accounts were disabled.

### Countermeasure

Configure the **Maximum lifetime for service ticket** setting to 600 minutes.

### Potential impact

None. This is the default configuration.

## Related topics

- [Kerberos Policy](kerberos-policy.md)
