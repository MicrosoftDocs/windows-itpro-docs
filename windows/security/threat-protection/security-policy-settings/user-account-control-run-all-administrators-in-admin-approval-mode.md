---
title: UAC Run all administrators in Admin Approval Mode (Windows 10)
description: Learn about best practices, security considerations and more for the security policy setting, User Account Control Run all administrators in Admin Approval Mode.
ms.assetid: b838c561-7bfc-41ef-a7a5-55857259c7bf
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
ms.topic: conceptual
ms.date: 04/19/2017
ms.technology: itpro-security
---

# User Account Control: Run all administrators in Admin Approval Mode

**Applies to**
-   Windows 11
-   Windows 10

This article describes the best practices, location, values, policy management and security considerations for the **User Account Control: Run all administrators in Admin Approval Mode** security policy setting.

## Reference

This policy setting determines the behavior of all User Account Control (UAC) policies for the entire system. This setting is the one that turns on or off the UAC.

### Possible values

-   **Enabled**

    Admin Approval Mode and all other UAC policies are dependent on this option being enabled. Changing this setting requires restarting the system.

-   **Disabled**

    Admin Approval Mode and all related UAC policies are disabled.

    > [!NOTE]
    > If this security setting is configured to **Disabled**, Windows Security app notifies the user that the overall security of the operating system has been reduced.

### Best practices

-   Turn on this policy to allow all other UAC features and policies to function.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy's property page.

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

The computer must be restarted before this policy is effective when changes to this policy are saved locally or distributed through Group Policy.

### Group Policy

All auditing capabilities are integrated in Group Policy. You can configure, deploy, and manage these settings in the Group Policy Management Console or Local Security Policy snap-in for a domain, site, or organizational unit.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

This setting turns on or turns off UAC. If this setting isn't turned on, UAC isn't used, and any security benefits and risk mitigations that are dependent on UAC aren't present on the computer.

### Countermeasure

Turn on the **User Account Control: Run all users, including administrators, as standard users** setting.

### Potential impact

Users and administrators must learn to work with UAC prompts and adjust their work habits to use least privilege operations.

## Related topics

- [Security Options](/windows/device-security/security-policy-settings/security-options)
