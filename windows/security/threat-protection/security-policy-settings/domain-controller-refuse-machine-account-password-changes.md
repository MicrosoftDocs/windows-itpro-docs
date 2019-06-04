---
title: Domain controller Refuse machine account password changes (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Domain controller Refuse machine account password changes security policy setting.
ms.assetid: 5a7fa2e2-e1a8-4833-90f7-aa83e3b456a9
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

# Domain controller: Refuse machine account password changes

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Domain controller: Refuse machine account password changes** security policy setting.

## Reference

This policy setting enables or disables blocking a domain controller from accepting password change requests for machine accounts. By default, devices joined to the domain change their machine account passwords every 30 days. If enabled, the domain controller will refuse machine account password change requests.

### Possible values

-   Enabled

    When enabled, this setting does not allow a domain controller to accept any changes to a machine account's password.

-   Disabled

    When disabled, this setting allows a domain controller to accept any changes to a machine account's password.

-   Not defined

    Same as Disabled.

### Best practices

-   Enabling this policy setting on all domain controllers in a domain prevents domain members from changing their machine account passwords. This, in turn, leaves those passwords susceptible to attack. Make sure that this conforms to your overall security policy for the domain.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Not defined| 
| DC Effective Default Settings | Disabled| 
| Member Server Effective Default Settings | Disabled| 
| Client Computer Effective Default Settings | Not applicable| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

If you enable this policy setting on all domain controllers in a domain, domain members cannot change their machine account passwords, and those passwords are more susceptible to attack.

### Countermeasure

Disable the **Domain controller: Refuse machine account password changes** setting.

### Potential impact

None. This is the default configuration.

## Related topics

- [Security Options](security-options.md)
