---
title: Server Isolation Policy Design (Windows 10)
description: Server Isolation Policy Design
ms.assetid: f93f65cd-b863-461e-ab5d-a620fd962c9a
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

# Server Isolation Policy Design

**Applies to**
-   Windows 10
-   Windows Server 2016

In the server isolation policy design, you assign servers to a zone that allows access only to users and devices that authenticate as members of an approved network access group (NAG).

This design typically begins with a network configured as described in the [Domain Isolation Policy Design](domain-isolation-policy-design.md) section. For this design, you then create zones for servers that have additional security requirements. The zones can limit access to the server to only members of authorized groups, and can optionally require the encryption of all traffic in or out of these servers. This can be done on a per server basis, or for a group of servers that share common security requirements.

You can implement a server isolation design without using domain isolation. To do this, you use the same principles as domain isolation, but instead of applying them to an Active Directory domain, you apply them only to the devices that must be able to access the isolated servers. The GPO contains connection security and firewall rules that require authentication when communicating with the isolated servers. In this case, the NAGs that determine which users and devices can access the isolated server are also used to determine which devices receive the GPO.

The design is shown in the following illustration, with arrows that show the permitted communication paths.

![isolated domain with isolated server](images/wfas-domainisohighsec.gif)

Characteristics of this design include the following:

-   Isolated domain (area A) - The same isolated domain described in the [Domain Isolation Policy Design](domain-isolation-policy-design.md) section. If the isolated domain includes a boundary zone, then devices in the boundary zone behave just like other members of the isolated domain in the way that they interact with devices in server isolation zones.

-   Isolated servers (area B) - Devices in the server isolation zones restrict access to devices, and optionally users, that authenticate as a member of a network access group (NAG) authorized to gain access.

-   Encryption zone (area C) - If the data being exchanged is sufficiently sensitive, the connection security rules for the zone can also require that the network traffic be encrypted. Encryption zones are most often implemented as rules that are part of a server isolation zone, instead of as a separate zone. The diagram illustrates the concept as a subset for conceptual purposes only.

To add support for server isolation, you must ensure that the authentication methods are compatible with the requirements of the isolated server. For example, if you want to authorize user accounts that are members of a NAG in addition to authorizing computer accounts, you must enable both user and computer authentication in your connection security rules.

>**Important:**  This design builds on the [Domain Isolation Policy Design](domain-isolation-policy-design.md), which in turn builds on the [Basic Firewall Policy Design](basic-firewall-policy-design.md). If you plan to deploy all three designs, do the design work for all three together, and then deploy in the sequence presented.

This design can be applied to devices that are part of an Active Directory forest. Active Directory is required to provide the centralized management and deployment of Group Policy objects that contain the connection security rules.

For more info about this design:

-   This design coincides with the deployment goals to [Protect Devices from Unwanted Network Traffic](protect-devices-from-unwanted-network-traffic.md), [Restrict Access to Only Trusted Devices](restrict-access-to-only-trusted-devices.md), [Restrict Access to Only Specified Users or Devices](restrict-access-to-only-specified-users-or-devices.md), and [Require Encryption When Accessing Sensitive Network Resources](require-encryption-when-accessing-sensitive-network-resources.md).

-   To learn more about this design, see [Server Isolation Policy Design Example](server-isolation-policy-design-example.md).

-   Before completing the design, gather the information described in [Designing a Windows Defender Firewall with Advanced Security Strategy](designing-a-windows-firewall-with-advanced-security-strategy.md).

-   To help you make the decisions required in this design, see [Planning Server Isolation Zones](planning-server-isolation-zones.md) and [Planning Group Policy Deployment for Your Isolation Zones](planning-group-policy-deployment-for-your-isolation-zones.md).

-   For a list of tasks that you can use to deploy your server isolation policy design, see [Checklist: Implementing a Standalone Server Isolation Policy Design](checklist-implementing-a-standalone-server-isolation-policy-design.md).

**Next:** [Certificate-based Isolation Policy Design](certificate-based-isolation-policy-design.md)
