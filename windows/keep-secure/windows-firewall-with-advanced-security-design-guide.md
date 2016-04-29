---
title: Windows Firewall with Advanced Security Design Guide (Windows 10)
description: Windows Firewall with Advanced Security Design Guide
ms.assetid: 5c631389-f232-4b95-9e48-ec02b8677d51
author: brianlic-msft
---

# Windows Firewall with Advanced Security Design Guide


Windows Firewall with Advanced Security in Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, and Windows Vista is a host firewall that helps secure the computer in two ways. First, it can filter the network traffic permitted to enter the computer from the network, and also control what network traffic the computer is allowed to send to the network. Second, Windows Firewall with Advanced Security supports IPsec, which enables you to require authentication from any computer that is attempting to communicate with your computer. When authentication is required, computers that cannot authenticate cannot communicate with your computer. By using IPsec, you can also require that specific network traffic be encrypted to prevent it from being read or intercepted while in transit between computers.

The interface for Windows Firewall with Advanced Security is much more capable and flexible than the consumer-friendly interface found in the Windows Firewall Control Panel. They both interact with the same underlying services, but provide different levels of control over those services. While the Windows Firewall Control Panel meets the needs for protecting a single computer in a home environment, it does not provide enough centralized management or security features to help secure more complex network traffic found in a typical business enterprise environment.

For more overview information about Windows Firewall with Advanced Security and see [Windows Firewall with Advanced Security Overview](windows-firewall-with-advanced-security.md).

## About this guide


This guide provides recommendations to help you to choose or create a design for deploying Windows Firewall with Advanced Security in your enterprise environment. The guide describes some of the common goals for using Windows Firewall with Advanced Security, and then helps you map the goals that apply to your scenario to the designs that are presented in this guide.

This guide is intended for the IT professional who has been assigned the task of deploying firewall and IPsec technologies on an organization's network to help meet the organization's security goals.

Windows Firewall with Advanced Security should be part of a comprehensive security solution that implements a variety of security technologies, such as perimeter firewalls, intrusion detection systems, virtual private networking (VPN), IEEE 802.1X authentication for wireless and wired connections, and IPsec connection security rules.

To successfully use this guide, you need a good understanding of both the capabilities provided by Windows Firewall with Advanced Security, and how to deliver configuration settings to your managed computers by using Group Policy in Active Directory.

You can use the deployment goals to form one of these Windows Firewall with Advanced Security designs, or a custom design that combines elements from those presented here:

-   **Basic firewall policy design**. Restricts network traffic in and out of your computers to only that which is needed and authorized.

-   **Domain isolation policy design**. Prevents computers that are domain members from receiving unsolicited network traffic from computers that are not domain members. Additional "zones" can be established to support the special requirements of some computers, such as:

    -   A "boundary zone" for computers that must be able to receive requests from non-isolated computers.

    -   An "encryption zone" for computers that store sensitive data that must be protected during network transmission.

-   **Server isolation policy design**. Restricts access to a server to only a limited group of authorized users and computers. Commonly configured as a zone in a domain isolation design, but can also be configured as a stand-alone design, providing many of the benefits of domain isolation to a small set of computers.

-   **Certificate-based isolation policy design**. This design is a complement to either of the previous two designs, and supports any of their capabilities. It uses cryptographic certificates that are deployed to clients and servers for authentication, instead of the Kerberos V5 authentication used by default in Active Directory. This enables computers that are not part of an Active Directory domain, such as computers running operating systems other than Windows, to participate in your isolation solution.

In addition to descriptions and example for each design, you will find guidelines for gathering required data about your environment. You can then use these guidelines to plan and design your Windows Firewall with Advanced Security deployment. After you read this guide, and finish gathering, documenting, and mapping your organization's requirements, you have the information that you need to begin deploying Windows Firewall with Advanced Security using the guidance in the Windows Firewall with Advanced Security Deployment Guide.

You can find the Windows Firewall with Advanced Security Deployment Guide at these locations:

-   (Web page)

-   (Downloadable Word document)

## Terminology used in this guide


