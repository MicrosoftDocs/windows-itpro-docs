---
title: User Account Control Switch to the secure desktop when prompting for elevation (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the User Account Control Switch to the secure desktop when prompting for elevation security policy setting.
ms.assetid: 77a067db-c70d-4b02-9861-027503311b8b
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

# User Account Control: Switch to the secure desktop when prompting for elevation

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **User Account Control: Switch to the secure desktop when prompting for elevation** security policy setting.

## Reference

This policy setting determines whether the elevation request prompts on the interactive user desktop or on the secure desktop.

The secure desktop presents the logon UI and restricts functionality and access to the system until the logon requirements are satisfied.

The secure desktop’s primary difference from the user desktop is that only trusted processes running as SYSTEM are allowed to run here (that is, nothing is running at the user’s privilege level). The path to get to the secure desktop from the user desktop must also be trusted through the entire chain.

### Possible values

-   **Enabled**

    All elevation requests by default go to the secure desktop.

-   **Disabled**

    All elevation requests go to the interactive user desktop.

### Best practices

-   Enable the **User Account Control: Switch to the secure desktop when prompting for elevation setting**. The secure desktop helps protect against input and output spoofing by presenting the credentials dialog box in a protected section of memory that is accessible only by trusted system 
processes.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Enabled| 
| DC Effective Default Settings | Enabled| 
| Member Server Effective Default Settings| Enabled| 
| Client Computer Effective Default Settings | Enabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Group Policy

All auditing capabilities are integrated in Group Policy. You can configure, deploy, and manage these settings in the Group Policy Management Console (GPMC) or Local Security Policy snap-in for a domain, site, or organizational unit (OU).

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Elevation prompt dialog boxes can be spoofed, causing users to disclose their passwords to malicious software. Mouse cursors can be spoofed by hiding the real cursor and replacing it with an offset so the cursor is actually pointing to the **Allow** button.

### Countermeasure

Enable the **User Account Control: Switch to the secure desktop when prompting for elevation setting**. The secure desktop helps protect against input and output spoofing by presenting the credentials dialog box in a protected section of memory that is accessible only by trusted system processes.

### Potential impact

None. This is the default configuration.

## Related topics

- [Security Options](/windows/device-security/security-policy-settings/security-options)
