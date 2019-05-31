---
title: Planning Isolation Groups for the Zones (Windows 10)
description: Planning Isolation Groups for the Zones
ms.assetid: be4b662d-c1ce-441e-b462-b140469a5695
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

# Planning Isolation Groups for the Zones

**Applies to**
-   Windows 10
-   Windows Server 2016

Isolation groups in Active Directory are how you implement the various domain and server isolation zones. A device is assigned to a zone by adding its device account to the group which represents that zone.

>**Caution:**  Do not add devices to your groups yet. If a device is in a group when the GPO is activated then that GPO is applied to the device. If the GPO is one that requires authentication, and the other devices have not yet received their GPOs, the device that uses the new GPO might not be able to communicate with the others.

Universal groups are the best option to use for GPO assignment because they apply to the whole forest and reduce the number of groups that must be managed. However, if universal groups are unavailable, you can use domain global groups instead.

The following table lists typical groups that can be used to manage the domain isolation zones discussed in the Woodgrove Bank example in this guide:

| Group name | Description |
| - | - |
| CG_DOMISO_No_IPsec | A universal group of device accounts that do not participate in the IPsec environment. Typically consists of infrastructure device accounts that will also be included in exemption lists.<br/>This group is used in security group filters to ensure that GPOs with IPsec rules are not applied to group members.|
| CG_DOMISO_IsolatedDomain | A universal group of device accounts that contains the members of the isolated domain.<br/>During the early days of testing, this group might contain only a very small number of devices. During production, it might contain the built-in **Domain Computers** group to ensure that every device in the domain participates.<br/>Members of this group receive the domain isolation GPO that requires authentication for inbound connections.| 
| CG_DOMISO_Boundary | A universal group of device accounts that contains the members of the boundary zone.<br/><p>Members of this group receive a GPO that specifies that authentication is requested, but not required.| 
| CG_DOMISO_Encryption | A universal group of device accounts that contains the members of the encryption zone.<br/>Members of this group receive a GPO that specifies that both authentication and encryption are required for all inbound connections. 
| CG_SRVISO_*ServerRole* | A universal group of device accounts that contains the members of the server isolation group.<br/>Members of this group receive the server isolation GPO that requires membership in a network access group in order to connect.<br/>There will be one group for each set of servers that have different user and device restriction requirements. |

Multiple GPOs might be delivered to each group. Which one actually becomes applied depends on the security group filters assigned to the GPOs in addition to the results of any WMI filtering assigned to the GPOs. Details of the GPO layout are discussed in the section [Planning the GPOs](planning-the-gpos.md).

If multiple GPOs are assigned to a group, and similar rules are applied, the rule that most specifically matches the network traffic is the one that is used by the device. For example, if one IPsec rule says to request authentication for all IP traffic, and a second rule from a different GPO says to require authentication for IP traffic to and from a specific IP address, then the second rule takes precedence because it is more specific.

**Next: **[Planning Network Access Groups](planning-network-access-groups.md)