The following table identifies and defines terms used throughout this guide.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Term</th>
<th>Definition</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Active Directory domain</p></td>
<td><p>A group of computers and users managed by an administrator by using Active Directory Domain Services (AD DS). Computers in a domain share a common directory database and security policies. Multiple domains can co-exist in a &quot;forest,&quot; with trust relationships that establish the forest as the security boundary.</p></td>
</tr>
<tr class="even">
<td><p>Authentication</p></td>
<td><p>A process that enables the sender of a message to prove its identity to the receiver. For connection security in Windows, authentication is implemented by the IPsec protocol suite.</p></td>
</tr>
<tr class="odd">
<td><p>Boundary zone</p></td>
<td><p>A subset of the computers in an isolated domain that must be able to receive unsolicited and non-authenticated network traffic from computers that are not members of the isolated domain. Computers in the boundary zone request but do not require authentication. They use IPsec to communicate with other computers in the isolated domain.</p></td>
</tr>
<tr class="even">
<td><p>Connection security rule</p></td>
<td><p>A rule in Windows Firewall with Advanced Security that contains a set of conditions and an action to be applied to network packets that match the conditions. The action can allow the packet, block the packet, or require the packet to be protected by IPsec. In previous versions of Windows, this was called an <em>IPsec rule</em>.</p></td>
</tr>
<tr class="odd">
<td><p>Certificate-based isolation</p></td>
<td><p>A way to add computers that cannot use Kerberos V5 authentication to an isolated domain, by using an alternate authentication technique. Every computer in the isolated domain and the computers that cannot use Kerberos V5 are provided with a computer certificate that can be used to authenticate with each other. Certificate-based isolation requires a way to create and distribute an appropriate certificate (if you choose not to purchase one from a commercial certificate provider).</p></td>
</tr>
<tr class="even">
<td><p>Domain isolation</p></td>
<td><p>A technique for helping protect the computers in an organization by requiring that the computers authenticate each other's identity before exchanging information, and refusing connection requests from computers that cannot authenticate. Domain isolation takes advantage of Active Directory domain membership and the Kerberos V5 authentication protocol available to all members of the domain. Also see &quot;Isolated domain&quot; in this table.</p></td>
</tr>
<tr class="odd">
<td><p>Encryption zone</p></td>
<td><p>A subset of the computers in an isolated domain that process sensitive data. Computers that are part of the encryption zone have all network traffic encrypted to prevent viewing by non-authorized users. Computers that are part of the encryption zone also typically are subject to the access control restrictions of server isolation.</p></td>
</tr>
<tr class="even">
<td><p>Firewall rule</p></td>
<td><p>A rule in Windows Firewall with Advanced Security that contains a set of conditions used to determine whether a network packet is allowed to pass through the firewall.</p>
<p>By default, the firewall rules in Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, and Windows Vista block unsolicited inbound network traffic. Likewise, by default, all outbound network traffic is allowed. The firewall included in previous versions of Windows only filtered inbound network traffic.</p></td>
</tr>
<tr class="odd">
<td><p>Internet Protocol security (IPsec)</p></td>
<td><p>A set of industry-standard, cryptography-based protection services and protocols. IPsec protects all protocols in the TCP/IP protocol suite except Address Resolution Protocol (ARP).</p></td>
</tr>
<tr class="even">
<td><p>IPsec policy</p></td>
<td><p>A collection of connection security rules that provide the required protection to network traffic entering and leaving the computer. The protection includes authentication of both the sending and receiving computer, integrity protection of the network traffic exchanged between them, and can include encryption.</p></td>
</tr>
<tr class="odd">
<td><p>Isolated domain</p></td>
<td><p>An Active Directory domain (or an Active Directory forest, or set of domains with two-way trust relationships) that has Group Policy settings applied to help protect its member computers by using IPsec connection security rules. Members of the isolated domain require authentication on all unsolicited inbound connections (with exceptions handled by the other zones).</p>
<p>In this guide, the term <em>isolated domain</em> refers to the IPsec concept of a group of computers that can share authentication. The term <em>Active Directory domain</em> refers to the group of computers that share a security database by using Active Directory.</p></td>
</tr>
<tr class="even">
<td><p>Server isolation</p></td>
<td><p>A technique for using group membership to restrict access to a server that is typically already a member of an isolated domain. The additional protection comes from using the authentication credentials of the requesting computer to determine its group membership, and then only allowing access if the computer account (and optionally the user account) is a member of an authorized group.</p></td>
</tr>
<tr class="odd">
<td><p>Solicited network traffic</p></td>
<td><p>Network traffic that is sent in response to a request. By default, Windows Firewall with Advanced Security allows all solicited network traffic through.</p></td>
</tr>
<tr class="even">
<td><p>Unsolicited network traffic</p></td>
<td><p>Network traffic that is not a response to an earlier request, and that the receiving computer cannot necessarily anticipate. By default, Windows Firewall with Advanced Security blocks all unsolicited network traffic.</p></td>
</tr>
<tr class="odd">
<td><p>Zone</p></td>
<td><p>A zone is a logical grouping of computers that share common IPsec policies because of their communications requirements. For example, the boundary zone permits inbound connections from non-trusted computers. The encryption zone requires that all connections be encrypted.</p>
<p>This is not related to the term zone as used by Domain Name System (DNS).</p></td>
</tr>
</tbody>
</table>

 

**Next:**[Understanding the Windows Firewall with Advanced Security Design Process](understanding-the-windows-firewall-with-advanced-security-design-process.md)

 

 





