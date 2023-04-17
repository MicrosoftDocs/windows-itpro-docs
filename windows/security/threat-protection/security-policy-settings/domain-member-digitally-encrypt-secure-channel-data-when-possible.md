---
title: Domain member Digitally encrypt secure channel data (when possible) (Windows 10)
description: Best practices, security considerations, and more for the security policy setting, Domain member Digitally encrypt secure channel data (when possible).
ms.assetid: 73e6023e-0af3-4531-8238-82f0f0e4965b
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
ms.topic: conceptual
ms.date: 04/19/2017
ms.technology: itpro-security
---

# Domain member: Digitally encrypt secure channel data (when possible)

**Applies to**
-   Windows 11
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Domain member: Digitally encrypt secure channel data (when possible)** security policy setting.

## Reference

This setting determines whether all secure channel traffic that is initiated by the domain member meets minimum security requirements. Specifically, it determines whether all secure channel traffic that is initiated by the domain member must be encrypted. Sign-in information that is transmitted over 
the secure channel is always encrypted regardless of whether the encryption of all other secure channel traffic is negotiated.

In addition to this policy setting, the following policy settings determine whether a secure channel can be established with a domain controller that isn't capable of signing or encrypting secure channel traffic:

-   [Domain member: Digitally encrypt or sign secure channel data (always)](domain-member-digitally-encrypt-or-sign-secure-channel-data-always.md)
-   [Domain member: Digitally sign secure channel data (when possible)](domain-member-digitally-sign-secure-channel-data-when-possible.md)

Setting **Domain member: Digitally encrypt or sign secure channel data (always)** to **Enabled** prevents establishing a secure channel with any domain controller that can't sign or encrypt all secure channel data.

To protect authentication traffic from man-in-the-middle, replay, and other types of network attacks, Windows-based computers create a communication channel through NetLogon called secure channels. These channels authenticate machine accounts. They also authenticate user accounts when a remote user connects to a network resource and the user account exists in a trusted domain. This authentication is called pass-through authentication, and it allows a computer running the Windows operating system that has joined a domain to have access to the user account database in its domain and in any trusted domains.

Enabling the [Domain member: Digitally encrypt or sign secure channel data (always)](domain-member-digitally-encrypt-or-sign-secure-channel-data-always.md) policy setting automatically enables the **Domain member: Digitally sign secure channel data (when possible)** policy setting.

When a device joins a domain, a machine account is created. After the device is joined with the domain, it uses the password for that account to create a secure channel with the domain controller for its domain every time it restarts. This secure channel is used to perform operations such as NTLM pass through authentication and LSA SID/name Lookup. Requests that are sent on the secure channel are authenticated—and sensitive information such as passwords are encrypted—but the integrity of the channel isn't checked, and not all information is encrypted. If a system is set to always encrypt or sign secure channel data, a secure channel can't be established with a domain controller that isn't capable of signing or encrypting all secure channel traffic. If the computer is configured to encrypt or sign secure channel data when possible, a secure channel can be established, but the level of encryption and signing is negotiated.

### Possible values

-   Enabled

    The domain member will request encryption of all secure channel traffic. If the domain controller supports encryption of all secure channel traffic, then all secure channel traffic will be encrypted. Otherwise, only sign-in information that is transmitted over the secure channel will be encrypted.

-   Disabled

    The domain member won't attempt to negotiate secure channel encryption.

    >**Note:**  If the security policy setting [Domain member: Digitally encrypt or sign secure channel data (always)](domain-member-digitally-encrypt-or-sign-secure-channel-data-always.md) is enabled, this setting will be overwritten.
     
-   Not defined

### Best practices

-   Set [Domain member: Digitally encrypt or sign secure channel data (always)](domain-member-digitally-encrypt-or-sign-secure-channel-data-always.md) to **Enabled**.
-   Set **Domain member: Digitally encrypt secure channel data (when possible)** to **Enabled**.
-   Set [Domain member: Digitally sign secure channel data (when possible)](domain-member-digitally-sign-secure-channel-data-when-possible.md) to **Enabled**.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined|
| Default Domain Controller Policy | Enabled| 
| Stand-Alone Server Default Settings | Enabled| 
| DC Effective Default Settings | Enabled| 
| Member Server Effective Default Settings| Enabled| 
| Client Computer Effective Default Settings | Enabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through Group Policy.

### Group Policy

Distribution of this policy through Group Policy doesn't override the Local Security Policy setting.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

When a device joins a domain, a machine account is created. After it joins the domain, the device uses the password for that account to create a secure channel with the domain controller for its domain every time it restarts. Requests that are sent on the secure channel are authenticated—and sensitive information such as passwords are encrypted—but the channel isn't integrity-checked, and not all information is encrypted. If a device is configured to always encrypt or sign secure channel data but the domain controller can't sign or encrypt any portion of the secure channel data, the computer and domain controller can't establish a secure channel. If the computer is configured to encrypt or sign secure channel data when possible, a secure channel can be established, but the level of encryption and signing is negotiated.

### Countermeasure

Select one of the following settings as appropriate for your environment to configure the computers in your domain to encrypt or sign secure channel data:

-   [Domain member: Digitally encrypt or sign secure channel data (always)](domain-member-digitally-encrypt-or-sign-secure-channel-data-always.md)
-   **Domain member: Digitally encrypt secure channel data (when possible)**
-   [Domain member: Digitally sign secure channel data (when possible)](domain-member-digitally-sign-secure-channel-data-when-possible.md)

### Potential impact

Digital signing of the secure channel is a good idea because it protects domain credentials as they're sent to the domain controller.

## Related topics

- [Security Options](security-options.md)
