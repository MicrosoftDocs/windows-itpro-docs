---
title: Shutdown Allow system to be shut down without having to log on (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Shutdown Allow system to be shut down without having to log on security policy setting.
ms.assetid: f3964767-5377-4416-8eb3-e14d553a7315
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

# Shutdown: Allow system to be shut down without having to log on

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **Shutdown: Allow system to be shut down without having to log on** security policy setting.

## Reference

This policy setting determines whether a device can be shut down without having to log on to Windows. If you enable this policy setting, the **Shut Down** option is available on the logon screen in Windows. If you disable this policy setting, the **Shut Down** option is removed from the logon screen. This configuration requires that users are able to log on to the device successfully and that they have the **Shut down the system** user right before they can perform a shutdown.

Users who can access the console locally can shut down the system. Attackers or misguided users can connect to the server by using Remote Desktop Services, and then shut it down or restart it without having to identify themselves. A malicious user might also cause a temporary denial-of-service 
condition by walking up to the local console and restarting the server, or shutting down the server and thus rendering unavailable all its applications and services.
### Possible values

-   Enabled

    The shut down command is available on the logon screen.

-   Disabled

    The shut down option is removed from the logon screen and users must have the **Shut down the system** user right before they can perform a shutdown.

-   Not defined

### Best practices

1.  On servers, set this policy to **Disabled**. You must log on to servers to shut them down or restart them.
2.  On client devices, set this policy to **Enabled** and define the list of those with the right to shut them down or restart them with the User Rights Assignment policy **Shut down the system**.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Disabled| 
| DC Effective Default Settings | Disabled| 
| Member Server Effective Default Settings | Disabled| 
| Client Computer Effective Default Settings | Enabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

### Group Policy

For info about the User Rights Assignment policy, **Shut down the system**, see [Shut down the system](shut-down-the-system.md).

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Users who can access the console locally could shut down the device

Attackers who have access to the local console could restart the server, which would cause a temporary DoS condition. Attackers could also shut down the server and leave all of its applications and services unavailable.

### Countermeasure

Disable the **Shutdown: Allow system to be shut down without having to log on** setting.

### Potential impact

You must log on to servers to shut them down or restart them.

## Related topics

- [Security Options](security-options.md)
