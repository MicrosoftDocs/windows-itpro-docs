---
title: Exemption List (Windows)
description: Learn about reasons to add devices to an exemption list in Windows Defender Firewall with Advanced Security and the trade-offs of having too many exemptions.
ms.reviewer: jekrynit
ms.author: paoloma
ms.prod: windows-client
ms.localizationpriority: medium
author: paolomatarazzo
manager: aaroncz
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/08/2021
ms.technology: itpro-security
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows Server 2016</b>
  - ✅ <b>Windows Server 2019</b>
  - ✅ <b>Windows Server 2022</b>
---

# Exemption List


When you implement a server and domain isolation security model in your organization, you're likely to find more challenges. Key infrastructure servers such as DNS servers and DHCP servers typically must be available to all devices on the internal network, yet secured from network attacks. However, if they must remain available to all devices on the network, not just to isolated domain members, then these servers can't require IPsec for inbound access, nor can they use IPsec transport mode for outbound traffic.

In addition to the infrastructure servers mentioned earlier, there might also be other servers on the network that trusted devices can't use IPsec to access, which would be added to the exemption list.

Generally, the following conditions are reasons to consider adding a device to the exemption list:

-   If the device must be accessed by trusted devices but it doesn't have a compatible IPsec implementation.

-   If the device must provide services to both trusted and untrusted devices, but doesn't meet the criteria for membership in the boundary zone.

-   If the device must be accessed by trusted devices from different isolated domains that don't have an Active Directory trust relationship established with each other.

-   If the device is a domain controller running version of Windows earlier than Windows Server 2008, or if any of its clients are running a version of Windows earlier than Windows Vista.

-   If the device must support trusted and untrusted devices, but can't use IPsec to help secure communications to trusted devices.

For large organizations, the list of exemptions might grow large if all the exemptions are implemented by one connection security rule for the whole domain or for all trusted forests. If you can require all devices in your isolated domain to run at least Windows Vista or Windows Server 2008, you can greatly reduce the size of this list. A large exemption list has several unwanted effects on every device that receives the GPO, including the following effects:

-   Reduces the overall effectiveness of isolation.

-   Creates a larger management burden (because of frequent updates).

-   Increases the size of the IPsec policy, which means that it consumes more memory and CPU resources, slows down network throughput, and increases the time required to download and apply the GPO containing the IPsec policy.

To keep the number of exemptions as small as possible, you have several options:

-   Carefully consider the communications requirements of each isolation zone, especially server-only zones. They might not be required to communicate with every exemption in the domain-level policy for clients.

-   Consolidate server functions. If several exempt services can be hosted at one IP address, the number of exemptions is reduced.

-   Consolidate exempted hosts on the same subnet. Where network traffic volume allows, you might be able to locate the servers on a subnet that is exempted, instead of using exemptions for each IP address.

As with defining the boundary zone, create a formal process to approve hosts being added to the exemption list. For a model of processing requests for exemptions, see the decision flowchart in the [Boundary Zone](boundary-zone.md) section.

**Next:** [Isolated Domain](isolated-domain.md)
