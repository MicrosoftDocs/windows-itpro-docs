---
title: User Account Control Detect application installations and prompt for elevation (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the User Account Control Detect application installations and prompt for elevation security policy setting.
ms.assetid: 3f8cb170-ba77-4c9f-abb3-c3ed1ef264fc
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

# User Account Control: Detect application installations and prompt for elevation

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **User Account Control: Detect application installations and prompt for elevation** security policy setting.

## Reference

This policy setting determines the behavior of application installation detection for the entire system.
Some software might attempt to install itself after being given permission to run. The user may give permission for the program to run because the program is trusted. Then the user is prompted to install an unknown component. This security policy provides another way to identify and stop these attempted software installations before they can do damage.

### Possible values

-   **Enabled**

    Application installation packages that require an elevation of privilege to install are detected and the user is prompted for administrative credentials.

-   **Disabled**

    Application installation packages that require an elevation of privilege to install are not detected and the user is not prompted for administrative credentials.

### Best practices

1.  Installer detection is unnecessary when enterprises run standard user desktops that capitalize on delegated installation technologies like Group Policy Software Install (GPSI) or Configuration Manager. Therefore you can set this security policy to **Disabled**.
2.  Enable the **User Account Control: Detect application installations and prompt for elevation** setting so standard users must provide administrative credentials before software is installed.

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

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Some malicious software might attempt to install itself after being given permission to run, for example, malicious software with a trusted application shell. The user may give permission for the program to run because the program is trusted. Then the user is prompted to install an unknown component. This policy provides another way to trap the software before it can do damage.

### Countermeasure

Enable the **User Account Control: Detect application installations and prompt for elevation** setting.

### Potential impact

Users must provide administrative passwords to install programs.

## Related topics

- [Security Options](/windows/device-security/security-policy-settings/security-options)
