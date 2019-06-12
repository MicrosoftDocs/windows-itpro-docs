---
title: Network access Shares that can be accessed anonymously (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Network access Shares that can be accessed anonymously security policy setting.
ms.assetid: f3e4b919-8279-4972-b415-5f815e2f0a1a
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

# Network access: Shares that can be accessed anonymously

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **Network access: Shares that can be accessed anonymously** security policy setting.

## Reference

This policy setting determines which shared folders can be accessed by anonymous users.

### Possible values

-   User-defined list of shared folders
-   Not Defined

### Best practices

-   Set this policy to a null value. There should be little impact because this is the default value. All users will have to be authenticated before they can access shared resources on the server.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Not defined| 
| DC Effective Default Settings | Not defined| 
| Member Server Effective Default Settings | Not defined| 
| Client Computer Effective Default Settings | Not defined| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Any shared folders that are listed can be accessed by any network user, which could lead to the exposure or corruption of sensitive data.

### Countermeasure

Configure the **Network access: Shares that can be accessed anonymously** setting to a null value.

### Potential impact

There should be little impact because this is the default configuration. Only authenticated users have access to shared resources on the server.

## Related topics

- [Security Options](security-options.md)
