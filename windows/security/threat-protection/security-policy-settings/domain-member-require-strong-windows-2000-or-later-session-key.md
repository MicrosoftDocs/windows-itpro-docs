---
title: Domain member Require strong (Windows 2000 or later) session key (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Domain member Require strong (Windows 2000 or later) session key security policy setting.
ms.assetid: 5ab8993c-5086-4f09-bc88-1b27454526bd
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

# Domain member: Require strong (Windows 2000 or later) session key

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Domain member: Require strong (Windows 2000 or later) session key** security policy setting.

## Reference

The **Domain member: Require strong (Windows 2000 or later) session key** policy setting determines whether a secure channel can be established with a domain controller that is not capable of encrypting secure channel traffic with a strong, 128-bit session key. Enabling this policy setting prevents establishing a secure channel with any domain controller that cannot encrypt secure channel data with a strong key. Disabling this policy setting allows 64-bit session keys.

Whenever possible, you should take advantage of these stronger session keys to help protect secure channel communications from eavesdropping and session-hijacking network attacks. Eavesdropping is a form of hacking in which network data is read or altered in transit. The data can be modified to hide or change the name of the sender, or it can be redirected.

### Possible values

-   Enabled

    When enabled on a member workstation or server, all domain controllers in the domain that the member belongs to must be capable of encrypting secure channel data with a strong, 128-bit key. This means that all such domain controllers must be running at least Windows 2000 Server.

-   Disabled

    Allows 64-bit session keys to be used.

-   Not defined.

### Best practices

-   It is advisable to set **Domain member: Require strong (Windows 2000 or later) session key** to Enabled. Enabling this policy setting ensures that all outgoing secure channel traffic will require a strong encryption key. Disabling this policy setting requires that key strength be negotiated. Only enable this option if the domain controllers in all trusted domains support strong keys. By default, this value is disabled.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO 
| Default value 
| - | - |
| Default Domain Policy | Not defined | 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Disabled| 
| DC Effective Default Settings | Disabled| 
| Member Server Effective Default Settings | Disabled| 
| Client Computer Effective Default Settings | Disabled| 
 
## Policy management


This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Group Policy

Misuse of this policy setting is a common error that can cause data loss or problems with data access or security.

You will you be able to join devices that do not support this policy setting to domains where the domain controllers have this policy setting enabled.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Session keys that are used to establish secure channel communications between domain controllers and member computers are much stronger starting with Windows 2000.

Whenever possible, you should take advantage of these stronger session keys to help protect secure channel communications from attacks that attempt to hijack network sessions and eavesdrop. (Eavesdropping is a form of hacking in which network data is read or altered in transit. The data can be modified to hide or change the sender, or be redirected.)

### Countermeasure

Enable the **Domain member: Require strong (Windows 2000 or later) session key** setting.

If you enable this policy setting, all outgoing secure channel traffic requires a strong encryption key. If you disable this policy setting, the key strength is negotiated. You should enable this policy setting only if the domain controllers in all trusted domains support strong keys. By default, this policy setting is disabled.

### Potential impact

Devices that do not support this policy setting cannot join domains in which the domain controllers have this policy setting enabled.

## Related topics

- [Security Options](security-options.md)
