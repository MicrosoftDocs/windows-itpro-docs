---
title: Network access Restrict anonymous access to Named Pipes and Shares (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Network access Restrict anonymous access to Named Pipes and Shares security policy setting.
ms.assetid: e66cd708-7322-4d49-9b57-1bf8ec7a4c10
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

# Network access: Restrict anonymous access to Named Pipes and Shares

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **Network access: Restrict anonymous access to Named Pipes and Shares** security policy setting.

## Reference

This policy setting enables or disables the restriction of anonymous access to only those shared folders and pipes that are named in the **Network access: Named pipes that can be accessed anonymously** and [Network access: Shares that can be accessed anonymously](network-access-shares-that-can-be-accessed-anonymously.md) settings. The setting controls null session access to shared folders on your computers by adding RestrictNullSessAccess with the value 1 in the registry key 
**HKEY\_LOCAL\_MACHINE\\System\\CurrentControlSet\\Services\\LanManServer\\Parameters**. This registry value toggles null session shared folders on or off to control whether the Server service restricts unauthenticated clients' access to named resources.

Null sessions are a weakness that can be exploited through the various shared folders on the devices in your environment.

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

-   Set this policy to Enabled. Enabling this policy setting restricts null session access to unauthenticated users to all server pipes and shared folders except those listed in the **NullSessionPipes** and **NullSessionShares** registry entries.

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
| Member Server Effective Default Settings | Enabled| 
| Client Computer Effective Default Settings| Enabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Null sessions are a weakness that can be exploited through shared folders (including the default shared folders) on devices in your environment.

### Countermeasure

Enable the **Network access: Restrict anonymous access to Named Pipes and Shares** setting.

### Potential impact

You can enable this policy setting to restrict null-session access for unauthenticated users to all server pipes and shared folders except those that are listed in the NullSessionPipes and NullSessionShares entries.

## Related topics

- [Security Options](security-options.md)
