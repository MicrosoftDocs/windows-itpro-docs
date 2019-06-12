---
title: Network access Remotely accessible registry paths (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Network access Remotely accessible registry paths security policy setting.
ms.assetid: 977f86ea-864f-4f1b-9756-22220efce0bd
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

# Network access: Remotely accessible registry paths

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **Network access: Remotely accessible registry paths** security policy setting.

## Reference

This policy setting determines which registry paths are accessible when an application or process references the WinReg key to determine access permissions.

The registry is a database for device configuration information, much of which is sensitive. A malicious user can use the registry to facilitate unauthorized activities. To reduce the risk of this happening, suitable access control lists (ACLs) are assigned throughout the registry to help protect it from access by unauthorized users.

To allow remote access, you must also enable the Remote Registry service.

### Possible values

-   User-defined list of paths
-   Not Defined

### Best practices

-   Set this policy to a null value; that is, enable the policy setting but do not enter any paths in the text box. Remote management tools, such as the Microsoft Baseline Security Analyzer and Configuration Manager, require remote access to the registry. Removing the default registry paths from the list of accessible paths might cause these and other management tools to fail.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | See the following registry key combination| 
| DC Effective Default Settings | See the following registry key combination| 
| Member Server Effective Default Settings | See the following registry key combination| 
| Client Computer Effective Default Settings | See the following registry key combination| 
 
The combination of all the following registry keys apply to the previous settings:

1.  System\\CurrentControlSet\\Control\\ProductOptions
2.  System\\CurrentControlSet\\Control\\Server Applications
3.  Software\\Microsoft\\Windows NT\\CurrentVersion

## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

An attacker could use information in the registry to facilitate unauthorized activities. To reduce the risk of such an attack, suitable ACLs are assigned throughout the registry to help protect it from access by unauthorized users.

### Countermeasure

Configure the **Network access: Remotely accessible registry paths** setting to a null value (enable the setting, but do not enter any paths in the text box).

### Potential impact

Remote management tools such as the Microsoft Baseline Security Analyzer (MBSA) and Configuration Manager require remote access to the registry to properly monitor and manage those computers. If you remove the default registry paths from the list of accessible ones, such remote management tools could fail.

>**Note:**  If you want to allow remote access, you must also enable the Remote Registry service.
 
## Related topics

- [Security Options](security-options.md)
