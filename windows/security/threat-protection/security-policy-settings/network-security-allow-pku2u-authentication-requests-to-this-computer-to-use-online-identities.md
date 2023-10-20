---
title: Network security Allow PKU2U authentication requests to this computer to use online identities 
description: Best practices for the Network Security Allow PKU2U authentication requests to this computer to use online identities security setting.
ms.assetid: e04a854e-d94d-4306-9fb3-56e9bd7bb926
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
ms.date: 01/03/2022
ms.technology: itpro-security
---

# Network security: Allow PKU2U authentication requests to this computer to use online identities

**Applies to**
-   Windows 11
-   Windows 10

This article describes the best practices, location, and values for the **Network Security: Allow PKU2U authentication requests to this computer to use online identities** security policy setting.

## Reference

From Windows Server 2008 R2 and Windows 7, the Negotiate Security Support Provider (SSP) supports an extension SSP, Negoexts.dll. This extension SSP is treated as an authentication protocol by the Windows operating system. It supports SSPs from Microsoft, including PKU2U. You can also develop or add other SSPs.

When devices are configured to accept authentication requests by using online IDs, Negoexts.dll calls the PKU2U SSP on the computer that's used to sign in. The PKU2U SSP obtains a local certificate and exchanges the policy between the peer computers. When it's validated on the peer computer, the certificate within the metadata is sent to the sign-in peer for validation. It associates the user's certificate to a security token, and then the sign-in process completes.

> [!NOTE]
> Linking online IDs can be performed by anyone who has an account that has standard user’s credentials through Credential Manager.
 
This policy isn't configured by default on domain-joined devices. This disablement would disallow the online identities to authenticate to domain-joined computers from Windows 7 up to Windows 10, Version 1607. This policy is enabled by default in Windows 10, Version 1607, and later.

### Possible values

-   **Enabled**: This setting allows authentication to successfully complete between the two (or more) computers that have established a peer relationship by using online IDs. The PKU2U SSP obtains a local certificate and exchanges the policy between the peer devices. When validated on the peer computer, the certificate within the metadata is sent to the sign-in peer for validation. It associates the user's certificate to a security token, and then the sign-in process completes.

    > [!NOTE]
    > PKU2U is disabled by default on Windows Server. If PKU2U is disabled, Remote Desktop connections from a Microsoft Entra hybrid joined server to a Microsoft Entra joined Windows 10 device or a Microsoft Entra hybrid joined domain member Windows 10 device fail. To resolve this, enable PKU2U on the server and the client.

-   **Disabled**: This setting prevents online IDs from being used to authenticate the user to another computer in a peer-to-peer relationship.

-   ***Not set***: Not configuring this policy prevents online IDs from being used to authenticate the user. This option is the default on domain-joined devices.

### Best practices

Within a domain, domain accounts should be used for authentication. Set this policy to **Disabled** or don't configure this policy to exclude online identities from being used to authenticate for on-premises only environments. Set this policy to **Enabled** for hybrid and Microsoft Entra joined environments.

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
| Effective GPO default settings on client computers prior to Windows 10, Version 1607 | Disabled| 
| Effective GPO default settings on client computers Windows 10, Version 1607 and later| Enabled| 
 
## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of the countermeasure.

### Vulnerability

Enabling this policy setting allows a user’s account on one computer to be associated with an online identity, such as Microsoft account or a Microsoft Entra account. That account can then sign in to a peer device (if the peer device is likewise configured) without the use of a Windows sign-in account (domain or local). This setup isn't only beneficial, but required for Microsoft Entra joined devices, where they're signed in with an online identity and are issued certificates by Microsoft Entra ID. This policy may not be relevant for an *on-premises only* environment and might circumvent established security policies. However, it doesn't pose any threats in a hybrid environment where Microsoft Entra ID is used as it relies on the user's online identity and Microsoft Entra ID to authenticate. 

### Countermeasure

Set this policy to *Disabled* or don't configure this security policy for *on-premises only* environments.

### Potential impact

If you don't set or you disable this policy, the PKU2U protocol won't be used to authenticate between peer devices, which forces users to follow domain-defined access control policies. This disablement is a valid configuration in *on-premises only* environments. Some roles/features (such as Failover Clustering) don't utilize a domain account for its PKU2U authentication and will cease to function properly when disabling this policy.

If you enable this policy in a hybrid environment, you allow your users to authenticate by using certificates issued by Microsoft Entra ID and their online identity between the corresponding devices. This configuration allows users to share resources between such devices. If this policy isn't enabled, remote connections to a Microsoft Entra joined device won't work.

### Fix/Remediation

This vulnerability was fixed on February 9, 2021, in the [CVE-2021-25195](https://msrc.microsoft.com/update-guide/vulnerability/CVE-2021-25195) Security Update.

## Related topics

- [Security options](security-options.md)
