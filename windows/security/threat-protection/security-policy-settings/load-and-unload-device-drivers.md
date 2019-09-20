---
title: Load and unload device drivers (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Load and unload device drivers security policy setting.
ms.assetid: 66262532-c610-470c-9792-35ff4389430f
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

# Load and unload device drivers

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Load and unload device drivers** security policy setting.

## Reference

This policy setting determines which users can dynamically load and unload device drivers. This user right is not required if a signed driver for the new hardware already exists in the driver.cab file on the device. Device drivers run as highly privileged code.
Windows supports the Plug and Play specifications that define how a computer can detect and configure newly added hardware, and then automatically install the device driver. Prior to Plug and Play, users needed to manually configure devices before attaching them to the device. This model allows a user to plug in the hardware, then Windows searches for an appropriate device driver package and automatically configures it to work without interfering with other devices.

Because device driver software runs as if it is a part of the operating system with unrestricted access to the entire computer, it is critical that only known and authorized device drivers be permitted.

Constant: SeLoadDriverPrivilege

### Possible values

-   User-defined list of accounts
-   Default values
-   Not Defined

### Best practices

-   Because of the potential security risk, do not assign this user right to any user, group, or process that you do not want to take over the system.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default this setting is Administrators and Print Operators on domain controllers and Administrators on stand-alone servers.

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Administrators<br/>Print Operators| 
| Stand-Alone Server Default Settings | Administrators| 
| Domain Controller Effective Default Settings | Administrators<br/>Print Operators |
| Member Server Effective Default Settings | Administrators| 
| Client Computer Effective Default Settings | Administrators| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

A restart of the device is not required for this policy setting to be effective.

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

Device drivers run as highly privileged code. A user who has the **Load and unload device drivers** user right could unintentionally install malware that masquerades as a device driver. Administrators should exercise care and install only drivers with verified digital signatures.

>**Note:**  You must have this user right or be a member of the local Administrators group to install a new driver for a local printer or to manage a local printer and configure defaults for options such as duplex printing.
 
### Countermeasure

Do not assign the **Load and unload device drivers** user right to any user or group other than Administrators on member servers. On domain controllers, do not assign this user right to any user or group other than Domain Admins.

### Potential impact

If you remove the **Load and unload device drivers** user right from the Print Operators group or other accounts, you could limit the abilities of users who are assigned to specific administrative roles in your environment. You should ensure that delegated tasks are not negatively affected.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
