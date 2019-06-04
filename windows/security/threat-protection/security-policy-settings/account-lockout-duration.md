---
title: Account lockout duration (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Account lockout duration security policy setting.
ms.assetid: a4167bf4-27c3-4a9b-8ef0-04e3c6ec3aa4
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

# Account lockout duration

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Account lockout duration** security policy setting.

## Reference

The **Account lockout duration** policy setting determines the number of minutes that a locked-out account remains locked out before automatically becoming unlocked. The available range is from 1 through 99,999 minutes. A value of 0 specifies that the account will be locked out until an administrator explicitly unlocks it. If **Account lockout threshold** is set to a number greater than zero, **Account lockout duration** must be greater than or equal to the value of [Reset account lockout counter after](reset-account-lockout-counter-after.md).
This policy setting is dependent on the **Account lockout threshold** policy setting that is defined, and it must be greater than or equal to the value specified for the [Reset account lockout counter after](reset-account-lockout-counter-after.md) policy setting.

### Possible values

-   A user-defined number of minutes from 0 through 99,999
-   Not defined

If [Account lockout threshold](account-lockout-threshold.md) is configured, after the specified number of failed attempts, the account will be locked out. If th **Account lockout duration** is set to 0, the account will remain locked until an administrator unlocks it manually.

It is advisable to set **Account lockout duration** to approximately 15 minutes. To specify that the account will never be locked out, set the **Account lockout threshold** value to 0. 

### Location

**Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Password Policy**

### Default values

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or Group Policy Object (GPO) | Default value |
| - | - |
| Default domain policy | Not defined |
| Default domain controller policy | Not defined |
| Stand-alone server default settings | Not applicable |
| Domain controller effective default settings | Not defined |
| Member server effective default settings | Not defined |
| Client computer effective default settings | Not applicable |
 
## Security considerations

More than a few unsuccessful password submissions during an attempt to log on to a computer might represent an attacker's attempts to determine an account password by trial and error. The Windows and Windows Server operating systems can track logon attempts, and you can configure the operating system to disable the account for a preset period of time after a specified number of failed attempts. Account lockout policy settings control the threshold for this response and what action to take after the threshold is reached.

### Vulnerability

A denial-of-service (DoS) condition can be created if an attacker abuses the [Account lockout threshold](account-lockout-threshold.md) policy setting and repeatedly attempts to log on with a specific account. After you configure the Account lockout threshold policy setting, the account will be locked out after the specified number of failed attempts. If you configure the **Account lockout duration** policy setting to 0, the account remains locked until you unlock it manually.

### Countermeasure

Configure the **Account lockout duration** policy setting to an appropriate value for your environment. To specify that the account will remain locked until you manually unlock it, configure the value to 0. When the **Account lockout duration** policy setting is configured to a nonzero value, automated attempts to guess account passwords are delayed for this interval before resuming attempts against a specific account. Using this setting in combination with the [Account lockout threshold](account-lockout-threshold.md) policy setting makes automated password guessing attempts more difficult.

### Potential impact

Configuring the **Account lockout duration** policy setting to 0 so that accounts cannot be automatically unlocked can increase the number of requests that your organization's Help Desk receives to unlock accounts that were locked by mistake.

## Related topics

[Account Lockout Policy](account-lockout-policy.md)
 
 
