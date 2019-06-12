---
title: Network security Allow LocalSystem NULL session fallback (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Network security Allow LocalSystem NULL session fallback security policy setting.
ms.assetid: 5b72edaa-bec7-4572-b6f0-648fc38f5395
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

# Network security: Allow LocalSystem NULL session fallback

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Network security: Allow LocalSystem NULL session fallback** security policy setting.

## Reference

This policy affects session security during the authentication process between devices running Windows Server 2008 R2 and Windows 7 and later and those devices running earlier versions of the Windows operating system. For computers running Windows Server 2008 R2 and Windows 7 and later, services running as Local System require a service principal name (SPN) to generate the session key. However, if [Network security: Allow Local System to use computer identity for NTLM](network-security-allow-local-system-to-use-computer-identity-for-ntlm.md) is set to disabled, services running as Local 
System will fall back to using NULL session authentication when they transmit data to servers running versions of Windows earlier than Windows Vista or Windows Server 2008. NULL session does not establish a unique session key for each authentication; and thus, it cannot provide integrity or confidentiality protection. The setting **Network security: Allow LocalSystem NULL session fallback** determines whether services that request the use of session security are allowed to perform signature or encryption functions with a well-known key for application compatibility.

### Possible values

-   **Enabled**

    When a service running as Local System connects with a NULL session, a system-generated session key is created, which provides no protection but allows applications to sign and encrypt data without errors. This increases application compatibility, but it degrades the level of security.

-   **Disabled**

    When a service running as Local System connects with a NULL session, session security will be unavailable. Calls seeking encryption or signing will fail. This setting is more secure, but at the risk of degrading application incompatibility. Calls that are using the device identity instead of a 
    NULL session will still have full use of session security.

-   Not defined. When this policy is not defined, the default takes effect. This is Enabled for versions of the Windows operating system earlier than Windows Server 2008 R2 and Windows 7, and it is Disabled otherwise.

### Best practices

When services connect with the device identity, signing and encryption are supported to provide data protection. When services connect with a NULL session, this level of data protection is not provided. However, you will need to evaluate your environment to determine the Windows operating system versions that you support. If this policy is enabled, some services may not be able to authenticate.

This policy applies to Windows Server 2008 and Windows Vista (SP1 and later). When your environment no longer requires support for Windows NT 4, this policy should be disabled. By default, it is disabled in Windows 7 and Windows Server 2008 R2 and later.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

| Server type or Group Policy Object (GPO) | Default value |
| - | - |
| Default domain policy| Not defined| 
| Default domain controller policy | Not defined| 
| Stand-alone server default settings | Not defined| 
| Domain controller effective default settings | Not applicable| 
| Member server effective default settings | Not applicable |
| Effective GPO default settings on client computers | Not applicable| 
 
## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

If this setting is Enabled, when a service connects with a NULL session, a system-generated session key is created, which provides no protection but allows applications to sign and encrypt data without errors. Data that is intended to be protected might be exposed.

### Countermeasure

You can configure the computer to use the computer identity for Local System with the policy **Network security: Allow Local System to use computer identity for NTLM**. If that is not possible, this policy can be used to prevent data from being exposed in transit if it was protected with a well-known key.

### Potential impact

If you enable this policy, services that use NULL session with Local System could fail to authenticate because they will be prohibited from using signing and encryption.

## Related topics

- [Security Options](security-options.md)
