---
title: System objects Require case insensitivity for non-Windows subsystems (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the System objects Require case insensitivity for non-Windows subsystems security policy setting.
ms.assetid: 340d6769-8f33-4067-8470-1458978d1522
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

# System objects: Require case insensitivity for non-Windows subsystems

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **System objects: Require case insensitivity for non-Windows subsystems** security policy setting.

## Reference

This policy setting determines whether case insensitivity is enforced for all subsystems. The Microsoft Win32 subsystem is not case sensitive; however, the kernel supports case sensitivity for other subsystems, such as Portable Operating System Interface for UNIX (POSIX). Enabling this policy setting enforces case insensitivity for all directory objects, symbolic links, and input/output (I/O) objects, including file objects. Disabling this policy setting does not allow the Win32 subsystem to become case sensitive.

Because Windows is case insensitive but the POSIX subsystem will support case sensitivity, if this policy setting is not enforced, it is possible for a user of that subsystem to create a file with the same name as another file but with a different mix of capital letters. That might confuse users when they try to access these files by using normal Win32 tools, because only one of the files will be available.

### Possible values

-   Enabled

    Case insensitivity is enforced for all directory objects, symbolic links, and IO objects, including file objects.

-   Disabled

    Will not allow the Win32 subsystem to become case sensitive.

-   Not defined

### Best practices

-   Set this policy to **Enabled**. All subsystems will be forced to observe case insensitivity. However, this might confuse users who are familiar with one of the UNIX-based operating systems and are used to a case sensitive operating system.

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

Because Windows is case insensitive but the POSIX subsystem supports case sensitivity, failure to enable this policy setting makes it possible for a user of that subsystem to create a file with the same name as another file but with a different mix of uppercase and lowercase letters. Such a situation could potentially confuse users when they try to access such files from normal Win32 tools because only one of the files is available.

### Countermeasure

Enable the **System objects: Require case insensitivity for non-Windows subsystems** setting.

### Potential impact

All subsystems are forced to observe case insensitivity. This configuration may confuse users who are familiar with any UNIX-based operating systems that are case sensitive.

## Related topics

- [Security Options](security-options.md)
