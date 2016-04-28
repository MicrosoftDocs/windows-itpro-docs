---
title: Exemption List (Windows 10)
description: Exemption List
ms.assetid: a05e65b4-b48d-44b1-a7f1-3a8ea9c19ed8
author: brianlic-msft
---

# Exemption List


When you implement a server and domain isolation security model in your organization, you are likely to find some additional challenges. Key infrastructure servers such as DNS servers and DHCP servers typically must be available to all computers on the internal network, yet secured from network attacks. However, if they must remain available to all computers on the network, not just to isolated domain members, then these servers cannot require IPsec for inbound access, nor can they use IPsec transport mode for outbound traffic.

In addition to the infrastructure servers mentioned earlier, there might also be other servers on the network that trusted computers cannot use IPsec to access, which would be added to the exemption list.

Generally, the following conditions are reasons to consider adding a computer to the exemption list:

-   If the computer must be accessed by trusted computers but it does not have a compatible IPsec implementation.

-   If the computer must provide services to both trusted and untrusted computers, but does not meet the criteria for membership in the boundary zone.

-   If the computer must be accessed by trusted computers from different isolated domains that do not have an Active Directory trust relationship established with each other.

-   If the computer is a domain controller running version of Windows earlier than Windows Server 2008, or if any of its clients are running a version of Windows earlier than Windows Vista.

-   If the computer must support trusted and untrusted computers, but cannot use IPsec to help secure communications to trusted computers.

For large organizations, the list of exemptions might grow very large if all the exemptions are implemented by one connection security rule for the whole domain or for all trusted forests. If you can require all computers in your isolated domain to run at least Windows Vista or Windows Server 2008, you can greatly reduce the size of this list. A large exemption list has several unwanted effects on every computer that receives the GPO, including the following:

-   Reduces the overall effectiveness of isolation.

-   Creates a larger management burden (because of frequent updates).

-   Increases the size of the IPsec policy, which means that it consumes more memory and CPU resources, slows down network throughput, and increases the time required to download and apply the GPO containing the IPsec policy.

To keep the number of exemptions as small as possible, you have several options:

-   Carefully consider the communications requirements of each isolation zone, especially server-only zones. They might not be required to communicate with every exemption in the domain-level policy for clients.

-   Consolidate server functions. If several exempt services can be hosted at one IP address, the number of exemptions is reduced.

-   Consolidate exempted hosts on the same subnet. Where network traffic volume allows, you might be able to locate the servers on a subnet that is exempted, instead of using exemptions for each IP address.

As with defining the boundary zone, create a formal process to approve hosts being added to the exemption list. For a model of processing requests for exemptions, see the decision flowchart in the [Boundary Zone](boundary-zone.md) section.

**Next: **[Isolated Domain](isolated-domain.md)

 

 





