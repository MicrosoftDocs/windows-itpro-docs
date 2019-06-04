---
title: Interactive logon Machine account lockout threshold (Windows 10)
description: Describes the best practices, location, values, management, and security considerations for the Interactive logon Machine account lockout threshold security policy setting.
ms.assetid: ebbd8e22-2611-4ebe-9db9-d49344e631e4
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

# Interactive logon: Machine account lockout threshold

**Applies to**
-   Windows 10

Describes the best practices, location, values, management, and security considerations for the **Interactive logon: Machine account lockout threshold** security policy setting.

## Reference

Beginning with Windows Server 2012 and Windows 8, the **Interactive logon: Machine account threshold** security policy setting enforces the lockout policy on those computers that have BitLocker enabled to protect operating system volumes.

The security setting allows you to set a threshold for the number of failed logon attempts that causes the device to be locked by using BitLocker. This means, if the specified maximum number of failed logon attempts is exceeded, the device will invalidate the Trusted Platform Module (TPM) protector and any other protector except the 48-digit recovery password, and then reboot. During Device Lockout mode, the computer or device only boots into the touch-enabled Windows Recovery Environment (WinRE) until an authorized user enters the recovery password to restore full access.

Failed password attempts on workstations or member servers that have been locked by using either Ctrl+Alt+Delete or password-protected screen savers count as failed logon attempts.

### Possible values

You can set the **invalid logon attempts** value between 1 and 999. Values from 1 to 3 are interpreted as 4. If you set the value to 0, or leave blank, the computer or device will never be locked as a result of this policy setting.

### Best practices

Use this policy setting in conjunction with your other failed account logon attempts policy. For example, if the [Account lockout threshold](account-lockout-threshold.md) policy setting is set at 4, then setting **Interactive logon: Machine account lockout threshold** at 6 allows the user to restore access to resources without having to restore access to the device resulting from a BitLocker lock out.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined | 
| Stand-Alone Server Default Settings| Disabled| 
| DC Effective Default Settings | Disabled| 
| Member Server Effective Default Settings | Disabled |
| Client Computer Effective Default Settings | Disabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

A restart is required for changes to this policy to become effective when they are saved locally or distributed through Group Policy.

### Group Policy

Because this policy setting was introduced in Windows Server 2012 and Windows 8, it can only be set locally on those devices that contain this policy setting, but it can be set and distributed through Group Policy to any computer running the Windows operating system that supports Group Policy and is BitLocker-enabled.

When setting this policy, consider the [Account lockout threshold](account-lockout-threshold.md) policy setting, which determines the number of failed logon attempts that will cause a user account to be locked out.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

This policy setting helps protect a BitLocker-encrypted device from attackers attempting to brute-force guess the Windows sign-in password. If not set, then attackers can attempt innumerable passwords, if no other account protection mechanisms are in place.

### Countermeasure

Use this policy setting in conjunction with your other failed account logon attempts policy. For example, if the [Account lockout threshold](account-lockout-threshold.md) policy setting is set at 4, then setting **Interactive logon: Machine account lockout threshold** at 6 allows the user to restore access to resources without having to restore access to the device resulting from a BitLocker lock out.

### Potential impact

If not set, the device could be compromised by an attacker using brute-force password cracking software.

If set too low, productivity might be hindered because users who become locked out will be unable to access the device without providing the 48-digit BitLocker recovery password.

## Related topics

- [Security Options](security-options.md)
