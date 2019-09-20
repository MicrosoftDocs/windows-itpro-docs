---
title: Interactive logon Prompt user to change password before expiration (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Interactive logon Prompt user to change password before expiration security policy setting.
ms.assetid: 8fe94781-40f7-4fbe-8cfd-5e116e6833e9
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

# Interactive logon: Prompt user to change password before expiration

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **Interactive logon: Prompt user to change password before expiration** security policy setting.

## Reference

The **Interactive logon: Prompt user to change password before expiration** policy setting determines how many days in advance users are warned that their passwords are about to expire. With this advance warning, the user has time to construct a password that is sufficiently strong.

### Possible values

-   A user-defined number of days from 0 through 999.
-   Not defined.

### Best practices

1.  Configure user passwords to expire periodically. Users will need warning that their passwords are going to expire, or they might inadvertently get locked out of the system. This could lead to confusion for users who access the network locally, or make it impossible for users who access the network through dial-up or virtual private network (VPN) connections to log on.
2.  Set **Interactive logon: Prompt user to change password before expiration** to 5 days. When their password expiration date is 5 or fewer days away, users will see a dialog box each time they log on to the domain.
3.  Do not set the value to 0, which results in displaying the password expiration warning every time the user logs on.

### Location

Computer Configuration\\Policies\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | 5 days|
| DC Effective Default Settings | 5 days | 
| Member Server Effective Default Settings| 5 days |
| Client Computer Effective Default Settings | 5 days| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Policy conflict considerations

None.

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy is not contained in a distributed GPO, this policy can be configured on the local computer by using the Local Security Policy snap-in.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

If user passwords are configured to expire periodically in your organization, users need to be warned when this is about to happen, or they may be locked out of the device inadvertently when their passwords expire. This condition could lead to confusion for users who access the network locally, or make it impossible for users to access your organization's network through dial-up or virtual private network (VPN) connections.

### Countermeasure

Configure the **Interactive logon: Prompt user to change password before expiration** setting to 5 days.

### Potential impact

Users see a dialog-box prompt to change their password each time that they log on to the domain when their password is configured to expire in 5 or fewer days.

## Related topics

- [Security Options](security-options.md)
