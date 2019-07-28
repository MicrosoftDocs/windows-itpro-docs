---
title: Gathering Information about Your Current Network Infrastructure (Windows 10)
description: Gathering Information about Your Current Network Infrastructure
ms.assetid: f98d2b17-e71d-4ffc-b076-118b4d4782f9
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

# Gathering Information about Your Current Network Infrastructure

**Applies to**
-   Windows 10
-   Windows Server 2016

Perhaps the most important aspect of planning for Windows Defender Firewall with Advanced Security deployment is the network architecture, because IPsec is layered on the Internet Protocol itself. An incomplete or inaccurate understanding of the network can prevent any Windows Defender Firewall solution from being successful. Understanding subnet layout, IP addressing schemes, and traffic patterns are part of this effort, but accurately documenting the following components are important to completing the planning phase of this project:

-   **Network segmentation**. This includes IP addressing maps, showing how your routers separate each network segment. It includes information about how the routers are configured, and what security filters they impose on network traffic flowing through them.

-   Network address translation (NAT). NAT is a means of separating network segments by using a device that maps all of the IP addresses on one side of the device to a single IP address accessible on the other side.

-   Network infrastructure devices. This includes the routers, switches, hubs, and other network equipment that makes communications between the devices on the network possible.

-   **Current network traffic model.** This includes the quantity and the characteristics of the network traffic flowing through your network.

-   Intrusion Detection System (IDS) devices. You will need to identify if you have any IDS devices on your network that might be negatively impacted by any encryption introduced in an Encryption Zone.

The goal is to have enough information to be able to identify an asset by its network location, in addition to its physical location.

Do not use a complex and poorly documented network as a starting point for the design, because it can leave too many unidentified areas that are likely to cause problems during implementation.

This guidance helps obtain the most relevant information for planning Windows Defender Firewall implementation, but it does not try to address other issues, such as TCP/IP addressing or virtual local area network (VLAN) segmentation.

## Network segmentation


If your organization does not have its current network architecture documented and available for reference, such documentation should be obtained as soon as possible before you continue with the design and deployment. If the documented information is not current or has not been validated recently, you have two options:

-   Accept that the lack of accurate information can cause risk to the project.

-   Undertake a discovery project, either through manual processes or with network analysis tools that can provide the information you need to document the current network topology.

Although the required information can be presented in many different ways, a series of schematic diagrams is often the most effective method of illustrating and understanding the current network configuration. When creating network diagrams, do not include too much information. If necessary, use multiple diagrams that show different layers of detail. Use a top-level diagram that illustrates the major sites that make up your organization's network, and then break out each site into a more detailed diagram that captures a deeper level of detail. Continue until you reach the individual IP subnet level, and so have the means to identify the network location of every device in your organization.

During this process, you might discover some network applications and services that are not compatible with IPsec. For example, IPsec breaks network-based prioritization and port/protocol-based traffic management. If traffic management or prioritization must be based on ports or protocol, the host itself must be able to perform any traffic management or prioritization.

Other examples of incompatibility include:

-   Cisco NetFlow on routers cannot analyze packets between IPsec members based on protocol or port.

-   Router-based Quality of Service (QoS) cannot use ports or protocols to prioritize traffic. However, using firewall rules that specify IP addresses to prioritize traffic are not affected by this limitation of QoS. For example, a rule that says "From anyone to anyone using port 80 prioritize" does not work, but a rule that says "From anyone to 10.0.1.10 prioritize" works.

-   Weighted Fair Queuing and other flow-based router traffic priority methods might fail.

-   Devices that do not support or allow IP protocol 50, the port that is used by Encapsulating Security Payload (ESP).

-   Router access control lists (ACLs) cannot examine protocol and port fields in ESP-encrypted packets, and therefore the packets are dropped. ACLs based only on IP address are forwarded as usual. If the device cannot parse ESP, any ACLs that specify port or protocol rules will not be processed on the ESP packets. If the device has an ESP parser and uses encryption, ACLs that specify port or protocol rules will not be processed on the ESP packets.

-   Network monitoring tools might be unable to parse ESP packets that are not encrypted (ESP-Null).

    >**Note:**  Microsoft Message Analyzer can help in troubleshooting of unencrypted IPsec packets. The latest version of Message Analyzer is available on the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=44226).
     
## Network address translation (NAT)

IPsec NAT traversal (NAT-T) enables IPsec peers that are behind NATs to detect the presence of NATs, negotiate IPsec security associations (SAs), and send ESP-protected data even though the addresses in the IPsec-protected IPv4 packets change. IPsec NAT-T does not support the use of AH across NAT devices.

## Network infrastructure devices

The devices that make up the network infrastructure (routers, switches, load balancers, and firewalls) must be able communicate using IPsec after the solution is implemented. For this reason, you have to examine the following characteristics of these network devices to ensure that they can handle the technical and physical requirements of the design:

