---
title: Domain member Digitally sign secure channel data (when possible) (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Domain member Digitally sign secure channel data (when possible) security policy setting.
ms.assetid: a643e491-4f45-40ea-b12c-4dbe47e54f34
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

# Domain member: Digitally sign secure channel data (when possible)

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Domain member: Digitally sign secure channel data (when possible)** security policy setting.

## Reference

This setting determines whether all secure channel traffic that is initiated by the domain member meets minimum security requirements. Specifically, it determines whether all secure channel traffic that is initiated by the domain member must be signed. Logon information that is transmitted over the 
secure channel is always encrypted regardless of whether the encryption of all other secure channel traffic is negotiated.

The following policy settings determine whether a secure channel can be established with a domain controller that is not capable of signing or encrypting secure channel traffic:
-   [Domain member: Digitally encrypt or sign secure channel data (always)](domain-member-digitally-encrypt-or-sign-secure-channel-data-always.md)
-   [Domain member: Digitally encrypt secure channel data (when possible)](domain-member-digitally-encrypt-secure-channel-data-when-possible.md)
-   Domain member: Digitally sign secure channel data (when possible)

Setting [Domain member: Digitally encrypt or sign secure channel data (always)](domain-member-digitally-encrypt-or-sign-secure-channel-data-always.md) to **Enabled** prevents establishing a secure channel with any domain controller that cannot sign or encrypt all secure channel data.

To protect authentication traffic from man-in-the-middle, replay, and other types of network attacks, Windows-based computers create a communication channel through NetLogon called secure channels. These channels authenticate computer accounts. They also authenticate user accounts when a remote user connects to a network resource and the user account exists in a trusted domain. This is called pass-through authentication, and it allows a computer running the Windows operating system that has joined a domain to have access to the user account database in its domain and in any trusted domains.

Enabling the [Domain member: Digitally encrypt or sign secure channel data (always)](domain-member-digitally-encrypt-or-sign-secure-channel-data-always.md) policy setting automatically enables the **Domain member: Digitally sign secure channel data (when possible)** policy setting.
When a device joins a domain, a machine account is created. After joining the domain, the device uses the password for that account to create a secure channel with the domain controller for its domain every time it restarts. This secure channel is used to perform operations such as NTLM pass through authentication and LSA SID/name Lookup. Requests that are sent on the secure channel are authenticated—and sensitive information such as passwords are encrypted—but the integrity of the channel is not checked, and not all information is encrypted. If a system is set to always encrypt or sign secure channel data, a secure channel cannot be established with a domain controller that is not capable of signing or encrypting all secure channel traffic. If the computer is configured to encrypt or sign secure channel data when possible, a secure channel can be established, but the level of encryption and signing is negotiated.

### Possible values

-   Enabled

    The domain member will request signing of all secure channel traffic. If the domain controller supports signing of all secure channel traffic, then all secure channel traffic will be signed which ensures that it cannot be tampered with in transit.

-   Disabled

    Signing will not be negotiated unless the policy [Domain member: Digitally encrypt or sign secure channel data (always)](domain-member-digitally-encrypt-or-sign-secure-channel-data-always.md) is enabled.

-   Not defined

### Best practices

-   Set [Domain member: Digitally encrypt or sign secure channel data (always)](domain-member-digitally-encrypt-or-sign-secure-channel-data-always.md) to **Enabled**.
-   Set [Domain member: Digitally encrypt secure channel data (when possible)](domain-member-digitally-encrypt-secure-channel-data-when-possible.md) to **Enabled**.
-   Set **Domain member: Digitally sign secure channel data (when possible)** to **Enabled**.
>**Note:**  You can enable the other two policy settings, Domain member: [Domain member: Digitally encrypt secure channel data (when possible)](domain-member-digitally-encrypt-secure-channel-data-when-possible.md) and **Domain member: Digitally sign secure channel data (when possible)**, on all devices joined to the domain that support these policy settings without affecting earlier-version clients and applications.
 
### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined| 
| Default Domain Controller Policy | Enabled | 
| Stand-Alone Server Default Settings | Enabled|  
| DC Effective Default Settings | Enabled| 
| Member Server Effective Default Settings| Enabled| 
| Client Computer Effective Default Settings | Enabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Group Policy

Distribution of this policy through Group Policy does not override the Local Security Policy setting.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

When a device joins a domain, a machine account is created. After it joins the domain, the device uses the password for that account to create a secure channel with the domain controller for its domain every time it restarts. Requests that are sent on the secure channel are authenticated—and sensitive information such as passwords are encrypted—but the channel is not integrity-checked, and not all information is encrypted. If a device is configured to always encrypt or sign secure channel data but the domain controller cannot sign or encrypt any portion of the secure channel data, the computer and domain controller cannot establish a secure channel. If the computer is configured to encrypt or sign secure channel data when possible, a secure channel can be established, but the level of encryption and signing is negotiated.

### Countermeasure

Because these policies are closely related and useful depending on your environment, select one of the following settings as appropriate to configure the devices in your domain to encrypt or sign secure channel data when possible.

-   [Domain member: Digitally encrypt or sign secure channel data (always)](domain-member-digitally-encrypt-or-sign-secure-channel-data-always.md)
-   [Domain member: Digitally encrypt secure channel data (when possible)](domain-member-digitally-encrypt-secure-channel-data-when-possible.md)
-   **Domain member: Digitally sign secure channel data (when possible)**

### Potential impact

Digital signing of the secure channel is a good idea because the secure channel protects domain credentials as they are sent to the domain controller.

## Related topics

- [Security Options](security-options.md)
