---
title: Interactive logon Do not require CTRL+ALT+DEL (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Interactive logon Do not require CTRL+ALT+DEL security policy setting.
ms.assetid: 04e2c000-2eb2-4d4b-8179-1e2cb4793e18
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
# Interactive logon: Do not require CTRL+ALT+DEL

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Interactive logon: Do not require CTRL+ALT+DEL** security policy setting.

## Reference

This security setting determines whether pressing CTRL+ALT+DEL is required before a user can log on.

If this policy setting is enabled on a device, a user is not required to press CTRL+ALT+DEL to log on. Not having to press CTRL+ALT+DEL leaves users susceptible to attacks that attempt to intercept the users' passwords. Requiring CTRL+ALT+DEL before users log on ensures that users are communicating by means of a trusted path when entering their passwords.

If this policy is disabled, any user is required to press CTRL+ALT+DEL before logging on to the Windows operating system (unless they are using a smart card for logon).

Microsoft developed this feature to make it easier for users with certain types of physical impairments to log on to device running the Windows operating system; however, not having to press the CTRL+ALT+DELETE key combination leaves users susceptible to attacks that attempt to intercept their passwords. Requiring CTRL+ALT+DELETE before users log on ensures that users are communicating by means of a trusted path when entering their passwords.

A malicious user might install malware that looks like the standard logon dialog box for the Windows operating system, and capture a user's password. The attacker can then log on to the compromised account with whatever level of user rights that user has.

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

-   It is advisable to set **Disable CTRL+ALT+DEL requirement for logon** to **Not configured**.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Disabled| 
| DC Effective Default Settings | Disabled| 
| Member Server Effective Default Settings | Disabled| 
| Client Computer Effective Default Settings | Disabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Policy conflict considerations

Beginning with Windows Server 2008 and Windows Vista, the CTRL+ALT+DELETE key combination is required to authenticate if this policy is disabled.

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy is not contained in a distributed GPO, this policy can be configured on the local computer by using the Local Security Policy snap-in.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

This setting makes it easier for users with certain types of physical impairments to log on to devices that run the Windows operating system. However, if users are not required to press CTRL+ALT+DEL, they are susceptible to attacks that attempt to intercept their passwords. If CTRL+ALT+DEL is required before logon, user passwords are communicated by means of a trusted path.

If this setting is enabled, an attacker could install malware that looks like the standard logon dialog box in the Windows operating system, and capture the user's password. The attacker would then be able to log on to the compromised account with whatever level of privilege that user has.

### Countermeasure

Disable the **Interactive logon: Do not require CTRL+ALT+DEL** setting.

### Potential impact

Unless they use a smart card to log on, users must simultaneously press the three keys before the logon dialog box is displayed.

## Related topics

- [Security Options](security-options.md)
