---
title: Windows Defender Firewall with Advanced Security Design Guide (Windows 10)
description: Windows Defender Firewall with Advanced Security Design Guide
ms.assetid: 5c631389-f232-4b95-9e48-ec02b8677d51
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
ms.date: 10/05/2017
---

# Windows Defender Firewall with Advanced Security
Design Guide

**Applies to**
-   Windows 10
-   Windows Server 2016

Windows Defender Firewall with Advanced Security is a host firewall that helps secure the device in two ways. First, it can filter the network traffic permitted to enter the device from the network, and also control what network traffic the device is allowed to send to the network. Second, Windows Defender Firewall supports IPsec, which enables you to require authentication from any device that is attempting to communicate with your device. When authentication is required, devices that cannot authenticate cannot communicate with your device. By using IPsec, you can also require that specific network traffic be encrypted to prevent it from being read or intercepted while in transit between devices.

The interface for Windows Defender Firewall is much more capable and flexible than the consumer-friendly interface found in the Windows Defender Firewall Control Panel. They both interact with the same underlying services, but provide different levels of control over those services. While the Windows Defender Firewall Control Panel meets the needs for protecting a single device in a home environment, it does not provide enough centralized management or security features to help secure more complex network traffic found in a typical business enterprise environment.

For more overview information, see [Windows Defender Firewall with Advanced Security](windows-firewall-with-advanced-security.md).

## About this guide

This guide provides recommendations to help you to choose or create a design for deploying Windows Defender Firewall in your enterprise environment. The guide describes some of the common goals for using Windows Defender Firewall, and then helps you map the goals that apply to your scenario to the designs that are presented in this guide.

This guide is intended for the IT professional who has been assigned the task of deploying firewall and IPsec technologies on an organization's network to help meet the organization's security goals.

Windows Defender Firewall should be part of a comprehensive security solution that implements a variety of security technologies, such as perimeter firewalls, intrusion detection systems, virtual private networking (VPN), IEEE 802.1X authentication for wireless and wired connections, and IPsec connection security rules.

To successfully use this guide, you need a good understanding of both the capabilities provided by Windows Defender Firewall, and how to deliver configuration settings to your managed devices by using Group Policy in Active Directory.

You can use the deployment goals to form one of these Windows Defender Firewall with Advanced Security designs, or a custom design that combines elements from those presented here:

-   **Basic firewall policy design**. Restricts network traffic in and out of your devices to only that which is needed and authorized.

-   **Domain isolation policy design**. Prevents devices that are domain members from receiving unsolicited network traffic from devices that are not domain members. Additional "zones" can be established to support the special requirements of some devices, such as:

    -   A "boundary zone" for devices that must be able to receive requests from non-isolated devices.

    -   An "encryption zone" for devices that store sensitive data that must be protected during network transmission.

-   **Server isolation policy design**. Restricts access to a server to only a limited group of authorized users and devices. Commonly configured as a zone in a domain isolation design, but can also be configured as a stand-alone design, providing many of the benefits of domain isolation to a small set of devices.

-   **Certificate-based isolation policy design**. This design is a complement to either of the previous two designs, and supports any of their capabilities. It uses cryptographic certificates that are deployed to clients and servers for authentication, instead of the Kerberos V5 authentication used by default in Active Directory. This enables devices that are not part of an Active Directory domain, such as devices running operating systems other than Windows, to participate in your isolation solution.

In addition to descriptions and example for each design, you will find guidelines for gathering required data about your environment. You can then use these guidelines to plan and design your Windows Defender Firewall with Advanced Security deployment. After you read this guide, and finish gathering, documenting, and mapping your organization's requirements, you have the information that you need to begin deploying Windows Defender Firewall using the guidance in the Windows Defender Firewall with Advanced Security Deployment Guide.

You can find the Windows Defender Firewall with Advanced Security
Deployment Guide at these locations:

-   [Windows Defender Firewall with Advanced Security Deployment Guide](windows-firewall-with-advanced-security-deployment-guide.md)

-   (Downloadable Word document)

## In this section

| Topic | Description
| - | - |
| [Understanding the Windows Defender Firewall with Advanced Security Design Process](understanding-the-windows-firewall-with-advanced-security-design-process.md) | Learn how to get started with the Windows Defender Firewall with Advanced Security design process. |
| [Identifying Your Windows Defender Firewall with Advanced Security Deployment Goals](identifying-your-windows-firewall-with-advanced-security-deployment-goals.md) | Learn how to identify your Windows Defender Firewall with Advanced Security deployment goals. |
| [Mapping Your Deployment Goals to a Windows Defender Firewall with Advanced Security Design](mapping-your-deployment-goals-to-a-windows-firewall-with-advanced-security-design.md) | After you finish reviewing the existing Windows Defender Firewall with Advanced Security deployment goals and you determine which goals are important to your specific deployment, you can map those goals to a specific Windows Defender Firewall with Advanced Security design. |
| [Evaluating Windows Defender Firewall with Advanced Security Design Examples](evaluating-windows-firewall-with-advanced-security-design-examples.md) | Learn how to use Windows Defender Firewall to improve the security of the computers connected to the network. |
| [Designing a Windows Defender Firewall with Advanced Security Strategy](designing-a-windows-firewall-with-advanced-security-strategy.md) | To select the most effective design for helping to protect the network, you must spend time collecting key information about your current computer environment. |
| [Planning Your Windows Defender Firewall with Advanced Security Design](planning-your-windows-firewall-with-advanced-security-design.md) | After you have gathered the relevant information in the previous sections, and understand the basics of the designs as described earlier in this guide, you can select the design (or combination of designs) that meet your needs. |
| [Appendix A: Sample GPO Template Files for Settings Used in this Guide](appendix-a-sample-gpo-template-files-for-settings-used-in-this-guide.md) | You can import an XML file containing customized registry preferences into a Group Policy Object (GPO) by using the Preferences feature of the Group Policy Management Console (GPMC). |

