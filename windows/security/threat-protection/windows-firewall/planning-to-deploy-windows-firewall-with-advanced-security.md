---
title: Planning to Deploy Windows Defender Firewall with Advanced Security (Windows 10)
description: Planning to Deploy Windows Defender Firewall with Advanced Security
ms.assetid: 891a30c9-dbf5-4a88-a279-00662b9da48e
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

# Planning to Deploy Windows Defender Firewall with Advanced Security

**Applies to**
-   Windows 10
-   Windows Server 2016

After you collect information about your environment and decide on a design by following the guidance in the [Windows Defender Firewall with Advanced Security Design Guide](windows-firewall-with-advanced-security-design-guide.md), you can begin to plan the deployment of your design. With the completed design and the information in this topic, you can determine which tasks to perform to deploy Windows Defender Firewall with Advanced Security in your organization.

## Reviewing your Windows Defender Firewall with Advanced Security Design

If the design team that created the Windows Defender Firewall design for your organization is different from the deployment team that will implement it, make sure that the deployment team reviews the final design with the design team. Review the following points:

-   The design team's strategy for determining how WMI and security group filters attached to the GPOs will determine which devices apply to which GPO. The deployment team can refer to the following topics in the Windows Defender Firewall with Advanced Security Design Guide:

    -   [Planning Isolation Groups for the Zones](planning-isolation-groups-for-the-zones.md)

    -   [Planning the GPOs](planning-the-gpos.md)

    -   [Planning GPO Deployment](planning-gpo-deployment.md)

-   The communication to be allowed between members of each of the zones in the isolated domain and devices that are not part of the isolated domain or members of the isolated domain's exemption list.

-   The recommendation that domain controllers are exempted from IPsec authentication requirements. If they are not exempt and authentication fails, then domain clients might not be able to receive Group Policy updates to the IPsec connection security rules from the domain controllers.

-   The rationale for configuring all IPsec authentication rules to request, not require, authentication until the successful negotiation of IPsec has been confirmed. If the rules are set to require authentication before confirming that authentication is working correctly, then communications between devices might fail. If the rules are set to request authentication only, then an IPsec authentication failure results in fall-back-to-clear behavior, so communications can continue while the authentication failures are investigated.

-   The requirement that all devices that must communicate with each other share a common set of:

    -   Authentication methods

    -   Main mode key exchange algorithms

    -   Quick mode data integrity algorithms

    If at least one set of each does not match between two devices, then the devices cannot successfully communicate.

After the design and deployment teams agree on these issues, they can proceed with the deployment of the Windows Defender Firewall design. For more information, see [Implementing Your Windows Defender Firewall with Advanced Security Design Plan](implementing-your-windows-firewall-with-advanced-security-design-plan.md).
