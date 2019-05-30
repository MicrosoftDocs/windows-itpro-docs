---
title: System cryptography Force strong key protection for user keys stored on the computer (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the System cryptography Force strong key protection for user keys stored on the computer security policy setting.
ms.assetid: 8cbff267-881e-4bf6-920d-b583a5ff7de0
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

# System cryptography: Force strong key protection for user keys stored on the computer

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **System cryptography: Force strong key protection for user keys stored on the computer** security policy setting.

## Reference

This policy setting determines whether users can use private keys, such as their Secure/Multipurpose Internet Mail Extensions (S/MIME) key, without a password.

Configuring this policy setting so that users must provide a password every time they use a key (in addition to their domain password) makes it more difficult for a malicious user to access locally-stored user keys, even if the attacker takes control of the user's device and determines their logon password.

### Possible values

-   **User input is not required when new keys are stored and used**
-   **User is prompted when the key is first used**
-   **User must enter a password each time they use a key**
-   Not defined

### Best practices

-   Set this policy to **User must enter a password each time they use a key**. Users must enter their password every time they access a key that is stored on their computer. For example, if users use an S/MIME certificate to digitally sign their email, they will be forced to enter the password for that certificate every time they send a signed email message. For some organizations, the overhead that is caused by using this value might be too high, but they should set the value at a minimum to **User is prompted when the key is first used**.

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
| Client Computer Effective Default Settings| Not defined| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

If a user's account is compromised or the user's device is inadvertently left unsecured, the malicious user can use the keys that are stored for the user to access protected resources.

### Countermeasure

Configure the **System cryptography: Force strong key protection for user keys stored on the computer** setting to **User must enter a password each time they use a key** so that users must provide a password that is distinct from their domain password every time they use a key. This configuration makes it more difficult for an attacker to access locally stored user keys, even if the attacker takes control of the user's computer and determines the logon password.

### Potential impact

Users must type their password every time they access a key that is stored on their device. For example, if users use an S/MIME certificate to digitally sign their email, they are forced to type the password for that certificate every time they send a signed email message. For some organizations, the overhead that is involved by using this configuration may be too high. At a minimum, this setting should be set to **User is prompted when the key is first used**.

## Related topics

- [Security Options](security-options.md)
