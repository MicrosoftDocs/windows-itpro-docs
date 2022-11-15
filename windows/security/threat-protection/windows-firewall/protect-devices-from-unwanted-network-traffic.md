---
title: Protect devices from unwanted network traffic (Windows)
description: Learn how running a host-based firewall on every device in your organization can help protect against attacks as part of a defense-in-depth security strategy.
ms.reviewer: jekrynit
ms.author: paoloma
ms.prod: windows-client
ms.localizationpriority: medium
author: paolomatarazzo
manager: aaroncz
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 01/18/2022
ms.technology: itpro-security
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows Server 2016</b>
  - ✅ <b>Windows Server 2019</b>
  - ✅ <b>Windows Server 2022</b>
---

# Protect devices from unwanted network traffic 


Although network perimeter firewalls provide important protection to network resources from external threats, there are network threats that a perimeter firewall can't protect against. Some attacks might successfully penetrate the perimeter firewall, and at that point what can stop it? Other attacks might originate from inside the network, such as malware that is brought in on portable media and run on a trusted device. Portable devices are often taken outside the network and connected directly to the Internet, without adequate protection between the device and security threats.

Reports of targeted attacks against organizations, governments, and individuals have become more widespread in recent years. For a general overview of these threats, also known as advanced persistent threats (APT), see the [Microsoft Security Intelligence Report](https://www.microsoft.com/security/business/security-intelligence-report).

Running a host-based firewall on every device that your organization manages is an important layer in a "defense-in-depth" security strategy. A host-based firewall can help protect against attacks that originate from inside the network and also provide extra protection against attacks from outside the network that manage to penetrate the perimeter firewall. It also travels with a portable device to provide protection when it's away from the organization's network.

A host-based firewall helps secure a device by dropping all network traffic that doesn't match the administrator-designed rule set for permitted network traffic. This design, which corresponds to [Basic Firewall Policy Design](basic-firewall-policy-design.md), provides the following benefits:

-   Network traffic that is a reply to a request from the local device is permitted into the device from the network.

-   Network traffic that is unsolicited, but that matches a rule for allowed network traffic, is permitted into the device from the network.

    For example, Woodgrove Bank wants a device that is running SQL Server to be able to receive the SQL queries sent to it by client devices. The firewall policy deployed to the device that is running SQL Server includes firewall rules that specifically allow inbound network traffic for the SQL Server program.

-   Outbound network traffic that isn't blocked is allowed on the network.

    For example, Woodgrove Bank has a corporate policy that prohibits the use of certain peer-to-peer file sharing programs. The firewall policy deployed to the computers on the network includes firewall rules that block both inbound and outbound network traffic for the prohibited programs. All other outbound traffic is permitted.

The following component is recommended for this deployment goal:

-   **Active Directory**: Active Directory supports centralized management of connection security rules by configuring the rules in one or more Group Policy objects (GPOs) that can be automatically applied to all relevant computers in the domain.

Other means of deploying a firewall policy are available, such as creating scripts that use the netsh command-line tool, and then running those scripts on each computer in the organization. This guide uses Active Directory as a recommended means of deployment because of its ability to scale to large organizations.

**Next:** [Restrict Access to Only Trusted Devices](restrict-access-to-only-trusted-devices.md)
