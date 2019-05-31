---
title: Interactive logon Don't display last signed-in (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Interactive logon Do not display last user name security policy setting.
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
ms.reviewer: 
ms.author: dansimp
---

# Interactive logon: Don't display last signed-in

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Interactive logon: Don't display last signed-in** security policy setting. Before Windows 10 version 1703, this policy setting was named **Interactive logon:Do not display last user name.**

## Reference

This security policy setting determines whether the name of the last user to log on to the device is displayed on the Secure Desktop.

If this policy is enabled, the full name of the last user to successfully log on is not displayed on the Secure Desktop, nor is the user’s logon tile displayed. Additionally, if the **Switch user** feature is used, the full name and logon tile are not displayed. The logon screen requests a qualified domain account name (or local user name) and password.

If this policy is disabled, the full name of the last user to log on is displayed, and the user’s logon tile is displayed. This behavior is the same when the **Switch user** feature is used.

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

Your implementation of this policy depends on your security requirements for displayed logon information. If you have devices that store sensitive data, with monitors displayed in unsecured locations, or if you have devices with sensitive data that are remotely accessed, revealing logged on user’s full names or domain account names might contradict your overall security policy.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

| Server type or Group Policy object (GPO) | Default value|
| - | - |
| Default domain policy| Disabled|
| Default domain controller policy| Disabled|
| Stand-alone server default settings | Disabled|
| Domain controller effective default settings | Disabled|
| Member server effective default settings | Disabled|
| Effective GPO default settings on client computers | Disabled|
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Policy conflict considerations

None.

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy is not contained in a distributed GPO, this policy can be configured on the local computer by using the Local Security Policy snap-in.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

An attacker with access to the console (for example, someone with physical access or someone who can connect to the device through Remote Desktop Session Host) could view the name of the last user who logged on. The attacker could then try to guess the password, use a dictionary, or use a brute-force attack to try to log on.

### Countermeasure

Enable the **Interactive logon: Do not display last user name** setting.

### Potential impact

Users must always type their user names and passwords when they log on locally or to the domain. The logon tiles of all logged on users are not displayed.

## Related topics

- [Security Options](security-options.md)
