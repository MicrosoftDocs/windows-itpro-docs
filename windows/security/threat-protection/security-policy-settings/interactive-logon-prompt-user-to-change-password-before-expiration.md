---
title:  Interactive log-on prompt user to change password before expiration (Windows 10)
description: Best practices and security considerations for an interactive log-on prompt for users to change passwords before expiration.
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

# Interactive log on: Prompt the user to change passwords before expiration

**Applies to**
-   Windows 10

This article describes the best practices, location, values, policy management, and security considerations for the **Interactive logon: Prompt user to change password before expiration** security policy setting.

## Reference

This policy setting determines when users are warned that their passwords are about to expire. This warning gives users time to select a strong password before their current password expires to avoid losing system access.

### Possible values

-   A user-defined number of days from 0 through 999
-   Not defined

### Best practices

-  Configure user passwords to expire periodically. Users need warning that their password is going to expire, or they might  get locked out of the system.
-  Set **Interactive logon: Prompt user to change password before expiration** to five days. When their password expiration date is five or fewer days away, users will see a dialog box each time that they log on to the domain.
-  When you set the policy to zero, there is no password expiration warning when the user logs on. During a long-running logon session, you would get the warning on the day the password expires or when it is already expired.

### Location

*Computer Configuration\\Policies\\Windows Settings\\Security Settings\\Local Policies\\Security Options*

### Default values

The following table lists the default values for this policy. Default values are also listed on the policy’s property page.

| Server type or Group Policy Object | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Five days|
| DC Effective Default Settings | Five days | 
| Member Server Effective Default Settings| Five days |
| Client Computer Effective Default Settings | Five days| 
 
## Policy management

This section describes features and tools that you can use to manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through Group Policy.

### Policy conflict considerations

None.

### Group Policy

Configure this policy setting by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy isn't contained in a distributed GPO, it can be configured on the local computer through the Local Security Policy snap-in.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and possible negative consequences of the countermeasure.

### Vulnerability

If user passwords are configured to expire periodically in your organization, users need to be warned before expiration. Otherwise, they may get locked out of the devices inadvertently.

### Countermeasure

Configure the **Interactive logon: Prompt user to change password before expiration** setting to five days.

### Potential impact

Users see a dialog-box that prompts them to change their password each time that they log on to the domain when their password is configured to expire in 5 or fewer days.

## Related topics

- [Security options](security-options.md)
