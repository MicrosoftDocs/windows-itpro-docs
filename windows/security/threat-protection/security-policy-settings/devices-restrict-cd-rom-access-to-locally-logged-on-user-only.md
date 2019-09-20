---
title: Devices Restrict CD-ROM access to locally logged-on user only (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Devices Restrict CD-ROM access to locally logged-on user only security policy setting.
ms.assetid: 8b8f44bb-84ce-4f18-af30-ab89910e234d
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

# Devices: Restrict CD-ROM access to locally logged-on user only

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Devices: Restrict CD-ROM access to locally logged-on user only** security policy setting.

## Reference

This policy setting determines whether a CD is accessible to local and remote users simultaneously. If you enable this policy setting, only the interactively logged-on user is allowed to access removable CDs. If this policy setting is enabled and no one is logged on interactively, the CD can be accessed over the network.

The security benefit of enabling this policy setting is small because it only prevents network users from accessing the drive when someone is logged on to the local console of the system at the same time. Additionally, CD drives are not automatically made available as network shared drives; you must deliberately choose to share the drive. This is important when administrators are installing software or copying data from a CD-ROM, and they do not want network users to be able to execute the applications or view the data.

If this policy setting is enabled, users who connect to the server over the network will not be able to use any CD drives that are installed on the server when anyone is logged on to the local console of the server. Enabling this policy setting is not suitable for a system that serves as a CD jukebox for network users.

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

-   Best practices are dependent on your security and user accessibility requirements for CD drives.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.


| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined | 
| Default Domain Controller Policy | Not defined | 
| Stand-Alone Server Default Settings | Disabled | 
| DC Effective Default Settings | Disabled | 
| Member Server Effective Default Settings | Disabled | 
| Client Computer Effective Default Settings | Disabled | 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

A remote user could potentially access a mounted CD that contains sensitive information. This risk is small because CD drives are not automatically made available as shared drives; you must deliberately choose to share the drive. However, you can deny network users the ability to view data or run 
applications from removable media on the server.

### Countermeasure
Enable the **Devices: Restrict CD-ROM drive access to locally logged-on user only** setting.

### Potential impact
Users who connect to the server over the network cannot use any CD drives that are installed on the server when anyone is logged on to the local console of the server. System tools that require access to the CD drive will fail. For example, the Volume Shadow Copy service attempts to access all CD and floppy disk drives that are present on the computer when it initializes, and if the service cannot access one of these drives, it fails. This condition causes the Windows Backup tool to fail if volume shadow copies were specified for the backup job. Any non-Microsoft backup products that use volume shadow copies also fail. This policy setting would not be suitable for a computer that serves as a CD jukebox for network users.

## Related topics

- [Security Options](security-options.md)
