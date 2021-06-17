---
title: Network security Allow PKU2U authentication requests to this computer to use online identities (Windows 10)
description: Best practices for the Network Security Allow PKU2U authentication requests to this computer to use online identities security setting.
ms.assetid: e04a854e-d94d-4306-9fb3-56e9bd7bb926
ms.reviewer: 
ms.author: dansimp
ms.prod: m365-security
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
ms.technology: mde
---

# Network security: Allow PKU2U authentication requests to this computer to use online identities

**Applies to**
-   Windows 10

This article describes the best practices, location, and values for the **Network Security: Allow PKU2U authentication requests to this computer to use online identities** security policy setting.

## Reference

Starting with Windows Server 2008 R2 and Windows 7, the Negotiate Security Support Provider (SSP) supports an extension SSP, Negoexts.dll. This extension SSP is treated as an authentication protocol by the Windows operating system. It supports SSPs from Microsoft, including PKU2U. You can also develop or add other SSPs.

When devices are configured to accept authentication requests by using online IDs, Negoexts.dll calls the PKU2U SSP on the computer that's used to log on. The PKU2U SSP obtains a local certificate and exchanges the policy between the peer computers. When it's validated on the peer computer, the certificate within the metadata is sent to the logon peer for validation. It associates the user's certificate to a security token, and then the logon process completes.

> [!NOTE]
> Linking online IDs can be performed by anyone who has an account that has standard user’s credentials through Credential Manager.
 
This policy isn't configured by default on domain-joined devices. This would disallow the online identities to authenticate to domain-joined computers in Windows 7 and later.

### Possible values

-   **Enabled**: This setting allows authentication to successfully complete between the two (or more) computers that have established a peer relationship through the use of online IDs. The PKU2U SSP obtains a local certificate and exchanges the policy between the peer devices. When validated on the peer computer, the certificate within the metadata is sent to the logon peer for validation. It associates the user's certificate to a security token, and then the logon process completes.

    > [!NOTE]
    > KU2U is disabled by default on Windows Server. Remote Desktop connections from a hybrid Azure AD-joined server to an Azure AD-joined Windows 10 device or a Hybrid Azure AD-joined domain member Windows 10 device fail. To resolve this, enable PKU2U on the server and the client.

-   **Disabled**: This setting prevents online IDs from being used to authenticate the user to another computer in a peer-to-peer relationship.

-   ***Not set***: Not configuring this policy prevents online IDs from being used to authenticate the user. This option is the default on domain-joined devices.

### Best practices

Within a domain, domain accounts should be used for authentication. Set this policy to **Disabled** or don't configure this policy to exclude online identities from being used to authenticate.

### Location

*Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options*

### Default values

The following table lists the effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or Group Policy Object (GPO) | Default value |
| - | - |
| Default domain policy| Not defined| 
| Default domain controller policy | Not defined| 
| Stand-alone server default settings | Not defined| 
| Domain controller effective default settings | Disabled| 
| Member server effective default settings | Disabled| 
| Effective GPO default settings on client computers | Disabled| 
 
## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of the countermeasure.

### Vulnerability

Enabling this policy setting allows a user’s account on one computer to be associated with an online identity, such as Microsoft account or an Azure AD account. That account can then log on to a peer device (if the peer device is likewise configured) without the use of a Windows logon account (domain or local). This setup is not only beneficial, but required for Azure AD joined devices, where they are signed in with an online identity and are issued certificates by Azure AD. This policy may not be relevant for an *on-premises only* environment and might circumvent established security policies. However, it does not pose any threats in a hybrid environment where Azure AD is used as it relies on the user's online identity and Azure AD to authenticate. 

### Countermeasure

Set this policy to *Disabled* or don't configure this security policy for *on-premises only* environments.

### Potential impact

If you don't set or you disable this policy, the PKU2U protocol won't be used to authenticate between peer devices, which forces users to follow domain-defined access control policies. This is a valid configuration in *on-premises only* environments. Please be aware that some roles/features (such as Failover Clustering) do not utilize a domain account for its PKU2U authentication and will cease to function properly when disabling this policy.

If you enable this policy in a hybrid environment, you allow your users to authenticate by using certificates issued by Azure AD and their online identity between the corresponding devices. This configuration allows users to share resources between such devices. Without enabling this policy, remote connections to an Azure AD joined device will not work.


## Related topics

- [Security options](security-options.md)
