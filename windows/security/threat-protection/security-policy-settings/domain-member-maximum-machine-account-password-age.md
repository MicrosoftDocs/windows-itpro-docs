---
title: Domain member Maximum machine account password age (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Domain member Maximum machine account password age security policy setting.
ms.assetid: 0ec6f7c1-4d82-4339-94c0-debb2d1ac109
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
ms.date: 05/31/2018
---

# Domain member: Maximum machine account password age

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Domain member: Maximum machine account password age** security policy setting.

## Reference

The **Domain member: Maximum machine account password age** policy setting determines when a domain member submits a password change.

In Active Directory–based domains, each device has an account and password. By default, the domain members submit a password change every 30 days. You can extend or reduce this interval. Additionally, you can use the policy **Domain member: Disable machine account password changes** to disable the password change requirement altogether. However, before you consider this option, review the implications as described in [Domain member: Disable machine account password changes](https://docs.microsoft.com/windows/security/threat-protection/security-policy-settings/domain-member-disable-machine-account-password-changes).

> [!IMPORTANT]  
> Significantly increasing the password change interval (or disabling password changes) gives a malicious user more time to undertake a brute-force password-guessing attack against one of the machine accounts.  

For more information, see [Machine Account Password Process](https://blogs.technet.microsoft.com/askds/2009/02/15/machine-account-password-process-2/).

### Possible values

-   User-defined number of days between 1 and 999
-   Not defined.

### Best practices

1. It is often advisable to set **Domain member: Maximum machine account password age** to about 30 days. Setting the value to fewer days can increase replication and impact domain controllers. For example, in Windows NT domains, machine passwords were changed every 7 days. The additional replication churn would impact domain controllers in large organizations with many computers or slow links between sites. 
2. Some organizations pre-build computers and then store them for later use or ship them to remote locations. When a computer starts after being offline more than 30 days, the Netlogon service will notice the password age and initiate a secure channel to a domain controller to change it. If the secure channel cannot be established, the computer will not authenticate with the domain. For this reason, some organizations might want to create a special organizational unit (OU) for computers that are prebuilt, and configure the value for this policy setting to a larger number of days.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy  | Not defined | 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | 30 days| 
| DC Effective Default Settings | 30 days| 
| Member Server Effective Default Settings|30 days| 
| Client Computer Effective Default Settings | 30 days| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

By default, the domain members submit a password change every 30 days. If you increase this interval significantly, or set it to 0 so that the computers no longer submit a password change, an attacker has more time to undertake a brute-force attack to guess the password of one or more computer accounts.

### Countermeasure

Configure the **Domain member: Maximum machine account password age** setting to 30 days.

### Potential impact

None. This is the default configuration.
## Related topics

- [Security Options](security-options.md)