## Terminology used in this guide

The following table identifies and defines terms used throughout this guide.

| Term | Definition |
| - | - |
| Active Directory domain | A group of devices and users managed by an administrator by using Active Directory Domain Services (AD DS). Devices in a domain share a common directory database and security policies. Multiple domains can co-exist in a &quot;forest,&quot; with trust relationships that establish the forest as the security boundary. |
| Authentication | A process that enables the sender of a message to prove its identity to the receiver. For connection security in Windows, authentication is implemented by the IPsec protocol suite.| 
| Boundary zone | A subset of the devices in an isolated domain that must be able to receive unsolicited and non-authenticated network traffic from devices that are not members of the isolated domain. Devices in the boundary zone request but do not require authentication. They use IPsec to communicate with other devices in the isolated domain.| 
| Connection security rule | A rule in Windows Defender Firewall that contains a set of conditions and an action to be applied to network packets that match the conditions. The action can allow the packet, block the packet, or require the packet to be protected by IPsec. In previous versions of Windows, this was called an *IPsec rule*.| 
| Certificate-based isolation | A way to add devices that cannot use Kerberos V5 authentication to an isolated domain, by using an alternate authentication technique. Every device in the isolated domain and the devices that cannot use Kerberos V5 are provided with a device certificate that can be used to authenticate with each other. Certificate-based isolation requires a way to create and distribute an appropriate certificate (if you choose not to purchase one from a commercial certificate provider).| 
| Domain isolation | A technique for helping protect the devices in an organization by requiring that the devices authenticate each other's identity before exchanging information, and refusing connection requests from devices that cannot authenticate. Domain isolation takes advantage of Active Directory domain membership and the Kerberos V5 authentication protocol available to all members of the domain. Also see &quot;Isolated domain&quot; in this table.| 
| Encryption zone | A subset of the devices in an isolated domain that process sensitive data. Devices that are part of the encryption zone have all network traffic encrypted to prevent viewing by non-authorized users. Devices that are part of the encryption zone also typically are subject to the access control restrictions of server isolation.| 
| Firewall rule | A rule in Windows Defender Firewall that contains a set of conditions used to determine whether a network packet is allowed to pass through the firewall.<br/>By default, the firewall rules in Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, and Windows Vista block unsolicited inbound network traffic. Likewise, by default, all outbound network traffic is allowed. The firewall included in previous versions of Windows only filtered inbound network traffic. |
| Internet Protocol security (IPsec) | A set of industry-standard, cryptography-based protection services and protocols. IPsec protects all protocols in the TCP/IP protocol suite except Address Resolution Protocol (ARP).| 
| IPsec policy | A collection of connection security rules that provide the required protection to network traffic entering and leaving the device. The protection includes authentication of both the sending and receiving device, integrity protection of the network traffic exchanged between them, and can include encryption.| 
| Isolated domain | An Active Directory domain (or an Active Directory forest, or set of domains with two-way trust relationships) that has Group Policy settings applied to help protect its member devices by using IPsec connection security rules. Members of the isolated domain require authentication on all unsolicited inbound connections (with exceptions handled by the other zones).<br/>In this guide, the term *isolated domain* refers to the IPsec concept of a group of devices that can share authentication. The term *Active Directory domain* refers to the group of devices that share a security database by using Active Directory.| 
| Server isolation | A technique for using group membership to restrict access to a server that is typically already a member of an isolated domain. The additional protection comes from using the authentication credentials of the requesting device to determine its group membership, and then only allowing access if the computer account (and optionally the user account) is a member of an authorized group.| 
| Solicited network traffic | Network traffic that is sent in response to a request. By default, Windows Defender Firewall allows all solicited network traffic through.| 
| Unsolicited network traffic | Network traffic that is not a response to an earlier request, and that the receiving device cannot necessarily anticipate. By default, Windows Defender Firewall blocks all unsolicited network traffic. |
| Zone | A zone is a logical grouping of devices that share common IPsec policies because of their communications requirements. For example, the boundary zone permits inbound connections from non-trusted devices. The encryption zone requires that all connections be encrypted.<br/>This is not related to the term zone as used by Domain Name System (DNS). |

**Next:**  [Understanding the Windows Defender Firewall with Advanced Security Design Process](understanding-the-windows-firewall-with-advanced-security-design-process.md)

 

 





