---
title: Basic Firewall Policy Design (Windows 10)
description: Basic Firewall Policy Design
ms.assetid: 6f7af99e-6850-4522-b7f5-db98e6941418
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

# Basic Firewall Policy Design

**Applies to**
-   Windows 10
-   Windows Server 2016

Many organizations have a network perimeter firewall that is designed to prevent the entry of malicious traffic in to the organization's network, but do not have a host-based firewall enabled on each device in the organization.

The Basic Firewall Policy Design helps you to protect the devices in your organization from unwanted network traffic that gets through the perimeter defenses, or that originates from inside your network. In this design, you deploy firewall rules to each device in your organization to allow traffic that is required by the programs that are used. Traffic that does not match the rules is dropped.

Traffic can be blocked or permitted based on the characteristics of each network packet: its source or destination IP address, its source or destination port numbers, the program on the device that receives the inbound packet, and so on. This design can also be deployed together with one or more of the other designs that add IPsec protection to the network traffic permitted.

Many network administrators do not want to tackle the difficult task of determining all the appropriate rules for every program that is used by the organization, and then maintaining that list over time. In fact, most programs do not require specific firewall rules. The default behavior of Windows and most contemporary applications makes this task easy:

-   On client devices, the default firewall behavior already supports typical client programs. Programs create any required rules for you as part of the installation process. You only have to create a rule if the client program must be able to receive unsolicited inbound network traffic from another device.

-   When you install a server program that must accept unsolicited inbound network traffic, the installation program likely creates or enables the appropriate rules on the server for you.

    For example, when you install a server role, the appropriate firewall rules are created and enabled automatically.

-   For other standard network behavior, the predefined rules that are built into Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, and Windows Vista can easily be configured in a GPO and deployed to the devices in your organization.

    For example, by using the predefined groups for Core Networking and File and Printer Sharing you can easily configure GPOs with rules for those frequently used networking protocols.

With few exceptions, the firewall can be enabled on all configurations. Therefore, we recommended that you enable the firewall on every device in your organization. This includes servers in your perimeter network, on mobile and remote clients that connect to the network, and on all servers and clients in your internal network.

>**Caution:**  Stopping the service associated with Windows Defender Firewall with Advanced Security is not supported by Microsoft.

By default, in new installations, Windows Defender Firewall with Advanced Security is turned on in Windows Server 2012, Windows 8, and later.

If you turn off the Windows Defender Firewall service you lose other benefits provided by the service, such as the ability to use IPsec connection security rules, Windows Service Hardening, and network protection from forms of attacks that use network fingerprinting.

Compatible third-party firewall software can programmatically disable only the parts of Windows Defender Firewall that might need to be disabled for compatibility. This is the recommended approach for third-party firewalls to coexist with the Windows Defender Firewall; third-party party firewalls that comply with this recommendation have the certified logo from Microsoft. 

An organization typically uses this design as a first step toward a more comprehensive Windows Defender Firewall design that adds server isolation and domain isolation.

After implementing this design, you will have centralized management of the firewall rules applied to all devices that are running Windows in your organization.

>**Important:**  If you also intend to deploy the [Domain Isolation Policy Design](domain-isolation-policy-design.md), or the [Server Isolation Policy Design](server-isolation-policy-design.md), we recommend that you do the design work for all three designs together, and then deploy in layers that correspond with each design.

The basic firewall design can be applied to devices that are part of an Active Directory forest. Active Directory is required to provide the centralized management and deployment of Group Policy objects that contain the firewall settings and rules.

For more information about this design:

-   This design coincides with the deployment goal to [Protect Devices from Unwanted Network Traffic](protect-devices-from-unwanted-network-traffic.md).

-   To learn more about this design, see [Firewall Policy Design Example](firewall-policy-design-example.md).

-   Before completing the design, gather the information described in [Designing a Windows Defender Firewall with Advanced Security Strategy](designing-a-windows-firewall-with-advanced-security-strategy.md).

-   To help you make the decisions required in this design, see [Planning Settings for a Basic Firewall Policy](planning-settings-for-a-basic-firewall-policy.md).

-   For a list of detailed tasks that you can use to deploy your basic firewall policy design, see [Checklist: Implementing a Basic Firewall Policy Design](checklist-implementing-a-basic-firewall-policy-design.md).

**Next:** [Domain Isolation Policy Design](domain-isolation-policy-design.md)
