---
title: Network security Force logoff when logon hours expire (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Network security Force logoff when logon hours expire security policy setting.
ms.assetid: 64d5dde4-58e4-4217-b2c4-73bd554ec926
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

# Network security: Force logoff when logon hours expire

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **Network security: Force logoff when logon hours expire** security policy setting.

## Reference

This security setting determines whether to disconnect users who are connected to the local device outside their user account's valid logon hours. This setting affects the Server Message Block (SMB) component.

This policy setting does not apply to administrator accounts, but it behaves as an account policy. For domain accounts, there can be only one account policy. The account policy must be defined in the Default Domain Policy, and it is enforced by the domain controllers that make up the domain. A domain controller always pulls the account policy from the Default Domain Policy Group Policy Object (GPO), even if there is a different account policy that is applied to the organizational unit that contains the domain controller. By default, workstations and servers that are joined to a domain (for example, member devices) also receive the same account policy for their local accounts. However, local account policies for member devices can be different from the domain account policy by defining an account policy for the organizational unit that contains the member devices. Kerberos settings are not applied to member devices.

### Possible values

-   Enabled

    When enabled, this policy causes client sessions with the SMB server to be forcibly disconnected when the client's logon hours expire.

-   Disabled

    When disabled, this policy allows for the continuation of an established client session after the client's logon hours have expired.

-   Not defined

### Best practices

-   Set **Network security: Force logoff when logon hours expire** to Enabled. SMB sessions will be terminated on member servers when a user's logon time expires, and the user will be unable to log on to the system until their next scheduled access time begins.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Disabled| 
| Default Domain Controller Policy| Not defined| 
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

If you disable this policy setting, users can remain connected to the computer outside of their allotted logon hours.

### Countermeasure

Enable the **Network security: Force logoff when logon hours expire** setting. This policy setting does not apply to administrator accounts.

### Potential impact

When a user's logon time expires, SMB sessions terminate. The user cannot log on to the device until the next scheduled access time commences.

## Related topics

- [Security Options](security-options.md)
