---
title: Remove computer from docking station - security policy setting
description: Describes the best practices, location, values, policy management, and security considerations for the Remove computer from docking station security policy setting.
ms.assetid: 229a385a-a862-4973-899a-413b1b5b6c30
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

# Remove computer from docking station - security policy setting

**Applies to**
-   Windows 11
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Remove computer from docking station** security policy setting.

## Reference

This security setting determines whether a user can undock a portable device from its docking station without logging on. This policy setting only affects scenarios that involve a portable computer and its docking station.

If this user right is assigned to the user’s account (or if the user is a member of the assigned group), the user must sign in before removing the portable device from its docking station. Otherwise, as a security measure, the user won't be able to sign in after the device is removed from the docking station. If this policy isn't assigned, the user may remove the portable device from its docking station without signing in, and then have the ability to start and sign in to the device afterwards in its undocked state.

Constant: SeUndockPrivilege

### Possible values

-   User-defined list of accounts
-   Not Defined

### Best practices

-   Assign this user right to only those accounts that are permitted to use the portable device.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

Although this portable device scenario doesn't normally apply to servers, by default this setting is Administrators on domain controllers and on stand-alone servers.

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined|
| Default Domain Controller Policy | Administrators|
| Stand-Alone Server Default Settings | Administrators|
| Domain Controller Effective Default Settings | Administrators|
| Member Server Effective Default Settings | Administrators|
| Client Computer Effective Default Settings | Administrators|

## Policy management

This section describes features, tools, and guidance to help you manage this policy.

A restart of the device isn't required for this policy setting to be effective.

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

Anyone who has the **Remove computer from docking station** user right can sign in and then remove a portable device from its docking station. If this setting isn't defined, it has the same effect as if everyone was granted this right. However, the value of implementing this countermeasure is reduced by the following factors:

-   If attackers can restart the device, they could remove it from the docking station after the BIOS starts but before the operating system starts.
-   This setting doesn't affect servers because they typically aren't installed in docking stations.
-   An attacker could steal the device and the docking station together.
-   Devices that can be mechanically undocked can be physically removed by the user whether or not they use the Windows undocking functionality.

### Countermeasure

Ensure that only the local Administrators group and the user account to which the device is allocated are assigned the **Remove computer from docking station** user right.

### Potential impact

By default, only members of the local Administrators group are granted this right. Other user accounts must be explicitly granted this user right as necessary. If your organization's users aren't members of the local Administrators groups on their portable devices, they can't remove their portable devices from their docking stations if they don't first shut down the device. Therefore, you may want to assign the **Remove computer from docking station** privilege to the local Users group for portable devices.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
