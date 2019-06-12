---
title: Devices Allow undock without having to log on (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Devices Allow undock without having to log on security policy setting.
ms.assetid: 1d403f5d-ad41-4bb4-9f4a-0779c1c14b8c
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

# Devices: Allow undock without having to log on

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Devices: Allow undock without having to log on** security policy setting.

## Reference

This policy setting enables or disables the ability of a user to remove a portable device from a docking station without logging on. If you enable this policy setting, users can press a docked portable device's physical eject button to safely undock the device. If you disable this policy setting, the user must log on to receive permission to undock the device. Only users who have the **Remove Computer from Docking Station** privilege can obtain this permission.

>**Note:**  Disabling this policy setting only reduces theft risk for portable devices that cannot be mechanically undocked. Devices that can be mechanically undocked can be physically removed by the user whether or not they use the Windows undocking functionality.
 
Enabling this policy setting means that anyone with physical access to a device that has been placed in its docking station can remove the computer and possibly tamper with it. For devices that do not have docking stations, this policy setting has no impact. However, for users with a mobile computer that is normally docked while they are in the office, this policy setting will help lower the risk of equipment theft or a malicious user gaining physical access to these devices

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

It is advisable to disable the **Devices: Allow undock without having to log on** policy setting. Users who have docked their devices will have to log on to the local console before they can undock their systems.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined| 
| Default Domain Controller Policy | Not defined | 
| Stand-Alone Server Default Settings | Enabled| 
| DC Effective Default Settings | Enabled| 
| Member Server Effective Default Settings | Enabled| 
| Client Computer Effective Default Settings| Enabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

If this policy setting is enabled, anyone with physical access to portable computers in docking stations could remove them and possibly tamper with them.

### Countermeasure

Disable the **Devices: Allow undock without having to log on** setting.
### Potential impact

Users who have docked their device must log on to the local console before they can undock their computers. For devices that do not have docking stations, this policy setting has no impact.

## Related topics

- [Security Options](security-options.md)
