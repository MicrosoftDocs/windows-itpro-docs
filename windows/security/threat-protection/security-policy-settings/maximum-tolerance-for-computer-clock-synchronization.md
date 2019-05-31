---
title: Maximum tolerance for computer clock synchronization (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Maximum tolerance for computer clock synchronization security policy setting.
ms.assetid: ba2cf59e-d69d-469e-95e3-8e6a0ba643af
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

# Maximum tolerance for computer clock synchronization

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Maximum tolerance for computer clock synchronization** security policy setting.

## Reference

This security setting determines the maximum time difference (in minutes) that Kerberos V5 tolerates between the time on the client clock and the time on the domain controller that provides Kerberos authentication.

To prevent "replay attacks," the Kerberos v5 protocol uses time stamps as part of its protocol definition. For time stamps to work properly, the clocks of the client and the domain controller need to be in sync as much as possible. In other words, both devices must be set to the same time and date. 
Because the clocks of two computers are often out of sync, you can use this policy setting to establish the maximum acceptable difference to the Kerberos protocol between a client clock and domain controller clock. If the difference between a client computer clock and the domain controller clock is less than the maximum time difference that is specified in this policy, any time stamp that is used in a session between the two devices is considered to be authentic.

The possible values for this Group Policy setting are:

-   A user-defined number of minutes from 1 through 99,999
-   Not defined

### Best practices

-   It is advisable to set **Maximum tolerance for computer clock synchronization** to a value of 5 minutes.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Kerberos Policy

### Default values

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| 5 minutes| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Not applicable| 
| Domain Controller Effective Default Settings| 5 minutes| 
| Member Server Effective Default Settings | Not applicable| 
| Client Computer Effective Default Settings | Not applicable| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

A restart of the device is not required for this policy setting to be effective.

This policy setting is configured on the domain controller.

### Group Policy

Client devices will get the new setting during the next scheduled and successful Group Policy refresh. But for domain controllers to assign these new settings immediately, a gpupdate.exe /force is required. On the local device, the Security Configuration Engine will refresh this setting in about five minutes.

Settings are applied in the following order through a Group Policy Object (GPO), which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings
2.  Site policy settings
3.  Domain policy settings
4.  OU policy settings

When a local setting is greyed out, it indicates that a GPO currently controls that setting.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

To prevent "replay attacks" (which are attacks in which an authentication credential is resubmitted by a malicious user or program to gain access to a protected resource), the Kerberos protocol uses time stamps as part of its definition. For time stamps to work properly, the clocks of the client computer and the domain controller need to be closely synchronized. Because the clocks of two computers are often not synchronized, administrators can use this policy to establish the maximum acceptable difference to the Kerberos protocol between a client computer clock and a domain controller clock. If the difference between the client computer clock and the domain controller clock is less than the maximum time difference specified in this setting, any time stamp that is used in a session between the two computers is considered to be authentic.

### Countermeasure

Configure the **Maximum tolerance for computer clock synchronization** setting to 5 minutes.

### Potential impact

None. This is the default configuration.

## Related topics

- [Kerberos Policy](kerberos-policy.md)
