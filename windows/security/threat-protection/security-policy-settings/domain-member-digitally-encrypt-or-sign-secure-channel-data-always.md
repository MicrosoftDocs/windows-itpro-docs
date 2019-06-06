---
title: Domain member Digitally encrypt or sign secure channel data (always) (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Domain member Digitally encrypt or sign secure channel data (always) security policy setting.
ms.assetid: 4480c7cb-adca-4f29-b4b8-06eb68d272bf
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

# Domain member: Digitally encrypt or sign secure channel data (always)

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Domain member: Digitally encrypt or sign secure channel data (always)** security policy setting.

## Reference

This setting determines whether all secure channel traffic that is initiated by the domain member meets minimum security requirements. Specifically, it determines whether all secure channel traffic that is initiated by the domain member must be signed or encrypted. Logon information that is 
transmitted over the secure channel is always encrypted regardless of whether the encryption of all other secure channel traffic is negotiated.

The following policy settings determine whether a secure channel can be established with a domain controller that is not capable of signing or encrypting secure channel traffic:

-   Domain member: Digitally encrypt or sign secure channel data (always)
-   [Domain member: Digitally encrypt secure channel data (when possible)](domain-member-digitally-encrypt-secure-channel-data-when-possible.md)
-   [Domain member: Digitally sign secure channel data (when possible)](domain-member-digitally-sign-secure-channel-data-when-possible.md)

Setting **Domain member: Digitally encrypt or sign secure channel data (always)** to **Enabled** prevents establishing a secure channel with any domain controller that cannot sign or encrypt all secure channel data.

To protect authentication traffic from man-in-the-middle, replay, and other types of network attacks, Windows-based computers create a communication channel through NetLogon called secure channels. These channels authenticate machine accounts. They also authenticate user accounts when a remote user connects to a network resource and the user account exists in a trusted domain. This is called pass-through authentication, and it allows a device running Windows othat has joined a domain to have access to the user account database in its domain and in any trusted domains.

To enable the **Domain member: Digitally encrypt or sign secure channel data (always)** policy setting on a member workstation or server, all domain controllers in the domain that the member belongs to must be capable of signing or encrypting all secure-channel data.

Enabling the **Domain member: Digitally encrypt or sign secure channel data (always)** policy setting automatically enables the [Domain member: Digitally sign secure channel data (when possible)](domain-member-digitally-sign-secure-channel-data-when-possible.md) policy setting.

When a device joins a domain, a machine account is created. After joining the domain, the device uses the password for that account to create a secure channel with the domain controller for its domain every time it restarts. This secure channel is used to perform operations such as NTLM pass-through authentication and LSA SID/name Lookup. Requests that are sent on the secure channel are authenticated—and sensitive information such as passwords are encrypted—but the integrity of the channel is not checked, and not all information is encrypted. If a system is set to always encrypt or sign secure channel data, a secure channel cannot be established with a domain controller that is not capable of signing or encrypting all secure channel traffic. If the computer is configured to encrypt or sign secure channel data when possible, a secure channel can be established, but the level of encryption and signing is negotiated.

### Possible values

-   Enabled

    The policy [Domain member: Digitally sign secure channel data (when possible)](domain-member-digitally-sign-secure-channel-data-when-possible.md) is assumed to be enabled regardless of its current setting. This ensures that the domain member attempts to negotiate at least signing of the secure 
    channel traffic.

-   Disabled

    The encryption and signing of all secure channel traffic is negotiated with the domain controller, in which case the level of signing and encryption depends on the version of the domain controller and the settings of the following policies:

    1.  [Domain member: Digitally encrypt secure channel data (when possible)](domain-member-digitally-encrypt-secure-channel-data-when-possible.md)
    2.  [Domain member: Digitally sign secure channel data (when possible)](domain-member-digitally-sign-secure-channel-data-when-possible.md)

-   Not defined
### Best practices

-   Set **Domain member: Digitally encrypt or sign secure channel data (always)** to **Enabled**.
-   Set [Domain member: Digitally encrypt secure channel data (when possible)](domain-member-digitally-encrypt-secure-channel-data-when-possible.md) to **Enabled**.
-   Set [Domain member: Digitally sign secure channel data (when possible)](domain-member-digitally-sign-secure-channel-data-when-possible.md) to **Enabled**.

>**Note:**  You can enable the policy settings [Domain member: Digitally encrypt secure channel data (when possible)](domain-member-digitally-encrypt-secure-channel-data-when-possible.md) and [Domain member: Digitally sign secure channel data (when possible)](domain-member-digitally-sign-secure-channel-data-when-possible.md) on all devices in the domain that support these policy settings without affecting earlier-version clients and applications.
 
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
| Member Server Effective Default Settings | Enabled| 
| Client Computer Effective Default Settings | Enabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Group Policy

Distribution of this policy through Group Policy overrides the Local Security Policy setting.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

When a device joins a domain, a machine account is created. After it joins the domain, the device uses the password for that account to create a secure channel with the domain controller for its domain every time it restarts. Requests that are sent on the secure channel are authenticated—and 
sensitive information such as passwords are encrypted—but the channel is not integrity-checked, and not all information is encrypted. If a device is configured to always encrypt or sign secure channel data but the domain controller cannot sign or encrypt any portion of the secure channel data, the computer and domain controller cannot establish a secure channel. If the device is configured to encrypt or sign secure channel data, when possible, a secure channel can be established, but the level of encryption and signing is negotiated.

### Countermeasure

Select one of the following settings as appropriate for your environment to configure the computers in your domain to encrypt or sign secure channel data.

-   **Domain member: Digitally encrypt or sign secure channel data (always)**
-   [Domain member: Digitally encrypt secure channel data (when possible)](domain-member-digitally-encrypt-secure-channel-data-when-possible.md)
-   [Domain member: Digitally sign secure channel data (when possible)](domain-member-digitally-sign-secure-channel-data-when-possible.md)

### Potential impact

Digital encryption and signing of the secure channel is a good idea because the secure channel protects domain credentials as they are sent to the domain controller.

## Related topics

- [Security Options](security-options.md)
