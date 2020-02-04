---
title: Domain Isolation Policy Design Example (Windows 10)
description: Domain Isolation Policy Design Example
ms.assetid: 704dcf58-286f-41aa-80af-c81720aa7fc5
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

# Domain Isolation Policy Design Example

**Applies to**
-   Windows 10
-   Windows Server 2016

This design example continues to use the fictitious company Woodgrove Bank, and builds on the example described in the [Firewall Policy Design Example](firewall-policy-design-example.md) section. See that example for an explanation of the basic corporate network infrastructure at Woodgrove Bank with diagrams.

## Design Requirements

In addition to the basic protection provided by the firewall rules in the previous design example, you might want to implement domain isolation to provide another layer of security to their networked devices. You can create firewall and connection security rules that use authentication to reduce the risk of communicating with untrusted and potentially hostile devices.

The following illustration shows the traffic protection needed for this design example.

![domain isolation policy design](images/wfas-design2example1.gif)

1.  All devices on the Woodgrove Bank corporate network that are Active Directory domain members must authenticate inbound network traffic as coming from another computer that is a member of the domain. Unless otherwise specified in this section, Woodgrove Bank's devices reject all unsolicited inbound network traffic that is not authenticated. If the basic firewall design is also implemented, even authenticated inbound network traffic is dropped unless it matches an inbound firewall rule.

2.  The servers hosting the WGPartner programs must be able to receive unsolicited inbound traffic from devices owned by its partners, which are not members of Woodgrove Bank's domain.

3.  Client devices can initiate non-authenticated outbound communications with devices that are not members of the domain, such as browsing external Web sites. Unsolicited inbound traffic from non-domain members is blocked.

4.  Devices in the encryption zone require that all network traffic inbound and outbound must be encrypted, in addition to the authentication already required by the isolated domain.

**Other traffic notes:**

-   All of the design requirements described in the [Firewall Policy Design Example](firewall-policy-design-example.md) section are still enforced.

## Design Details

Woodgrove Bank uses Active Directory groups and GPOs to deploy the domain isolation settings and rules to the devices on its network.

Setting up groups as described here ensures that you do not have to know what operating system a computer is running before assigning it to a group. As in the firewall policy design, a combination of WMI filters and security group filters are used to ensure that members of the group receive the GPO appropriate for the version of Windows running on that computer. For some groups, you might have four or even five GPOs.

The following groups were created by using the Active Directory Users and Computers MMC snap-in, all devices that run Windows were added to the correct groups, and then the appropriate GPO are applied to the group. To include a device in the isolated domain or any one of its subordinate zones, simply add the device's account in the appropriate group.

-   **CG\_DOMISO\_ISOLATEDDOMAIN**. The members of this group participate in the isolated domain. After an initial pilot period, followed by a slowly increasing group membership, the membership of this group was eventually replaced with the entry **Domain Computers** to ensure that all devices in the domain participate by default. The WMI filters ensure that the GPO does not apply to domain controllers. GPOs with connection security rules to enforce domain isolation behavior are linked to the domain container and applied to the devices in this group. Filters ensure that each computer receives the correct GPO for its operating system type. The rules in the domain isolation GPO require Kerberos v5 authentication for inbound network connections, and request (but not require) it for all outbound connections.

-   **CG\_DOMISO\_NO\_IPSEC**. This group is denied read or apply permissions on any of the domain isolation GPOs. Any computer that cannot participate in domain isolation, such as a DHCP server running UNIX, is added to this group.

-   **CG\_DOMISO\_BOUNDARY**. This group contains the computer accounts for all the devices that are part of the boundary group able to receive unsolicited inbound traffic from untrusted devices. Members of the group receive a GPO that configures connection security rules to request (but not require) both inbound and outbound authentication.

-   **CG\_DOMISO\_ENCRYPTION**. This group contains the computer accounts for all the devices that require all inbound and outbound traffic to be both authenticated and encrypted. Members of the group receive a GPO that configures connection security and firewall rules to require both authentication and encryption on all inbound and outbound traffic.

>**Note:**  If you are designing GPOs for only Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2, you can design your GPOs in nested groups. For example, you can make the boundary group a member of the isolated domain group, so that it receives the firewall and basic isolated domain settings through that nested membership, with only the changes supplied by the boundary zone GPO. However, devices that are running older versions of Windows can only support a single IPsec policy being active at a time. The policies for each GPO must be complete (and to a great extent redundant with each other), because you cannot layer them as you can in the newer versions of Windows. For simplicity, this guide describes the techniques used to create the independent, non-layered policies. We recommend that you create and periodically run a script that compares the memberships of the groups that must be mutually exclusive and reports any devices that are incorrectly assigned to more than one group.

**Next:** [Server Isolation Policy Design Example](server-isolation-policy-design-example.md)