-   **Make/model**. You can use this information to determine the features that the device supports. In addition, check the BIOS version or software running on the device to ensure that IPsec is supported.

-   **Amount of RAM**. This information is useful when you are analyzing capacity or the impact of IPsec on the device.

-   **Traffic analysis**. Information, such as peak usage and daily orweekly trends, is helpful to have. The information helps provide a baseline snapshot of the device and how it is used over time. If problems occur after IPsec is implemented, the information can help determine whether the root cause is related to greater usage of the device.

-   **Router ACLs that affect IPsec directly**. ACLs directly affect the ability of specific protocols to function. For example, blocking the Kerberos V5 protocol (UDP and TCP port 88) or IP protocol 50 or 51 prevents IPsec from working. Devices must also be configured to allow IKE traffic (UDP port 500) if using NAT-T (UDP port 4500).

-   **Networks/subnets connected to device interfaces**. This information provides the best picture of what the internal network looks like. Defining the boundary of subnets based on an address range is straightforward and helps identify whether other addresses are either unmanaged or foreign to the internal network (such as IP addresses on the Internet).

-   **VLAN segmentation**. Determining how VLANs are implemented on the network can help you understand traffic patterns and security requirements, and then help to determine how IPsec might augment or interfere with these requirements.

-   **The maximum transmission unit (MTU) size on device interface(s)**. The MTU defines the largest datagram that can be transmitted on a particular interface without being divided into smaller pieces for transmission (a process also known as *fragmentation*). In IPsec communications, the MTU is necessary to anticipate when fragmentation occurs. Packet fragmentation must be tracked for Internet Security Association and Key Management Protocol (ISAKMP) by the router. IPsec configures the MTU size on the session to the minimum-discovered MTU size along the communication path being used, and then set the Don't Fragment bit (DF bit) to 1.

    >**Note:**  If Path MTU (PMTU) discovery is enabled and functioning correctly, you do not have to gather the MTU size on device interfaces. Although sources, such as the Windows Server 2003 Hardening Guide, recommend disabling PMTU discovery, it must be enabled for IPsec to function correctly.

-   **Intrusion detection system (IDS) in use**. Your IDS must have an IPsec-compatible parser to detect ESP packets. If the IDS does not have such a parser, it cannot determine if data in those packets is encrypted.

After you obtain this information, you can quickly determine whether you must upgrade the devices to support the requirements of the project, change the ACLs, or take other measures to ensure that the devices can handle the loads needed.

## Current network traffic model

After gathering the addressing and network infrastructure information, the next step is to examine the communications flow. For example, if a department such as Human Resources (HR) spans several buildings, and you want to use server isolation with encryption to help protect information in that department, you must know how those buildings are connected to determine the level of "trust" to place in the connection. A highly secured building that is connected by an unprotected cable to another building that is not secured can be compromised by an eavesdropping or information replay attack. If such an attack is considered a threat, IPsec can help by providing strong mutual authentication and traffic encryption for trusted hosts. IPsec allows you to more securely communicate across untrusted links such as the Internet.

When you examine traffic flow, look closely at how all managed and unmanaged devices interact. This includes non-Windows-based devices running Linux, UNIX, and Macintosh. Ask yourself such questions as:

-   Do specific communications occur at the port and protocol level, or are there many sessions between the same hosts across many protocols?

-   How do servers and clients communicate with each other?

-   Are there security devices or projects currently implemented or planned that could affect an isolation deployment? For example, if you use Windows Defender Firewall on your devices to "lock down" specific ports, such as UDP 500, IKE negotiations fail.

Some of the more common applications and protocols are as follows:

-   **NetBIOS over TCP/IP (NetBT) and server message block (SMB)**. On a LAN, it is common to have ports 137, 138, and 139 enabled for NetBT and port 445 enabled for SMB. These ports provide NetBIOS name resolution services and other features. Unfortunately, they also allow the creation of *null sessions*. A null session is a session that is established on a host that does not use the security context of a known user or entity. Frequently, these sessions are anonymous.

-   **Remote procedure call (RPC)**. RPC operates by listening on a port known as the *endpoint mapper*, TCP port 135. The response to a query on this port is an instruction to begin communication on another port in the ephemeral range (ports numbered over 1024). In a network that is segmented by firewalls, RPC communication presents a configuration challenge because it means opening the RPC listener port and all ports greater than 1024. Opening so many ports increases the attack surface of the whole network and reduces the effectiveness of the firewalls. Because many applications depend on RPC for basic functionality, any firewall and connection security policy must take RPC requirements into account.

-   **Other traffic**. Windows Defender Firewall can help secure transmissions between devices by providing authentication of the packets in addition to encrypting the data that they contain. The important thing to do is to identify what must be protected, and the threats that must be mitigated. Examine and model other traffic or traffic types that must be secured.

**Next:** [Gathering Information about Your Active Directory Deployment](gathering-information-about-your-active-directory-deployment.md)
