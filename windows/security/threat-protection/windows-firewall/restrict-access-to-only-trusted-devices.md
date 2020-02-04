---
title: Restrict Access to Only Trusted Devices (Windows 10)
description: Restrict Access to Only Trusted Devices
ms.assetid: bc1f49a4-7d54-4857-8af9-b7c79f47273b
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

# Restrict Access to Only Trusted Devices

**Applies to**
-   Windows 10
-   Windows Server 2016

Your organizational network likely has a connection to the Internet. You also likely have partners, vendors, or contractors who attach devices that are not owned by your organization to your network. Because you do not manage those devices, you cannot trust them to be free of malicious software, maintained with the latest security updates, or in any way in compliance with your organization's security policies. These untrustworthy devices both on and outside of your physical network must not be permitted to access your organization's devices except where it is truly required.

To mitigate this risk, you must be able to isolate the devices you trust, and restrict their ability to receive unsolicited network traffic from untrusted devices. By using connection security and firewall rules available in Windows Defender Firewall with Advanced Security, you can logically isolate the devices that you trust by requiring that all unsolicited inbound network traffic be authenticated. Authentication ensures that each device or user can positively identify itself by using credentials that are trusted by the other device. Connection security rules can be configured to use IPsec with the Kerberos V5 protocol available in Active Directory, or certificates issued by a trusted certification authority as the authentication method.

>**Note:**  Because the primary authentication method recommended for devices that are running Windows is to use the Kerberos V5 protocol with membership in an Active Directory domain, this guide refers to this logical separation of computers as *domain isolation*, even when certificates are used to extend the protection to devices that are not part of an Active Directory domain.

The protection provided by domain isolation can help you comply with regulatory and legislative requirements, such as those found in the Federal Information Security Management Act of 2002 (FISMA), the Sarbanes-Oxley Act of 2002, the Health Insurance Portability and Accountability Act of 1996 (HIPAA), and other government and industry regulations.

The following illustration shows an isolated domain, with one of the zones that are optionally part of the design. The rules that implement both the isolated domain and the different zones are deployed by using Group Policy and Active Directory.

![domain isolation](images/wfas-domainiso.gif)

These goals, which correspond to [Domain Isolation Policy Design](domain-isolation-policy-design.md) and [Certificate-based Isolation Policy Design](certificate-based-isolation-policy-design.md), provide the following benefits:

-   Devices in the isolated domain accept unsolicited inbound network traffic only when it can be authenticated as coming from another device in the isolated domain. Exemption rules can be defined to allow inbound traffic from trusted computers that for some reason cannot perform IPsec authentication.

    For example, Woodgrove Bank wants all of its devices to block all unsolicited inbound network traffic from any device that it does not manage. The connection security rules deployed to domain member devices require authentication as a domain member or by using a certificate before an unsolicited inbound network packet is accepted.

-   Devices in the isolated domain can still send outbound network traffic to untrusted devices and receive the responses to the outbound requests.

    For example, Woodgrove Bank wants its users at client devices to be able to access Web sites on the Internet. The default Windows Defender Firewall settings for outbound network traffic allow this. No additional rules are required.

These goals also support optional zones that can be created to add customized protection to meet the needs of subsets of an organization's devices:

-   Devices in the "boundary zone" are configured to use connection security rules that request but do not require authentication. This enables them to receive unsolicited inbound network traffic from untrusted devices, and also to receive traffic from the other members of the isolated domain.

    For example, Woodgrove Bank has a server that must be accessed by its partners' devices through the Internet. The rules applied to devices in the boundary zone use authentication when the client device can support it, but do not block the connection if the client device cannot authenticate.

-   Devices in the "encryption zone" require that all network traffic in and out must be encrypted to secure potentially sensitive material when it is sent over the network.

    For example, Woodgrove Bank wants the devices running SQL Server to only transmit data that is encrypted to help protect the sensitive data stored on those devices.

The following components are required for this deployment goal:

-   **Active Directory**: Active Directory supports centralized management of connection security rules by configuring the rules in one or more GPOs that can be automatically applied to all relevant devices in the domain.

**Next:** [Require Encryption When Accessing Sensitive Network Resources](require-encryption-when-accessing-sensitive-network-resources.md)
