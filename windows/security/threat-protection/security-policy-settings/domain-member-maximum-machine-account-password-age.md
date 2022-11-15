---
title: Domain member Maximum machine account password age (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Domain member Maximum machine account password age security policy setting.
ms.assetid: 0ec6f7c1-4d82-4339-94c0-debb2d1ac109
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
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 05/29/2020
ms.technology: itpro-security
---

# Domain member: Maximum machine account password age

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Domain member: Maximum machine account password age** security policy setting.

## Reference

The **Domain member: Maximum machine account password age** policy setting determines when a domain member submits a password change.

In Active Directory–based domains, each device has an account and password. By default, the domain members submit a password change every 30 days. You can extend or reduce this interval. Additionally, you can use the **Domain member: Disable machine account password changes** policy to disable the password change requirement completely. However, before you consider this option, review the implications as described in [Domain member: Disable machine account password changes](domain-member-disable-machine-account-password-changes.md).

> [!IMPORTANT]  
> Significantly increasing the password change interval (or disabling password changes) gives an attacker more time to undertake a brute-force password-guessing attack against one of the machine accounts.  

For more information, see [Machine Account Password Process](https://techcommunity.microsoft.com/t5/Ask-the-Directory-Services-Team/Machine-Account-Password-Process/ba-p/396026).

### Possible values

- User-defined number of days between 1 and 999, inclusive
- Not defined

### Best practices

We recommend that you set **Domain member: Maximum machine account password age** to about 30 days. Setting the value to fewer days can increase replication and affect domain controllers. For example, in Windows NT domains, machine passwords were changed every 7 days. The extra replication churn would affect domain controllers in large organizations that have many computers or slow links between sites. 

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

None. Changes to this policy become effective without a computer restart when they're saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

By default, the domain members submit a password change every 30 days. If you increase this interval so that the computers no longer submit a password change, an attacker has more time to undertake a brute-force attack to guess the password of one or more computer accounts.

### Countermeasure

Configure the **Domain member: Maximum machine account password age** setting to 30 days.

### Potential impact

None. This non-impact state is the default configuration.
## Related topics

- [Security Options](security-options.md)
