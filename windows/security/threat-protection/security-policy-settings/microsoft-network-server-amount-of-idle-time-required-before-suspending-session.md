---
title: Microsoft network server Amount of idle time required before suspending session (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Microsoft network server Amount of idle time required before suspending session security policy setting.
ms.assetid: 8227842a-569d-480f-b43c-43450bbaa722
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

# Microsoft network server: Amount of idle time required before suspending session

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Microsoft network server: Amount of idle time required before suspending session** security policy setting.

## Reference

Each Server Message Block (SMB) session consumes server resources. Establishing numerous null sessions will cause the server to slow down or possibly fail. A malicious user might repeatedly establish SMB sessions until the server stops responding; at this point, SMB services will become slow or unresponsive.

The **Microsoft network server: Amount of idle time required before suspending session** policy setting determines the amount of continuous idle time that must pass in an SMB session before the session is suspended due to inactivity. You can use this policy setting to control when a device suspends an inactive SMB session. The session is automatically reestablished when client device activity resumes.

### Possible values

-   A user-defined number of minutes from 0 through 99,999

    For this policy setting, a value of 0 means to disconnect an idle session as quickly as is reasonably possible. The maximum value is 99999, which is 208 days. In effect, this value disables the policy.

-   Not defined

### Best practices

-   It is advisable to set this policy to 15 minutes. There will be little impact because SMB sessions will be reestablished automatically if the client resumes activity.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined |
| Stand-Alone Server Default Settings | 15 minutes| 
| DC Effective Default Settings | 15 minutes| 
| Member Server Effective Default Settings | 15 minutes| 
| Client Computer Effective Default Settings | 15 minutes| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Each SMB session consumes server resources, and numerous null sessions slow the server or possibly cause it to fail. An attacker could repeatedly establish SMB sessions until the server's SMB services become slow or unresponsive.

### Countermeasure

The default behavior on a server mitigates this threat by design.

### Potential impact

There is little impact because SMB sessions are reestablished automatically if the client computer resumes activity.

## Related topics

- [Security Options](security-options.md)
