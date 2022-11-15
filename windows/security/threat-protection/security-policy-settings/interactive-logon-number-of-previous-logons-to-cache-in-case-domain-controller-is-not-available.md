---
title: Interactive logon Number of previous logons to cache (in case domain controller is not available) (Windows 10)
description: Best practices and more for the security policy setting, Interactive logon Number of previous logons to cache (in case domain controller is not available).
ms.assetid: 660e925e-cc3e-4098-a41e-eb8db8062d8d
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
ms.date: 08/27/2018
ms.technology: itpro-security
---

# Interactive logon: Number of previous logons to cache (in case domain controller is not available)

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Interactive logon: Number of previous logons to cache (in case domain controller is not available)** security policy setting.

## Reference

The **Interactive logon: Number of previous logons to cache (in case domain controller is not available**) policy setting determines whether a user can sign in to a Windows domain by using cached account information. Sign-in information for domain accounts can be cached locally so that, if a domain controller can't be contacted on subsequent logons, a user can still sign in. This policy setting determines the number of unique users whose sign-in information is cached locally.

If a domain controller is unavailable and a user's sign-in information is cached, the user is prompted with the following message:

A domain controller for your domain couldn't be contacted. You've been logged on using cached account information. Changes to your profile since you last logged on might not be available.

If a domain controller is unavailable and a user's sign-in information isn't cached, the user is prompted with this message:

The system can't log you on now because the domain *DOMAIN NAME* isn't available.

The value of this policy setting indicates the number of users whose sign-in information the server caches locally. If the value is 10, the server caches sign-in information for 10 users. When an 11th user signs in to the device, the server overwrites the oldest cached sign-in session.

Users who access the server console will have their sign-in credentials cached on that server. A malicious user who is able to access the file system of the server can locate this cached information and use a brute-force attack to determine user passwords. Windows mitigates this type of attack by 
encrypting the information and keeping the cached credentials in the system's registries, which are spread across numerous physical locations.

> [!NOTE]
> The cached account information does not expire, but can get overwritten, as previously described.

### Possible values

-   A user-defined number from 0 through 50
-   Not defined

### Best practices

The [Windows security baselines](../windows-security-baselines.md) don't recommend configuring this setting. 

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | 10 logons| 
| DC Effective Default Settings | No effect| 
| Member Server Effective Default Settings | 10 logons| 
| Client Computer Effective Default Settings| 10 logons| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they're saved locally or distributed through Group Policy.

### Policy conflict considerations

None

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy isn't contained in a distributed GPO, this policy can be configured on the local computer by using the Local Security Policy snap-in.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

The number that is assigned to this policy setting indicates the number of users whose sign-in information is cached locally by the servers. If the number is set to 10, the server caches sign-in information for 10 users. When an 11th user signs in to the device, the server overwrites the oldest cached sign-in session.

Users who access the server console have their sign-in credentials cached on that server. An attacker who is able to access the file system of the server could locate this cached information and use a brute force attack to attempt to determine user passwords.

To mitigate this type of attack, Windows encrypts the information and obscures its physical location.

### Countermeasure

Configure the **Interactive logon: Number of previous logons to cache (in case domain controller is not available)** setting to 0, which disables the local caching of sign-in information. Other countermeasures include enforcement of strong password policies and physically secure locations for the computers.

### Potential impact

Users can't sign in to any devices if there's no domain controller available to authenticate them. Organizations can configure this value to 2 for end-user computers, especially for mobile users. A configuration value of 2 means that the user's sign-in information is still in the cache, even if a 
member of the IT department has recently logged on to the device to perform system maintenance. This method allows users to sign in to their computers when they aren't connected to the organization's network.

## Related topics

- [Security Options](security-options.md)
