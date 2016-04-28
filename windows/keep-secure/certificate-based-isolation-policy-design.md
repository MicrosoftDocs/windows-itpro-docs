---
title: Certificate-based Isolation Policy Design (Windows 10)
description: Certificate-based Isolation Policy Design
ms.assetid: 63e01a60-9daa-4701-9472-096c85e0f862
author: brianlic-msft
---

# Certificate-based Isolation Policy Design


In the certificate-based isolation policy design, you provide the same types of protections to your network traffic as described in the [Domain Isolation Policy Design](domain-isolation-policy-design.md) and [Server Isolation Policy Design](server-isolation-policy-design.md) sections. The only difference is the method used to share identification credentials during the authentication of your network traffic.

Domain isolation and server isolation help provide security for the computers on the network that run Windows and that can be joined to an Active Directory domain. However, in most corporate environments there are typically some computers that must run another operating system, such as Linux or UNIX. These computers cannot join an Active Directory domain, without a third-party package being installed. Also, some computers that do run Windows cannot join a domain for a variety of reasons. To rely on Kerberos V5 as the authentication protocol, the computer needs to be joined to the Active Directory and (for non-windows computers) support Kerberos as an authentication protocol.

To authenticate with non-domain member computers, IPsec supports using standards-based cryptographic certificates. Because this authentication method is also supported by many third-party operating systems, it can be used as a way to extend your isolated domain to computers that do not run the Windows operating system.

The same principles of the domain and server isolation designs apply to this design. Only computers that can authenticate (in this case, by providing a specified certificate) can communicate with the computers in your isolated domain.

For computers that run Windows and that are part of an Active Directory domain, you can use Group Policy to deploy the certificates required to communicate with the computers that are trusted but are not part of the Active Directory domain. For other computers, you will have to either manually configure them with the required certificates, or use a third-party program to distribute the certificates in a secure manner.

For more information about this design:

-   This design coincides with the deployment goals to [Protect Computers from Unwanted Network Traffic](protect-computers-from-unwanted-network-traffic.md), [Restrict Access to Only Trusted Computers](restrict-access-to-only-trusted-computers.md), and optionally [Require Encryption When Accessing Sensitive Network Resources](require-encryption-when-accessing-sensitive-network-resources.md).

-   To learn more about this design, see [Certificate-based Isolation Policy Design Example](certificate-based-isolation-policy-design-example.md).

-   Before completing the design, gather the information described in [Designing a Windows Firewall with Advanced Security Strategy](designing-a-windows-firewall-with-advanced-security-strategy.md).

-   To help you make the decisions required in this design, see [Planning Certificate-based Authentication](planning-certificate-based-authentication.md).

-   For a list of tasks that you can use to deploy your certificate-based policy design, see "Checklist: Implementing a Certificate-based Isolation Policy Design" in the [Windows Firewall with Advanced Security Deployment Guide](http://go.microsoft.com/fwlink/?linkid=98308) at http://go.microsoft.com/fwlink/?linkid=98308.

**Next: **[Evaluating Windows Firewall with Advanced Security Design Examples](evaluating-windows-firewall-with-advanced-security-design-examples.md)

 

 





