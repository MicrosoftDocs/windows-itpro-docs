---
title: Checklist Implementing a Domain Isolation Policy Design 
description: Use these references to learn about the domain isolation policy design and links to other checklists to complete tasks require to implement this design.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 11/10/2023
---

# Checklist: implementing a domain isolation policy design

This parent checklist includes cross-reference links to important concepts about the domain isolation policy design. It also contains links to subordinate checklists that will help you complete the tasks that are required to implement this design.

> [!NOTE]
> Complete the tasks in this checklist in order. When a reference link takes you to a procedure, return to this topic after you complete the steps in that procedure so that you can proceed with the remaining tasks in this checklist.

The procedures in this section use the Group Policy MMC snap-ins to configure the GPOs, but you can also use Windows PowerShell to configure GPOs. For more info, see [Windows Defender Firewall with Advanced Security Administration with Windows PowerShell](windows-firewall-with-advanced-security-administration-with-windows-powershell.md).

| Task | Reference |
| - | - |
| Review important concepts and examples for the domain isolation policy design, determine your Windows Firewall with Advanced Security implementation goals, and customize this design to meet the needs of your organization.| [Identifying Your Windows Defender Firewall with Advanced Security Deployment Goals](identifying-your-windows-firewall-with-advanced-security-deployment-goals.md)<br/>[Domain Isolation Policy Design](domain-isolation-policy-design.md)<br/>[Domain Isolation Policy Design Example](domain-isolation-policy-design-example.md)<br/>[Planning Domain Isolation Zones](planning-domain-isolation-zones.md) |
| Create the GPOs and connection security rules for the isolated domain.| [Checklist: Configuring Rules for the Isolated Domain](checklist-configuring-rules-for-the-isolated-domain.md)|
| Create the GPOs and connection security rules for the boundary zone.| [Checklist: Configuring Rules for the Boundary Zone](checklist-configuring-rules-for-the-boundary-zone.md)|
| Create the GPOs and connection security rules for the encryption zone.| [Checklist: Configuring Rules for the Encryption Zone](checklist-configuring-rules-for-the-encryption-zone.md)|
| Create the GPOs and connection security rules for the isolated server zone.| [Checklist: Configuring Rules for an Isolated Server Zone](checklist-configuring-rules-for-an-isolated-server-zone.md)|
| According to the testing and roll-out schedule in your design plan, add computer accounts to the membership group to deploy rules and settings to your computers.| [Add Production Devices to the Membership Group for a Zone](add-production-devices-to-the-membership-group-for-a-zone.md)|
| After you confirm that network traffic is authenticated by IPsec, you can change authentication rules for the isolated domain and encryption zone from request to require mode.| [Change Rules from Request to Require Mode](change-rules-from-request-to-require-mode.md)|
