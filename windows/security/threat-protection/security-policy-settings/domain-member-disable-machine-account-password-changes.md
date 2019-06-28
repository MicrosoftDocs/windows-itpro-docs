---
title: Domain member Disable machine account password changes (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Domain member Disable machine account password changes security policy setting.
ms.assetid: 1f660300-a07a-4243-a09f-140aa1ab8867
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

# Domain member: Disable machine account password changes

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Domain member: Disable machine account password changes** security policy setting.

## Reference

The **Domain member: Disable machine account password changes** policy setting determines whether a domain member periodically changes its machine account password. Setting its value to **Enabled** prevents the domain member from changing the machine account password. Setting it to **Disabled** allows the domain member to change the machine account password as specified by the value of the [Domain member: Maximum machine account password age](domain-member-maximum-machine-account-password-age.md) policy setting, which is every 30 days by default.

By default, devices that belong to a domain are automatically required to change the passwords for their accounts every 30 days. Devices that are no longer able to automatically change their machine password are at risk of a malicious user determining the password for the system's domain account.
Verify that the **Domain member: Disable machine account password changes** option is set to **Disabled**.

### Possible values

-   Enabled
-   Disabled

### Best practices

1. Do not enable this policy setting. Machine account passwords are used to establish secure channel communications between members and domain controllers and between the domain controllers within the domain. After it is established, the secure channel transmits sensitive information that is necessary for making authentication and authorization decisions.
2. Do not use this policy setting to try to support dual-boot scenarios that use the same machine account. If you want to configure dual-boot installations that are joined to the same domain, give the two installations different computer names. This policy setting was added to the Windows operating system to help organizations that stockpile pre-built computers that are put into production months later. Those devices do not have to be rejoined to the domain.
3. You may want to consider using this policy setting in specific environments, such as the following:

     - Non-persistent Virtual Desktop Infrastructure implementations. In such implementations, each session starts from a read-only base image.
     - Embedded devices that do not have write access to the OS volume.  
  
    In either case, a password change that was made during normal operations would be lost as soon as the session ends. We strongly recommend that you plan password changes for maintenance windows. Add the password changes to the updates and modifications that Windows performs during maintenance windows. To trigger a password update on a specific OS volume, run the following command:

     ```
     Nltest /sc_change_pwd:<AD DS domain name>
     ```

     In this command, \<AD DS domain name\> represents the domain of the local computer. For more information about maintenance windows and non-persistent VDI implementations, see [Optimizing Windows 10, version 1803, for a Virtual Desktop Infrastructure (VDI) role: VDI optimization principles: Non-Persistent VDI](/windows-server/remote/remote-desktop-services/rds-vdi-recommendations-1803#vdi-optimization-principles).

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value | 
| - | - |
| Default Domain Policy | Disabled | 
| Default Domain Controller Policy | Disabled| 
| Stand-Alone Server Default Settings | Disabled| 
| DC Effective Default Settings | Disabled| 
| Member Server Effective Default Settings | Disabled| 
| Client Computer Effective Default Settings | Disabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

By default, devices running Windows Server that belong to a domain automatically change their passwords for their accounts every certain number of days, typically 30. If you disable this policy setting, devices that run Windows Server retain the same passwords as their machine accounts. Devices 
that cannot automatically change their account password are at risk from an attacker who could determine the password for the machine's domain account.

### Countermeasure

Verify that the **Domain member: Disable machine account password changes** setting is configured to **Disabled**.

### Potential impact

None. This is the default configuration.

## Related topics

- [Security Options](security-options.md)
