---
title: Interactive logon Do not require CTRL+ALT+DEL
description: Describes the best practices, location, values, and security considerations for the Interactive logon Do not require CTRL+ALT+DEL security policy setting.
ms.assetid: 04e2c000-2eb2-4d4b-8179-1e2cb4793e18
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
ms.topic: reference
ms.date: 04/19/2017
ms.technology: itpro-security
---
# Interactive logon: Do not require CTRL+ALT+DEL

**Applies to**
- Windows 11
- Windows 10

Describes the best practices, location, values, and security considerations for the **Interactive logon: Do not require CTRL+ALT+DEL** security policy setting.

## Reference

This security setting determines whether pressing CTRL+ALT+DEL is required before a user can sign in.

If this policy setting is enabled on a device, a user isn't required to press CTRL+ALT+DEL to sign in.

If this policy is disabled, any user is required to press CTRL+ALT+DEL before logging on to the Windows operating system (unless they're using a smart card for signing in).

Microsoft developed this feature to make it easier for users with certain types of physical impairments to sign in to a device running the Windows operating system; however, not having to press the CTRL+ALT+DELETE key combination leaves users susceptible to attacks that attempt to intercept their passwords. Requiring CTRL+ALT+DELETE before users sign in ensures that users are communicating through a trusted path when entering their passwords.

A malicious user might install malware that looks like the standard sign-in dialog box for the Windows operating system, and capture a user's password. The attacker can then sign in to the compromised account with whatever level of user rights that user has.

> [!NOTE]
> When the policy is defined, registry value **DisableCAD** located in **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System** is created. To revert the changes made by this policy, it is not enough to set its value to **Not defined**, this registry value needs to be removed as well.

### Possible values

- Enabled
- Disabled
- Not defined

### Best practices

- We recommend that you set **Disable CTRL+ALT+DEL requirement for logon** to **Not configured**.

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

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through Group Policy.

### Policy conflict considerations

Beginning with Windows Server 2008 and Windows Vista, the CTRL+ALT+DELETE key combination is required to authenticate if this policy is disabled.

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy isn't contained in a distributed GPO, this policy can be configured on the local computer by using the Local Security Policy snap-in.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

This setting makes it easier for users with certain types of physical impairments to sign in to devices that run the Windows operating system. However, if users aren't required to press CTRL+ALT+DEL, they're susceptible to attacks that attempt to intercept their passwords. If CTRL+ALT+DEL is required before signing in, user passwords are communicated through a trusted path.

If this setting is enabled, an attacker could install malware that looks like the standard sign-in dialog box in the Windows operating system, and capture the user's password. The attacker would then be able to sign in to the compromised account with whatever level of privilege that user has.

### Countermeasure

Disable the **Interactive logon: Do not require CTRL+ALT+DEL** setting.

### Potential impact

Unless they use a smart card to sign in, users must simultaneously press the three keys before the sign-in dialog box is displayed.

## Related topics

- [Security Options](security-options.md)
