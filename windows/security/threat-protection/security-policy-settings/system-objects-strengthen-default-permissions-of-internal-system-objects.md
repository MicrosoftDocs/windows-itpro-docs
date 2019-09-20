---
title: System objects Strengthen default permissions of internal system objects (e.g. Symbolic Links) (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the System objects Strengthen default permissions of internal system objects (e.g. Symbolic Links) security policy setting.
ms.assetid: 3a592097-9cf5-4fd0-a504-7cbfab050bb6
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

# System objects: Strengthen default permissions of internal system objects (e.g. Symbolic Links)

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **System objects: Strengthen default permissions of internal system objects (e.g. Symbolic Links)** security policy setting.

## Reference

This policy setting determines the strength of the default discretionary access control list (DACL) for objects. Windows maintains a global list of shared system resources such as MS-DOS device names, mutexes, and semaphores. By using this list, processes can locate and share objects. Each type of object is created with a default DACL that specifies who can access the objects with what permissions. Enabling this policy setting strengthens the default DACL and allows users who are not administrators to read, but not to modify, shared objects that they did not create.

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

-   It is advisable to set this policy to **Enabled**.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\ Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Enabled |
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

This policy setting is enabled by default to protect against a known vulnerability that can be used with hard links or symbolic links. Hard links are actual directory entries in the file system. With hard links, the same data in a file system can be referred to by different file names. Symbolic links are text files that provide a pointer to the file that is interpreted and followed by the operating system as a path to another file or directory. Because symbolic links are a separate file, they can exist independently of the target location. If a symbolic link is deleted, its target location remains unaffected. When this setting is disabled, it is possible for a malicious user to destroy a data file by creating a link that looks like a temporary file that the system automatically creates, such as a sequentially named log file, but it points to the data file that the malicious user wants to eradicate. When the system writes the files with that name, the data is overwritten. Enabling **System objects: Strengthen default permissions of internal system objects (e.g., Symbolic Links)** prevents an attacker from exploiting programs that create files with predictable names by not allowing them to write to objects that they did not create.

### Countermeasure

Enable the **System objects: Strengthen default permissions of global system objects (for example, Symbolic Links)** setting.

### Potential impact

None. This is the default configuration.

## Related topics

- [Security Options](security-options.md)
