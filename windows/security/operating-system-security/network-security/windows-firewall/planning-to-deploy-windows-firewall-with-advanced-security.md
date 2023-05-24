---
title: Plan to Deploy Windows Defender Firewall with Advanced Security 
description: Use the design information in this article to plan for the deployment of Windows Defender Firewall with Advanced Security in your organization.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/08/2021
---

# Planning to Deploy Windows Defender Firewall with Advanced Security


After you collect information about your environment and decide on a design by following the guidance in the [Windows Defender Firewall with Advanced Security Design Guide](windows-firewall-with-advanced-security-design-guide.md), you can begin to plan the deployment of your design. With the completed design and the information in this topic, you can determine which tasks to perform to deploy Windows Defender Firewall with Advanced Security in your organization.

## Reviewing your Windows Defender Firewall with Advanced Security Design

If the design team that created the Windows Defender Firewall design for your organization is different from the deployment team that will implement it, make sure the deployment team reviews the final design with the design team. Review the following information before starting your deployment.

### Decide which devices apply to which GPO

The design team's strategy for determining how WMI and security group filters attached to the GPOs will determine which devices apply to which GPO. The deployment team can refer to the following topics in the Windows Defender Firewall with Advanced Security Design Guide:

-   [Planning Isolation Groups for the Zones](planning-isolation-groups-for-the-zones.md)

-   [Planning the GPOs](planning-the-gpos.md)

-   [Planning GPO Deployment](planning-gpo-deployment.md)

### Configure communication between members and devices

Decide what communication is to be allowed between members of each of the zones in the isolated domain and devices that aren't part of the isolated domain or members of the isolated domain's exemption list.

### Exempt domain controllers from IPsec authentication requirements

It's recommended that domain controllers are exempt from IPsec authentication requirements. If they aren't exempt and authentication fails, then domain clients might not be able to receive Group Policy updates to the IPsec connection security rules from the domain controllers.

### Configure IPsec authentication rules

The rationale for configuring all IPsec authentication rules to request, not require, authentication until the successful negotiation of IPsec has been confirmed. If the rules are set to require authentication before confirming that authentication is working correctly, then communications between devices might fail. If the rules are set to request authentication only, then an IPsec authentication failure results in fall-back-to-clear behavior. Communications can continue while the authentication failures are investigated.

### Make sure all devices can communicate with each other

For all devices to communicate with each other, they must share a common set of:

-   Authentication methods

-   Main mode key exchange algorithms

-   Quick mode data integrity algorithms

If at least one set of each doesn't match between two devices, then the devices can't successfully communicate.

## Deploy your Windows Firewall Design Plan

After the design and deployment teams agree on these issues, they can proceed with the deployment of the Windows Defender Firewall design. For more information, see [Implementing Your Windows Defender Firewall with Advanced Security Design Plan](implementing-your-windows-firewall-with-advanced-security-design-plan.md).
