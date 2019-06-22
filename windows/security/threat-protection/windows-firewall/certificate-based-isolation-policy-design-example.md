---
title: Certificate-based Isolation Policy Design Example (Windows 10)
description: Certificate-based Isolation Policy Design Example
ms.assetid: 509b513e-dd49-4234-99f9-636fd2f749e3
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
ms.date: 08/17/2017
---

# Certificate-based Isolation Policy Design Example

**Applies to**
-   Windows 10
-   Windows Server 2016

This design example continues to use the fictitious company Woodgrove Bank, as described in the sections [Firewall Policy Design Example](firewall-policy-design-example.md), [Domain Isolation Policy Design Example](domain-isolation-policy-design-example.md), and [Server Isolation Policy Design Example](server-isolation-policy-design-example.md).

One of the servers that must be included in the domain isolation environment is a device running UNIX that supplies other information to the WGBank dashboard program running on the client devices. This device sends updated information to the WGBank front-end servers as it becomes available, so it is considered unsolicited inbound traffic to the devices that receive this information.

## Design requirements

One possible solution to this is to include an authentication exemption rule in the GPO applied to the WGBank front-end servers. This rule would instruct the front-end servers to accept traffic from the non-Windows device even though it cannot authenticate.

A more secure solution, and the one selected by Woodgrove Bank, is to include the non-Windows device in the domain isolation design. Because it cannot join an Active Directory domain, Woodgrove Bank chose to use certificate-based authentication. Certificates are cryptographically-protected documents, encrypted in such a way that their origin can be positively confirmed.

In this case, Woodgrove Bank used Active Directory Certificate Services to create the appropriate certificate. They might also have acquired and installed a certificate from a third-party commercial certification authority. They then used Group Policy to deploy the certificate to the front-end servers. The GPOs applied to the front-end servers also include updated connection security rules that permit certificate-based authentication in addition to Kerberos V5 authentication. They then manually installed the certificate on the UNIX server.

The UNIX server is configured with firewall and IPsec connection security rules using the tools that are provided by the operating system vendor. Those rules specify that authentication is performed by using the certificate.

The creation of the IPsec connection security rules for a non-Windows device is beyond the scope of this document, but support for a certificate that can be used to authenticate such a non-Windows device by using the standard IPsec protocols is the subject of this design.

The non-Windows device can be effectively made a member of the boundary zone or the encryption zone based on the IPsec rules applied to the device. The only constraint is that the main mode and quick mode encryption algorithms supported by the UNIX device must also be supported by the Windows-based devices with which it communicates.

**Other traffic notes:**

-   None of the capabilities of the other designs discussed in this guide are compromised by the use of certificate authentication by a non-Windows device.

## Design details

Woodgrove Bank uses Active Directory groups and GPOs to deploy the domain isolation settings and rules to the devices in their organization.

The inclusion of one or more non-Windows devices to the network requires only a simple addition to the GPOs for devices that must communicate with the non-Windows device. The addition is allowing certificate-based authentication in addition to the Active Directory–supported Kerberos V5 authentication. This does not require including new rules, just adding certificate-based authentication as an option to the existing rules.

When multiple authentication methods are available, two negotiating devices agree on the first one in their lists that match. Because the majority of the devices in Woodgrove Bank's network run Windows, Kerberos V5 is listed as the first authentication method in the rules. Certificate-based authentication is added as an alternate authentication type.

By using the Active Directory Users and Computers snap-in, Woodgrove Bank created a group named NAG\_COMPUTER\_WGBUNIX. They then added the device accounts to this group for Windows devices that need to communicate with the non-Windows devices. If all the devices in the isolated domain need to be able to access the non-Windows devices, then the **Domain Computers** group can be added to the group as a member.

Woodgrove Bank then created a GPO that contains the certificate, and then attached security group filters to the GPO that allow read and apply permissions to only members of the NAG\_COMPUTER\_WGBUNIX group. The GPO places the certificate in the **Local Computer / Personal / Certificates** certificate store. The certificate used must chain back to a certificate that is in the **Trusted Root Certification Authorities** store on the local device.

**Next: **[Designing a Windows Defender Firewall with Advanced Security Strategy](designing-a-windows-firewall-with-advanced-security-strategy.md)
