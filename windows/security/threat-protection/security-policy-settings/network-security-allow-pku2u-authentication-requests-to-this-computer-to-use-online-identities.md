---
title: Network security Allow PKU2U authentication requests to this computer to use online identities (Windows 10)
description: Describes the best practices, location, and values for the Network Security Allow PKU2U authentication requests to this computer to use online identities security policy setting.
ms.assetid: e04a854e-d94d-4306-9fb3-56e9bd7bb926
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

# Network security: Allow PKU2U authentication requests to this computer to use online identities

**Applies to**
-   Windows 10

Describes the best practices, location, and values for the **Network Security: Allow PKU2U authentication requests to this computer to use online identities** security policy setting.

## Reference

Starting with Windows Server 2008 R2 and Windows 7, the Negotiate Security Support Provider (SSP) supports an extension SSP, Negoexts.dll. This extension SSP is treated as an authentication protocol by the Windows operating system, and it supports SSPs from Microsoft, including PKU2U. You can also develop or add other SSPs.

When devices are configured to accept authentication requests by using online IDs, Negoexts.dll calls the PKU2U SSP on the computer that is used to log on. The PKU2U SSP obtains a local certificate and exchanges the policy between the peer computers. When validated on the peer computer, the certificate within the metadata is sent to the logon peer for validation. It associates the user's certificate to a security token, and then the logon process completes.

>**Note:**  The ability to link online IDs can be performed by anyone with an account that has standard user’s credentials through **Credential Manager**.
 
This policy is not configured by default on domain-joined devices. This would disallow the online identities to be able to authenticate to the domain-joined computers in Windows 7 and later.

### Possible values

-   **Enabled**

    This will allow authentication to successfully complete between the two (or more) computers that have established a peer relationship through the use on online IDs. The PKU2U SSP obtains a local certificate and exchanges the policy between the peer devices. When validated on the peer computer, the certificate within the metadata is sent to the logon peer for validation. It associates the user's certificate to a security token, and then the logon process completes.

-   **Disabled**

    This will prevent online IDs from being used to authenticate the user to another computer in a peer-to-peer relationship.

-   Not set. Not configuring this policy prevents online IDs from being used to authenticate the user. This is the default on domain-joined devices

### Best practices

Within a domain, domain accounts should be used for authentication. Set this policy to **Disabled** or do not configure this policy to exclude online identities from being used to authenticate.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or Group Policy Object (GPO) | Default value |
| - | - |
| Default domain policy| Not defined| 
| Default domain controller policy | Not defined| 
| Stand-alone server default settings | Not defined| 
| Domain controller effective default settings | Disabled| 
| Member server effective default settings | Disabled| 
| Effective GPO default settings on client computers | Disabled| 
 
## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Enabling this policy setting allows a user’s account on one computer to be associated with an online identity, such as Microsoft Account, so that account can log on to a peer device (if the peer device is likewise configured) without the use of a Windows logon account (domain or local). Although this is beneficial for workgroups or home groups, using this feature in a domain-joined environment might circumvent your established security policies.

### Countermeasure

Set this policy to Disabled or do not configure this security policy for domain-joined devices.

### Potential impact

If you do not set or disable this policy, the PKU2U protocol will not be used to authenticate between peer devices, which forces users to follow domain defined access control policies. If you enable this policy, you will allow your users to authenticate by using local certificates between systems that are not part of a domain that uses PKU2U. This will allow users to share resources between devices

## Related topics

- [Security Options](security-options.md)
