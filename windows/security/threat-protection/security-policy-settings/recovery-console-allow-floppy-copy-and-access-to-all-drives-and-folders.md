---
title: Recovery console Allow floppy copy and access to all drives and folders (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Recovery console Allow floppy copy and access to all drives and folders security policy setting.
ms.assetid: a5b4ac0c-f33d-42b5-a866-72afa7cbd0bd
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

# Recovery console: Allow floppy copy and access to all drives and folders

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **Recovery console: Allow floppy copy and access to all drives and folders** security policy setting.

## Reference

This policy setting enables or disables the Recovery Console SET command, which allows you to set the following Recovery Console environment variables.

-   **AllowWildCards**. Enables wildcard support for some commands, such as the DEL command.
-   **AllowAllPaths**. Allows access to all files and folders on the device.
-   **AllowRemovableMedia**. Allows files to be copied to removable media, such as a floppy disk.
-   **NoCopyPrompt**. Suppresses the prompt that typically displays before an existing file is overwritten.

You might forget to remove removable media, such as CD or floppy disk, with sensitive data or applications that a malicious user could then steal. Or you could accidentally leave a startup disk in the computer after using the Recovery Console. If the device is restarted for any reason and the BIOS has been configured to boot from the removable media before the hard disk drive, the server will start from the removable disk. This causes the server's network services to be unavailable.

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

-   Set **Recovery Console: Allow floppy copy and access to drives and folders** to **Disabled**. Users who have started a server by using the Recovery Console and logged in with the built-in Administrator account will not be able to copy files and folders to a floppy disk.

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
| Client Computer Effective Default Settings | Disabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Group Policy

Setting and deploying this policy using Group Policy takes precedence over the setting on the local device.

### Policy conflicts

None.

### Command-line tools

Enabling this security option makes the Recovery Console SET command available, which allows you to set the following Recovery Console environment variables:

-   AllowWildCards: Enable wildcard support for some commands (such as the DEL command).
-   AllowAllPaths: Allow access to all files and folders on the device.
-   AllowRemovableMedia: Allow files to be copied to removable media, such as a floppy disk.
-   NoCopyPrompt: Do not prompt when overwriting an existing file.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

An attacker who can cause the system to restart into the Recovery Console could steal sensitive data and leave no audit or access trail.

### Countermeasure

Disable the **Recovery console: Allow floppy copy and access to drives and folders** setting.

### Potential impact

Users who have started a server through the Recovery Console and logged in with the built-in Administrator account cannot copy files and folders to a floppy disk.

## Related topics

- [Security Options](security-options.md)
