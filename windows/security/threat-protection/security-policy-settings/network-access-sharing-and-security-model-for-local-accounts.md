---
title: Network access Sharing and security model for local accounts (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Network access Sharing and security model for local accounts security policy setting.
ms.assetid: 0b3d703c-ea27-488f-8f59-b345af75b994
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

# Network access: Sharing and security model for local accounts

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **Network access: Sharing and security model for local accounts** security policy setting.

## Reference

This policy setting determines how network logons that use local accounts are authenticated. If you configure this policy setting to Classic, network logons that use local account credentials authenticate with those credentials. If you configure this policy setting to Guest only, network logons that use local accounts are automatically mapped to the Guest account. The Classic model provides precise control over access to resources, and it enables you to grant different types of access to different users for the same resource. Conversely, the Guest only model treats all users equally, and they all receive the same level of access to a given resource, which can be either Read Only or Modify.

>**Note:**  This policy setting does not affect network logons that use domain accounts. Nor does this policy setting affect interactive logons that are performed remotely through services such as Telnet or Remote Desktop Services.
When the device is not joined to a domain, this policy setting also tailors the **Sharing** and **Security** tabs in Windows Explorer to correspond to the sharing and security model that is being used.
 
When the value of this policy setting is **Guest only - local users authenticate as Guest**, any user who can access your device over the network does so with Guest user rights. This means that they will probably be unable to write to shared folders. Although this does increase security, it makes it impossible for authorized users to access shared resources on those systems. When the value is **Classic - local users authenticate as themselves**, local accounts must be password-protected; otherwise, anyone can use those user accounts to access shared system resources.

### Possible values

-   Classic - Local users authenticate as themselves
-   Guest only - Local users authenticate as Guest
-   Not defined

### Best practices

1.  For network servers, set this policy to **Classic - local users authenticate as themselves**.
2.  On end-user systems, set this policy to **Guest only - local users authenticate as Guest**.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Classic (local users authenticate as themselves)| 
| DC Effective Default Settings | Classic (local users authenticate as themselves)| 
| Member Server Effective Default Settings | Classic (local users authenticate as themselves)| 
| Client Computer Effective Default Settings | Classic (local users authenticate as themselves)| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy is not contained in a distributed GPO, this policy can be configured on the local computer by using the Local Security Policy snap-in.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

With the Guest only model, any user who can authenticate to your device over the network does so with Guest privileges, which probably means that they do not have Write access to shared resources on that device. Although this restriction does increase security, it makes it more difficult for authorized users to access shared resources on those computers because ACLs on those resources must include access control entries (ACEs) for the Guest account. With the Classic model, local accounts should be password protected. Otherwise, if Guest access is enabled, anyone can use those user accounts to access shared system resources.

### Countermeasure

For network servers, configure the **Network access: Sharing and security model for local accounts setting** to **Classic – local users authenticate as themselves**. On end-user computers, configure this policy setting to **Guest only – local users authenticate as guest**.

### Potential impact

None. This is the default configuration.

## Related topics

- [Security Options](security-options.md)
