---
title: Network security Do not store LAN Manager hash value on next password change (Windows 10)
description: Best practices, security considerations, and more for the security policy setting, Network security Do not store LAN Manager hash value on next password change.
ms.assetid: 6452b268-e5ba-4889-9d38-db28f919af51
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
ms.technology: itpro-security
---

# Network security: Do not store LAN Manager hash value on next password change

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **Network security: Do not store LAN Manager hash value on next password change** security policy setting.

## Reference

This policy setting determines whether LAN Manager is prevented from storing hash values for the new password the next time the password is changed. Hash values are a representation of the password after the encryption algorithm is applied that corresponds to the format that is specified by the algorithm. To decrypt the hash value, the encryption algorithm must be determined and then reversed. The LAN Manager hash is relatively weak and prone to attack compared to the cryptographically stronger NTLM hash. Because the LM hash is stored on the local device in the security database, the passwords can be compromised if the security database, Security Accounts Manager (SAM), is attacked.

When the attackers attack the SAM file, they can potentially gain access to user names and password hashes. Attackers can use a password-cracking tool to determine what the password is. After they have access to this information, they can use it to gain access to resources on your network by impersonating users. Enabling this policy setting won't prevent these types of attacks, but it will make them much more difficult.

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

 - Set **Network security: Do not store LAN Manager hash value on next password change** to **Enabled**.
 - Require all users to set new passwords the next time they sign in to the domain so that LAN Manager hashes are removed.

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
| Member Server Effective Default Settings|Enabled| 
| Client Computer Effective Default Settings | Enabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

The SAM file can be targeted by attackers who seek access to user names and password hashes. Such attacks use special tools to discover passwords, which can then be used to impersonate users and gain access to resources on your network. These types of attacks aren't prevented by enabling this policy setting because LAN Manager hashes are much weaker than NTLM hashes, but it's much more difficult for these attacks to succeed.

### Countermeasure

Enable the **Network security: Do not store LAN Manager hash value on next password change** setting. Require all users to set new passwords the next time they sign in to the domain so that LAN Manager hashes are removed.

### Potential impact

Some non-Microsoft applications might not be able to connect to the system.

## Related topics

- [Security Options](security-options.md)
