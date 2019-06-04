---
title: Microsoft network server Disconnect clients when logon hours expire (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Microsoft network server Disconnect clients when logon hours expire security policy setting.
ms.assetid: 48b5c424-9ba8-416d-be7d-ccaabb3f49af
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

# Microsoft network server: Disconnect clients when logon hours expire

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Microsoft network server: Disconnect clients when logon hours expire** security policy setting.

## Reference

This policy setting enables or disables the forced disconnection of users who are connected to the local device outside their user account's valid logon hours. It affects the SMB component. If you enable this policy setting, client computer sessions with the SMB service are forcibly disconnected when the client's logon hours expire. If you disable this policy setting, established client device sessions are maintained after the client device's logon hours expire.

### Possible values

-   Enabled

    Client device sessions with the SMB service are forcibly disconnected when the client device's logon hours expire. If logon hours are not used in your organization, enabling this policy setting will have no impact.

-   Disabled

    The system maintains an established client device session after the client device's logon hours have expired.

-   Not defined

### Best practices

-   If you enable this policy setting, you should also enable [Network security: Force logoff when logon hours expire](network-security-force-logoff-when-logon-hours-expire.md).

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Enabled| 
| DC Effective Default Settings| Enabled |
| Member Server Effective Default Settings| Enabled| 
| Client Computer Effective Default Settings | Enabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy is not contained in a distributed GPO, this policy can be configured on the local computer by using the Local Security Policy snap-in.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

If your organization configures logon hours for users, it makes sense to enable this policy setting. Otherwise, users who should not have access to network resources outside of their logon hours can continue to use those resources with sessions that were established during allowed hours.

### Countermeasure

Enable the **Microsoft network server: Disconnect clients when logon hours expire** setting.

### Potential impact

If logon hours are not used in your organization, this policy setting has no impact. If logon hours are used, existing user sessions are forcibly terminated when their logon hours expire.

## Related topics

- [Security Options](security-options.md)
