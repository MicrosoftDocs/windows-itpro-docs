---
title: User Account Control Run all administrators in Admin Approval Mode (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the User Account Control Run all administrators in Admin Approval Mode security policy setting.
ms.assetid: b838c561-7bfc-41ef-a7a5-55857259c7bf
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

# User Account Control: Run all administrators in Admin Approval Mode

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **User Account Control: Run all administrators in Admin Approval Mode** security policy setting.

## Reference

This policy setting determines the behavior of all User Account Control (UAC) policies for the entire system. This is the setting that turns UAC on or off.

### Possible values

-   **Enabled**

    Admin Approval Mode and all other UAC policies are dependent on this option being enabled. Changing this setting requires restarting the system.

-   **Disabled**

    Admin Approval Mode and all related UAC policies are disabled.

    >**Note:**  If this security setting is configured to **Disabled**, the Security Center notifies the user that the overall security of the operating system has been reduced.
     
### Best practices

-   Enable this policy to allow all other UAC features and policies to function.

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

A restart of the computer is required before this policy will be effective when changes to this policy are saved locally or distributed through Group Policy.

### Group Policy

All auditing capabilities are integrated in Group Policy. You can configure, deploy, and manage these settings in the Group Policy Management Console (GPMC) or Local Security Policy snap-in for a domain, site, or organizational unit (OU).

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

This is the setting that turns UAC on or off. If this setting is disabled, UAC is not used, and any security benefits and risk mitigations that are dependent on UAC are not present on the computer.

### Countermeasure

Enable the **User Account Control: Run all users, including administrators, as standard users** setting.

### Potential impact

Users and administrators must learn to work with UAC prompts and adjust their work habits to use least privilege operations.

## Related topics

- [Security Options](/windows/device-security/security-policy-settings/security-options)
